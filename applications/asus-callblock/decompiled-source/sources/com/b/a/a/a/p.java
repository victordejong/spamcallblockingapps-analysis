package com.b.a.a.a;

import com.asus.updatesdk.BuildConfig;
import com.b.a.t;
import java.net.ProtocolException;
/* loaded from: classes-dex2jar.jar:com/b/a/a/a/p.class */
public final class p {

    /* renamed from: a  reason: collision with root package name */
    public final t f3222a;

    /* renamed from: b  reason: collision with root package name */
    public final int f3223b;
    public final String c;

    private p(t tVar, int i, String str) {
        this.f3222a = tVar;
        this.f3223b = i;
        this.c = str;
    }

    public static p a(String str) {
        t tVar;
        String str2;
        int i = 9;
        if (str.startsWith("HTTP/1.")) {
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new ProtocolException("Unexpected status line: " + str);
            }
            int charAt = str.charAt(7) - '0';
            if (charAt == 0) {
                tVar = t.HTTP_1_0;
            } else if (charAt == 1) {
                tVar = t.HTTP_1_1;
            } else {
                throw new ProtocolException("Unexpected status line: " + str);
            }
        } else if (str.startsWith("ICY ")) {
            tVar = t.HTTP_1_0;
            i = 4;
        } else {
            throw new ProtocolException("Unexpected status line: " + str);
        }
        if (str.length() < i + 3) {
            throw new ProtocolException("Unexpected status line: " + str);
        }
        try {
            int parseInt = Integer.parseInt(str.substring(i, i + 3));
            if (str.length() <= i + 3) {
                str2 = BuildConfig.FLAVOR;
            } else if (str.charAt(i + 3) != ' ') {
                throw new ProtocolException("Unexpected status line: " + str);
            } else {
                str2 = str.substring(i + 4);
            }
            return new p(tVar, parseInt, str2);
        } catch (NumberFormatException e) {
            throw new ProtocolException("Unexpected status line: " + str);
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f3222a == t.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
        sb.append(' ').append(this.f3223b);
        if (this.c != null) {
            sb.append(' ').append(this.c);
        }
        return sb.toString();
    }
}
