package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import com.google.android.gms.ads.internal.util.zzap;
import com.google.android.gms.ads.internal.util.zzaq;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcno.class */
public final class zzcno extends zzatn {
    private final /* synthetic */ zzcnl zzgot;

    public zzcno(zzcnl zzcnlVar) {
        this.zzgot = zzcnlVar;
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final void zza(zzaq zzaqVar) {
        this.zzgot.zzdlg.setException(new zzap(zzaqVar.zzacp, zzaqVar.errorCode));
    }

    @Override // com.google.android.gms.internal.ads.zzatk
    public final void zzb(ParcelFileDescriptor parcelFileDescriptor) {
        this.zzgot.zzdlg.set(new ParcelFileDescriptor.AutoCloseInputStream(parcelFileDescriptor));
    }
}
