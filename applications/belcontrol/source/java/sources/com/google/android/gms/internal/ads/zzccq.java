package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzccq.class */
public final class zzccq {
    public zzafs zzgex;
    public zzafr zzgey;
    public zzagg zzgez;
    public zzagf zzgfa;
    public zzakb zzgfb;
    public final h4<String, zzafy> zzgfc = new h4<>();
    public final h4<String, zzafx> zzgfd = new h4<>();

    public final zzccq zza(zzagf zzagfVar) {
        this.zzgfa = zzagfVar;
        return this;
    }

    public final zzcco zzaor() {
        return new zzcco(this);
    }

    public final zzccq zzb(zzafr zzafrVar) {
        this.zzgey = zzafrVar;
        return this;
    }

    public final zzccq zzb(zzafs zzafsVar) {
        this.zzgex = zzafsVar;
        return this;
    }

    public final zzccq zzb(zzagg zzaggVar) {
        this.zzgez = zzaggVar;
        return this;
    }

    public final zzccq zzb(zzakb zzakbVar) {
        this.zzgfb = zzakbVar;
        return this;
    }

    public final zzccq zzb(String str, zzafy zzafyVar, zzafx zzafxVar) {
        this.zzgfc.put(str, zzafyVar);
        this.zzgfd.put(str, zzafxVar);
        return this;
    }
}
