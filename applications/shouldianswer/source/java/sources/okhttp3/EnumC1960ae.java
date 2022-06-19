package okhttp3;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
/* renamed from: okhttp3.ae */
/* loaded from: classes-dex2jar.jar:okhttp3/ae.class */
public enum EnumC1960ae {
    TLS_1_3("TLSv1.3"),
    TLS_1_2("TLSv1.2"),
    TLS_1_1("TLSv1.1"),
    TLS_1_0("TLSv1"),
    SSL_3_0("SSLv3");
    

    /* renamed from: f */
    final String f4754f;

    EnumC1960ae(String str) {
        this.f4754f = str;
    }

    /* renamed from: a */
    public static List<EnumC1960ae> m2454a(String... strArr) {
        ArrayList arrayList = new ArrayList(strArr.length);
        for (String str : strArr) {
            arrayList.add(m2455a(str));
        }
        return Collections.unmodifiableList(arrayList);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    public static EnumC1960ae m2455a(String str) {
        boolean z;
        int hashCode = str.hashCode();
        if (hashCode == 79201641) {
            if (str.equals("SSLv3")) {
                z = true;
            }
            z = true;
        } else if (hashCode != 79923350) {
            switch (hashCode) {
                case -503070503:
                    if (str.equals("TLSv1.1")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -503070502:
                    if (str.equals("TLSv1.2")) {
                        z = true;
                        break;
                    }
                    z = true;
                    break;
                case -503070501:
                    if (str.equals("TLSv1.3")) {
                        z = false;
                        break;
                    }
                    z = true;
                    break;
                default:
                    z = true;
                    break;
            }
        } else {
            if (str.equals("TLSv1")) {
                z = true;
            }
            z = true;
        }
        if (z) {
            if (z) {
                return TLS_1_2;
            }
            if (z) {
                return TLS_1_1;
            }
            if (z) {
                return TLS_1_0;
            }
            if (z) {
                return SSL_3_0;
            }
            throw new IllegalArgumentException("Unexpected TLS version: " + str);
        }
        return TLS_1_3;
    }
}
