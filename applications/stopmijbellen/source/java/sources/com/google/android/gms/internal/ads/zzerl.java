package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
import com.google.android.gms.ads.internal.zzt;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzerl.class */
public final class zzerl implements zzevn<zzerm> {
    private final zzfxb zza;
    private final Context zzb;

    public zzerl(zzfxb zzfxbVar, Context context) {
        this.zza = zzfxbVar;
        this.zzb = context;
    }

    public final /* synthetic */ zzerm zza() throws Exception {
        AudioManager audioManager = (AudioManager) this.zzb.getSystemService("audio");
        return new zzerm(audioManager.getMode(), audioManager.isMusicActive(), audioManager.isSpeakerphoneOn(), audioManager.getStreamVolume(3), audioManager.getRingerMode(), audioManager.getStreamVolume(2), zzt.zzr().zza(), zzt.zzr().zze());
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzerm> zzb() {
        return this.zza.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzerk
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzerl.this.zza();
            }
        });
    }
}
