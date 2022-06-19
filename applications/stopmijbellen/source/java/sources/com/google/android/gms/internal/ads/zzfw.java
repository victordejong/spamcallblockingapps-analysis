package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
import android.os.Handler;
import java.util.Objects;
import p007a6.C0028d;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfw.class */
public final class zzfw {
    private final AudioManager zza;
    private final zzfu zzb;
    private zzfv zzc;
    private float zze = 1.0f;
    private int zzd = 0;

    public zzfw(Context context, Handler handler, zzfv zzfvVar) {
        AudioManager audioManager = (AudioManager) context.getApplicationContext().getSystemService("audio");
        Objects.requireNonNull(audioManager);
        this.zza = audioManager;
        this.zzc = zzfvVar;
        this.zzb = new zzfu(this, handler);
    }

    public static /* bridge */ /* synthetic */ void zzc(zzfw zzfwVar, int i) {
        if (i == -3 || i == -2) {
            if (i != -2) {
                zzfwVar.zzg(3);
                return;
            }
            zzfwVar.zzf(0);
            zzfwVar.zzg(2);
        } else if (i == -1) {
            zzfwVar.zzf(-1);
            zzfwVar.zze();
        } else if (i != 1) {
            C0028d.m8913g(38, "Unknown focus change type: ", i, "AudioFocusManager");
        } else {
            zzfwVar.zzg(1);
            zzfwVar.zzf(1);
        }
    }

    private final void zze() {
        if (this.zzd == 0) {
            return;
        }
        if (zzfn.zza < 26) {
            this.zza.abandonAudioFocus(this.zzb);
        }
        zzg(0);
    }

    private final void zzf(int i) {
        int zzab;
        zzfv zzfvVar = this.zzc;
        if (zzfvVar != null) {
            zzir zzirVar = (zzir) zzfvVar;
            boolean zzaa = zzirVar.zza.zzaa();
            zziu zziuVar = zzirVar.zza;
            zzab = zziu.zzab(zzaa, i);
            zziuVar.zzah(zzaa, i, zzab);
        }
    }

    private final void zzg(int i) {
        if (this.zzd == i) {
            return;
        }
        this.zzd = i;
        float f = i == 3 ? 0.2f : 1.0f;
        if (this.zze == f) {
            return;
        }
        this.zze = f;
        zzfv zzfvVar = this.zzc;
        if (zzfvVar == null) {
            return;
        }
        ((zzir) zzfvVar).zza.zzaf();
    }

    public final float zza() {
        return this.zze;
    }

    public final int zzb(boolean z, int i) {
        zze();
        return z ? 1 : -1;
    }

    public final void zzd() {
        this.zzc = null;
        zze();
    }
}
