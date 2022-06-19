package com.google.android.gms.internal.ads;

import java.util.Comparator;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzazc.class */
public final class zzazc implements Comparator<zzazi> {
    public zzazc(zzaze zzazeVar) {
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(zzazi zzaziVar, zzazi zzaziVar2) {
        zzazi zzaziVar3 = zzaziVar;
        zzazi zzaziVar4 = zzaziVar2;
        int i = zzaziVar3.zzc - zzaziVar4.zzc;
        return i != 0 ? i : (int) (zzaziVar3.zza - zzaziVar4.zza);
    }
}
