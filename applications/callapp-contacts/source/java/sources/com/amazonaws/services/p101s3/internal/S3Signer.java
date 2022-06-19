package com.amazonaws.services.p101s3.internal;

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
/* renamed from: com.amazonaws.services.s3.internal.S3Signer */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/S3Signer.class */
public class S3Signer extends AbstractAWSSigner {

    /* renamed from: a */
    private static final Log f12366a = LogFactory.m38584a(S3Signer.class);

    /* renamed from: b */
    private final String f12367b;

    /* renamed from: c */
    private final String f12368c;

    /* renamed from: d */
    private final Set<String> f12369d;

    public S3Signer() {
        this.f12367b = null;
        this.f12368c = null;
        this.f12369d = null;
    }

    public S3Signer(String str, String str2) {
        this(str, str2, null);
    }

    public S3Signer(String str, String str2, Collection<String> collection) {
        if (str2 != null) {
            this.f12367b = str;
            this.f12368c = str2;
            this.f12369d = collection == null ? null : Collections.unmodifiableSet(new HashSet(collection));
            return;
        }
        throw new IllegalArgumentException("Parameter resourcePath is empty");
    }

    @Override // com.amazonaws.auth.Signer
    /* renamed from: a */
    public final void mo38410a(Request<?> request, AWSCredentials aWSCredentials) {
        if (this.f12368c != null) {
            if (aWSCredentials == null || aWSCredentials.mo38658b() == null) {
                f12366a.mo38593b("Canonical string will not be signed, as no AWS Secret Key was provided");
                return;
            }
            AWSCredentials a = m38683a(aWSCredentials);
            if (a instanceof AWSSessionCredentials) {
                mo38409a(request, (AWSSessionCredentials) a);
            }
            String m38244a = HttpUtils.m38244a(request.mo38705f().getPath(), this.f12368c, true);
            request.mo38714a("Date", ServiceUtils.m38401b(m38685a(m38668e(request))));
            String m38425a = RestUtils.m38425a(this.f12367b, m38244a, request, this.f12369d);
            Log log = f12366a;
            log.mo38593b("Calculated string to sign:\n\"" + m38425a + "\"");
            String m38680a = super.m38680a(m38425a, a.mo38658b(), SigningAlgorithm.HmacSHA1);
            request.mo38714a("Authorization", "AWS " + a.mo38659a() + ":" + m38680a);
            return;
        }
        throw new UnsupportedOperationException("Cannot sign a request using a dummy S3Signer instance with no resource path");
    }

    @Override // com.amazonaws.auth.AbstractAWSSigner
    /* renamed from: a */
    public final void mo38409a(Request<?> request, AWSSessionCredentials aWSSessionCredentials) {
        request.mo38714a("x-amz-security-token", aWSSessionCredentials.mo38661c());
    }
}
