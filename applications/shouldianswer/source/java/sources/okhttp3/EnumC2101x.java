package okhttp3;

import java.io.IOException;
/* renamed from: okhttp3.x */
/* loaded from: classes-dex2jar.jar:okhttp3/x.class */
public enum EnumC2101x {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1"),
    HTTP_2("h2"),
    QUIC("quic");
    

    /* renamed from: f */
    private final String f5458f;

    EnumC2101x(String str) {
        this.f5458f = str;
    }

    /* renamed from: a */
    public static EnumC2101x m1838a(String str) {
        if (str.equals(HTTP_1_0.f5458f)) {
            return HTTP_1_0;
        }
        if (str.equals(HTTP_1_1.f5458f)) {
            return HTTP_1_1;
        }
        if (str.equals(HTTP_2.f5458f)) {
            return HTTP_2;
        }
        if (str.equals(SPDY_3.f5458f)) {
            return SPDY_3;
        }
        if (str.equals(QUIC.f5458f)) {
            return QUIC;
        }
        throw new IOException("Unexpected protocol: " + str);
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f5458f;
    }
}
