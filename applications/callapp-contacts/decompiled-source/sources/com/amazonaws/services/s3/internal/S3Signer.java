package com.amazonaws.services.s3.internal;

import com.amazonaws.Request;
import com.amazonaws.auth.AWSCredentials;
import com.amazonaws.auth.AWSSessionCredentials;
import com.amazonaws.auth.AbstractAWSSigner;
import com.amazonaws.auth.SigningAlgorithm;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.util.HttpUtils;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/S3Signer.class */
public class S3Signer extends AbstractAWSSigner {

    /* renamed from: a  reason: collision with root package name */
    private static final Log f6823a = LogFactory.a(S3Signer.class);

    /* renamed from: b  reason: collision with root package name */
    private final String f6824b;

    /* renamed from: c  reason: collision with root package name */
    private final String f6825c;

    /* renamed from: d  reason: collision with root package name */
    private final Set<String> f6826d;

    public S3Signer() {
        this.f6824b = null;
        this.f6825c = null;
        this.f6826d = null;
    }

    public S3Signer(String str, String str2) {
        this(str, str2, null);
    }

    public S3Signer(String str, String str2, Collection<String> collection) {
        if (str2 != null) {
            this.f6824b = str;
            this.f6825c = str2;
            this.f6826d = collection == null ? null : Collections.unmodifiableSet(new HashSet(collection));
            return;
        }
        throw new IllegalArgumentException("Parameter resourcePath is empty");
    }

    @Override // com.amazonaws.auth.Signer
    public final void a(Request<?> request, AWSCredentials aWSCredentials) {
        if (this.f6825c == null) {
            throw new UnsupportedOperationException("Cannot sign a request using a dummy S3Signer instance with no resource path");
        } else if (aWSCredentials == null || aWSCredentials.b() == null) {
            f6823a.b("Canonical string will not be signed, as no AWS Secret Key was provided");
        } else {
            AWSCredentials a2 = a(aWSCredentials);
            if (a2 instanceof AWSSessionCredentials) {
                a(request, (AWSSessionCredentials) a2);
            }
            String a3 = HttpUtils.a(request.f().getPath(), this.f6825c, true);
            request.a("Date", ServiceUtils.b(a(e(request))));
            String a4 = RestUtils.a(this.f6824b, a3, request, this.f6826d);
            Log log = f6823a;
            log.b("Calculated string to sign:\n\"" + a4 + "\"");
            String a5 = super.a(a4, a2.b(), SigningAlgorithm.HmacSHA1);
            request.a("Authorization", "AWS " + a2.a() + ":" + a5);
        }
    }

    @Override // com.amazonaws.auth.AbstractAWSSigner
    public final void a(Request<?> request, AWSSessionCredentials aWSSessionCredentials) {
        request.a("x-amz-security-token", aWSSessionCredentials.c());
    }
}
