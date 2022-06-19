package com.esotericsoftware.p273a;
/* renamed from: com.esotericsoftware.a.n */
/* loaded from: classes2-dex2jar.jar:com/esotericsoftware/a/n.class */
final class C9358n {

    /* renamed from: a */
    C9360p f32085a;

    /* renamed from: b */
    C9360p f32086b;

    /* renamed from: c */
    C9360p f32087c;

    /* renamed from: d */
    String f32088d;

    /* renamed from: e */
    int f32089e;

    /* renamed from: f */
    C9358n f32090f;

    /* renamed from: a */
    public static C9358n m24572a(C9358n c9358n, C9360p c9360p, C9360p c9360p2) {
        if (c9358n == null) {
            return null;
        }
        c9358n.f32090f = m24572a(c9358n.f32090f, c9360p, c9360p2);
        int i = c9358n.f32085a.f32102c;
        int i2 = c9358n.f32086b.f32102c;
        int i3 = c9360p.f32102c;
        int i4 = c9360p2 == null ? Integer.MAX_VALUE : c9360p2.f32102c;
        C9358n c9358n2 = c9358n;
        if (i3 < i2) {
            c9358n2 = c9358n;
            if (i4 > i) {
                if (i3 <= i) {
                    if (i4 >= i2) {
                        c9358n2 = c9358n.f32090f;
                    } else {
                        c9358n.f32085a = c9360p2;
                        c9358n2 = c9358n;
                    }
                } else if (i4 >= i2) {
                    c9358n.f32086b = c9360p;
                    c9358n2 = c9358n;
                } else {
                    C9358n c9358n3 = new C9358n();
                    c9358n3.f32085a = c9360p2;
                    c9358n3.f32086b = c9358n.f32086b;
                    c9358n3.f32087c = c9358n.f32087c;
                    c9358n3.f32088d = c9358n.f32088d;
                    c9358n3.f32089e = c9358n.f32089e;
                    c9358n3.f32090f = c9358n.f32090f;
                    c9358n.f32086b = c9360p;
                    c9358n.f32090f = c9358n3;
                    c9358n2 = c9358n;
                }
            }
        }
        return c9358n2;
    }
}
