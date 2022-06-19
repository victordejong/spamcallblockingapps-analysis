package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import com.amazon.device.ads.DtbConstants;
import com.freshchat.consumer.sdk.beans.FCLocale;
import com.freshchat.consumer.sdk.p047b.C1466e;
import com.huawei.hms.framework.common.ContainerUtils;
import com.razorpay.AnalyticsConstants;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.freshchat.consumer.sdk.j.a */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/a.class */
public class C1567a {

    /* renamed from: qx */
    public static final Set<String> f4238qx = new HashSet(Arrays.asList("msdk.freshchat.com", "msdk.us2.freshchat.com", "msdk.in.freshchat.com", "msdk.eu.freshchat.com", "msdk.au.freshchat.com"));

    /* renamed from: A */
    public static String m40503A(Context context) {
        C1466e m40905i = C1466e.m40905i(context);
        String m40992bB = m40905i.m40992bB();
        String m40289bc = C1612ah.m40289bc(context);
        FCLocale m40991bC = m40905i.m40991bC();
        String m40484a = m40484a(m40484a(m40486a("{{app_domain}}/app/services/app/{{app_alias}}/channel/v2?t={{app_key}}&locale={{locale}}", m40905i).replace("{{locale}}", m40289bc), "since", m40992bB), "lastLocaleId", m40991bC != null ? String.valueOf(m40991bC.getLocaleId()) : null);
        C1613ai.m40284d("FRESHCHAT", "getChannelsURL ==> " + m40484a);
        return m40484a;
    }

    /* renamed from: B */
    public static String m40502B(Context context) {
        return m40486a("{{app_domain}}/app/services/app/{{app_alias}}/user/{{user_alias}}/conversation/read?t={{app_key}}", C1466e.m40905i(context));
    }

    /* renamed from: D */
    public static String m40501D(Context context) {
        return m40486a("{{app_domain}}/app/services/app/{{app_alias}}/user/{{user_alias}}/session?t={{app_key}}", C1466e.m40905i(context));
    }

    /* renamed from: E */
    public static String m40500E(Context context) {
        return m40486a("{{app_domain}}/app/services/app/{{app_alias}}/user/{{user_alias}}/heartbeat?t={{app_key}}", C1466e.m40905i(context));
    }

    /* renamed from: F */
    public static String m40499F(Context context) {
        return m40486a("{{app_domain}}/app/services/app/{{app_alias}}/user/{{user_alias}}/activity?source=MOBILE&t={{app_key}}", C1466e.m40905i(context));
    }

    /* renamed from: G */
    public static String m40498G(Context context) {
        return m40486a("{{app_domain}}/app/services/app/{{app_alias}}/user?t={{app_key}}", C1466e.m40905i(context));
    }

    /* renamed from: G */
    public static String m40497G(Context context, String str) {
        return m40486a("{{app_domain}}/app/services/app/{{app_alias}}/user/{{user_alias_str}}/events/multi?t={{app_key}}", C1466e.m40905i(context)).replace("{{user_alias_str}}", str);
    }

    /* renamed from: H */
    public static String m40496H(Context context) {
        return m40486a("{{app_domain}}/app/services/app/{{app_alias}}/user/{{user_alias}}?t={{app_key}}", C1466e.m40905i(context));
    }

    /* renamed from: H */
    public static String m40495H(Context context, String str) {
        return m40486a("{{app_domain}}/app/services/app/{{app_alias}}/agent/{{agent_alias}}/calendar/availability?t={{app_key}}", C1466e.m40905i(context)).replace("{{agent_alias}}", str);
    }

    /* renamed from: I */
    public static String m40494I(Context context) {
        return m40486a("{{app_domain}}/app/services/app/{{app_alias}}/user/{{user_alias}}/feedback/message/v2?t={{app_key}}", C1466e.m40905i(context));
    }

    /* renamed from: J */
    public static String m40493J(Context context) {
        return m40486a("{{app_domain}}/app/services/app/{{app_alias}}/user/{{user_alias}}/image?t={{app_key}}", C1466e.m40905i(context));
    }

    /* renamed from: K */
    public static String m40492K(Context context) {
        return m40486a("{{app_domain}}/app/services/app/{{app_alias}}/channels/response_time?t={{app_key}}&locale={{locale}}", C1466e.m40905i(context)).replace("{{locale}}", C1612ah.m40289bc(context));
    }

    /* renamed from: a */
    public static String m40491a(Context context, int i, String str, List<String> list) {
        String m40231a = C1716k.m39902a(list) ? C1626as.m40231a((String[]) list.toArray(new String[0]), ",") : null;
        String replace = m40486a("{{app_domain}}/app/services/app/sdk/{{app_alias}}/omni/faq/category/{{category_id}}/articles?platform=android&page={{page_id}}&locale={{locale}}&t={{app_key}}", C1466e.m40905i(context)).replace("{{page_id}}", String.valueOf(i)).replace("{{category_id}}", str).replace("{{locale}}", C1612ah.m40289bc(context));
        String str2 = replace;
        if (C1626as.m40233a(m40231a)) {
            str2 = m40484a(replace, "tags", m40231a);
        }
        return str2;
    }

    /* renamed from: a */
    public static String m40490a(Context context, int i, List<String> list) {
        String m40231a = C1716k.m39902a(list) ? C1626as.m40231a((String[]) list.toArray(new String[0]), ",") : null;
        String replace = m40486a("{{app_domain}}/app/services/app/sdk/{{app_alias}}/omni/faq/categories?platform=android&page={{page_id}}&locale={{locale}}&t={{app_key}}", C1466e.m40905i(context)).replace("{{page_id}}", String.valueOf(i)).replace("{{locale}}", C1612ah.m40289bc(context));
        String str = replace;
        if (m40231a != null) {
            str = m40484a(replace, "tags", m40231a);
        }
        return str;
    }

    /* renamed from: a */
    public static String m40489a(Context context, String str, int i) {
        return m40486a("{{app_domain}}/app/translation/services/app/{{app_alias}}/user/{{user_alias}}/conversations?t={{app_key}}&messageAfter={{message_after}}&src={{src}}&sendStatusMessages={{send_status_messages}}", C1466e.m40905i(context)).replace("{{message_after}}", str).replace("{{src}}", String.valueOf(i)).replace("{{send_status_messages}}", String.valueOf(true));
    }

    /* renamed from: a */
    public static String m40488a(Context context, String str, String str2) {
        C1466e m40905i = C1466e.m40905i(context);
        String replace = m40486a("{{app_domain}}/app/services/app/{{app_alias}}/sdk/faq/v2/category/{{category_id}}/article/{{article_id}}?platform=android&t={{app_key}}", m40905i).replace("{{category_id}}", str).replace("{{article_id}}", str2);
        FCLocale m40954bu = m40905i.m40954bu();
        String str3 = replace;
        if (m40954bu != null) {
            str3 = m40485a(replace, "localeId", m40954bu.getLocaleId());
        }
        return str3;
    }

    /* renamed from: a */
    public static String m40487a(Context context, String str, String str2, String str3, String str4) {
        return m40486a("{{app_domain}}/app/services/app/{{app_alias}}/user/{{user_alias}}/message/marketing/{{marketing_id}}/status?t={{app_key}}&delivered={{delivered}}&clicked={{clicked}}&seen={{seen}}", C1466e.m40905i(context)).replace("{{marketing_id}}", str).replace("{{delivered}}", str2).replace("{{clicked}}", str3).replace("{{seen}}", str4);
    }

    /* renamed from: a */
    private static String m40486a(String str, C1466e c1466e) {
        if (c1466e == null || C1626as.isEmpty(c1466e.getAppKey())) {
            throw new RuntimeException("API access token missing !");
        }
        String m40229aJ = C1626as.m40229aJ(C1626as.m40233a(c1466e.getDomain()) ? c1466e.getDomain() : "msdk.freshchat.com");
        return (DtbConstants.HTTPS + str).replace("{{app_domain}}", m40229aJ).replace("{{app_alias}}", c1466e.getAppId()).replace("{{app_key}}", c1466e.getAppKey()).replace("{{user_alias}}", c1466e.m40966bj());
    }

    /* renamed from: a */
    private static String m40485a(String str, String str2, long j) {
        return j == 0 ? str : m40484a(str, str2, String.valueOf(j));
    }

    /* renamed from: a */
    private static String m40484a(String str, String str2, String str3) {
        String str4 = str;
        if (!C1626as.isEmpty(str)) {
            str4 = str;
            if (!C1626as.isEmpty(str2)) {
                str4 = C1626as.isEmpty(str3) ? str : C22128a.m8717E2(str, ContainerUtils.FIELD_DELIMITER, str2, ContainerUtils.KEY_VALUE_DELIMITER, str3);
            }
        }
        return str4;
    }

    /* renamed from: b */
    public static String m40483b(Context context, int i, String str, List<String> list) {
        String m40231a = C1716k.m39902a(list) ? C1626as.m40231a((String[]) list.toArray(new String[0]), ",") : null;
        String replace = m40486a("{{app_domain}}/app/services/app/sdk/{{app_alias}}/omni/faq/articles/search?term={{search_term}}&platform=android&page={{page_id}}&locale={{locale}}&t={{app_key}}", C1466e.m40905i(context)).replace("{{page_id}}", String.valueOf(i)).replace("{{search_term}}", str).replace("{{locale}}", C1612ah.m40289bc(context));
        String str2 = replace;
        if (C1626as.m40233a(m40231a)) {
            str2 = m40484a(replace, "tags", m40231a);
        }
        return str2;
    }

    /* renamed from: b */
    public static String m40482b(Context context, long j) {
        return m40486a("{{app_domain}}/app/services/app/{{app_alias}}/user/{{user_alias}}/debuglogs/{{log_id}}?t={{app_key}}", C1466e.m40905i(context)).replace("{{log_id}}", String.valueOf(j));
    }

    /* renamed from: b */
    public static String m40481b(Context context, String str, String str2) {
        return m40486a("{{app_domain}}/app/services/app/{{app_alias}}/user/{{user_alias}}/conversation/{{conversationId}}/csat/{{csatId}}/response?t={{app_key}}", C1466e.m40905i(context)).replace("{{conversationId}}", str).replace("{{csatId}}", str2);
    }

    /* renamed from: b */
    public static String m40480b(Context context, String str, String str2, String str3, String str4) {
        return m40486a("{{app_domain}}/app/services/app/sdk/{{app_alias}}/omni/faq/category/{{category_id}}/article/{{article_id}}/analytics/{{vote}}?platform=android&articleLocale={{article_locale}}&t={{app_key}}", C1466e.m40905i(context)).replace("{{category_id}}", str).replace("{{article_id}}", str2).replace("{{article_locale}}", str4).replace("{{vote}}", str3);
    }

    /* renamed from: bv */
    public static String m40479bv(Context context) {
        return m40486a("{{app_domain}}/app/services/app/{{app_alias}}/jwt/validate?t={{app_key}}", C1466e.m40905i(context));
    }

    /* renamed from: bw */
    public static String m40478bw(Context context) {
        return m40486a("{{app_domain}}/app/services/app/{{app_alias}}/user/renew-by-jwt?t={{app_key}}", C1466e.m40905i(context));
    }

    /* renamed from: e */
    public static String m40477e(Context context, String str, String str2) {
        return m40486a("{{app_domain}}/app/services/app/{{app_alias}}/user/restore?externalId={{externalId}}&restoreId={{restoreId}}&t={{app_key}}", C1466e.m40905i(context)).replace("{{externalId}}", str).replace("{{restoreId}}", str2);
    }

    /* renamed from: g */
    public static String m40476g(Context context, String str) {
        return m40486a("{{app_domain}}/app/services/app/{{app_alias}}/user/{{user_alias}}/notification?t={{app_key}}&notification_id={{device_token}}&notification_type=1", C1466e.m40905i(context)).replace("{{device_token}}", str);
    }

    /* renamed from: g */
    public static String m40475g(Context context, String str, String str2) {
        return m40486a("{{app_domain}}/app/services/app/sdk/{{app_alias}}/omni/faq/category/{{category_id}}/article/{{article_id}}?platform=android&locale={{locale}}&t={{app_key}}&viewed=true", C1466e.m40905i(context)).replace("{{article_id}}", str).replace("{{category_id}}", str2).replace("{{locale}}", C1612ah.m40289bc(context));
    }

    /* renamed from: h */
    public static String m40474h(Context context, String str) {
        return m40486a("{{app_domain}}/app/services/app/{{app_alias}}/user/{{prev_user_alias}}/uninstalled?t={{app_key}}", C1466e.m40905i(context)).replace("{{prev_user_alias}}", str);
    }

    /* renamed from: i */
    public static String m40473i(Context context, String str, String str2) {
        return m40486a("{{app_domain}}/app/services/app/{{app_alias}}/template/content/{{reference_id}}?placeholderReferenceId={{placeholder_reference_id}}&t={{app_key}}", C1466e.m40905i(context)).replace("{{reference_id}}", str).replace("{{placeholder_reference_id}}", str2);
    }

    /* renamed from: j */
    public static String m40472j(Context context, String str, String str2) {
        C1466e m40905i = C1466e.m40905i(context);
        boolean m40233a = C1626as.m40233a(str2);
        String replace = m40486a(!m40233a ? "{{app_domain}}/app/services/app/{{app_alias}}/message/{{message_alias}}/postback?t={{app_key}}" : "{{app_domain}}/app/services/app/{{app_alias}}/message/{{message_alias}}/{{reference_id}}/postback?t={{app_key}}", m40905i).replace("{{message_alias}}", str);
        String str3 = replace;
        if (m40233a) {
            str3 = replace.replace("{{reference_id}}", str2);
        }
        return str3;
    }

    /* renamed from: y */
    public static String m40471y(Context context) {
        String m40486a = m40486a("config-{{app_domain}}/app/services/app/config/mobile/{{app_alias}}?t={{app_key}}", C1466e.m40905i(context));
        String str = m40486a;
        if (C1626as.m40233a(m40486a)) {
            str = m40486a;
            if (!m40486a.toLowerCase().contains(".freshchat.com")) {
                str = m40486a.replace("config-", "");
            }
        }
        return str;
    }

    /* renamed from: z */
    public static String m40470z(Context context) {
        C1466e m40905i = C1466e.m40905i(context);
        String m40484a = m40484a(m40484a(m40486a("{{app_domain}}/app/services/app/{{app_alias}}/sdk/faq/v2/category?t={{app_key}}&platform=android", m40905i), "since", m40905i.m40955bt()), AnalyticsConstants.LOCALE, C1612ah.m40289bc(context));
        FCLocale m40954bu = m40905i.m40954bu();
        String str = m40484a;
        if (m40954bu != null) {
            str = m40485a(m40484a, "lastLocaleId", m40954bu.getLocaleId());
        }
        C1613ai.m40284d("FRESHCHAT", "getSolutionsURL ==> " + str);
        return str;
    }
}
