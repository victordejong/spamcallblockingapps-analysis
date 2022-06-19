package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbcv.class */
public final class zzbcv {
    private long zzdg;

    public final long zzq(ByteBuffer byteBuffer) {
        zzepl zzeplVar;
        zzbt zzbtVar;
        long j = this.zzdg;
        if (j > 0) {
            return j;
        }
        try {
            ByteBuffer duplicate = byteBuffer.duplicate();
            duplicate.flip();
            Iterator it = new zzbq(new zzbcw(duplicate), zzbcx.zzepj).zzbmk().iterator();
            while (true) {
                if (!it.hasNext()) {
                    zzeplVar = null;
                    break;
                }
                zzbs zzbsVar = (zzbs) it.next();
                if (zzbsVar instanceof zzbu) {
                    zzeplVar = (zzbu) zzbsVar;
                    break;
                }
            }
            Iterator it2 = zzeplVar.zzbmk().iterator();
            while (true) {
                zzbtVar = null;
                if (!it2.hasNext()) {
                    break;
                }
                zzbs zzbsVar2 = (zzbs) it2.next();
                if (zzbsVar2 instanceof zzbt) {
                    zzbtVar = (zzbt) zzbsVar2;
                    break;
                }
            }
            long duration = (zzbtVar.getDuration() * 1000) / zzbtVar.zzr();
            this.zzdg = duration;
            return duration;
        } catch (IOException | RuntimeException e) {
            return 0L;
        }
    }
}
