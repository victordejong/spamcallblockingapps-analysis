package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbmc.class */
public class zzbmc {
    private final View view;
    private final zzbeb zzdjd;
    private final zzdmz zzftn;
    private final zzbnu zzfuo;

    public zzbmc(View view, zzbeb zzbebVar, zzbnu zzbnuVar, zzdmz zzdmzVar) {
        this.view = view;
        this.zzdjd = zzbebVar;
        this.zzfuo = zzbnuVar;
        this.zzftn = zzdmzVar;
    }

    public zzbsw zza(Set<zzbya<zzbtb>> set) {
        return new zzbsw(set);
    }

    public final zzbeb zzaje() {
        return this.zzdjd;
    }

    public final View zzajr() {
        return this.view;
    }

    public final zzbnu zzakd() {
        return this.zzfuo;
    }

    public final zzdmz zzake() {
        return this.zzftn;
    }
}
