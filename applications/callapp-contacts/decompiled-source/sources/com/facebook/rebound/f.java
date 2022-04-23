package com.facebook.rebound;

import java.util.concurrent.CopyOnWriteArrayList;
/* loaded from: classes3-dex2jar.jar:com/facebook/rebound/f.class */
public final class f implements i {

    /* renamed from: b  reason: collision with root package name */
    private static final h f20131b = h.a();

    /* renamed from: c  reason: collision with root package name */
    private static int f20132c = 0;

    /* renamed from: a  reason: collision with root package name */
    public final CopyOnWriteArrayList<e> f20133a;

    /* renamed from: d  reason: collision with root package name */
    private final k f20134d;
    private final CopyOnWriteArrayList<i> e;
    private int f;
    private final g g;
    private final g h;

    private f() {
        this(40, 6, 70, 10);
    }

    private f(int i, int i2, int i3, int i4) {
        this.f20134d = k.c();
        this.e = new CopyOnWriteArrayList<>();
        this.f20133a = new CopyOnWriteArrayList<>();
        this.f = -1;
        g a2 = g.a(i, i2);
        this.g = a2;
        g a3 = g.a(i3, i4);
        this.h = a3;
        h hVar = f20131b;
        StringBuilder sb = new StringBuilder("main spring ");
        int i5 = f20132c;
        f20132c = i5 + 1;
        sb.append(i5);
        hVar.a(a2, sb.toString());
        StringBuilder sb2 = new StringBuilder("attachment spring ");
        int i6 = f20132c;
        f20132c = i6 + 1;
        sb2.append(i6);
        hVar.a(a3, sb2.toString());
    }

    public static f a() {
        return new f();
    }

    public final f a(int i) {
        this.f = i;
        if (this.f20133a.get(i) == null) {
            return null;
        }
        for (e eVar : this.f20134d.b()) {
            eVar.a(this.h);
        }
        b().a(this.g);
        return this;
    }

    public final f a(i iVar) {
        this.f20133a.add(this.f20134d.a().a(this).a(this.h));
        this.e.add(iVar);
        return this;
    }

    @Override // com.facebook.rebound.i
    public final void a(e eVar) {
        int i;
        int indexOf = this.f20133a.indexOf(eVar);
        i iVar = this.e.get(indexOf);
        int i2 = this.f;
        int i3 = -1;
        if (indexOf == i2) {
            i3 = indexOf + 1;
            i = indexOf - 1;
        } else if (indexOf < i2) {
            i = indexOf - 1;
        } else {
            i3 = -1;
            if (indexOf > i2) {
                i3 = indexOf + 1;
            }
            i = -1;
        }
        if (i3 >= 0 && i3 < this.f20133a.size()) {
            this.f20133a.get(i3).b(eVar.f20128d.f20129a);
        }
        if (i >= 0 && i < this.f20133a.size()) {
            this.f20133a.get(i).b(eVar.f20128d.f20129a);
        }
        iVar.a(eVar);
    }

    public final e b() {
        return this.f20133a.get(this.f);
    }

    @Override // com.facebook.rebound.i
    public final void b(e eVar) {
        this.e.get(this.f20133a.indexOf(eVar)).b(eVar);
    }

    @Override // com.facebook.rebound.i
    public final void c(e eVar) {
        this.e.get(this.f20133a.indexOf(eVar)).c(eVar);
    }

    @Override // com.facebook.rebound.i
    public final void d(e eVar) {
        this.e.get(this.f20133a.indexOf(eVar)).d(eVar);
    }
}
