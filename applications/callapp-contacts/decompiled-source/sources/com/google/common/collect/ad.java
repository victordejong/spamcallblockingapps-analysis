package com.google.common.collect;

import com.google.common.base.b;
import com.google.common.base.e;
import com.google.common.base.i;
import com.google.common.base.m;
import com.google.common.collect.ae;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/ad.class */
public final class ad {

    /* renamed from: a  reason: collision with root package name */
    boolean f31955a;

    /* renamed from: b  reason: collision with root package name */
    int f31956b = -1;

    /* renamed from: c  reason: collision with root package name */
    int f31957c = -1;

    /* renamed from: d  reason: collision with root package name */
    ae.n f31958d;
    ae.n e;
    e<Object> f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int a() {
        int i = this.f31956b;
        int i2 = i;
        if (i == -1) {
            i2 = 16;
        }
        return i2;
    }

    public final ad a(ae.n nVar) {
        ae.n nVar2 = this.f31958d;
        m.b(nVar2 == null, "Key strength was already set to %s", nVar2);
        this.f31958d = (ae.n) m.a(nVar);
        if (nVar != ae.n.STRONG) {
            this.f31955a = true;
        }
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int b() {
        int i = this.f31957c;
        int i2 = i;
        if (i == -1) {
            i2 = 4;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ae.n c() {
        return (ae.n) i.a(this.f31958d, ae.n.STRONG);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final ae.n d() {
        return (ae.n) i.a(this.e, ae.n.STRONG);
    }

    public final <K, V> ConcurrentMap<K, V> e() {
        return !this.f31955a ? new ConcurrentHashMap(a(), 0.75f, b()) : ae.a(this);
    }

    public final String toString() {
        i.a aVar = new i.a(getClass().getSimpleName());
        int i = this.f31956b;
        if (i != -1) {
            aVar.a("initialCapacity", i);
        }
        int i2 = this.f31957c;
        if (i2 != -1) {
            aVar.a("concurrencyLevel", i2);
        }
        ae.n nVar = this.f31958d;
        if (nVar != null) {
            aVar.a("keyStrength", b.a(nVar.toString()));
        }
        ae.n nVar2 = this.e;
        if (nVar2 != null) {
            aVar.a("valueStrength", b.a(nVar2.toString()));
        }
        if (this.f != null) {
            aVar.a().f31932b = "keyEquivalence";
        }
        return aVar.toString();
    }
}
