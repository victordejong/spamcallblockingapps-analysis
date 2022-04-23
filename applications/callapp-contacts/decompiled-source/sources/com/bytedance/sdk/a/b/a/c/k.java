package com.bytedance.sdk.a.b.a.c;

import com.bytedance.sdk.a.b.aa;
import com.bytedance.sdk.a.b.w;
import java.io.IOException;
import java.net.ProtocolException;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/c/k.class */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    public final w f7902a;

    /* renamed from: b  reason: collision with root package name */
    public final int f7903b;

    /* renamed from: c  reason: collision with root package name */
    public final String f7904c;

    public k(w wVar, int i, String str) {
        this.f7902a = wVar;
        this.f7903b = i;
        this.f7904c = str;
    }

    public static k a(aa aaVar) {
        return new k(aaVar.b(), aaVar.c(), aaVar.e());
    }

    public static k a(String str) throws IOException {
        w wVar;
        String str2;
        int i = 9;
        if (str.startsWith("HTTP/1.")) {
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new ProtocolException("Unexpected status line: ".concat(String.valueOf(str)));
            }
            int charAt = str.charAt(7) - '0';
            if (charAt == 0) {
                wVar = w.HTTP_1_0;
            } else if (charAt == 1) {
                wVar = w.HTTP_1_1;
            } else {
                throw new ProtocolException("Unexpected status line: ".concat(String.valueOf(str)));
            }
        } else if (str.startsWith("ICY ")) {
            wVar = w.HTTP_1_0;
            i = 4;
        } else {
            throw new ProtocolException("Unexpected status line: ".concat(String.valueOf(str)));
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
                    throw new ProtocolException("Unexpected status line: ".concat(String.valueOf(str)));
                }
                return new k(wVar, parseInt, str2);
            } catch (NumberFormatException e) {
                throw new ProtocolException("Unexpected status line: ".concat(String.valueOf(str)));
            }
        } else {
            throw new ProtocolException("Unexpected status line: ".concat(String.valueOf(str)));
        }
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f7902a == w.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
        sb.append(' ');
        sb.append(this.f7903b);
        if (this.f7904c != null) {
            sb.append(' ');
            sb.append(this.f7904c);
        }
        return sb.toString();
    }
}
