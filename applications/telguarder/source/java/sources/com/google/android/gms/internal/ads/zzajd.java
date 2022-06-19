package com.google.android.gms.internal.ads;

import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzajd.class */
final class zzajd extends zzaiw {
    private final /* synthetic */ zzbaa zzbwb;

    public zzajd(zzaja zzajaVar, zzbaa zzbaaVar) {
        this.zzbwb = zzbaaVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaix
    public final void zza(ParcelFileDescriptor parcelFileDescriptor) throws RemoteException {
        this.zzbwb.set(parcelFileDescriptor);
    }
}
