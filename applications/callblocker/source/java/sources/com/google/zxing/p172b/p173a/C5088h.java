package com.google.zxing.p172b.p173a;

import com.google.zxing.C5079b;
import java.nio.charset.StandardCharsets;
/* renamed from: com.google.zxing.b.a.h */
/* loaded from: classes-dex2jar.jar:com/google/zxing/b/a/h.class */
final class C5088h {

    /* renamed from: a */
    int f21531a;

    /* renamed from: b */
    private final String f21532b;

    /* renamed from: c */
    private EnumC5092l f21533c;

    /* renamed from: d */
    private C5079b f21534d;

    /* renamed from: e */
    private C5079b f21535e;

    /* renamed from: f */
    private final StringBuilder f21536f;

    /* renamed from: g */
    private int f21537g;

    /* renamed from: h */
    private C5091k f21538h;

    /* renamed from: i */
    private int f21539i;

    public C5088h(String str) {
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
        this.f21532b = sb.toString();
        this.f21533c = EnumC5092l.FORCE_NONE;
        this.f21536f = new StringBuilder(str.length());
        this.f21537g = -1;
    }

    /* renamed from: l */
    private int m1525l() {
        return this.f21532b.length() - this.f21539i;
    }

    /* renamed from: a */
    public String m1543a() {
        return this.f21532b;
    }

    /* renamed from: a */
    public void m1542a(char c) {
        this.f21536f.append(c);
    }

    /* renamed from: a */
    public void m1541a(int i) {
        this.f21539i = i;
    }

    /* renamed from: a */
    public void m1540a(EnumC5092l enumC5092l) {
        this.f21533c = enumC5092l;
    }

    /* renamed from: a */
    public void m1539a(C5079b c5079b, C5079b c5079b2) {
        this.f21534d = c5079b;
        this.f21535e = c5079b2;
    }

    /* renamed from: a */
    public void m1538a(String str) {
        this.f21536f.append(str);
    }

    /* renamed from: b */
    public char m1537b() {
        return this.f21532b.charAt(this.f21531a);
    }

    /* renamed from: b */
    public void m1536b(int i) {
        this.f21537g = i;
    }

    /* renamed from: c */
    public StringBuilder m1535c() {
        return this.f21536f;
    }

    /* renamed from: c */
    public void m1534c(int i) {
        if (this.f21538h == null || i > this.f21538h.m1498f()) {
            this.f21538h = C5091k.m1504a(i, this.f21533c, this.f21534d, this.f21535e, true);
        }
    }

    /* renamed from: d */
    public int m1533d() {
        return this.f21536f.length();
    }

    /* renamed from: e */
    public int m1532e() {
        return this.f21537g;
    }

    /* renamed from: f */
    public void m1531f() {
        this.f21537g = -1;
    }

    /* renamed from: g */
    public boolean m1530g() {
        return this.f21531a < m1525l();
    }

    /* renamed from: h */
    public int m1529h() {
        return m1525l() - this.f21531a;
    }

    /* renamed from: i */
    public C5091k m1528i() {
        return this.f21538h;
    }

    /* renamed from: j */
    public void m1527j() {
        m1534c(m1533d());
    }

    /* renamed from: k */
    public void m1526k() {
        this.f21538h = null;
    }
}
