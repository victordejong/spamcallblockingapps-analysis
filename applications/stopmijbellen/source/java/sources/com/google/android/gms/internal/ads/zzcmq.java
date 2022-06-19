package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Iterator;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcmq.class */
public final class zzcmq {
    private long zza;

    public final long zza(ByteBuffer byteBuffer) {
        zzaih zzaihVar;
        zzaii zzaiiVar;
        long j = this.zza;
        if (j > 0) {
            return j;
        }
        try {
            ByteBuffer duplicate = byteBuffer.duplicate();
            duplicate.flip();
            Iterator<zzaif> it2 = new zzaid(new zzcmp(duplicate), zzcms.zzb).zze().iterator();
            while (true) {
                if (!it2.hasNext()) {
                    zzaihVar = null;
                    break;
                }
                zzaif next = it2.next();
                if (next instanceof zzaih) {
                    zzaihVar = (zzaih) next;
                    break;
                }
            }
            Iterator<zzaif> it3 = zzaihVar.zze().iterator();
            while (true) {
                zzaiiVar = null;
                if (!it3.hasNext()) {
                    break;
                }
                zzaif next2 = it3.next();
                if (next2 instanceof zzaii) {
                    zzaiiVar = (zzaii) next2;
                    break;
                }
            }
            long zzd = (zzaiiVar.zzd() * 1000) / zzaiiVar.zze();
            this.zza = zzd;
            return zzd;
        } catch (IOException | RuntimeException e) {
            return 0L;
        }
    }
}
