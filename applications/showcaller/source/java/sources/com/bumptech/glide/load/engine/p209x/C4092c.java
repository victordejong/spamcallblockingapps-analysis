package com.bumptech.glide.load.engine.p209x;

import android.graphics.Bitmap;
import com.bumptech.glide.p223p.C4383k;
/* renamed from: com.bumptech.glide.load.engine.x.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/x/c.class */
class C4092c implements AbstractC4108l {

    /* renamed from: a */
    private final C4094b f12911a = new C4094b();

    /* renamed from: b */
    private final C4099h<C4093a, Bitmap> f12912b = new C4099h<>();

    /* renamed from: com.bumptech.glide.load.engine.x.c$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/x/c$a.class */
    public static class C4093a implements AbstractC4109m {

        /* renamed from: a */
        private final C4094b f12913a;

        /* renamed from: b */
        private int f12914b;

        /* renamed from: c */
        private int f12915c;

        /* renamed from: d */
        private Bitmap.Config f12916d;

        public C4093a(C4094b c4094b) {
            this.f12913a = c4094b;
        }

        @Override // com.bumptech.glide.load.engine.p209x.AbstractC4109m
        /* renamed from: a */
        public void mo23231a() {
            this.f12913a.m23296c(this);
        }

        /* renamed from: b */
        public void m23300b(int i, int i2, Bitmap.Config config) {
            this.f12914b = i;
            this.f12915c = i2;
            this.f12916d = config;
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof C4093a) {
                C4093a c4093a = (C4093a) obj;
                z = false;
                if (this.f12914b == c4093a.f12914b) {
                    z = false;
                    if (this.f12915c == c4093a.f12915c) {
                        z = false;
                        if (this.f12916d == c4093a.f12916d) {
                            z = true;
                        }
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            int i = this.f12914b;
            int i2 = this.f12915c;
            Bitmap.Config config = this.f12916d;
            return (((i * 31) + i2) * 31) + (config != null ? config.hashCode() : 0);
        }

        public String toString() {
            return C4092c.m23302g(this.f12914b, this.f12915c, this.f12916d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.engine.x.c$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/x/c$b.class */
    public static class C4094b extends AbstractC4095d<C4093a> {
        C4094b() {
        }

        /* renamed from: d */
        public C4093a mo23229a() {
            return new C4093a(this);
        }

        /* renamed from: e */
        C4093a m23298e(int i, int i2, Bitmap.Config config) {
            C4093a m23297b = m23297b();
            m23297b.m23300b(i, i2, config);
            return m23297b;
        }
    }

    /* renamed from: g */
    static String m23302g(int i, int i2, Bitmap.Config config) {
        return "[" + i + "x" + i2 + "], " + config;
    }

    /* renamed from: h */
    private static String m23301h(Bitmap bitmap) {
        return m23302g(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
    }

    @Override // com.bumptech.glide.load.engine.p209x.AbstractC4108l
    /* renamed from: a */
    public Bitmap mo23242a() {
        return this.f12912b.m23288f();
    }

    @Override // com.bumptech.glide.load.engine.p209x.AbstractC4108l
    /* renamed from: b */
    public String mo23241b(int i, int i2, Bitmap.Config config) {
        return m23302g(i, i2, config);
    }

    @Override // com.bumptech.glide.load.engine.p209x.AbstractC4108l
    /* renamed from: c */
    public void mo23240c(Bitmap bitmap) {
        this.f12912b.m23290d(this.f12911a.m23298e(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig()), bitmap);
    }

    @Override // com.bumptech.glide.load.engine.p209x.AbstractC4108l
    /* renamed from: d */
    public Bitmap mo23239d(int i, int i2, Bitmap.Config config) {
        return this.f12912b.m23293a(this.f12911a.m23298e(i, i2, config));
    }

    @Override // com.bumptech.glide.load.engine.p209x.AbstractC4108l
    /* renamed from: e */
    public int mo23238e(Bitmap bitmap) {
        return C4383k.m22711g(bitmap);
    }

    @Override // com.bumptech.glide.load.engine.p209x.AbstractC4108l
    /* renamed from: f */
    public String mo23237f(Bitmap bitmap) {
        return m23301h(bitmap);
    }

    public String toString() {
        return "AttributeStrategy:\n  " + this.f12912b;
    }
}
