package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.IntentFilter;
import android.media.AudioManager;
import android.os.Handler;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzja.class */
public final class zzja {
    private final Context zza;
    private final Handler zzb;
    private final zziw zzc;
    private final AudioManager zzd;
    private zziz zze;
    private int zzf = 3;
    private int zzg;
    private boolean zzh;

    public zzja(Context context, Handler handler, zziw zziwVar) {
        Context applicationContext = context.getApplicationContext();
        this.zza = applicationContext;
        this.zzb = handler;
        this.zzc = zziwVar;
        AudioManager audioManager = (AudioManager) applicationContext.getSystemService("audio");
        zzdy.zzb(audioManager);
        this.zzd = audioManager;
        this.zzg = zzg(audioManager, 3);
        this.zzh = zzi(audioManager, this.zzf);
        zziz zzizVar = new zziz(this, null);
        try {
            applicationContext.registerReceiver(zzizVar, new IntentFilter("android.media.VOLUME_CHANGED_ACTION"));
            this.zze = zzizVar;
        } catch (RuntimeException e) {
            zzep.zzb("StreamVolumeManager", "Error registering stream volume receiver", e);
        }
    }

    public static /* bridge */ /* synthetic */ void zzd(zzja zzjaVar) {
        zzjaVar.zzh();
    }

    private static int zzg(AudioManager audioManager, int i) {
        try {
            return audioManager.getStreamVolume(i);
        } catch (RuntimeException e) {
            StringBuilder sb = new StringBuilder(60);
            sb.append("Could not retrieve stream volume for stream type ");
            sb.append(i);
            zzep.zzb("StreamVolumeManager", sb.toString(), e);
            return audioManager.getStreamMaxVolume(i);
        }
    }

    public final void zzh() {
        CopyOnWriteArraySet copyOnWriteArraySet;
        int zzg = zzg(this.zzd, this.zzf);
        boolean zzi = zzi(this.zzd, this.zzf);
        if (this.zzg == zzg && this.zzh == zzi) {
            return;
        }
        this.zzg = zzg;
        this.zzh = zzi;
        copyOnWriteArraySet = ((zzir) this.zzc).zza.zzh;
        Iterator it2 = copyOnWriteArraySet.iterator();
        while (it2.hasNext()) {
            ((zzbt) it2.next()).zzr(zzg, zzi);
        }
    }

    private static boolean zzi(AudioManager audioManager, int i) {
        return zzfn.zza >= 23 ? audioManager.isStreamMute(i) : zzg(audioManager, i) == 0;
    }

    public final int zza() {
        return this.zzd.getStreamMaxVolume(this.zzf);
    }

    public final int zzb() {
        if (zzfn.zza >= 28) {
            return this.zzd.getStreamMinVolume(this.zzf);
        }
        return 0;
    }

    public final void zze() {
        zziz zzizVar = this.zze;
        if (zzizVar != null) {
            try {
                this.zza.unregisterReceiver(zzizVar);
            } catch (RuntimeException e) {
                zzep.zzb("StreamVolumeManager", "Error unregistering stream volume receiver", e);
            }
            this.zze = null;
        }
    }

    public final void zzf(int i) {
        zzja zzjaVar;
        zzo zzac;
        zzo zzoVar;
        CopyOnWriteArraySet copyOnWriteArraySet;
        if (this.zzf == 3) {
            return;
        }
        this.zzf = 3;
        zzh();
        zzir zzirVar = (zzir) this.zzc;
        zzjaVar = zzirVar.zza.zzl;
        zzac = zziu.zzac(zzjaVar);
        zzoVar = zzirVar.zza.zzF;
        if (zzac.equals(zzoVar)) {
            return;
        }
        zzirVar.zza.zzF = zzac;
        copyOnWriteArraySet = zzirVar.zza.zzh;
        Iterator it2 = copyOnWriteArraySet.iterator();
        while (it2.hasNext()) {
            ((zzbt) it2.next()).zzq(zzac);
        }
    }
}
