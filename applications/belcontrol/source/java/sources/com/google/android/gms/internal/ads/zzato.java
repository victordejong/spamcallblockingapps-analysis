package com.google.android.gms.internal.ads;

import java.io.OutputStream;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzato.class */
public final /* synthetic */ class zzato implements Runnable {
    private final OutputStream zzdxd;
    private final byte[] zzdxe;

    public zzato(OutputStream outputStream, byte[] bArr) {
        this.zzdxd = outputStream;
        this.zzdxe = bArr;
    }

    @Override // java.lang.Runnable
    public final void run() {
        zzatp.zza(this.zzdxd, this.zzdxe);
    }
}
