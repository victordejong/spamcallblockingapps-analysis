package p599h.p600d0.p603g;

import java.io.IOException;
import java.net.ProtocolException;
import okhttp3.Protocol;
/* renamed from: h.d0.g.k */
/* loaded from: classes2-dex2jar.jar:h/d0/g/k.class */
public final class C10147k {

    /* renamed from: a */
    public final Protocol f37463a;

    /* renamed from: b */
    public final int f37464b;

    /* renamed from: c */
    public final String f37465c;

    public C10147k(Protocol protocol, int i, String str) {
        this.f37463a = protocol;
        this.f37464b = i;
        this.f37465c = str;
    }

    /* renamed from: a */
    public static C10147k m1287a(String str) throws IOException {
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
                return new C10147k(protocol, parseInt, str2);
            } catch (NumberFormatException e) {
                throw new ProtocolException("Unexpected status line: " + str);
            }
        } else {
            throw new ProtocolException("Unexpected status line: " + str);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f37463a == Protocol.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
        sb.append(' ');
        sb.append(this.f37464b);
        if (this.f37465c != null) {
            sb.append(' ');
            sb.append(this.f37465c);
        }
        return sb.toString();
    }
}
