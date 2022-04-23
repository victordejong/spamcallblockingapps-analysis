package com.amazonaws.services.s3.internal;

import com.amazonaws.http.HttpResponse;
import com.amazonaws.logging.Log;
import com.amazonaws.logging.LogFactory;
import com.amazonaws.services.s3.internal.ObjectExpirationResult;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/ObjectExpirationHeaderHandler.class */
public class ObjectExpirationHeaderHandler<T extends ObjectExpirationResult> implements HeaderHandler<T> {

    /* renamed from: a  reason: collision with root package name */
    private static final Pattern f6805a = Pattern.compile("expiry-date=\"(.*?)\"");

    /* renamed from: b  reason: collision with root package name */
    private static final Pattern f6806b = Pattern.compile("rule-id=\"(.*?)\"");

    /* renamed from: c  reason: collision with root package name */
    private static final Log f6807c = LogFactory.a(ObjectExpirationHeaderHandler.class);

    private static Date a(String str) {
        Matcher matcher = f6805a.matcher(str);
        if (!matcher.find()) {
            return null;
        }
        try {
            return ServiceUtils.b(matcher.group(1));
        } catch (Exception e) {
            f6807c.b("Error parsing expiry-date from x-amz-expiration header.", e);
            return null;
        }
    }

    public static void a(T t, HttpResponse httpResponse) {
        String str = httpResponse.f6622d.get("x-amz-expiration");
        if (str != null) {
            t.setExpirationTime(a(str));
            Matcher matcher = f6806b.matcher(str);
            t.setExpirationTimeRuleId(matcher.find() ? matcher.group(1) : null);
        }
    }

    @Override // com.amazonaws.services.s3.internal.HeaderHandler
    public final /* bridge */ /* synthetic */ void a(Object obj, HttpResponse httpResponse) {
        a((ObjectExpirationResult) obj, httpResponse);
    }
}
