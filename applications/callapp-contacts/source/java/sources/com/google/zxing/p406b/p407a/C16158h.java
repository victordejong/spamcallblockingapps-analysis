package com.google.zxing.p406b.p407a;

import com.google.zxing.C16149b;
import java.nio.charset.StandardCharsets;
/* renamed from: com.google.zxing.b.a.h */
/* loaded from: classes4-dex2jar.jar:com/google/zxing/b/a/h.class */
final class C16158h {

    /* renamed from: a */
    final String f57079a;

    /* renamed from: b */
    EnumC16162l f57080b;

    /* renamed from: c */
    C16149b f57081c;

    /* renamed from: d */
    C16149b f57082d;

    /* renamed from: e */
    final StringBuilder f57083e;

    /* renamed from: f */
    int f57084f;

    /* renamed from: g */
    int f57085g;

    /* renamed from: h */
    C16161k f57086h;

    /* renamed from: i */
    int f57087i;

    public C16158h(String str) {
        byte[] bytes = str.getBytes(StandardCharsets.ISO_8859_1);
        StringBuilder sb = new StringBuilder(bytes.length);
        int length = bytes.length;
        for (int i = 0; i < length; i++) {
            char c = (char) (bytes[i] & 255);
            if (c == '?' && str.charAt(i) != '?') {
                throw new IllegalArgumentException("Message contains characters outside ISO-8859-1 encoding.");
            }
            sb.append(c);
        }
        this.f57079a = sb.toString();
        this.f57080b = EnumC16162l.FORCE_NONE;
        this.f57083e = new StringBuilder(str.length());
        this.f57085g = -1;
    }

    /* renamed from: e */
    private int m7728e() {
        return this.f57079a.length() - this.f57087i;
    }

    /* renamed from: a */
    public final char m7735a() {
        return this.f57079a.charAt(this.f57084f);
    }

    /* renamed from: a */
    public final void m7734a(char c) {
        this.f57083e.append(c);
    }

    /* renamed from: a */
    public final void m7733a(int i) {
        C16161k c16161k = this.f57086h;
        if (c16161k == null || i > c16161k.f57094b) {
            this.f57086h = C16161k.m7713a(i, this.f57080b, this.f57081c, this.f57082d);
        }
    }

    /* renamed from: a */
    public final void m7732a(String str) {
        this.f57083e.append(str);
    }

    /* renamed from: b */
    public final boolean m7731b() {
        return this.f57084f < m7728e();
    }

    /* renamed from: c */
    public final int m7730c() {
        return m7728e() - this.f57084f;
    }

    /* renamed from: d */
    public final void m7729d() {
        m7733a(this.f57083e.length());
    }
}
