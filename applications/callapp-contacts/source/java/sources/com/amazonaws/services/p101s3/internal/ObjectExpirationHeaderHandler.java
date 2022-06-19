package com.amazonaws.services.p101s3.internal;

import com.amazonaws.http.HttpResponse;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.p101s3.internal.ObjectExpirationResult;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* renamed from: com.amazonaws.services.s3.internal.ObjectExpirationHeaderHandler */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler.class */
public class ObjectExpirationHeaderHandler<T extends ObjectExpirationResult> implements HeaderHandler<T> {

    /* renamed from: a */
    private static final Pattern f12346a = Pattern.compile("expiry-date=\"(.*?)\"");

    /* renamed from: b */
    private static final Pattern f12347b = Pattern.compile("rule-id=\"(.*?)\"");

    /* renamed from: c */
    private static final Log f12348c = LogFactory.m38584a(ObjectExpirationHeaderHandler.class);

    /* renamed from: a */
    private static Date m38428a(String str) {
        Matcher matcher = f12346a.matcher(str);
        if (matcher.find()) {
            try {
                return ServiceUtils.m38402b(matcher.group(1));
            } catch (Exception e) {
                f12348c.mo38592b("Error parsing expiry-date from x-amz-expiration header.", e);
                return null;
            }
        }
        return null;
    }

    /* renamed from: a */
    public static void m38429a(T t, HttpResponse httpResponse) {
        String str = httpResponse.f12069d.get("x-amz-expiration");
        if (str != null) {
            t.setExpirationTime(m38428a(str));
            Matcher matcher = f12347b.matcher(str);
            t.setExpirationTimeRuleId(matcher.find() ? matcher.group(1) : null);
        }
    }

    @Override // com.amazonaws.services.p101s3.internal.HeaderHandler
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo38398a(Object obj, HttpResponse httpResponse) {
        m38429a((ObjectExpirationResult) obj, httpResponse);
    }
}
