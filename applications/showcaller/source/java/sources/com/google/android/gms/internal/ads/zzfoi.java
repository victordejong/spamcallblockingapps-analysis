package com.google.android.gms.internal.ads;

import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfoi.class */
public final class zzfoi extends zzfoj {

    /* renamed from: f */
    final transient int f34065f;

    /* renamed from: g */
    final transient int f34066g;
    final /* synthetic */ zzfoj zzc;

    public zzfoi(zzfoj zzfojVar, int i, int i2) {
        this.zzc = zzfojVar;
        this.f34065f = i;
        this.f34066g = i2;
    }

    @Override // java.util.List
    public final Object get(int i) {
        xu2.m9052e(i, this.f34066g, "index");
        return this.zzc.get(i + this.f34065f);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.f34066g;
    }

    @Override // com.google.android.gms.internal.ads.zzfoj, java.util.List
    public final /* bridge */ /* synthetic */ List subList(int i, int i2) {
        return subList(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzfoe
    public final Object[] zzb() {
        return this.zzc.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzfoe
    public final int zzc() {
        return this.zzc.zzc() + this.f34065f;
    }

    @Override // com.google.android.gms.internal.ads.zzfoe
    final int zzd() {
        return this.zzc.zzc() + this.f34065f + this.f34066g;
    }

    @Override // com.google.android.gms.internal.ads.zzfoe
    public final boolean zzf() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzfoj
    public final zzfoj zzh(int i, int i2) {
        xu2.m9050g(i, i2, this.f34066g);
        zzfoj zzfojVar = this.zzc;
        int i3 = this.f34065f;
        return zzfojVar.subList(i + i3, i2 + i3);
    }
}
