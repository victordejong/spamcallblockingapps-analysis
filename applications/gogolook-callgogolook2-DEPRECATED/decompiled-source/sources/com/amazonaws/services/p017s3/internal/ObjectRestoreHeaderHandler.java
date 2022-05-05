package com.amazonaws.services.p017s3.internal;

import com.amazonaws.http.HttpResponse;
import com.amazonaws.services.p017s3.internal.ObjectRestoreResult;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
/* renamed from: com.amazonaws.services.s3.internal.ObjectRestoreHeaderHandler */
/* loaded from: classes-dex2jar.jar:com/amazonaws/services/s3/internal/ObjectRestoreHeaderHandler.class */
public class ObjectRestoreHeaderHandler<T extends ObjectRestoreResult> implements HeaderHandler<T> {
    public static final Pattern datePattern = Pattern.compile("expiry-date=\"(.*?)\"");
    public static final Pattern ongoingPattern = Pattern.compile("ongoing-request=\"(.*?)\"");
    public static final Log log = LogFactory.getLog(ObjectRestoreHeaderHandler.class);

    public void handle(T t, HttpResponse httpResponse) {
        String str = httpResponse.getHeaders().get("x-amz-restore");
        if (str != null) {
            t.setRestoreExpirationTime(parseDate(str));
            t.setOngoingRestore(parseBoolean(str).booleanValue());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.amazonaws.services.p017s3.internal.HeaderHandler
    public /* bridge */ /* synthetic */ void handle(Object obj, HttpResponse httpResponse) {
        handle((ObjectRestoreHeaderHandler<T>) ((ObjectRestoreResult) obj), httpResponse);
    }

    public final Boolean parseBoolean(String str) {
        Matcher matcher = ongoingPattern.matcher(str);
        if (matcher.find()) {
            return Boolean.valueOf(Boolean.parseBoolean(matcher.group(1)));
        }
        return null;
    }

    public final Date parseDate(String str) {
        Matcher matcher = datePattern.matcher(str);
        if (!matcher.find()) {
            return null;
        }
        try {
            return ServiceUtils.parseRfc822Date(matcher.group(1));
        } catch (Exception e) {
            log.warn("Error parsing expiry-date from x-amz-restore header.", e);
            return null;
        }
    }
}
