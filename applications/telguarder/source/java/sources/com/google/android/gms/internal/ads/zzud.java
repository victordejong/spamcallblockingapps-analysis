package com.google.android.gms.internal.ads;

import android.os.RemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzud.class */
public final class zzud {
    private final byte[] zzbyj;
    private int zzbyk;
    private int zzbyl;
    private final /* synthetic */ zztz zzbym;

    /* JADX INFO: Access modifiers changed from: private */
    public zzud(zztz zztzVar, byte[] bArr) {
        this.zzbym = zztzVar;
        this.zzbyj = bArr;
    }

    public final void log() {
        synchronized (this) {
            try {
                if (this.zzbym.zzbyh) {
                    this.zzbym.zzbyg.zzc(this.zzbyj);
                    this.zzbym.zzbyg.zzs(this.zzbyk);
                    this.zzbym.zzbyg.zzt(this.zzbyl);
                    this.zzbym.zzbyg.zza(null);
                    this.zzbym.zzbyg.log();
                }
            } catch (RemoteException e) {
                zzazk.zzb("Clearcut log failed", e);
            }
        }
    }

    public final zzud zzbu(int i) {
        this.zzbyk = i;
        return this;
    }

    public final zzud zzbv(int i) {
        this.zzbyl = i;
        return this;
    }
}
