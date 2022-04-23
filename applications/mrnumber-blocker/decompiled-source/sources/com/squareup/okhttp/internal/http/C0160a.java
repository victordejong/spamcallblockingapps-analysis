package com.squareup.okhttp.internal.http;

import java.io.IOException;
import java.net.ProtocolException;
import p010g.p024k.p025a.EnumC0259d;
/* renamed from: com.squareup.okhttp.internal.http.a */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/http/a.class */
public final class C0160a {

    /* renamed from: a */
    public final EnumC0259d f261a;

    /* renamed from: b */
    public final int f262b;

    /* renamed from: c */
    public final String f263c;

    public C0160a(EnumC0259d dVar, int i, String str) {
        this.f261a = dVar;
        this.f262b = i;
        this.f263c = str;
    }

    /* renamed from: a */
    public static C0160a m863a(String str) throws IOException {
        EnumC0259d dVar;
        String str2;
        int i = 9;
        if (str.startsWith("HTTP/1.")) {
            if (str.length() < 9 || str.charAt(8) != ' ') {
                throw new ProtocolException("Unexpected status line: " + str);
            }
            int charAt = str.charAt(7) - '0';
            if (charAt == 0) {
                dVar = EnumC0259d.HTTP_1_0;
            } else if (charAt == 1) {
                dVar = EnumC0259d.HTTP_1_1;
            } else {
                throw new ProtocolException("Unexpected status line: " + str);
            }
        } else if (str.startsWith("ICY ")) {
            dVar = EnumC0259d.HTTP_1_0;
            i = 4;
        } else {
            throw new ProtocolException("Unexpected status line: " + str);
        }
        int i2 = i + 3;
        if (str.length() >= i2) {
            int parseInt = Integer.parseInt(str.substring(i, i2));
            if (str.length() <= i2) {
                str2 = "";
            } else if (str.charAt(i2) == ' ') {
                str2 = str.substring(i + 4);
            } else {
                throw new ProtocolException("Unexpected status line: " + str);
            }
            return new C0160a(dVar, parseInt, str2);
        }
        throw new ProtocolException("Unexpected status line: " + str);
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f261a == EnumC0259d.HTTP_1_0 ? "HTTP/1.0" : "HTTP/1.1");
        sb.append(' ');
        sb.append(this.f262b);
        if (this.f263c != null) {
            sb.append(' ');
            sb.append(this.f263c);
        }
        return sb.toString();
    }
}
