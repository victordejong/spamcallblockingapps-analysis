package okhttp3;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: okhttp3.af */
/* loaded from: classes-dex2jar.jar:okhttp3/af.class */
public enum EnumC5409af {
    TLS_1_3("TLSv1.3"),
    TLS_1_2("TLSv1.2"),
    TLS_1_1("TLSv1.1"),
    TLS_1_0("TLSv1"),
    SSL_3_0("SSLv3");
    

    /* renamed from: f */
    final String f22528f;

    EnumC5409af(String str) {
        this.f22528f = str;
    }

    /* renamed from: a */
    public static List<EnumC5409af> m772a(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(m773a(str));
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* renamed from: a */
    public static EnumC5409af m773a(String str) {
        EnumC5409af enumC5409af;
        boolean z = true;
        switch (str.hashCode()) {
            case -503070503:
                if (str.equals("TLSv1.1")) {
                    z = true;
                    break;
                }
                break;
            case -503070502:
                if (str.equals("TLSv1.2")) {
                    z = true;
                    break;
                }
                break;
            case -503070501:
                if (str.equals("TLSv1.3")) {
                    z = false;
                    break;
                }
                break;
            case 79201641:
                if (str.equals("SSLv3")) {
                    z = true;
                    break;
                }
                break;
            case 79923350:
                if (str.equals("TLSv1")) {
                    z = true;
                    break;
                }
                break;
        }
        switch (z) {
            case false:
                enumC5409af = TLS_1_3;
                break;
            case true:
                enumC5409af = TLS_1_2;
                break;
            case true:
                enumC5409af = TLS_1_1;
                break;
            case true:
                enumC5409af = TLS_1_0;
                break;
            case true:
                enumC5409af = SSL_3_0;
                break;
            default:
                throw new IllegalArgumentException("Unexpected TLS version: " + str);
        }
        return enumC5409af;
    }
}
