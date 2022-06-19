package com.google.android.gms.internal.mlkit_translate;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzfo.class */
public final class zzfo {
    private final /* synthetic */ Class zza;
    private final /* synthetic */ Class zzb;
    private final /* synthetic */ zzea zzc;

    public zzfo(Class cls, Class cls2, zzea zzeaVar) {
        this.zza = cls;
        this.zzb = cls2;
        this.zzc = zzeaVar;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Factory[type=");
        C22128a.m8545z0(this.zzb, sb, "+");
        C22128a.m8545z0(this.zza, sb, ",adapter=");
        sb.append(this.zzc);
        sb.append("]");
        return sb.toString();
    }
}
