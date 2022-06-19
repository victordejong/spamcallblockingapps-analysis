package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaxf.class */
public final class zzaxf implements Comparator<zzaxl> {
    public zzaxf(zzaxh zzaxhVar) {
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(zzaxl zzaxlVar, zzaxl zzaxlVar2) {
        zzaxl zzaxlVar3 = zzaxlVar;
        zzaxl zzaxlVar4 = zzaxlVar2;
        int i = zzaxlVar3.zzc - zzaxlVar4.zzc;
        return i != 0 ? i : (int) (zzaxlVar3.zza - zzaxlVar4.zza);
    }
}
