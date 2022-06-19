package p204p9;

import com.google.android.gms.internal.ads.C1676a;
import java.io.IOException;
/* renamed from: p9.w */
/* loaded from: classes2-dex2jar.jar:p9/w.class */
public enum EnumC4131w {
    HTTP_1_0("http/1.0"),
    HTTP_1_1("http/1.1"),
    SPDY_3("spdy/3.1"),
    HTTP_2("h2"),
    H2_PRIOR_KNOWLEDGE("h2_prior_knowledge"),
    QUIC("quic");
    

    /* renamed from: a */
    public final String f13030a;

    EnumC4131w(String str) {
        this.f13030a = str;
    }

    /* renamed from: a */
    public static EnumC4131w m1368a(String str) throws IOException {
        EnumC4131w enumC4131w = HTTP_1_0;
        if (str.equals("http/1.0")) {
            return enumC4131w;
        }
        EnumC4131w enumC4131w2 = HTTP_1_1;
        if (str.equals("http/1.1")) {
            return enumC4131w2;
        }
        EnumC4131w enumC4131w3 = H2_PRIOR_KNOWLEDGE;
        if (str.equals("h2_prior_knowledge")) {
            return enumC4131w3;
        }
        EnumC4131w enumC4131w4 = HTTP_2;
        if (str.equals("h2")) {
            return enumC4131w4;
        }
        EnumC4131w enumC4131w5 = SPDY_3;
        if (str.equals("spdy/3.1")) {
            return enumC4131w5;
        }
        EnumC4131w enumC4131w6 = QUIC;
        if (!str.equals("quic")) {
            throw new IOException(C1676a.m4789h("Unexpected protocol: ", str));
        }
        return enumC4131w6;
    }

    @Override // java.lang.Enum
    public String toString() {
        return this.f13030a;
    }
}
