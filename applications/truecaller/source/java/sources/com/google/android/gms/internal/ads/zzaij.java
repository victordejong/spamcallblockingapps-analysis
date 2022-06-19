package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Handler;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaij.class */
public final class zzaij {
    private final Context zza;
    private final Handler zzb;
    private final zzaif zzc;
    private final AudioManager zzd;
    private zzaii zze;
    private int zzf = 3;
    private int zzg;
    private boolean zzh;

    public zzaij(Context context, Handler handler, zzaif zzaifVar) {
        Context applicationContext = context.getApplicationContext();
        this.zza = applicationContext;
        this.zzb = handler;
        this.zzc = zzaifVar;
        AudioManager audioManager = (AudioManager) applicationContext.getSystemService("audio");
        zzakt.zze(audioManager);
        this.zzd = audioManager;
        this.zzg = zzh(audioManager, 3);
        this.zzh = zzi(audioManager, this.zzf);
        zzaii zzaiiVar = new zzaii(this, null);
        try {
            applicationContext.registerReceiver(zzaiiVar, new IntentFilter("android.media.VOLUME_CHANGED_ACTION"));
            this.zze = zzaiiVar;
        } catch (RuntimeException e) {
            zzaln.zza("StreamVolumeManager", "Error registering stream volume receiver", e);
        }
    }

    public static /* synthetic */ void zzf(zzaij zzaijVar) {
        zzaijVar.zzg();
    }

    public final void zzg() {
        CopyOnWriteArraySet copyOnWriteArraySet;
        int zzh = zzh(this.zzd, this.zzf);
        boolean zzi = zzi(this.zzd, this.zzf);
        if (this.zzg == zzh && this.zzh == zzi) {
            return;
        }
        this.zzg = zzh;
        this.zzh = zzi;
        copyOnWriteArraySet = ((zzaib) this.zzc).zza.zzh;
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            ((zzahl) it.next()).zzad(zzh, zzi);
        }
    }

    private static int zzh(AudioManager audioManager, int i) {
        try {
            return audioManager.getStreamVolume(i);
        } catch (RuntimeException e) {
            StringBuilder sb = new StringBuilder(60);
            sb.append("Could not retrieve stream volume for stream type ");
            sb.append(i);
            zzaln.zza("StreamVolumeManager", sb.toString(), e);
            return audioManager.getStreamMaxVolume(i);
        }
    }

    private static boolean zzi(AudioManager audioManager, int i) {
        return zzamq.zza >= 23 ? audioManager.isStreamMute(i) : zzh(audioManager, i) == 0;
    }

    public final void zzb(int i) {
        zzaij zzaijVar;
        zzaee zzah;
        zzaee zzaeeVar;
        CopyOnWriteArraySet copyOnWriteArraySet;
        if (this.zzf == 3) {
            return;
        }
        this.zzf = 3;
        zzg();
        zzaib zzaibVar = (zzaib) this.zzc;
        zzaijVar = zzaibVar.zza.zzl;
        zzah = zzaie.zzah(zzaijVar);
        zzaeeVar = zzaibVar.zza.zzF;
        if (zzah.equals(zzaeeVar)) {
            return;
        }
        zzaibVar.zza.zzF = zzah;
        copyOnWriteArraySet = zzaibVar.zza.zzh;
        Iterator it = copyOnWriteArraySet.iterator();
        while (it.hasNext()) {
            ((zzahl) it.next()).zzac(zzah);
        }
    }

    public final int zzc() {
        if (zzamq.zza >= 28) {
            return this.zzd.getStreamMinVolume(this.zzf);
        }
        return 0;
    }

    public final int zzd() {
        return this.zzd.getStreamMaxVolume(this.zzf);
    }

    public final void zze() {
        zzaii zzaiiVar = this.zze;
        if (zzaiiVar != null) {
            try {
                this.zza.unregisterReceiver(zzaiiVar);
            } catch (RuntimeException e) {
                zzaln.zza("StreamVolumeManager", "Error unregistering stream volume receiver", e);
            }
            this.zze = null;
        }
    }
}
