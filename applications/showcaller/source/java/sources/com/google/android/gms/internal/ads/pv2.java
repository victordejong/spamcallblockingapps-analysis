package com.google.android.gms.internal.ads;

import java.util.Collection;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/pv2.class */
public class pv2 extends rx2 {

    /* renamed from: f */
    final transient Map f28176f;

    /* renamed from: g */
    final /* synthetic */ zzfnd f28177g;

    public pv2(zzfnd zzfndVar, Map map) {
        this.f28177g = zzfndVar;
        this.f28176f = map;
    }

    @Override // com.google.android.gms.internal.ads.rx2
    /* renamed from: a */
    protected final Set<Map.Entry> mo11259a() {
        return new nv2(this);
    }

    /* renamed from: b */
    public final Map.Entry m12123b(Map.Entry entry) {
        Object key = entry.getKey();
        return new zzfof(key, this.f28177g.zzb(key, (Collection) entry.getValue()));
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        Map map;
        Map map2 = this.f28176f;
        map = this.f28177g.f34051g;
        if (map2 == map) {
            this.f28177g.zzi();
        } else {
            jx2.m14014b(new ov2(this));
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        boolean z;
        Map map = this.f28176f;
        Objects.requireNonNull(map);
        try {
            z = map.containsKey(obj);
        } catch (ClassCastException | NullPointerException e) {
            z = false;
        }
        return z;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        return this == obj || this.f28176f.equals(obj);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final /* bridge */ /* synthetic */ Object get(Object obj) {
        Collection collection = (Collection) sx2.m10891a(this.f28176f, obj);
        if (collection == null) {
            return null;
        }
        return this.f28177g.zzb(obj, collection);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        return this.f28176f.hashCode();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set keySet() {
        return this.f28177g.zzs();
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final /* bridge */ /* synthetic */ Object remove(Object obj) {
        int i;
        Collection collection = (Collection) this.f28176f.remove(obj);
        if (collection == null) {
            return null;
        }
        Collection zzc = this.f28177g.zzc();
        zzc.addAll(collection);
        zzfnd zzfndVar = this.f28177g;
        i = zzfndVar.f34052h;
        zzfndVar.f34052h = i - collection.size();
        collection.clear();
        return zzc;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.f28176f.size();
    }

    @Override // java.util.AbstractMap
    public final String toString() {
        return this.f28176f.toString();
    }
}
