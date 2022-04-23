package com.google.common.collect;

import com.google.common.base.Equivalence;
import com.google.common.collect.MapMakerInternalMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import p131c.p161d.p266c.p267a.C4908a;
import p131c.p161d.p266c.p267a.C4924j;
import p131c.p161d.p266c.p267a.C4933n;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMaker.class */
public final class MapMaker {

    /* renamed from: a */
    public boolean f30649a;

    /* renamed from: b */
    public int f30650b = -1;

    /* renamed from: c */
    public int f30651c = -1;

    /* renamed from: d */
    public MapMakerInternalMap.Strength f30652d;

    /* renamed from: e */
    public MapMakerInternalMap.Strength f30653e;

    /* renamed from: f */
    public Equivalence<Object> f30654f;

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMaker$Dummy.class */
    public enum Dummy {
        VALUE
    }

    /* renamed from: a */
    public int m8218a() {
        int i = this.f30651c;
        int i2 = i;
        if (i == -1) {
            i2 = 4;
        }
        return i2;
    }

    /* renamed from: a */
    public MapMaker m8217a(int i) {
        boolean z = true;
        C4933n.m24774b(this.f30651c == -1, "concurrency level was already set to %s", this.f30651c);
        if (i <= 0) {
            z = false;
        }
        C4933n.m24791a(z);
        this.f30651c = i;
        return this;
    }

    /* renamed from: a */
    public MapMaker m8216a(Equivalence<Object> equivalence) {
        C4933n.m24772b(this.f30654f == null, "key equivalence was already set to %s", this.f30654f);
        C4933n.m24795a(equivalence);
        this.f30654f = equivalence;
        this.f30649a = true;
        return this;
    }

    /* renamed from: a */
    public MapMaker m8215a(MapMakerInternalMap.Strength strength) {
        C4933n.m24772b(this.f30652d == null, "Key strength was already set to %s", this.f30652d);
        C4933n.m24795a(strength);
        this.f30652d = strength;
        if (strength != MapMakerInternalMap.Strength.STRONG) {
            this.f30649a = true;
        }
        return this;
    }

    /* renamed from: b */
    public int m8214b() {
        int i = this.f30650b;
        int i2 = i;
        if (i == -1) {
            i2 = 16;
        }
        return i2;
    }

    /* renamed from: b */
    public MapMaker m8213b(int i) {
        boolean z = true;
        C4933n.m24774b(this.f30650b == -1, "initial capacity was already set to %s", this.f30650b);
        if (i < 0) {
            z = false;
        }
        C4933n.m24791a(z);
        this.f30650b = i;
        return this;
    }

    /* renamed from: b */
    public MapMaker m8212b(MapMakerInternalMap.Strength strength) {
        C4933n.m24772b(this.f30653e == null, "Value strength was already set to %s", this.f30653e);
        C4933n.m24795a(strength);
        this.f30653e = strength;
        if (strength != MapMakerInternalMap.Strength.STRONG) {
            this.f30649a = true;
        }
        return this;
    }

    /* renamed from: c */
    public Equivalence<Object> m8211c() {
        return (Equivalence) C4924j.m24819a(this.f30654f, m8210d().defaultEquivalence());
    }

    /* renamed from: d */
    public MapMakerInternalMap.Strength m8210d() {
        return (MapMakerInternalMap.Strength) C4924j.m24819a(this.f30652d, MapMakerInternalMap.Strength.STRONG);
    }

    /* renamed from: e */
    public MapMakerInternalMap.Strength m8209e() {
        return (MapMakerInternalMap.Strength) C4924j.m24819a(this.f30653e, MapMakerInternalMap.Strength.STRONG);
    }

    /* renamed from: f */
    public <K, V> ConcurrentMap<K, V> m8208f() {
        return !this.f30649a ? new ConcurrentHashMap(m8214b(), 0.75f, m8218a()) : MapMakerInternalMap.create(this);
    }

    /* renamed from: g */
    public MapMaker m8207g() {
        m8215a(MapMakerInternalMap.Strength.WEAK);
        return this;
    }

    public String toString() {
        C4924j.C4926b a = C4924j.m24820a(this);
        int i = this.f30650b;
        if (i != -1) {
            a.m24815a("initialCapacity", i);
        }
        int i2 = this.f30651c;
        if (i2 != -1) {
            a.m24815a("concurrencyLevel", i2);
        }
        MapMakerInternalMap.Strength strength = this.f30652d;
        if (strength != null) {
            a.m24813a("keyStrength", C4908a.m24843a(strength.toString()));
        }
        MapMakerInternalMap.Strength strength2 = this.f30653e;
        if (strength2 != null) {
            a.m24813a("valueStrength", C4908a.m24843a(strength2.toString()));
        }
        if (this.f30654f != null) {
            a.m24810b("keyEquivalence");
        }
        return a.toString();
    }
}
