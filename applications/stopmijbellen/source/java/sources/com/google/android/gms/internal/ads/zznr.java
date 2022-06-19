package com.google.android.gms.internal.ads;

import android.media.MediaCodec;
import android.os.HandlerThread;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zznr.class */
public final class zznr implements zzoe {
    private final zzfqs<HandlerThread> zzb;
    private final zzfqs<HandlerThread> zzc;

    public zznr(int i, boolean z) {
        zznp zznpVar = new zznp(i);
        zznq zznqVar = new zznq(i);
        this.zzb = zznpVar;
        this.zzc = zznqVar;
    }

    public static /* synthetic */ HandlerThread zza(int i) {
        String zzs;
        zzs = zznt.zzs(i, "ExoPlayer:MediaCodecAsyncAdapter:");
        return new HandlerThread(zzs);
    }

    public static /* synthetic */ HandlerThread zzb(int i) {
        String zzs;
        zzs = zznt.zzs(i, "ExoPlayer:MediaCodecQueueingThread:");
        return new HandlerThread(zzs);
    }

    public final zznt zzc(zzod zzodVar) throws IOException {
        MediaCodec mediaCodec;
        Exception e;
        zznt zzntVar;
        String str = zzodVar.zza.zza;
        zznt zzntVar2 = null;
        try {
            String valueOf = String.valueOf(str);
            zzfl.zza(valueOf.length() != 0 ? "createCodec:".concat(valueOf) : new String("createCodec:"));
            mediaCodec = MediaCodec.createByCodecName(str);
            try {
                zzntVar = new zznt(mediaCodec, zza(((zznp) this.zzb).zza), zzb(((zznq) this.zzc).zza), false, null);
            } catch (Exception e2) {
                e = e2;
            }
        } catch (Exception e3) {
            e = e3;
            mediaCodec = null;
        }
        try {
            zzfl.zzb();
            zznt.zzh(zzntVar, zzodVar.zzb, zzodVar.zzd, null, 0, false);
            return zzntVar;
        } catch (Exception e4) {
            e = e4;
            zzntVar2 = zzntVar;
            if (zzntVar2 != null) {
                zzntVar2.zzl();
            } else if (mediaCodec != null) {
                mediaCodec.release();
            }
            throw e;
        }
    }
}
