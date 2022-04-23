package com.facebook.rebound;

import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
/* loaded from: classes3-dex2jar.jar:com/facebook/rebound/e.class */
public final class e {
    private static int l;

    /* renamed from: a  reason: collision with root package name */
    public g f20125a;

    /* renamed from: b  reason: collision with root package name */
    boolean f20126b;

    /* renamed from: c  reason: collision with root package name */
    final String f20127c;
    double g;
    public double h;
    private final b o;

    /* renamed from: d  reason: collision with root package name */
    public final a f20128d = new a();
    final a e = new a();
    final a f = new a();
    boolean i = true;
    private double m = 0.005d;
    private double n = 0.005d;
    CopyOnWriteArraySet<i> j = new CopyOnWriteArraySet<>();
    double k = 0.0d;

    /* loaded from: classes3-dex2jar.jar:com/facebook/rebound/e$a.class */
    public static final class a {

        /* renamed from: a  reason: collision with root package name */
        public double f20129a;

        /* renamed from: b  reason: collision with root package name */
        public double f20130b;

        private a() {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(b bVar) {
        if (bVar != null) {
            this.o = bVar;
            StringBuilder sb = new StringBuilder("spring:");
            int i = l;
            l = i + 1;
            sb.append(i);
            this.f20127c = sb.toString();
            a(g.f20135c);
            return;
        }
        throw new IllegalArgumentException("Spring cannot be created outside of a BaseSpringSystem");
    }

    private double a(a aVar) {
        return Math.abs(this.h - aVar.f20129a);
    }

    public final e a(double d2) {
        return a(1.0d, true);
    }

    public final e a(double d2, boolean z) {
        this.g = d2;
        this.f20128d.f20129a = d2;
        this.o.a(this.f20127c);
        Iterator<i> it2 = this.j.iterator();
        while (it2.hasNext()) {
            it2.next().a(this);
        }
        if (z) {
            c();
        }
        return this;
    }

    public final e a(g gVar) {
        if (gVar != null) {
            this.f20125a = gVar;
            return this;
        }
        throw new IllegalArgumentException("springConfig is required");
    }

    public final e a(i iVar) {
        if (iVar != null) {
            this.j.add(iVar);
            return this;
        }
        throw new IllegalArgumentException("newListener is required");
    }

    public final void a() {
        this.j.clear();
        this.o.a(this);
    }

    public final e b(double d2) {
        if (this.h == d2 && b()) {
            return this;
        }
        this.g = this.f20128d.f20129a;
        this.h = d2;
        this.o.a(this.f20127c);
        Iterator<i> it2 = this.j.iterator();
        while (it2.hasNext()) {
            it2.next().d(this);
        }
        return this;
    }

    public final e b(i iVar) {
        if (iVar != null) {
            this.j.remove(iVar);
            return this;
        }
        throw new IllegalArgumentException("listenerToRemove is required");
    }

    public final boolean b() {
        if (Math.abs(this.f20128d.f20130b) <= this.m) {
            return a(this.f20128d) <= this.n || this.f20125a.f20137b == 0.0d;
        }
        return false;
    }

    public final e c() {
        this.h = this.f20128d.f20129a;
        this.f.f20129a = this.f20128d.f20129a;
        this.f20128d.f20130b = 0.0d;
        return this;
    }

    public final e c(double d2) {
        if (d2 == this.f20128d.f20130b) {
            return this;
        }
        this.f20128d.f20130b = d2;
        this.o.a(this.f20127c);
        return this;
    }

    public final e d() {
        this.j.clear();
        return this;
    }
}
