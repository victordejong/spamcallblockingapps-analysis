package com.bytedance.sdk.p127a.p129b.p130a.p133c;

import com.bytedance.sdk.p127a.p129b.C4098aa;
import com.bytedance.sdk.p127a.p129b.EnumC4143w;
import java.io.IOException;
import java.net.ProtocolException;
/* renamed from: com.bytedance.sdk.a.b.a.c.k */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/b/a/c/k.class */
public final class C4030k {

    /* renamed from: a */
    public final EnumC4143w f14621a;

    /* renamed from: b */
    public final int f14622b;

    /* renamed from: c */
    public final String f14623c;

    public C4030k(EnumC4143w enumC4143w, int i, String str) {
        this.f14621a = enumC4143w;
        this.f14622b = i;
        this.f14623c = str;
    }

    /* renamed from: a */
    public static C4030k m36853a(C4098aa c4098aa) {
        return new C4030k(c4098aa.m36611b(), c4098aa.m36610c(), c4098aa.m36608e());
    }

    /* renamed from: a */
    public static C4030k m36852a(String str) throws IOException {
        EnumC4143w enumC4143w;
        String str2;
        int i = 9;
        if (str.startsWith("HTTP/1.")) {
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new ProtocolException("Unexpected status line: ".concat(String.valueOf(str)));
            }
            int charAt = str.charAt(7) - '0';
            if (charAt == 0) {
                enumC4143w = EnumC4143w.HTTP_1_0;
            } else if (charAt != 1) {
                throw new ProtocolException("Unexpected status line: ".concat(String.valueOf(str)));
            } else {
                enumC4143w = EnumC4143w.HTTP_1_1;
            }
        } else if (!str.startsWith("ICY ")) {
            throw new ProtocolException("Unexpected status line: ".concat(String.valueOf(str)));
        } else {
            enumC4143w = EnumC4143w.HTTP_1_0;
            i = 4;
        }
        int i2 = i + 3;
        if (str.length() >= i2) {
            try {
                int parseInt = Integer.parseInt(str.substring(i, i2));
                if (str.length() <= i2) {
                    str2 = "";
                } else if (str.charAt(i2) != ' ') {
                    throw new ProtocolException("Unexpected status line: ".concat(String.valueOf(str)));
                } else {
                    str2 = str.substring(i + 4);
                }
                return new C4030k(enumC4143w, parseInt, str2);
            } catch (NumberFormatException e) {
                throw new ProtocolException("Unexpected status line: ".concat(String.valueOf(str)));
            }
        }
        throw new ProtocolException("Unexpected status line: ".concat(String.valueOf(str)));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f14621a == EnumC4143w.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
        sb.append(' ');
        sb.append(this.f14622b);
        if (this.f14623c != null) {
            sb.append(' ');
            sb.append(this.f14623c);
        }
        return sb.toString();
    }
}
