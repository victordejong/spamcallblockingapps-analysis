package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import p226s.C4263g;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdqn.class */
public final class zzdqn {
    public static final zzdqn zza = new zzdqn(new zzdql());
    private final zzbpj zzb;
    private final zzbpg zzc;
    private final zzbpw zzd;
    private final zzbpt zze;
    private final zzbui zzf;
    private final C4263g<String, zzbpp> zzg;
    private final C4263g<String, zzbpm> zzh;

    /* JADX INFO: Access modifiers changed from: private */
    public zzdqn(zzdql zzdqlVar) {
        this.zzb = zzdqlVar.zza;
        this.zzc = zzdqlVar.zzb;
        this.zzd = zzdqlVar.zzc;
        this.zzg = new C4263g<>(zzdqlVar.zzf);
        this.zzh = new C4263g<>(zzdqlVar.zzg);
        this.zze = zzdqlVar.zzd;
        this.zzf = zzdqlVar.zze;
    }

    public final zzbpg zza() {
        return this.zzc;
    }

    public final zzbpj zzb() {
        return this.zzb;
    }

    public final zzbpm zzc(String str) {
        return this.zzh.getOrDefault(str, null);
    }

    public final zzbpp zzd(String str) {
        return this.zzg.getOrDefault(str, null);
    }

    public final zzbpt zze() {
        return this.zze;
    }

    public final zzbpw zzf() {
        return this.zzd;
    }

    public final zzbui zzg() {
        return this.zzf;
    }

    public final ArrayList<String> zzh() {
        ArrayList<String> arrayList = new ArrayList<>(this.zzg.f13365c);
        int i = 0;
        while (true) {
            C4263g<String, zzbpp> c4263g = this.zzg;
            if (i < c4263g.f13365c) {
                arrayList.add(c4263g.m1195h(i));
                i++;
            } else {
                return arrayList;
            }
        }
    }

    public final ArrayList<String> zzi() {
        ArrayList<String> arrayList = new ArrayList<>();
        if (this.zzd != null) {
            arrayList.add(Integer.toString(6));
        }
        if (this.zzb != null) {
            arrayList.add(Integer.toString(1));
        }
        if (this.zzc != null) {
            arrayList.add(Integer.toString(2));
        }
        if (this.zzg.f13365c > 0) {
            arrayList.add(Integer.toString(3));
        }
        if (this.zzf != null) {
            arrayList.add(Integer.toString(7));
        }
        return arrayList;
    }
}
