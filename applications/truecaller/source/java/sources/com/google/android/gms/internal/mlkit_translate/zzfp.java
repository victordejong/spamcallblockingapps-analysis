package com.google.android.gms.internal.mlkit_translate;

import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzfp.class */
public final class zzfp {
    private final /* synthetic */ Class zza;
    private final /* synthetic */ zzea zzb;

    public zzfp(Class cls, zzea zzeaVar) {
        this.zza = cls;
        this.zzb = zzeaVar;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Factory[type=");
        C22128a.m8545z0(this.zza, sb, ",adapter=");
        sb.append(this.zzb);
        sb.append("]");
        return sb.toString();
    }
}
