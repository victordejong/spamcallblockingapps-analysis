package com.google.common.collect;

import com.google.common.base.C8738a;
import com.google.common.base.C8747f;
import com.google.common.base.C8756j;
import com.google.common.base.Equivalence;
import com.google.common.collect.MapMakerInternalMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMaker.class */
public final class MapMaker {

    /* renamed from: a */
    boolean f38658a;

    /* renamed from: b */
    int f38659b = -1;

    /* renamed from: c */
    int f38660c = -1;

    /* renamed from: d */
    MapMakerInternalMap.Strength f38661d;

    /* renamed from: e */
    MapMakerInternalMap.Strength f38662e;

    /* renamed from: f */
    Equivalence<Object> f38663f;

    /* loaded from: classes2-dex2jar.jar:com/google/common/collect/MapMaker$Dummy.class */
    public enum Dummy {
        VALUE
    }

    /* renamed from: a */
    public MapMaker m2718a(int i) {
        int i2 = this.f38660c;
        C8756j.m2781t(i2 == -1, "concurrency level was already set to %s", i2);
        C8756j.m2797d(i > 0);
        this.f38660c = i;
        return this;
    }

    /* renamed from: b */
    public int m2717b() {
        int i = this.f38660c;
        int i2 = i;
        if (i == -1) {
            i2 = 4;
        }
        return i2;
    }

    /* renamed from: c */
    public int m2716c() {
        int i = this.f38659b;
        int i2 = i;
        if (i == -1) {
            i2 = 16;
        }
        return i2;
    }

    /* renamed from: d */
    public Equivalence<Object> m2715d() {
        return (Equivalence) C8747f.m2812a(this.f38663f, m2714e().defaultEquivalence());
    }

    /* renamed from: e */
    public MapMakerInternalMap.Strength m2714e() {
        return (MapMakerInternalMap.Strength) C8747f.m2812a(this.f38661d, MapMakerInternalMap.Strength.STRONG);
    }

    /* renamed from: f */
    public MapMakerInternalMap.Strength m2713f() {
        return (MapMakerInternalMap.Strength) C8747f.m2812a(this.f38662e, MapMakerInternalMap.Strength.STRONG);
    }

    /* renamed from: g */
    public MapMaker m2712g(int i) {
        int i2 = this.f38659b;
        C8756j.m2781t(i2 == -1, "initial capacity was already set to %s", i2);
        C8756j.m2797d(i >= 0);
        this.f38659b = i;
        return this;
    }

    /* renamed from: h */
    public MapMaker m2711h(Equivalence<Object> equivalence) {
        Equivalence<Object> equivalence2 = this.f38663f;
        C8756j.m2780u(equivalence2 == null, "key equivalence was already set to %s", equivalence2);
        this.f38663f = (Equivalence) C8756j.m2789l(equivalence);
        this.f38658a = true;
        return this;
    }

    /* renamed from: i */
    public <K, V> ConcurrentMap<K, V> m2710i() {
        return !this.f38658a ? new ConcurrentHashMap(m2716c(), 0.75f, m2717b()) : MapMakerInternalMap.create(this);
    }

    /* renamed from: j */
    public MapMaker m2709j(MapMakerInternalMap.Strength strength) {
        MapMakerInternalMap.Strength strength2 = this.f38661d;
        C8756j.m2780u(strength2 == null, "Key strength was already set to %s", strength2);
        this.f38661d = (MapMakerInternalMap.Strength) C8756j.m2789l(strength);
        if (strength != MapMakerInternalMap.Strength.STRONG) {
            this.f38658a = true;
        }
        return this;
    }

    /* renamed from: k */
    public MapMaker m2708k(MapMakerInternalMap.Strength strength) {
        MapMakerInternalMap.Strength strength2 = this.f38662e;
        C8756j.m2780u(strength2 == null, "Value strength was already set to %s", strength2);
        this.f38662e = (MapMakerInternalMap.Strength) C8756j.m2789l(strength);
        if (strength != MapMakerInternalMap.Strength.STRONG) {
            this.f38658a = true;
        }
        return this;
    }

    /* renamed from: l */
    public MapMaker m2707l() {
        return m2709j(MapMakerInternalMap.Strength.WEAK);
    }

    public String toString() {
        C8747f.C8749b m2811b = C8747f.m2811b(this);
        int i = this.f38659b;
        if (i != -1) {
            m2811b.m2810a("initialCapacity", i);
        }
        int i2 = this.f38660c;
        if (i2 != -1) {
            m2811b.m2810a("concurrencyLevel", i2);
        }
        MapMakerInternalMap.Strength strength = this.f38661d;
        if (strength != null) {
            m2811b.m2809b("keyStrength", C8738a.m2826b(strength.toString()));
        }
        MapMakerInternalMap.Strength strength2 = this.f38662e;
        if (strength2 != null) {
            m2811b.m2809b("valueStrength", C8738a.m2826b(strength2.toString()));
        }
        if (this.f38663f != null) {
            m2811b.m2805f("keyEquivalence");
        }
        return m2811b.toString();
    }
}
