package com.freshchat.consumer.sdk.p057j;

import android.content.Context;
import com.freshchat.consumer.sdk.FreshchatUser;
import com.freshchat.consumer.sdk.beans.User;
import com.freshchat.consumer.sdk.p047b.C1466e;
import com.freshchat.consumer.sdk.p047b.EnumC1464c;
import com.freshchat.consumer.sdk.p049c.C1511g;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
/* renamed from: com.freshchat.consumer.sdk.j.d */
/* loaded from: classes2-dex2jar.jar:com/freshchat/consumer/sdk/j/d.class */
public class C1704d {
    /* renamed from: C */
    public static String m39979C(Context context) {
        String m40966bj = C1466e.m40905i(context).m40966bj();
        String str = m40966bj;
        if (C1626as.isEmpty(m40966bj)) {
            str = UUID.randomUUID().toString();
        }
        return str;
    }

    /* renamed from: a */
    public static void m39978a(Context context, FreshchatUser freshchatUser) {
        if (freshchatUser != null) {
            User user = new User();
            String firstName = freshchatUser.getFirstName();
            if (C1629av.m40212aN(firstName)) {
                user.setFirstName(firstName);
            } else if (C1626as.m40233a(firstName)) {
                C1613ai.m40283e("FRESHCHAT_WARNING", EnumC1464c.USER_PROPERTY_NAME_ERROR.toString());
            }
            String lastName = freshchatUser.getLastName();
            if (C1629av.m40212aN(lastName)) {
                user.setLastName(lastName);
            } else if (C1626as.m40233a(lastName)) {
                C1613ai.m40283e("FRESHCHAT_WARNING", EnumC1464c.USER_PROPERTY_NAME_ERROR.toString());
            }
            String email = freshchatUser.getEmail();
            if (C1629av.m40215aK(email)) {
                user.setEmail(email);
            } else if (C1626as.m40233a(email)) {
                C1613ai.m40283e("FRESHCHAT_WARNING", EnumC1464c.USER_PROPERTY_EMAIL_ERROR.toString());
            }
            String externalId = freshchatUser.getExternalId();
            if (C1629av.m40212aN(externalId)) {
                user.setExternalId(externalId);
            } else if (C1626as.m40233a(externalId)) {
                C1613ai.m40283e("FRESHCHAT_WARNING", EnumC1464c.USER_PROPERTY_EXTERNAL_ID_ERROR.toString());
            }
            String restoreId = freshchatUser.getRestoreId();
            if (C1629av.m40212aN(restoreId)) {
                user.setRestoreId(restoreId);
            } else if (C1626as.m40233a(restoreId)) {
                C1613ai.m40283e("FRESHCHAT_WARNING", EnumC1464c.USER_PROPERTY_RESTORE_ID_ERROR.toString());
            }
            String phoneCountryCode = freshchatUser.getPhoneCountryCode();
            if (C1629av.m40214aL(phoneCountryCode)) {
                user.setPhoneCountry(phoneCountryCode);
            } else if (C1626as.m40233a(phoneCountryCode)) {
                C1613ai.m40283e("FRESHCHAT_WARNING", EnumC1464c.USER_PROPERTY_COUNTRY_CODE_ERROR.toString());
            }
            String phone = freshchatUser.getPhone();
            if (C1629av.m40213aM(phone)) {
                user.setPhone(phone);
            } else if (C1626as.m40233a(phone)) {
                C1613ai.m40283e("FRESHCHAT_WARNING", EnumC1464c.USER_PROPERTY_PHONE_NUMBER_ERROR.toString());
            }
            m39973b(context, user);
        }
    }

    /* renamed from: a */
    public static void m39977a(Context context, Map<String, String> map) {
        if (C1716k.m39894d(map)) {
            Map<String, String> m39969e = m39969e(map);
            if (!C1716k.m39894d(m39969e)) {
                return;
            }
            m39973b(context, new User().setMeta(m39969e));
        }
    }

    /* renamed from: a */
    public static void m39976a(C1466e c1466e, User user) {
        if (c1466e == null || user == null) {
            return;
        }
        if (C1626as.m40233a(user.getFirstName())) {
            c1466e.m40890q(user.getFirstName());
        }
        if (C1626as.m40233a(user.getLastName())) {
            c1466e.m40889r(user.getLastName());
        }
        if (C1626as.m40233a(user.getEmail())) {
            c1466e.m40887s(user.getEmail());
        }
        if (C1626as.m40233a(user.getPhone())) {
            c1466e.m41005I(user.getPhone());
        }
        if (C1626as.m40233a(user.getPhoneCountry())) {
            c1466e.m41006H(user.getPhoneCountry());
        }
        if (C1626as.m40233a(user.getExternalId())) {
            c1466e.m40883u(user.getExternalId());
        }
        if (C1626as.m40233a(user.getRestoreId())) {
            c1466e.m41009E(user.getRestoreId());
        }
        if (C1626as.m40233a(user.getLocale())) {
            c1466e.m41004J(user.getLocale());
        }
        if (!C1626as.m40233a(user.getJwtIdToken())) {
            return;
        }
        c1466e.m40948c(user.getJwtIdToken());
    }

    /* renamed from: aw */
    public static boolean m39975aw(Context context) {
        C1466e m40905i = C1466e.m40905i(context);
        if (!m40905i.m40964bl()) {
            return true;
        }
        String m40966bj = m40905i.m40966bj();
        if (C1626as.isEmpty(m40966bj)) {
            return true;
        }
        List<String> m40715jN = new C1511g(context).m40715jN();
        if (C1716k.m39900b(m40715jN) != 1) {
            return true;
        }
        return C1626as.m40222p(m40966bj, m40715jN.get(0));
    }

    /* renamed from: b */
    public static int m39972b(String str, String str2, String str3, String str4) {
        if (!C1626as.isEmpty(str3)) {
            if (C1626as.m40223o(str, str3) && C1626as.m40233a(str2) && C1626as.isEmpty(str4)) {
                return 100;
            }
            if (C1626as.m40223o(str, str3) && C1626as.m40223o(str2, str4)) {
                return 200;
            }
            if (!C1626as.isEmpty(str4)) {
                return 300;
            }
            return (!C1626as.m40233a(str) || !C1626as.m40233a(str2)) ? 500 : 400;
        }
        return 100;
    }

    /* renamed from: b */
    public static FreshchatUser m39974b(Context context, FreshchatUser freshchatUser) {
        C1466e m40905i = C1466e.m40905i(context);
        freshchatUser.setFirstName(m40905i.m40970bg());
        freshchatUser.setLastName(m40905i.m40969bh());
        freshchatUser.setEmail(m40905i.m40967bi());
        freshchatUser.setPhone(m40905i.m40973bX(), m40905i.m40972bY());
        return freshchatUser;
    }

    /* renamed from: b */
    public static void m39973b(Context context, User user) {
        try {
            C1466e m40905i = C1466e.m40905i(context);
            C1613ai.m40284d("FRESHCHAT", "Updating user information => " + m40905i.m40966bj());
            m39976a(m40905i, user);
            C1638b.m40157a(context, user);
        } catch (Exception e) {
            C1723q.m39823a(e);
        }
    }

    /* renamed from: bF */
    public static User m39971bF(Context context) {
        User user = new User();
        C1466e m40905i = C1466e.m40905i(context);
        if (C1626as.m40233a(m40905i.m40918gh())) {
            user.setJwtIdToken(m40905i.m40918gh());
            return user;
        }
        user.setFirstName(m40905i.m40970bg());
        user.setLastName(m40905i.m40969bh());
        user.setEmail(m40905i.m40967bi());
        user.setPhone(m40905i.m40972bY());
        user.setPhoneCountry(m40905i.m40973bX());
        user.setExternalId(m40905i.m40965bk());
        user.setRestoreId(m40905i.m40985bI());
        user.setLocale(m40905i.m40971bZ());
        return user;
    }

    /* renamed from: bG */
    public static void m39970bG(Context context) {
        C1594aa.m40359a(context, true, false);
    }

    /* renamed from: e */
    private static Map<String, String> m39969e(Map<String, String> map) {
        HashMap hashMap = new HashMap();
        for (String str : map.keySet()) {
            boolean z = true;
            if (!C1629av.m40211aO(str)) {
                C1613ai.m40283e("FRESHCHAT_WARNING", EnumC1464c.USER_PROPERTY_KEY_LENGTH_ERROR.toString().replace("{{user_property_key_placeholder}}", str).replace("{{user_property_charecter_limit_placeholder}}", String.valueOf(32)));
                z = false;
            }
            String str2 = map.get(str);
            if (!C1629av.m40212aN(str2)) {
                C1613ai.m40283e("FRESHCHAT_WARNING", EnumC1464c.USER_PROPERTY_VALUE_ERROR.toString().replace("{{user_property_key_placeholder}}", str).replace("{{user_property_charecter_limit_placeholder}}", String.valueOf(256)));
                z = false;
            }
            if (z) {
                hashMap.put(str, str2);
            }
        }
        return hashMap;
    }

    /* renamed from: v */
    public static int m39968v(String str, String str2) {
        if (C1626as.isEmpty(str2)) {
            return 200;
        }
        String m39850bb = C1720o.m39850bb(str);
        String m39850bb2 = C1720o.m39850bb(str2);
        return C1626as.m40223o(m39850bb, m39850bb2) ? C1626as.m40222p(str, str2) ? 500 : 200 : C1626as.isEmpty(m39850bb2) ? 400 : 300;
    }
}
