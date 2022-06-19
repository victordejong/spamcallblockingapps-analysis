package p204p9;

import com.google.android.gms.internal.ads.C1676a;
import java.util.Objects;
/* renamed from: p9.f0 */
/* loaded from: classes2-dex2jar.jar:p9/f0.class */
public enum EnumC4101f0 {
    TLS_1_3("TLSv1.3"),
    TLS_1_2("TLSv1.2"),
    TLS_1_1("TLSv1.1"),
    TLS_1_0("TLSv1"),
    SSL_3_0("SSLv3");
    

    /* renamed from: a */
    public final String f12884a;

    EnumC4101f0(String str) {
        this.f12884a = str;
    }

    /* renamed from: a */
    public static EnumC4101f0 m1421a(String str) {
        Objects.requireNonNull(str);
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case -503070503:
                if (str.equals("TLSv1.1")) {
                    z = false;
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
                    z = true;
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
                return TLS_1_1;
            case true:
                return TLS_1_2;
            case true:
                return TLS_1_3;
            case true:
                return SSL_3_0;
            case true:
                return TLS_1_0;
            default:
                throw new IllegalArgumentException(C1676a.m4789h("Unexpected TLS version: ", str));
        }
    }
}
