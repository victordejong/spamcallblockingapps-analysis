package okhttp3.internal.p092b;

import java.net.ProtocolException;
import okhttp3.EnumC2101x;
/* renamed from: okhttp3.internal.b.k */
/* loaded from: classes-dex2jar.jar:okhttp3/internal/b/k.class */
public final class C1997k {

    /* renamed from: a */
    public final EnumC2101x f4979a;

    /* renamed from: b */
    public final int f4980b;

    /* renamed from: c */
    public final String f4981c;

    public C1997k(EnumC2101x enumC2101x, int i, String str) {
        this.f4979a = enumC2101x;
        this.f4980b = i;
        this.f4981c = str;
    }

    /* renamed from: a */
    public static C1997k m2358a(String str) {
        EnumC2101x enumC2101x;
        String str2;
        int i = 9;
        if (str.startsWith("HTTP/1.")) {
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new ProtocolException("Unexpected status line: " + str);
            }
            int charAt = str.charAt(7) - '0';
            if (charAt == 0) {
                enumC2101x = EnumC2101x.HTTP_1_0;
            } else if (charAt != 1) {
                throw new ProtocolException("Unexpected status line: " + str);
            } else {
                enumC2101x = EnumC2101x.HTTP_1_1;
            }
        } else if (!str.startsWith("ICY ")) {
            throw new ProtocolException("Unexpected status line: " + str);
        } else {
            enumC2101x = EnumC2101x.HTTP_1_0;
            i = 4;
        }
        int i2 = i + 3;
        if (str.length() < i2) {
            throw new ProtocolException("Unexpected status line: " + str);
        }
        try {
            int parseInt = Integer.parseInt(str.substring(i, i2));
            if (str.length() <= i2) {
                str2 = "";
            } else if (str.charAt(i2) != ' ') {
                throw new ProtocolException("Unexpected status line: " + str);
            } else {
                str2 = str.substring(i + 4);
            }
            return new C1997k(enumC2101x, parseInt, str2);
        } catch (NumberFormatException e) {
            throw new ProtocolException("Unexpected status line: " + str);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f4979a == EnumC2101x.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
        sb.append(' ');
        sb.append(this.f4980b);
        if (this.f4981c != null) {
            sb.append(' ');
            sb.append(this.f4981c);
        }
        return sb.toString();
    }
}
