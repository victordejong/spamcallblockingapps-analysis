package com.google.android.gms.internal.ads;

import android.media.AudioManager;
import android.os.Handler;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfu.class */
public final class zzfu implements AudioManager.OnAudioFocusChangeListener {
    public final /* synthetic */ zzfw zza;
    private final Handler zzb;

    public zzfu(zzfw zzfwVar, Handler handler) {
        this.zza = zzfwVar;
        this.zzb = handler;
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(final int i) {
        this.zzb.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzft
            @Override // java.lang.Runnable
            public final void run() {
                zzfu zzfuVar = zzfu.this;
                zzfw.zzc(zzfuVar.zza, i);
            }
        });
    }
}
