package com.amazonaws.services.s3.internal;

import com.amazonaws.http.HttpResponse;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.internal.ObjectRestoreResult;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/ObjectRestoreHeaderHandler.class */
public class ObjectRestoreHeaderHandler<T extends ObjectRestoreResult> implements HeaderHandler<T> {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f6808a = Pattern.compile("expiry-date=\"(.*?)\"");

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f6809b = Pattern.compile("ongoing-request=\"(.*?)\"");

    /* renamed from: c  reason: collision with root package name */
    private static final Log f6810c = LogFactory.a(ObjectRestoreHeaderHandler.class);

    private static Date a(String str) {
        Matcher matcher = f6808a.matcher(str);
        if (!matcher.find()) {
            return null;
        }
        try {
            return ServiceUtils.b(matcher.group(1));
        } catch (Exception e) {
            f6810c.b("Error parsing expiry-date from x-amz-restore header.", e);
            return null;
        }
    }

    public static void a(T t, HttpResponse httpResponse) {
        String str = httpResponse.f6622d.get("x-amz-restore");
        if (str != null) {
            t.setRestoreExpirationTime(a(str));
            Matcher matcher = f6809b.matcher(str);
            Boolean valueOf = matcher.find() ? Boolean.valueOf(Boolean.parseBoolean(matcher.group(1))) : null;
            if (valueOf != null) {
                t.setOngoingRestore(valueOf.booleanValue());
            }
        }
    }

    @Override // com.amazonaws.services.s3.internal.HeaderHandler
    public final /* bridge */ /* synthetic */ void a(Object obj, HttpResponse httpResponse) {
        a((ObjectRestoreResult) obj, httpResponse);
    }
}
