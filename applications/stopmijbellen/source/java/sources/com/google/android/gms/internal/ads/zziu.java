package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.AudioTrack;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zziu.class */
public final class zziu extends zzi {
    private float zzA;
    private boolean zzB;
    private List zzC;
    private boolean zzD;
    private boolean zzE;
    private zzo zzF;
    private zzct zzG;
    public final zzil[] zzb;
    private final zzeb zzc;
    private final Context zzd;
    private final zzhf zze;
    private final zzir zzf;
    private final zzit zzg;
    private final CopyOnWriteArraySet<zzbt> zzh;
    private final zzlb zzi;
    private final zzfs zzj;
    private final zzfw zzk;
    private final zzja zzl;
    private final zzjb zzm;
    private final zzjc zzn;
    private zzab zzo;
    private zzab zzp;
    private AudioTrack zzq;
    private Object zzr;
    private Surface zzs;
    private int zzt;
    private int zzu;
    private int zzv;
    private zzfy zzw;
    private zzfy zzx;
    private int zzy;
    private zzg zzz;

    public zziu(zzip zzipVar) {
        Throwable th;
        Context context;
        zzlb zzlbVar;
        zzg zzgVar;
        Looper looper;
        zzcoa zzcoaVar;
        zzsv zzsvVar;
        zzqk zzqkVar;
        zzhs zzhsVar;
        zzte zzteVar;
        zzio zzioVar;
        zzgb zzgbVar;
        zzdz zzdzVar;
        Looper looper2;
        Context context2;
        Context context3;
        Context context4;
        Context context5;
        Context context6;
        zzeb zzebVar = new zzeb(zzdz.zza);
        this.zzc = zzebVar;
        try {
            context = zzipVar.zza;
            Context applicationContext = context.getApplicationContext();
            this.zzd = applicationContext;
            zzlbVar = zzipVar.zzg;
            this.zzi = zzlbVar;
            zzgVar = zzipVar.zzi;
            this.zzz = zzgVar;
            this.zzt = 1;
            this.zzB = false;
            zzir zzirVar = new zzir(this, null);
            this.zzf = zzirVar;
            zzit zzitVar = new zzit(null);
            this.zzg = zzitVar;
            this.zzh = new CopyOnWriteArraySet<>();
            looper = zzipVar.zzh;
            Handler handler = new Handler(looper);
            zzcoaVar = zzipVar.zzl;
            zzil[] zza = zzcoaVar.zza(handler, zzirVar, zzirVar, zzirVar, zzirVar);
            this.zzb = zza;
            this.zzA = 1.0f;
            if (zzfn.zza < 21) {
                AudioTrack audioTrack = this.zzq;
                if (audioTrack != null && audioTrack.getAudioSessionId() != 0) {
                    this.zzq.release();
                    this.zzq = null;
                }
                if (this.zzq == null) {
                    this.zzq = new AudioTrack(3, 4000, 4, 2, 2, 0, 0);
                }
                this.zzy = this.zzq.getAudioSessionId();
            } else {
                this.zzy = zzk.zza(applicationContext);
            }
            this.zzC = Collections.emptyList();
            this.zzD = true;
            zzbp zzbpVar = new zzbp();
            try {
                zzbpVar.zzc(20, 21, 22, 23, 24, 25, 26, 27);
                zzbr zze = zzbpVar.zze();
                zzsvVar = zzipVar.zzc;
                zzqkVar = zzipVar.zzd;
                zzhsVar = zzipVar.zze;
                zzteVar = zzipVar.zzf;
                zzioVar = zzipVar.zzj;
                zzgbVar = zzipVar.zzm;
                zzdzVar = zzipVar.zzb;
                looper2 = zzipVar.zzh;
                zzhf zzhfVar = new zzhf(zza, zzsvVar, zzqkVar, zzhsVar, zzteVar, zzlbVar, true, zzioVar, 5000L, 15000L, zzgbVar, 500L, false, zzdzVar, looper2, this, zze, null);
                try {
                    this.zze = zzhfVar;
                    zzhfVar.zzx(zzirVar);
                    zzhfVar.zzw(zzirVar);
                    context2 = zzipVar.zza;
                    this.zzj = new zzfs(context2, handler, zzirVar);
                    context3 = zzipVar.zza;
                    this.zzk = new zzfw(context3, handler, zzirVar);
                    zzfn.zzP(null, null);
                    context4 = zzipVar.zza;
                    zzja zzjaVar = new zzja(context4, handler, zzirVar);
                    this.zzl = zzjaVar;
                    int i = this.zzz.zzc;
                    zzjaVar.zzf(3);
                    context5 = zzipVar.zza;
                    this.zzm = new zzjb(context5);
                    context6 = zzipVar.zza;
                    this.zzn = new zzjc(context6);
                    this.zzF = zzac(zzjaVar);
                    this.zzG = zzct.zza;
                    zzae(1, 10, Integer.valueOf(this.zzy));
                    zzae(2, 10, Integer.valueOf(this.zzy));
                    zzae(1, 3, this.zzz);
                    zzae(2, 4, Integer.valueOf(this.zzt));
                    zzae(2, 5, 0);
                    zzae(1, 9, Boolean.valueOf(this.zzB));
                    zzae(2, 7, zzitVar);
                    zzae(6, 8, zzitVar);
                    zzebVar.zze();
                } catch (Throwable th2) {
                    th = th2;
                    this.zzc.zze();
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public static /* bridge */ /* synthetic */ CopyOnWriteArraySet zzA(zziu zziuVar) {
        return zziuVar.zzh;
    }

    public static /* bridge */ /* synthetic */ void zzB(zziu zziuVar, zzfy zzfyVar) {
        zziuVar.zzx = zzfyVar;
    }

    public static /* bridge */ /* synthetic */ void zzC(zziu zziuVar, zzab zzabVar) {
        zziuVar.zzp = zzabVar;
    }

    public static /* bridge */ /* synthetic */ void zzD(zziu zziuVar, zzo zzoVar) {
        zziuVar.zzF = zzoVar;
    }

    public static /* bridge */ /* synthetic */ void zzE(zziu zziuVar, boolean z) {
        zziuVar.zzB = z;
    }

    public static /* bridge */ /* synthetic */ void zzF(zziu zziuVar, zzfy zzfyVar) {
        zziuVar.zzw = zzfyVar;
    }

    public static /* bridge */ /* synthetic */ void zzG(zziu zziuVar, zzab zzabVar) {
        zziuVar.zzo = zzabVar;
    }

    public static /* bridge */ /* synthetic */ void zzH(zziu zziuVar, zzct zzctVar) {
        zziuVar.zzG = zzctVar;
    }

    public static /* bridge */ /* synthetic */ void zzI(zziu zziuVar, int i, int i2) {
        zziuVar.zzad(i, i2);
    }

    public static /* bridge */ /* synthetic */ void zzJ(zziu zziuVar) {
        zziuVar.zzi.zzt(zziuVar.zzB);
        Iterator<zzbt> it2 = zziuVar.zzh.iterator();
        while (it2.hasNext()) {
            it2.next().zzt(zziuVar.zzB);
        }
    }

    public static /* bridge */ /* synthetic */ void zzL(zziu zziuVar, SurfaceTexture surfaceTexture) {
        Surface surface = new Surface(surfaceTexture);
        zziuVar.zzag(surface);
        zziuVar.zzs = surface;
    }

    public static /* bridge */ /* synthetic */ void zzM(zziu zziuVar, Object obj) {
        zziuVar.zzag(null);
    }

    public static /* synthetic */ void zzO(zziu zziuVar) {
        int zzr = zziuVar.zzr();
        if (zzr == 2 || zzr == 3) {
            zziuVar.zzai();
            zziuVar.zze.zzH();
            zziuVar.zzaa();
            zziuVar.zzaa();
        }
    }

    public static /* bridge */ /* synthetic */ boolean zzZ(zziu zziuVar) {
        return zziuVar.zzB;
    }

    public static int zzab(boolean z, int i) {
        return (!z || i == 1) ? 1 : 2;
    }

    public static zzo zzac(zzja zzjaVar) {
        return new zzo(0, zzjaVar.zzb(), zzjaVar.zza());
    }

    public final void zzad(int i, int i2) {
        if (i == this.zzu && i2 == this.zzv) {
            return;
        }
        this.zzu = i;
        this.zzv = i2;
        this.zzi.zzbk(i, i2);
        Iterator<zzbt> it2 = this.zzh.iterator();
        while (it2.hasNext()) {
            it2.next().zzbk(i, i2);
        }
    }

    private final void zzae(int i, int i2, Object obj) {
        zzil[] zzilVarArr = this.zzb;
        int length = zzilVarArr.length;
        for (int i3 = 0; i3 < 2; i3++) {
            zzil zzilVar = zzilVarArr[i3];
            if (zzilVar.zzb() == i) {
                zzii zzv = this.zze.zzv(zzilVar);
                zzv.zzf(i2);
                zzv.zze(obj);
                zzv.zzd();
            }
        }
    }

    public final void zzaf() {
        zzae(1, 2, Float.valueOf(this.zzA * this.zzk.zza()));
    }

    public final void zzag(Object obj) {
        boolean z;
        boolean z2;
        ArrayList arrayList = new ArrayList();
        zzil[] zzilVarArr = this.zzb;
        int length = zzilVarArr.length;
        for (int i = 0; i < 2; i++) {
            zzil zzilVar = zzilVarArr[i];
            if (zzilVar.zzb() == 2) {
                zzii zzv = this.zze.zzv(zzilVar);
                zzv.zzf(1);
                zzv.zze(obj);
                zzv.zzd();
                arrayList.add(zzv);
            }
        }
        Object obj2 = this.zzr;
        if (obj2 == null || obj2 == obj) {
            z = false;
        } else {
            try {
                Iterator it2 = arrayList.iterator();
                while (it2.hasNext()) {
                    ((zzii) it2.next()).zzi(2000L);
                }
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            } catch (TimeoutException e2) {
                z2 = true;
            }
            z2 = false;
            Object obj3 = this.zzr;
            Surface surface = this.zzs;
            z = z2;
            if (obj3 == surface) {
                surface.release();
                this.zzs = null;
                z = z2;
            }
        }
        this.zzr = obj;
        if (z) {
            this.zze.zzG(false, zzgg.zzd(new zzhq(3), 1003));
        }
    }

    public final void zzah(boolean z, int i, int i2) {
        boolean z2 = z && i != -1;
        this.zze.zzF(z2, (!z2 || i == 1) ? 0 : 1, i2);
    }

    private final void zzai() {
        this.zzc.zzb();
        if (Thread.currentThread() != this.zze.zzu().getThread()) {
            String zzD = zzfn.zzD("Player is accessed on the wrong thread.\nCurrent thread: '%s'\nExpected thread: '%s'\nSee https://exoplayer.dev/issues/player-accessed-on-wrong-thread", Thread.currentThread().getName(), this.zze.zzu().getThread().getName());
            if (this.zzD) {
                throw new IllegalStateException(zzD);
            }
            zzep.zzb("SimpleExoPlayer", zzD, this.zzE ? null : new IllegalStateException());
            this.zzE = true;
        }
    }

    public static /* bridge */ /* synthetic */ zzo zzv(zziu zziuVar) {
        return zziuVar.zzF;
    }

    public static /* bridge */ /* synthetic */ zzo zzw(zzja zzjaVar) {
        return zzac(zzjaVar);
    }

    public static /* bridge */ /* synthetic */ zzja zzx(zziu zziuVar) {
        return zziuVar.zzl;
    }

    public static /* bridge */ /* synthetic */ zzlb zzy(zziu zziuVar) {
        return zziuVar.zzi;
    }

    public static /* bridge */ /* synthetic */ Object zzz(zziu zziuVar) {
        return zziuVar.zzr;
    }

    public final void zzP(zzld zzldVar) {
        this.zzi.zzP(zzldVar);
    }

    public final void zzQ() {
        zzai();
        boolean zzaa = zzaa();
        int zzb = this.zzk.zzb(zzaa, 2);
        zzah(zzaa, zzb, zzab(zzaa, zzb));
        this.zze.zzC();
    }

    public final void zzR() {
        AudioTrack audioTrack;
        zzai();
        if (zzfn.zza < 21 && (audioTrack = this.zzq) != null) {
            audioTrack.release();
            this.zzq = null;
        }
        this.zzl.zze();
        this.zzk.zzd();
        this.zze.zzD();
        this.zzi.zzT();
        Surface surface = this.zzs;
        if (surface != null) {
            surface.release();
            this.zzs = null;
        }
        this.zzC = Collections.emptyList();
    }

    public final void zzS(zzld zzldVar) {
        this.zzi.zzU(zzldVar);
    }

    public final void zzT(zzqb zzqbVar) {
        zzai();
        this.zze.zzE(Collections.singletonList(zzqbVar), true);
    }

    public final void zzU(boolean z) {
        zzai();
        int zzb = this.zzk.zzb(z, zzr());
        zzah(z, zzb, zzab(z, zzb));
    }

    @Deprecated
    public final void zzV(boolean z) {
        this.zzD = false;
    }

    public final void zzW(Surface surface) {
        zzai();
        zzag(surface);
        int i = surface == null ? 0 : -1;
        zzad(i, i);
    }

    public final void zzX(float f) {
        zzai();
        float zza = zzfn.zza(f, 0.0f, 1.0f);
        if (this.zzA == zza) {
            return;
        }
        this.zzA = zza;
        zzaf();
        this.zzi.zzbl(zza);
        Iterator<zzbt> it2 = this.zzh.iterator();
        while (it2.hasNext()) {
            it2.next().zzbl(zza);
        }
    }

    @Deprecated
    public final void zzY(boolean z) {
        zzai();
        this.zzk.zzb(zzaa(), 1);
        this.zze.zzG(false, null);
        this.zzC = Collections.emptyList();
    }

    public final boolean zzaa() {
        zzai();
        return this.zze.zzI();
    }

    @Override // com.google.android.gms.internal.ads.zzbw
    public final int zze() {
        zzai();
        return this.zze.zze();
    }

    @Override // com.google.android.gms.internal.ads.zzbw
    public final int zzf() {
        zzai();
        return this.zze.zzf();
    }

    @Override // com.google.android.gms.internal.ads.zzbw
    public final int zzg() {
        zzai();
        return this.zze.zzg();
    }

    @Override // com.google.android.gms.internal.ads.zzbw
    public final int zzh() {
        zzai();
        return this.zze.zzh();
    }

    @Override // com.google.android.gms.internal.ads.zzbw
    public final int zzi() {
        zzai();
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzbw
    public final long zzj() {
        zzai();
        return this.zze.zzj();
    }

    @Override // com.google.android.gms.internal.ads.zzbw
    public final long zzk() {
        zzai();
        return this.zze.zzk();
    }

    @Override // com.google.android.gms.internal.ads.zzbw
    public final long zzl() {
        zzai();
        return this.zze.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzbw
    public final zzcd zzm() {
        zzai();
        return this.zze.zzm();
    }

    @Override // com.google.android.gms.internal.ads.zzbw
    public final void zzn(int i, long j) {
        zzai();
        this.zzi.zzR();
        this.zze.zzn(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzbw
    public final boolean zzo() {
        zzai();
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbw
    public final boolean zzp() {
        zzai();
        return this.zze.zzp();
    }

    public final int zzr() {
        zzai();
        return this.zze.zzq();
    }

    public final int zzs() {
        zzai();
        this.zze.zzr();
        return 2;
    }

    public final long zzt() {
        zzai();
        return this.zze.zzs();
    }

    public final long zzu() {
        zzai();
        return this.zze.zzt();
    }
}
