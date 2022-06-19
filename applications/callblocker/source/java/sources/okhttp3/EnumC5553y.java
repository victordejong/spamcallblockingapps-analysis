package okhttp3;

import java.io.IOException;
/* renamed from: okhttp3.y */
/* loaded from: classes-dex2jar.jar:okhttp3/y.class */
public enum EnumC5553y {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1"),
    HTTP_2("h2"),
    QUIC("quic");
    

    /* renamed from: f */
    private final String f23238f;

    EnumC5553y(String str) {
        this.f23238f = str;
    }

    /* renamed from: a */
    public static EnumC5553y m158a(String str) {
        EnumC5553y enumC5553y;
        if (str.equals(HTTP_1_0.f23238f)) {
            enumC5553y = HTTP_1_0;
        } else if (str.equals(HTTP_1_1.f23238f)) {
            enumC5553y = HTTP_1_1;
        } else if (str.equals(HTTP_2.f23238f)) {
            enumC5553y = HTTP_2;
        } else if (str.equals(SPDY_3.f23238f)) {
            enumC5553y = SPDY_3;
        } else if (!str.equals(QUIC.f23238f)) {
            throw new IOException("Unexpected protocol: " + str);
        } else {
            enumC5553y = QUIC;
        }
        return enumC5553y;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f23238f;
    }
}
