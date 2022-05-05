package p081h.p119d.p120a.p124s.p126i.p127n;

import android.graphics.Bitmap;
import p081h.p119d.p120a.p149y.C6096h;
/* renamed from: h.d.a.s.i.n.a */
/* loaded from: classes-dex2jar.jar:h/d/a/s/i/n/a.class */
public class C5852a implements AbstractC5864g {

    /* renamed from: a */
    public final C5854b f14761a = new C5854b();

    /* renamed from: b */
    public final C5858e<C5853a, Bitmap> f14762b = new C5858e<>();

    /* renamed from: h.d.a.s.i.n.a$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/i/n/a$a.class */
    public static class C5853a implements AbstractC5865h {

        /* renamed from: a */
        public final C5854b f14763a;

        /* renamed from: b */
        public int f14764b;

        /* renamed from: c */
        public int f14765c;

        /* renamed from: d */
        public Bitmap.Config f14766d;

        public C5853a(C5854b bVar) {
            this.f14763a = bVar;
        }

        @Override // p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5865h
        /* renamed from: a */
        public void mo24199a() {
            this.f14763a.m24236a(this);
        }

        /* renamed from: a */
        public void m24238a(int i, int i2, Bitmap.Config config) {
            this.f14764b = i;
            this.f14765c = i2;
            this.f14766d = config;
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof C5853a) {
                C5853a aVar = (C5853a) obj;
                z = false;
                if (this.f14764b == aVar.f14764b) {
                    z = false;
                    if (this.f14765c == aVar.f14765c) {
                        z = false;
                        if (this.f14766d == aVar.f14766d) {
                            z = true;
                        }
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            int i = this.f14764b;
            int i2 = this.f14765c;
            Bitmap.Config config = this.f14766d;
            return (((i * 31) + i2) * 31) + (config != null ? config.hashCode() : 0);
        }

        public String toString() {
            return C5852a.m24240d(this.f14764b, this.f14765c, this.f14766d);
        }
    }

    /* renamed from: h.d.a.s.i.n.a$b */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/i/n/a$b.class */
    public static class C5854b extends AbstractC5855b<C5853a> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5855b
        /* renamed from: a */
        public C5853a mo24196a() {
            return new C5853a(this);
        }

        /* renamed from: a */
        public C5853a m24237a(int i, int i2, Bitmap.Config config) {
            C5853a b = m24235b();
            b.m24238a(i, i2, config);
            return b;
        }
    }

    /* renamed from: d */
    public static String m24240d(int i, int i2, Bitmap.Config config) {
        return "[" + i + "x" + i2 + "], " + config;
    }

    /* renamed from: d */
    public static String m24239d(Bitmap bitmap) {
        return m24240d(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig());
    }

    @Override // p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5864g
    /* renamed from: a */
    public Bitmap mo24210a(int i, int i2, Bitmap.Config config) {
        return this.f14762b.m24232a((C5858e<C5853a, Bitmap>) this.f14761a.m24237a(i, i2, config));
    }

    @Override // p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5864g
    /* renamed from: a */
    public void mo24207a(Bitmap bitmap) {
        this.f14762b.m24231a(this.f14761a.m24237a(bitmap.getWidth(), bitmap.getHeight(), bitmap.getConfig()), bitmap);
    }

    @Override // p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5864g
    /* renamed from: b */
    public String mo24204b(int i, int i2, Bitmap.Config config) {
        return m24240d(i, i2, config);
    }

    @Override // p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5864g
    /* renamed from: b */
    public String mo24201b(Bitmap bitmap) {
        return m24239d(bitmap);
    }

    @Override // p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5864g
    /* renamed from: c */
    public int mo24200c(Bitmap bitmap) {
        return C6096h.m23860a(bitmap);
    }

    @Override // p081h.p119d.p120a.p124s.p126i.p127n.AbstractC5864g
    public Bitmap removeLast() {
        return this.f14762b.m24234a();
    }

    public String toString() {
        return "AttributeStrategy:\n  " + this.f14762b;
    }
}
