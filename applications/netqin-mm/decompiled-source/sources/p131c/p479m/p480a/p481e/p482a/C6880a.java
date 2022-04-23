package p131c.p479m.p480a.p481e.p482a;

import com.squareup.okhttp.Protocol;
import java.io.IOException;
import java.net.ProtocolException;
/* renamed from: c.m.a.e.a.a */
/* loaded from: classes2-dex2jar.jar:c/m/a/e/a/a.class */
public final class C6880a {

    /* renamed from: a */
    public final Protocol f21074a;

    /* renamed from: b */
    public final int f21075b;

    /* renamed from: c */
    public final String f21076c;

    public C6880a(Protocol protocol, int i, String str) {
        this.f21074a = protocol;
        this.f21075b = i;
        this.f21076c = str;
    }

    /* renamed from: a */
    public static C6880a m19484a(String str) throws IOException {
        Protocol protocol;
        String str2;
        int i = 9;
        if (str.startsWith("HTTP/1.")) {
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new ProtocolException("Unexpected status line: " + str);
            }
            int charAt = str.charAt(7) - '0';
            if (charAt == 0) {
                protocol = Protocol.HTTP_1_0;
            } else if (charAt == 1) {
                protocol = Protocol.HTTP_1_1;
            } else {
                throw new ProtocolException("Unexpected status line: " + str);
            }
        } else if (str.startsWith("ICY ")) {
            protocol = Protocol.HTTP_1_0;
            i = 4;
        } else {
            throw new ProtocolException("Unexpected status line: " + str);
        }
        int i2 = i + 3;
        if (str.length() >= i2) {
            try {
                int parseInt = Integer.parseInt(str.substring(i, i2));
                if (str.length() <= i2) {
                    str2 = "";
                } else if (str.charAt(i2) == ' ') {
                    str2 = str.substring(i + 4);
                } else {
                    throw new ProtocolException("Unexpected status line: " + str);
                }
                return new C6880a(protocol, parseInt, str2);
            } catch (NumberFormatException e) {
                throw new ProtocolException("Unexpected status line: " + str);
            }
        } else {
            throw new ProtocolException("Unexpected status line: " + str);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f21074a == Protocol.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
        sb.append(' ');
        sb.append(this.f21075b);
        if (this.f21076c != null) {
            sb.append(' ');
            sb.append(this.f21076c);
        }
        return sb.toString();
    }
}
