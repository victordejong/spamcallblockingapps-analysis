package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.internal.ads.zzug;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcal.class */
public final class zzcal implements zzeqb<zzcam> {
    private final zzeqo<Context> zzewk;
    private final zzeqo<zzaxc> zzfqr;
    private final zzeqo<View> zzfrt;
    private final zzeqo<zzug.zza.EnumC2617zza> zzftc;
    private final zzeqo<zzaxd> zzfwc;

    private zzcal(zzeqo<zzaxd> zzeqoVar, zzeqo<Context> zzeqoVar2, zzeqo<zzaxc> zzeqoVar3, zzeqo<View> zzeqoVar4, zzeqo<zzug.zza.EnumC2617zza> zzeqoVar5) {
        this.zzfwc = zzeqoVar;
        this.zzewk = zzeqoVar2;
        this.zzfqr = zzeqoVar3;
        this.zzfrt = zzeqoVar4;
        this.zzftc = zzeqoVar5;
    }

    public static zzcal zzd(zzeqo<zzaxd> zzeqoVar, zzeqo<Context> zzeqoVar2, zzeqo<zzaxc> zzeqoVar3, zzeqo<View> zzeqoVar4, zzeqo<zzug.zza.EnumC2617zza> zzeqoVar5) {
        return new zzcal(zzeqoVar, zzeqoVar2, zzeqoVar3, zzeqoVar4, zzeqoVar5);
    }

    @Override // com.google.android.gms.internal.ads.zzeqo
    public final /* synthetic */ Object get() {
        return new zzcam(this.zzfwc.get(), this.zzewk.get(), this.zzfqr.get(), this.zzfrt.get(), this.zzftc.get());
    }
}
