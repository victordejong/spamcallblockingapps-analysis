package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import p1727n3.p1788g.C26187h;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdmx.class */
public final class zzdmx {
    public static final zzdmx zza = new zzdmx(new zzdmv());
    private final zzbni zzb;
    private final zzbnf zzc;
    private final zzbnv zzd;
    private final zzbns zze;
    private final zzbsg zzf;
    private final C26187h<String, zzbno> zzg;
    private final C26187h<String, zzbnl> zzh;

    /* JADX INFO: Access modifiers changed from: private */
    public zzdmx(zzdmv zzdmvVar) {
        this.zzb = zzdmvVar.zza;
        this.zzc = zzdmvVar.zzb;
        this.zzd = zzdmvVar.zzc;
        this.zzg = new C26187h<>(zzdmvVar.zzf);
        this.zzh = new C26187h<>(zzdmvVar.zzg);
        this.zze = zzdmvVar.zzd;
        this.zzf = zzdmvVar.zze;
    }

    public final zzbni zza() {
        return this.zzb;
    }

    public final zzbnf zzb() {
        return this.zzc;
    }

    public final zzbnv zzc() {
        return this.zzd;
    }

    public final zzbns zzd() {
        return this.zze;
    }

    public final zzbsg zze() {
        return this.zzf;
    }

    public final zzbno zzf(String str) {
        return this.zzg.getOrDefault(str, null);
    }

    public final zzbnl zzg(String str) {
        return this.zzh.getOrDefault(str, null);
    }

    public final ArrayList<String> zzh() {
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
        if (this.zzg.f73025c > 0) {
            arrayList.add(Integer.toString(3));
        }
        if (this.zzf != null) {
            arrayList.add(Integer.toString(7));
        }
        return arrayList;
    }

    public final ArrayList<String> zzi() {
        ArrayList<String> arrayList = new ArrayList<>(this.zzg.f73025c);
        int i = 0;
        while (true) {
            C26187h<String, zzbno> c26187h = this.zzg;
            if (i < c26187h.f73025c) {
                arrayList.add(c26187h.m2576l(i));
                i++;
            } else {
                return arrayList;
            }
        }
    }
}
