package com.esotericsoftware.p273a;
/* renamed from: com.esotericsoftware.a.c */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/a/c.class */
public final class C9347c {

    /* renamed from: a */
    public final String f31983a;

    /* renamed from: b */
    byte[] f31984b;

    /* renamed from: c */
    C9347c f31985c;

    public C9347c(String str) {
        this.f31983a = str;
    }

    /* renamed from: b */
    private C9348d m24653b() {
        C9348d c9348d = new C9348d();
        c9348d.f31986a = this.f31984b;
        c9348d.f31987b = this.f31984b.length;
        return c9348d;
    }

    /* renamed from: a */
    public final int m24657a() {
        int i = 0;
        C9347c c9347c = this;
        while (true) {
            C9347c c9347c2 = c9347c;
            if (c9347c2 != null) {
                i++;
                c9347c = c9347c2.f31985c;
            } else {
                return i;
            }
        }
    }

    /* renamed from: a */
    public final int m24655a(C9351g c9351g) {
        int i = 0;
        C9347c c9347c = this;
        while (true) {
            C9347c c9347c2 = c9347c;
            if (c9347c2 != null) {
                c9351g.m24606a(c9347c2.f31983a);
                i += c9347c2.m24653b().f31987b + 6;
                c9347c = c9347c2.f31985c;
            } else {
                return i;
            }
        }
    }

    /* renamed from: a */
    public final C9347c m24656a(C9349e c9349e, int i, int i2) {
        C9347c c9347c = new C9347c(this.f31983a);
        c9347c.f31984b = new byte[i2];
        System.arraycopy(c9349e.f31988a, i, c9347c.f31984b, 0, i2);
        return c9347c;
    }

    /* renamed from: a */
    public final void m24654a(C9351g c9351g, C9348d c9348d) {
        C9347c c9347c = this;
        while (true) {
            C9347c c9347c2 = c9347c;
            if (c9347c2 != null) {
                C9348d m24653b = c9347c2.m24653b();
                c9348d.m24646b(c9351g.m24606a(c9347c2.f31983a)).m24644c(m24653b.f31987b);
                c9348d.m24647a(m24653b.f31986a, 0, m24653b.f31987b);
                c9347c = c9347c2.f31985c;
            } else {
                return;
            }
        }
    }
}
