package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.measurement.zzp;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/tagmanager/zzfh.class */
final class zzfh {
    private zzdz<zzp> zzbff;
    private zzp zzbfg;

    public zzfh(zzdz<zzp> zzdzVar, zzp zzpVar) {
        this.zzbff = zzdzVar;
        this.zzbfg = zzpVar;
    }

    public final int getSize() {
        return this.zzbff.getObject().zzza() + (this.zzbfg == null ? 0 : this.zzbfg.zzza());
    }

    public final zzdz<zzp> zzpl() {
        return this.zzbff;
    }

    public final zzp zzpm() {
        return this.zzbfg;
    }
}
