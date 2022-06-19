package com.google.android.gms.internal.ads;

import android.view.View;
import com.google.android.gms.ads.internal.zzg;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzace.class */
public final class zzace extends zzacj {
    private final zzg zzdbj;
    private final String zzdbk;
    private final String zzdbl;

    public zzace(zzg zzgVar, String str, String str2) {
        this.zzdbj = zzgVar;
        this.zzdbk = str;
        this.zzdbl = str2;
    }

    @Override // com.google.android.gms.internal.ads.zzacg
    public final String getContent() {
        return this.zzdbl;
    }

    @Override // com.google.android.gms.internal.ads.zzacg
    public final void recordClick() {
        this.zzdbj.zzkc();
    }

    @Override // com.google.android.gms.internal.ads.zzacg
    public final void recordImpression() {
        this.zzdbj.zzkd();
    }

    @Override // com.google.android.gms.internal.ads.zzacg
    public final void zzn(IObjectWrapper iObjectWrapper) {
        if (iObjectWrapper == null) {
            return;
        }
        this.zzdbj.zzh((View) ObjectWrapper.unwrap(iObjectWrapper));
    }

    @Override // com.google.android.gms.internal.ads.zzacg
    public final String zzsq() {
        return this.zzdbk;
    }
}
