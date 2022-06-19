package com.bumptech.glide.load.engine.p090a;

import android.graphics.Bitmap;
import com.bumptech.glide.p077h.C1457j;
/* renamed from: com.bumptech.glide.load.engine.a.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/c.class */
class C1674c implements AbstractC1690l {

    /* renamed from: a */
    private final C1676b f5115a = new C1676b();

    /* renamed from: b */
    private final C1681h<C1675a, Bitmap> f5116b = new C1681h<>();

    /* renamed from: com.bumptech.glide.load.engine.a.c$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/c$a.class */
    public static class C1675a implements AbstractC1691m {

        /* renamed from: a */
        private final C1676b f5117a;

        /* renamed from: b */
        private int f5118b;

        /* renamed from: c */
        private int f5119c;

        /* renamed from: d */
        private Bitmap.Config f5120d;

        public C1675a(C1676b c1676b) {
            this.f5117a = c1676b;
        }

        @Override // com.bumptech.glide.load.engine.p090a.AbstractC1691m
        /* renamed from: a */
        public void mo16515a() {
            this.f5117a.m16584a(this);
        }

        /* renamed from: a */
        public void m16587a(int i, int i2, Bitmap.Config config) {
            this.f5118b = i;
            this.f5119c = i2;
            this.f5120d = config;
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof C1675a) {
                C1675a c1675a = (C1675a) obj;
                z = false;
                if (this.f5118b == c1675a.f5118b) {
                    z = false;
                    if (this.f5119c == c1675a.f5119c) {
                        z = false;
                        if (this.f5120d == c1675a.f5120d) {
                            z = true;
                        }
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            int i = this.f5118b;
            return (this.f5120d != null ? this.f5120d.hashCode() : 0) + (((i * 31) + this.f5119c) * 31);
        }

        public String toString() {
            return C1674c.m16589c(this.f5118b, this.f5119c, this.f5120d);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.bumptech.glide.load.engine.a.c$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/c$b.class */
    public static class C1676b extends AbstractC1677d<C1675a> {
        C1676b() {
        }

        /* renamed from: a */
        public C1675a mo16511b() {
            return new C1675a(this);
        }

        /* renamed from: a */
        C1675a m16585a(int i, int i2, Bitmap.Config config) {
            C1675a c = m16583c();
            c.m16587a(i, i2, config);
            return c;
        }
    }

    /* renamed from: c */
    static String m16589c(int i, int i2, Bitmap.Config config) {
        return "[" + i + "x" + i2 + "], " + config;
    }

    /* renamed from: d */
    private static String m16588d(Bitmap bitmap) {
        return m16589c(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
    }

    @Override // com.bumptech.glide.load.engine.p090a.AbstractC1690l
    /* renamed from: a */
    public Bitmap mo16526a() {
        return this.f5116b.m16580a();
    }

    @Override // com.bumptech.glide.load.engine.p090a.AbstractC1690l
    /* renamed from: a */
    public Bitmap mo16525a(int i, int i2, Bitmap.Config config) {
        return this.f5116b.m16578a((C1681h<C1675a, Bitmap>) this.f5115a.m16585a(i, i2, config));
    }

    @Override // com.bumptech.glide.load.engine.p090a.AbstractC1690l
    /* renamed from: a */
    public void mo16522a(Bitmap bitmap) {
        this.f5116b.m16577a(this.f5115a.m16585a(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig()), bitmap);
    }

    @Override // com.bumptech.glide.load.engine.p090a.AbstractC1690l
    /* renamed from: b */
    public String mo16520b(int i, int i2, Bitmap.Config config) {
        return m16589c(i, i2, config);
    }

    @Override // com.bumptech.glide.load.engine.p090a.AbstractC1690l
    /* renamed from: b */
    public String mo16517b(Bitmap bitmap) {
        return m16588d(bitmap);
    }

    @Override // com.bumptech.glide.load.engine.p090a.AbstractC1690l
    /* renamed from: c */
    public int mo16516c(Bitmap bitmap) {
        return C1457j.m16977a(bitmap);
    }

    public String toString() {
        return "AttributeStrategy:\n  " + this.f5116b;
    }
}
