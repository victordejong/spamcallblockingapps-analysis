package com.google.android.gms.internal.ads;

import android.content.Context;
import android.media.AudioManager;
import android.os.Handler;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzadt.class */
public final class zzadt {
    private final AudioManager zza;
    private final zzadr zzb;
    private zzads zzc;
    private float zze = 1.0f;
    private int zzd = 0;

    public zzadt(Context context, Handler handler, zzads zzadsVar) {
        AudioManager audioManager = (AudioManager) context.getApplicationContext().getSystemService("audio");
        Objects.requireNonNull(audioManager);
        this.zza = audioManager;
        this.zzc = zzadsVar;
        this.zzb = new zzadr(this, handler);
    }

    public static /* synthetic */ void zzd(zzadt zzadtVar, int i) {
        if (i == -3 || i == -2) {
            if (i != -2) {
                zzadtVar.zzf(3);
                return;
            }
            zzadtVar.zzg(0);
            zzadtVar.zzf(2);
        } else if (i == -1) {
            zzadtVar.zzg(-1);
            zzadtVar.zze();
        } else if (i != 1) {
        } else {
            zzadtVar.zzf(1);
            zzadtVar.zzg(1);
        }
    }

    private final void zze() {
        if (this.zzd == 0) {
            return;
        }
        if (zzamq.zza < 26) {
            this.zza.abandonAudioFocus(this.zzb);
        }
        zzf(0);
    }

    private final void zzf(int i) {
        if (this.zzd == i) {
            return;
        }
        this.zzd = i;
        float f = i == 3 ? 0.2f : 1.0f;
        if (this.zze == f) {
            return;
        }
        this.zze = f;
        zzads zzadsVar = this.zzc;
        if (zzadsVar == null) {
            return;
        }
        ((zzaib) zzadsVar).zza.zzad();
    }

    private final void zzg(int i) {
        int zzai;
        zzads zzadsVar = this.zzc;
        if (zzadsVar != null) {
            zzaib zzaibVar = (zzaib) zzadsVar;
            boolean zzM = zzaibVar.zza.zzM();
            zzaie zzaieVar = zzaibVar.zza;
            zzai = zzaie.zzai(zzM, i);
            zzaieVar.zzae(zzM, i, zzai);
        }
    }

    public final float zza() {
        return this.zze;
    }

    public final int zzb(boolean z, int i) {
        zze();
        return z ? 1 : -1;
    }

    public final void zzc() {
        this.zzc = null;
        zze();
    }
}
