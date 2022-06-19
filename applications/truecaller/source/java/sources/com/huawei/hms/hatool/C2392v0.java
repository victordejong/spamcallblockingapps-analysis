package com.huawei.hms.hatool;

import android.text.TextUtils;
import android.webkit.URLUtil;
import com.huawei.secure.android.common.encrypt.hash.SHA;
import com.tenor.android.core.constant.StringConstant;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Locale;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: com.huawei.hms.hatool.v0 */
/* loaded from: classes3-dex2jar.jar:com/huawei/hms/hatool/v0.class */
public class C2392v0 {

    /* renamed from: a */
    public static final String[] f7607a = {"e2f856b9f9a4fd4cb2795aeaf83268e4bff189aaec05d691ffde76e075b82648", "173cf86fe9894a0f70dadd09d4fd88c380836099d4939f8c3754361bdc16a32b", "b368b110e3b565fe97c91f786e11bc48754cc8e4e6f21d8a94a68ac6ad67aaaf", "db48223fd9e143f7e133c57f5d08a4e38549ce3ebd921fe3b4003c26e5e35bed", "4bdecdf772491e35c4e8b48f88aee22bae1311984f2e1da4dfad0b78ee7f5163", "3081a0adab3018d57165e6dd24074bdbac640f6dbe21a9e24d3474a87ebf38b8", "db53fcdc9ab71e9bdd4eab257fe1aba7989ad2b24fbe3a85dfef72ea1dd6bae2", "d80f18e8081b624cc64985f87f70118f1702985d2e10dbc985ee7be334fd3c7d", "5fed96c85bd58c58aadbd465c172a4c9a794d8eb2f86cbc7bcee6caf4c7a2c5f", "07ff9b7aeeff969173c45b285fe0fecdbaae244576ff7a2796a36f1c0c11adb4", "92974c6802419e4d18b5ec536cbfa167b8e8eff09ec4c8510a5b95750b1e0c82", "403f14ad2f0e5eb3c4f3a0bcd5c1592cc4492662ad53191c92905255d4990656", "4230baa077b401374d0fc012375047e79ea0790d58d095ef18d97d95470c738d"};

    /* renamed from: a */
    public static String m37505a(String str) {
        if (TextUtils.isEmpty(str)) {
            C2398y.m37473c("hmsSdk", "url is null");
            return str;
        }
        try {
            if (URLUtil.isNetworkUrl(str) && !str.toLowerCase(Locale.US).startsWith("http:")) {
                return new URI(str).getHost();
            }
            C2398y.m37476b("hmsSdk", "url don't starts with https");
            return null;
        } catch (URISyntaxException e) {
            StringBuilder m8728C = C22128a.m8728C("getHostByURI error : ");
            m8728C.append(e.getMessage());
            C2398y.m37476b("hmsSdk", m8728C.toString());
            return null;
        }
    }

    /* renamed from: a */
    public static String m37504a(String str, int i) {
        if (TextUtils.isEmpty(str) || i <= 0) {
            C2398y.m37473c("hmsSdk", "url is null");
            return str;
        }
        String[] split = str.split("\\.");
        if (split.length < i) {
            return "";
        }
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(split[split.length - i]);
        for (int i2 = 1; i2 < i; i2++) {
            stringBuffer.append(StringConstant.DOT);
            stringBuffer.append(split[(split.length - i) + i2]);
        }
        return stringBuffer.toString();
    }

    /* renamed from: a */
    public static boolean m37503a(String str, String str2, int i) {
        String str3;
        String str4;
        StringBuilder sb;
        String m37505a = m37505a(str);
        if (TextUtils.isEmpty(m37505a) || TextUtils.isEmpty(str2)) {
            str3 = "url or whitelistHash is null";
        } else {
            String m37504a = m37504a(m37505a, i);
            if (!TextUtils.isEmpty(m37504a)) {
                if (str2.equals(SHA.sha256Encrypt(m37505a))) {
                    return true;
                }
                if (!str2.equals(SHA.sha256Encrypt(m37504a))) {
                    return false;
                }
                try {
                    String substring = m37505a.substring(0, m37505a.length() - m37504a.length());
                    if (substring.endsWith(StringConstant.DOT)) {
                        return substring.matches("^[A-Za-z0-9.-]+$");
                    }
                    return false;
                } catch (IndexOutOfBoundsException e) {
                    sb = C22128a.m8728C("IndexOutOfBoundsException");
                    str4 = e.getMessage();
                    sb.append(str4);
                    str3 = sb.toString();
                    C2398y.m37476b("hmsSdk", str3);
                    return false;
                } catch (Exception e2) {
                    sb = C22128a.m8728C("Exception : ");
                    str4 = e2.getMessage();
                    sb.append(str4);
                    str3 = sb.toString();
                    C2398y.m37476b("hmsSdk", str3);
                    return false;
                }
            }
            str3 = "get urlLastNStr is null";
        }
        C2398y.m37476b("hmsSdk", str3);
        return false;
    }

    /* renamed from: b */
    public static boolean m37502b(String str) {
        if (C2371k1.f7558a.booleanValue()) {
            return true;
        }
        for (String str2 : f7607a) {
            if (m37503a(str, str2, 2)) {
                return true;
            }
        }
        return false;
    }
}
