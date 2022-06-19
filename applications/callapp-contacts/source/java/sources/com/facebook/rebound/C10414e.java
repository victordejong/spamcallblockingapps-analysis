package com.facebook.rebound;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
/* renamed from: com.facebook.rebound.e */
/* loaded from: classes3-dex2jar.jar:com/facebook/rebound/e.class */
public final class C10414e {

    /* renamed from: l */
    private static int f34070l;

    /* renamed from: a */
    public C10418g f34071a;

    /* renamed from: b */
    boolean f34072b;

    /* renamed from: c */
    final String f34073c;

    /* renamed from: g */
    double f34077g;

    /* renamed from: h */
    public double f34078h;

    /* renamed from: o */
    private final C10411b f34084o;

    /* renamed from: d */
    public final C10416a f34074d = new C10416a();

    /* renamed from: e */
    final C10416a f34075e = new C10416a();

    /* renamed from: f */
    final C10416a f34076f = new C10416a();

    /* renamed from: i */
    boolean f34079i = true;

    /* renamed from: m */
    private double f34082m = 0.005d;

    /* renamed from: n */
    private double f34083n = 0.005d;

    /* renamed from: j */
    CopyOnWriteArraySet<AbstractC10420i> f34080j = new CopyOnWriteArraySet<>();

    /* renamed from: k */
    double f34081k = 0.0d;

    /* renamed from: com.facebook.rebound.e$a */
    /* loaded from: classes3-dex2jar.jar:com/facebook/rebound/e$a.class */
    public static final class C10416a {

        /* renamed from: a */
        public double f34085a;

        /* renamed from: b */
        public double f34086b;

        private C10416a() {
        }
    }

    public C10414e(C10411b c10411b) {
        if (c10411b != null) {
            this.f34084o = c10411b;
            StringBuilder sb = new StringBuilder("spring:");
            int i = f34070l;
            f34070l = i + 1;
            sb.append(i);
            this.f34073c = sb.toString();
            m22843a(C10418g.f34095c);
            return;
        }
        throw new IllegalArgumentException("Spring cannot be created outside of a BaseSpringSystem");
    }

    /* renamed from: a */
    private double m22844a(C10416a c10416a) {
        return Math.abs(this.f34078h - c10416a.f34085a);
    }

    /* renamed from: a */
    public final C10414e m22846a(double d) {
        return m22845a(1.0d, true);
    }

    /* renamed from: a */
    public final C10414e m22845a(double d, boolean z) {
        this.f34077g = d;
        this.f34074d.f34085a = d;
        this.f34084o.m22853a(this.f34073c);
        Iterator<AbstractC10420i> it2 = this.f34080j.iterator();
        while (it2.hasNext()) {
            it2.next().mo22809a(this);
        }
        if (z) {
            m22838c();
        }
        return this;
    }

    /* renamed from: a */
    public final C10414e m22843a(C10418g c10418g) {
        if (c10418g != null) {
            this.f34071a = c10418g;
            return this;
        }
        throw new IllegalArgumentException("springConfig is required");
    }

    /* renamed from: a */
    public final C10414e m22842a(AbstractC10420i abstractC10420i) {
        if (abstractC10420i != null) {
            this.f34080j.add(abstractC10420i);
            return this;
        }
        throw new IllegalArgumentException("newListener is required");
    }

    /* renamed from: a */
    public final void m22847a() {
        this.f34080j.clear();
        this.f34084o.m22854a(this);
    }

    /* renamed from: b */
    public final C10414e m22840b(double d) {
        if (this.f34078h != d || !m22841b()) {
            this.f34077g = this.f34074d.f34085a;
            this.f34078h = d;
            this.f34084o.m22853a(this.f34073c);
            Iterator<AbstractC10420i> it2 = this.f34080j.iterator();
            while (it2.hasNext()) {
                it2.next().mo22806d(this);
            }
            return this;
        }
        return this;
    }

    /* renamed from: b */
    public final C10414e m22839b(AbstractC10420i abstractC10420i) {
        if (abstractC10420i != null) {
            this.f34080j.remove(abstractC10420i);
            return this;
        }
        throw new IllegalArgumentException("listenerToRemove is required");
    }

    /* renamed from: b */
    public final boolean m22841b() {
        if (Math.abs(this.f34074d.f34086b) <= this.f34082m) {
            return m22844a(this.f34074d) <= this.f34083n || this.f34071a.f34097b == 0.0d;
        }
        return false;
    }

    /* renamed from: c */
    public final C10414e m22838c() {
        this.f34078h = this.f34074d.f34085a;
        this.f34076f.f34085a = this.f34074d.f34085a;
        this.f34074d.f34086b = 0.0d;
        return this;
    }

    /* renamed from: c */
    public final C10414e m22837c(double d) {
        if (d == this.f34074d.f34086b) {
            return this;
        }
        this.f34074d.f34086b = d;
        this.f34084o.m22853a(this.f34073c);
        return this;
    }

    /* renamed from: d */
    public final C10414e m22836d() {
        this.f34080j.clear();
        return this;
    }
}
