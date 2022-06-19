package com.squareup.okhttp.internal.http;

import com.squareup.okhttp.C2959r;
import com.squareup.okhttp.Protocol;
import java.net.ProtocolException;
/* renamed from: com.squareup.okhttp.internal.http.o */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/http/o.class */
public final class C2940o {

    /* renamed from: a */
    public final Protocol f12402a;

    /* renamed from: b */
    public final int f12403b;

    /* renamed from: c */
    public final String f12404c;

    public C2940o(Protocol protocol, int i, String str) {
        this.f12402a = protocol;
        this.f12403b = i;
        this.f12404c = str;
    }

    /* renamed from: a */
    public static C2940o m918a(C2959r c2959r) {
        return new C2940o(c2959r.m741v(), c2959r.m749n(), c2959r.m744s());
    }

    /* renamed from: b */
    public static C2940o m917b(String str) {
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
            } else if (charAt != 1) {
                throw new ProtocolException("Unexpected status line: " + str);
            } else {
                protocol = Protocol.HTTP_1_1;
            }
        } else if (!str.startsWith("ICY ")) {
            throw new ProtocolException("Unexpected status line: " + str);
        } else {
            protocol = Protocol.HTTP_1_0;
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
            return new C2940o(protocol, parseInt, str2);
        } catch (NumberFormatException e) {
            throw new ProtocolException("Unexpected status line: " + str);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f12402a == Protocol.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
        sb.append(' ');
        sb.append(this.f12403b);
        if (this.f12404c != null) {
            sb.append(' ');
            sb.append(this.f12404c);
        }
        return sb.toString();
    }
}
