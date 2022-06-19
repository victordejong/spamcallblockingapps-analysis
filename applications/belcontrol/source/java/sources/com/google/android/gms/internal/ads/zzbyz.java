package com.google.android.gms.internal.ads;

import android.view.View;
import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbyz.class */
public class zzbyz {
    private final zzbeb zzdjd;
    private final zzcag zzgbj;

    public zzbyz(zzcag zzcagVar) {
        this(zzcagVar, null);
    }

    public zzbyz(zzcag zzcagVar, zzbeb zzbebVar) {
        this.zzgbj = zzcagVar;
        this.zzdjd = zzbebVar;
    }

    public final zzbeb zzaje() {
        return this.zzdjd;
    }

    public final zzcag zzamt() {
        return this.zzgbj;
    }

    public final View zzamu() {
        zzbeb zzbebVar = this.zzdjd;
        if (zzbebVar != null) {
            return zzbebVar.getWebView();
        }
        return null;
    }

    public final View zzamv() {
        zzbeb zzbebVar = this.zzdjd;
        if (zzbebVar == null) {
            return null;
        }
        return zzbebVar.getWebView();
    }

    public final zzbya<zzbvn> zzb(Executor executor) {
        return new zzbya<>(new zzbzb(this.zzdjd), executor);
    }

    public Set<zzbya<zzbrm>> zzb(zzbql zzbqlVar) {
        return Collections.singleton(zzbya.zzb(zzbqlVar, zzazp.zzeih));
    }

    public Set<zzbya<zzbxp>> zzc(zzbql zzbqlVar) {
        return Collections.singleton(zzbya.zzb(zzbqlVar, zzazp.zzeih));
    }
}
