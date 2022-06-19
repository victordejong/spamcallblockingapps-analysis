package p246t9;

import com.google.android.gms.internal.ads.C1676a;
import java.io.IOException;
import java.net.ProtocolException;
import p204p9.EnumC4131w;
/* renamed from: t9.j */
/* loaded from: classes2-dex2jar.jar:t9/j.class */
public final class C4441j {

    /* renamed from: a */
    public final EnumC4131w f13807a;

    /* renamed from: b */
    public final int f13808b;

    /* renamed from: c */
    public final String f13809c;

    public C4441j(EnumC4131w enumC4131w, int i, String str) {
        this.f13807a = enumC4131w;
        this.f13808b = i;
        this.f13809c = str;
    }

    /* renamed from: a */
    public static C4441j m915a(String str) throws IOException {
        String str2;
        EnumC4131w enumC4131w = EnumC4131w.HTTP_1_0;
        int i = 9;
        if (str.startsWith("HTTP/1.")) {
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new ProtocolException(C1676a.m4789h("Unexpected status line: ", str));
            }
            int charAt = str.charAt(7) - '0';
            if (charAt != 0) {
                if (charAt != 1) {
                    throw new ProtocolException(C1676a.m4789h("Unexpected status line: ", str));
                }
                enumC4131w = EnumC4131w.HTTP_1_1;
            }
        } else if (!str.startsWith("ICY ")) {
            throw new ProtocolException(C1676a.m4789h("Unexpected status line: ", str));
        } else {
            i = 4;
        }
        int i2 = i + 3;
        if (str.length() >= i2) {
            try {
                int parseInt = Integer.parseInt(str.substring(i, i2));
                if (str.length() <= i2) {
                    str2 = "";
                } else if (str.charAt(i2) != ' ') {
                    throw new ProtocolException(C1676a.m4789h("Unexpected status line: ", str));
                } else {
                    str2 = str.substring(i + 4);
                }
                return new C4441j(enumC4131w, parseInt, str2);
            } catch (NumberFormatException e) {
                throw new ProtocolException(C1676a.m4789h("Unexpected status line: ", str));
            }
        }
        throw new ProtocolException(C1676a.m4789h("Unexpected status line: ", str));
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f13807a == EnumC4131w.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
        sb.append(' ');
        sb.append(this.f13808b);
        if (this.f13809c != null) {
            sb.append(' ');
            sb.append(this.f13809c);
        }
        return sb.toString();
    }
}
