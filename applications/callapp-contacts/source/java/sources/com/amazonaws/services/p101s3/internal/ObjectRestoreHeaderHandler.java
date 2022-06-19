package com.amazonaws.services.p101s3.internal;

import com.amazonaws.http.HttpResponse;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.p101s3.internal.ObjectRestoreResult;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.amazonaws.services.s3.internal.ObjectRestoreHeaderHandler */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/ObjectRestoreHeaderHandler.class */
public class ObjectRestoreHeaderHandler<T extends ObjectRestoreResult> implements HeaderHandler<T> {

    /* renamed from: a */
    private static final Pattern f12349a = Pattern.compile("expiry-date=\"(.*?)\"");

    /* renamed from: b */
    private static final Pattern f12350b = Pattern.compile("ongoing-request=\"(.*?)\"");

    /* renamed from: c */
    private static final Log f12351c = LogFactory.m38584a(ObjectRestoreHeaderHandler.class);

    /* renamed from: a */
    private static Date m38426a(String str) {
        Matcher matcher = f12349a.matcher(str);
        if (matcher.find()) {
            try {
                return ServiceUtils.m38402b(matcher.group(1));
            } catch (Exception e) {
                f12351c.mo38592b("Error parsing expiry-date from x-amz-restore header.", e);
                return null;
            }
        }
        return null;
    }

    /* renamed from: a */
    public static void m38427a(T t, HttpResponse httpResponse) {
        String str = httpResponse.f12069d.get("x-amz-restore");
        if (str != null) {
            t.setRestoreExpirationTime(m38426a(str));
            Matcher matcher = f12350b.matcher(str);
            Boolean valueOf = matcher.find() ? Boolean.valueOf(Boolean.parseBoolean(matcher.group(1))) : null;
            if (valueOf == null) {
                return;
            }
            t.setOngoingRestore(valueOf.booleanValue());
        }
    }

    @Override // com.amazonaws.services.p101s3.internal.HeaderHandler
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo38398a(Object obj, HttpResponse httpResponse) {
        m38427a((ObjectRestoreResult) obj, httpResponse);
    }
}
