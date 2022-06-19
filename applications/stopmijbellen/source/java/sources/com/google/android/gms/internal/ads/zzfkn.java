package com.google.android.gms.internal.ads;

import android.content.Context;
import android.database.ContentObserver;
import android.media.AudioManager;
import android.os.Handler;
import android.provider.Settings;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfkn.class */
public final class zzfkn extends ContentObserver {
    private final Context zza;
    private final AudioManager zzb;
    private final zzfkl zzc;
    private float zzd;
    private final zzfkw zze;

    public zzfkn(Handler handler, Context context, zzfkl zzfklVar, zzfkw zzfkwVar, byte[] bArr) {
        super(handler);
        this.zza = context;
        this.zzb = (AudioManager) context.getSystemService("audio");
        this.zzc = zzfklVar;
        this.zze = zzfkwVar;
    }

    private final float zzc() {
        int streamVolume = this.zzb.getStreamVolume(3);
        int streamMaxVolume = this.zzb.getStreamMaxVolume(3);
        float f = 1.0f;
        if (streamMaxVolume <= 0 || streamVolume <= 0) {
            f = 0.0f;
        } else {
            float f2 = streamVolume / streamMaxVolume;
            if (f2 <= 1.0f) {
                return f2;
            }
        }
        return f;
    }

    private final void zzd() {
        this.zze.zzd(this.zzd);
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        super.onChange(z);
        float zzc = zzc();
        if (zzc != this.zzd) {
            this.zzd = zzc;
            zzd();
        }
    }

    public final void zza() {
        this.zzd = zzc();
        zzd();
        this.zza.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, this);
    }

    public final void zzb() {
        this.zza.getContentResolver().unregisterContentObserver(this);
    }
}
