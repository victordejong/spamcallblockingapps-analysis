package com.huawei.hms.hatool;

import android.text.TextUtils;
import com.huawei.secure.android.common.encrypt.keystore.aes.AesGcmKS;
import org.json.JSONException;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.hms.hatool.r0 */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/r0.class */
public class C2384r0 {
    /* renamed from: a */
    public static void m37540a(String str, String str2) {
        C2350b0 c2350b0;
        String str3;
        try {
            c2350b0 = AbstractC2346a0.m37809a("{url}/getPublicKey?keytype=2".replace("{url}", AbstractC2351c.m37764f(str, str2)), new byte[0], C22128a.m8667T("App-Id", AbstractC2349b.m37785f()));
        } catch (Exception e) {
            StringBuilder m8728C = C22128a.m8728C("get pubKey response Exception :");
            m8728C.append(e.getMessage());
            C2398y.m37470e("GetPublicKey", m8728C.toString());
            c2350b0 = null;
        }
        if (c2350b0 == null) {
            str3 = "get pubKey response is null";
        } else if (c2350b0.m37771b() == 200) {
            if (TextUtils.isEmpty(c2350b0.m37772a())) {
                return;
            }
            m37538c(c2350b0.m37772a(), str2);
            return;
        } else {
            StringBuilder m8728C2 = C22128a.m8728C("get pubKey fail HttpCode :");
            m8728C2.append(c2350b0.m37771b());
            str3 = m8728C2.toString();
        }
        C2398y.m37470e("GetPublicKey", str3);
    }

    /* renamed from: a */
    public static boolean m37541a() {
        String m37795a = AbstractC2349b.m37795a();
        String str = m37795a;
        if (TextUtils.isEmpty(m37795a)) {
            str = C2362g0.m37696a(AbstractC2349b.m37779i(), "Privacy_MY", "public_key_time_interval", "");
            AbstractC2349b.m37784f(str);
        }
        String m37775m = AbstractC2349b.m37775m();
        String str2 = m37775m;
        if (TextUtils.isEmpty(m37775m)) {
            str2 = C2362g0.m37696a(AbstractC2349b.m37779i(), "Privacy_MY", "public_key_time_last", "");
            AbstractC2349b.m37790c(str2);
        }
        boolean z = true;
        if (!TextUtils.isEmpty(str)) {
            z = true;
            if (!TextUtils.isEmpty(str2)) {
                try {
                    z = System.currentTimeMillis() - Long.parseLong(str2) > ((long) Integer.parseInt(str));
                } catch (NumberFormatException e) {
                    StringBuilder m8728C = C22128a.m8728C("checkCachePubKey NumberFormatException :");
                    m8728C.append(e.getMessage());
                    C2398y.m37470e("GetPublicKey", m8728C.toString());
                    z = true;
                }
            }
        }
        return z;
    }

    /* renamed from: b */
    public static String m37539b(String str, String str2) {
        String str3;
        String m37791c = AbstractC2349b.m37791c();
        String str4 = m37791c;
        if (TextUtils.isEmpty(m37791c)) {
            str4 = C2362g0.m37696a(AbstractC2349b.m37779i(), "Privacy_MY", "public_key_version", "");
            AbstractC2349b.m37782g(str4);
        }
        if ("maint".equals(str2)) {
            String m37774n = AbstractC2349b.m37774n();
            str3 = m37774n;
            if (TextUtils.isEmpty(m37774n)) {
                str3 = AesGcmKS.decrypt("HiAnalytics_Sdk_Public_Sp_Key", C2362g0.m37696a(AbstractC2349b.m37779i(), "Privacy_MY", "public_key_maint", ""));
                AbstractC2349b.m37788d(str3);
            }
        } else {
            String m37773o = AbstractC2349b.m37773o();
            str3 = m37773o;
            if (TextUtils.isEmpty(m37773o)) {
                str3 = AesGcmKS.decrypt("HiAnalytics_Sdk_Public_Sp_Key", C2362g0.m37696a(AbstractC2349b.m37779i(), "Privacy_MY", "public_key_oper", ""));
                AbstractC2349b.m37786e(str3);
            }
        }
        if (TextUtils.isEmpty(str3) || TextUtils.isEmpty(str4) || m37541a()) {
            C2378o0.m37556a().m37555a(new m0(str, str2));
            return null;
        }
        return str3;
    }

    /* renamed from: c */
    public static void m37538c(String str, String str2) {
        try {
            JSONObject jSONObject = new JSONObject(str);
            String optString = jSONObject.optString("publicKey");
            String optString2 = jSONObject.optString("publicKeyOM");
            String optString3 = jSONObject.optString("pubkey_version");
            String str3 = System.currentTimeMillis() + "";
            String optString4 = jSONObject.optString("timeInterval");
            C2362g0.m37692b(AbstractC2349b.m37779i(), "Privacy_MY", "public_key_oper", AesGcmKS.encrypt("HiAnalytics_Sdk_Public_Sp_Key", optString));
            C2362g0.m37692b(AbstractC2349b.m37779i(), "Privacy_MY", "public_key_maint", AesGcmKS.encrypt("HiAnalytics_Sdk_Public_Sp_Key", optString2));
            C2362g0.m37692b(AbstractC2349b.m37779i(), "Privacy_MY", "public_key_time_interval", optString4);
            C2362g0.m37692b(AbstractC2349b.m37779i(), "Privacy_MY", "public_key_version", optString3);
            C2362g0.m37692b(AbstractC2349b.m37779i(), "Privacy_MY", "public_key_time_last", str3);
            AbstractC2349b.m37786e(optString);
            AbstractC2349b.m37788d(optString2);
            AbstractC2349b.m37782g(optString3);
            AbstractC2349b.m37790c(str3);
            AbstractC2349b.m37784f(optString4);
        } catch (JSONException e) {
            StringBuilder m8728C = C22128a.m8728C("get pubKey parse json JSONException :");
            m8728C.append(e.getMessage());
            C2398y.m37470e("GetPublicKey", m8728C.toString());
        }
    }
}
