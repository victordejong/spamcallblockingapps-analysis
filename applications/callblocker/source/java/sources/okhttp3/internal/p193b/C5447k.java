package okhttp3.internal.p193b;

import java.net.ProtocolException;
import okhttp3.EnumC5553y;
/* renamed from: okhttp3.internal.b.k */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/b/k.class */
public final class C5447k {

    /* renamed from: a */
    public final EnumC5553y f22753a;

    /* renamed from: b */
    public final int f22754b;

    /* renamed from: c */
    public final String f22755c;

    public C5447k(EnumC5553y enumC5553y, int i, String str) {
        this.f22753a = enumC5553y;
        this.f22754b = i;
        this.f22755c = str;
    }

    /* renamed from: a */
    public static C5447k m678a(String str) {
        EnumC5553y enumC5553y;
        String str2;
        int i = 9;
        if (str.startsWith("HTTP/1.")) {
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new ProtocolException("Unexpected status line: " + str);
            }
            int charAt = str.charAt(7) - '0';
            if (charAt == 0) {
                enumC5553y = EnumC5553y.HTTP_1_0;
            } else if (charAt != 1) {
                throw new ProtocolException("Unexpected status line: " + str);
            } else {
                enumC5553y = EnumC5553y.HTTP_1_1;
            }
        } else if (!str.startsWith("ICY ")) {
            throw new ProtocolException("Unexpected status line: " + str);
        } else {
            enumC5553y = EnumC5553y.HTTP_1_0;
            i = 4;
        }
        if (str.length() < i + 3) {
            throw new ProtocolException("Unexpected status line: " + str);
        }
        try {
            int parseInt = Integer.parseInt(str.substring(i, i + 3));
            if (str.length() <= i + 3) {
                str2 = "";
            } else if (str.charAt(i + 3) != ' ') {
                throw new ProtocolException("Unexpected status line: " + str);
            } else {
                str2 = str.substring(i + 4);
            }
            return new C5447k(enumC5553y, parseInt, str2);
        } catch (NumberFormatException e) {
            throw new ProtocolException("Unexpected status line: " + str);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f22753a == EnumC5553y.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
        sb.append(' ').append(this.f22754b);
        if (this.f22755c != null) {
            sb.append(' ').append(this.f22755c);
        }
        return sb.toString();
    }
}
