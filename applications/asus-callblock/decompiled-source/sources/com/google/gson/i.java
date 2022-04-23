package com.google.gson;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/gson/i.class */
public final class i extends l implements Iterable<l> {

    /* renamed from: a  reason: collision with root package name */
    private final List<l> f4552a = new ArrayList();

    @Override // com.google.gson.l
    public final Number a() {
        if (this.f4552a.size() == 1) {
            return this.f4552a.get(0).a();
        }
        throw new IllegalStateException();
    }

    public final void a(l lVar) {
        l lVar2 = lVar;
        if (lVar == null) {
            lVar2 = n.f4553a;
        }
        this.f4552a.add(lVar2);
    }

    @Override // com.google.gson.l
    public final String b() {
        if (this.f4552a.size() == 1) {
            return this.f4552a.get(0).b();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.l
    public final double c() {
        if (this.f4552a.size() == 1) {
            return this.f4552a.get(0).c();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.l
    public final long d() {
        if (this.f4552a.size() == 1) {
            return this.f4552a.get(0).d();
        }
        throw new IllegalStateException();
    }

    @Override // com.google.gson.l
    public final int e() {
        if (this.f4552a.size() == 1) {
            return this.f4552a.get(0).e();
        }
        throw new IllegalStateException();
    }

    public final boolean equals(Object obj) {
        return obj == this || ((obj instanceof i) && ((i) obj).f4552a.equals(this.f4552a));
    }

    @Override // com.google.gson.l
    public final boolean f() {
        if (this.f4552a.size() == 1) {
            return this.f4552a.get(0).f();
        }
        throw new IllegalStateException();
    }

    public final int hashCode() {
        return this.f4552a.hashCode();
    }

    @Override // java.lang.Iterable
    public final Iterator<l> iterator() {
        return this.f4552a.iterator();
    }
}
