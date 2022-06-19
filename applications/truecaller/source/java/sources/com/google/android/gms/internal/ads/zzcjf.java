package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcjf.class */
public final class zzcjf implements AudioManager.OnAudioFocusChangeListener {
    private final AudioManager zza;
    private final zzcje zzb;
    private boolean zzc;
    private boolean zzd;
    private boolean zze;
    private float zzf = 1.0f;

    public zzcjf(Context context, zzcje zzcjeVar) {
        this.zza = (AudioManager) context.getSystemService("audio");
        this.zzb = zzcjeVar;
    }

    private final void zzf() {
        boolean z = false;
        if (this.zzd && !this.zze && this.zzf > 0.0f) {
            if (this.zzc) {
                return;
            }
            AudioManager audioManager = this.zza;
            if (audioManager != null) {
                if (audioManager.requestAudioFocus(this, 3, 2) == 1) {
                    z = true;
                }
                this.zzc = z;
            }
            this.zzb.zzt();
        } else if (!this.zzc) {
        } else {
            AudioManager audioManager2 = this.zza;
            if (audioManager2 != null) {
                boolean z2 = false;
                if (audioManager2.abandonAudioFocus(this) == 0) {
                    z2 = true;
                }
                this.zzc = z2;
            }
            this.zzb.zzt();
        }
    }

    @Override // android.media.AudioManager.OnAudioFocusChangeListener
    public final void onAudioFocusChange(int i) {
        this.zzc = i > 0;
        this.zzb.zzt();
    }

    public final void zza(boolean z) {
        this.zze = z;
        zzf();
    }

    public final void zzb(float f) {
        this.zzf = f;
        zzf();
    }

    public final float zzc() {
        float f = this.zze ? 0.0f : this.zzf;
        if (this.zzc) {
            return f;
        }
        return 0.0f;
    }

    public final void zzd() {
        this.zzd = true;
        zzf();
    }

    public final void zze() {
        this.zzd = false;
        zzf();
    }
}
