package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Iterator;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbcv.class */
public final class zzbcv {
    private long zzdg;

    public final long zzq(ByteBuffer byteBuffer) {
        zzbu zzbuVar;
        zzbt zzbtVar;
        long j = this.zzdg;
        if (j > 0) {
            return j;
        }
        try {
            ByteBuffer duplicate = byteBuffer.duplicate();
            duplicate.flip();
            Iterator<zzbs> it = new zzbq(new zzbcw(duplicate), zzbcx.zzepj).zzbmk().iterator();
            while (true) {
                if (!it.hasNext()) {
                    zzbuVar = null;
                    break;
                }
                zzbs next = it.next();
                if (next instanceof zzbu) {
                    zzbuVar = (zzbu) next;
                    break;
                }
            }
            Iterator<zzbs> it2 = zzbuVar.zzbmk().iterator();
            while (true) {
                zzbtVar = null;
                if (!it2.hasNext()) {
                    break;
                }
                zzbs next2 = it2.next();
                if (next2 instanceof zzbt) {
                    zzbtVar = (zzbt) next2;
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
