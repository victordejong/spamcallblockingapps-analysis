package com.google.android.gms.internal.ads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.AudioTrack;
import android.os.Handler;
import android.os.Looper;
import android.view.Surface;
import com.freshchat.consumer.sdk.beans.config.DefaultUserEventsConfig;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArraySet;
import java.util.concurrent.TimeoutException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzaie.class */
public final class zzaie extends zzadu implements zzahp {
    private float zzA;
    private boolean zzB;
    private List zzC;
    private boolean zzD;
    private boolean zzE;
    private zzaee zzF;
    private zzy zzG;
    public final zzahv[] zzb;
    private final zzakw zzc;
    private final Context zzd;
    private final zzafe zze;
    private final zzaib zzf;
    private final zzaic zzg;
    private final CopyOnWriteArraySet<zzahl> zzh;
    private final zzcy zzi;
    private final zzadp zzj;
    private final zzadt zzk;
    private final zzaij zzl;
    private final zzair zzm;
    private final zzais zzn;
    private zzafv zzo;
    private zzafv zzp;
    private AudioTrack zzq;
    private Object zzr;
    private Surface zzs;
    private int zzt;
    private int zzu;
    private int zzv;
    private zzaz zzw;
    private zzaz zzx;
    private int zzy;
    private zzg zzz;

    public zzaie(zzaia zzaiaVar) {
        Throwable th;
        Context context;
        zzcy zzcyVar;
        zzg zzgVar;
        Looper looper;
        zzahy zzahyVar;
        zzjz zzjzVar;
        zzhq zzhqVar;
        zzafy zzafyVar;
        zzki zzkiVar;
        zzahz zzahzVar;
        zzadz zzadzVar;
        zzaku zzakuVar;
        Looper looper2;
        Context context2;
        Context context3;
        Context context4;
        Context context5;
        Context context6;
        zzakw zzakwVar = new zzakw(zzaku.zza);
        this.zzc = zzakwVar;
        try {
            context = zzaiaVar.zza;
            Context applicationContext = context.getApplicationContext();
            this.zzd = applicationContext;
            zzcyVar = zzaiaVar.zzh;
            this.zzi = zzcyVar;
            zzgVar = zzaiaVar.zzj;
            this.zzz = zzgVar;
            this.zzt = 1;
            this.zzB = false;
            zzaib zzaibVar = new zzaib(this, null);
            this.zzf = zzaibVar;
            zzaic zzaicVar = new zzaic(null);
            this.zzg = zzaicVar;
            this.zzh = new CopyOnWriteArraySet<>();
            looper = zzaiaVar.zzi;
            Handler handler = new Handler(looper);
            zzahyVar = zzaiaVar.zzb;
            zzahv[] zza = zzahyVar.zza(handler, zzaibVar, zzaibVar, zzaibVar, zzaibVar);
            this.zzb = zza;
            this.zzA = 1.0f;
            if (zzamq.zza < 21) {
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
                this.zzy = zzadx.zzc(applicationContext);
            }
            this.zzC = Collections.emptyList();
            this.zzD = true;
            zzahh zzahhVar = new zzahh();
            try {
                zzahhVar.zzc(20, 21, 22, 23, 24, 25, 26, 27);
                zzahi zze = zzahhVar.zze();
                zzjzVar = zzaiaVar.zzd;
                zzhqVar = zzaiaVar.zze;
                zzafyVar = zzaiaVar.zzf;
                zzkiVar = zzaiaVar.zzg;
                zzahzVar = zzaiaVar.zzk;
                zzadzVar = zzaiaVar.zzm;
                zzakuVar = zzaiaVar.zzc;
                looper2 = zzaiaVar.zzi;
                zzafe zzafeVar = new zzafe(zza, zzjzVar, zzhqVar, zzafyVar, zzkiVar, zzcyVar, true, zzahzVar, 5000L, DefaultUserEventsConfig.MAX_DELAY_IN_MILLIS_UNTIL_UPLOAD, zzadzVar, 500L, false, zzakuVar, looper2, this, zze, null);
                try {
                    this.zze = zzafeVar;
                    zzafeVar.zzg(zzaibVar);
                    zzafeVar.zzh(zzaibVar);
                    context2 = zzaiaVar.zza;
                    this.zzj = new zzadp(context2, handler, zzaibVar);
                    context3 = zzaiaVar.zza;
                    this.zzk = new zzadt(context3, handler, zzaibVar);
                    zzamq.zzc(null, null);
                    context4 = zzaiaVar.zza;
                    zzaij zzaijVar = new zzaij(context4, handler, zzaibVar);
                    this.zzl = zzaijVar;
                    int i = this.zzz.zzb;
                    zzaijVar.zzb(3);
                    context5 = zzaiaVar.zza;
                    this.zzm = new zzair(context5);
                    context6 = zzaiaVar.zza;
                    this.zzn = new zzais(context6);
                    this.zzF = zzah(zzaijVar);
                    this.zzG = zzy.zza;
                    zzag(1, 10, Integer.valueOf(this.zzy));
                    zzag(2, 10, Integer.valueOf(this.zzy));
                    zzag(1, 3, this.zzz);
                    zzag(2, 4, Integer.valueOf(this.zzt));
                    zzag(2, 5, 0);
                    zzag(1, 9, Boolean.valueOf(this.zzB));
                    zzag(2, 7, zzaicVar);
                    zzag(6, 8, zzaicVar);
                    zzakwVar.zza();
                } catch (Throwable th2) {
                    th = th2;
                    this.zzc.zza();
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
        }
    }

    public static /* synthetic */ void zzS(zzaie zzaieVar, SurfaceTexture surfaceTexture) {
        Surface surface = new Surface(surfaceTexture);
        zzaieVar.zzab(surface);
        zzaieVar.zzs = surface;
    }

    public static /* synthetic */ void zzT(zzaie zzaieVar, Object obj) {
        zzaieVar.zzab(null);
    }

    public static /* synthetic */ void zzU(zzaie zzaieVar, int i, int i2) {
        zzaieVar.zzac(i, i2);
    }

    public static /* synthetic */ void zzW(zzaie zzaieVar) {
        zzaieVar.zzi.zzn(zzaieVar.zzB);
        Iterator<zzahl> it = zzaieVar.zzh.iterator();
        while (it.hasNext()) {
            it.next().zzn(zzaieVar.zzB);
        }
    }

    public static /* synthetic */ void zzY(zzaie zzaieVar) {
        int zzI = zzaieVar.zzI();
        if (zzI == 2 || zzI == 3) {
            zzaieVar.zzaf();
            zzaieVar.zze.zze();
            zzaieVar.zzM();
            zzaieVar.zzM();
        }
    }

    public static /* synthetic */ zzaee zzZ(zzaij zzaijVar) {
        return zzah(zzaijVar);
    }

    public final void zzab(Object obj) {
        boolean z;
        boolean z2;
        ArrayList arrayList = new ArrayList();
        zzahv[] zzahvVarArr = this.zzb;
        int length = zzahvVarArr.length;
        for (int i = 0; i < 2; i++) {
            zzahv zzahvVar = zzahvVarArr[i];
            if (zzahvVar.zzac() == 2) {
                zzahs zzt = this.zze.zzt(zzahvVar);
                zzt.zzb(1);
                zzt.zzd(obj);
                zzt.zzg();
                arrayList.add(zzt);
            }
        }
        Object obj2 = this.zzr;
        if (obj2 == null || obj2 == obj) {
            z = false;
        } else {
            try {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    ((zzahs) it.next()).zzj(2000L);
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
            this.zze.zzr(false, zzaeg.zzc(new zzafr(3), 1003));
        }
    }

    public final void zzac(int i, int i2) {
        if (i == this.zzu && i2 == this.zzv) {
            return;
        }
        this.zzu = i;
        this.zzv = i2;
        this.zzi.zzB(i, i2);
        Iterator<zzahl> it = this.zzh.iterator();
        while (it.hasNext()) {
            it.next().zzB(i, i2);
        }
    }

    public final void zzad() {
        zzag(1, 2, Float.valueOf(this.zzk.zza() * this.zzA));
    }

    public final void zzae(boolean z, int i, int i2) {
        boolean z2 = z && i != -1;
        this.zze.zzl(z2, (!z2 || i == 1) ? 0 : 1, i2);
    }

    private final void zzaf() {
        this.zzc.zzd();
        if (Thread.currentThread() != this.zze.zzf().getThread()) {
            String zzv = zzamq.zzv("Player is accessed on the wrong thread.\nCurrent thread: '%s'\nExpected thread: '%s'\nSee https://exoplayer.dev/issues/player-accessed-on-wrong-thread", Thread.currentThread().getName(), this.zze.zzf().getThread().getName());
            if (this.zzD) {
                throw new IllegalStateException(zzv);
            }
            zzaln.zza("SimpleExoPlayer", zzv, this.zzE ? null : new IllegalStateException());
            this.zzE = true;
        }
    }

    private final void zzag(int i, int i2, Object obj) {
        zzahv[] zzahvVarArr = this.zzb;
        int length = zzahvVarArr.length;
        for (int i3 = 0; i3 < 2; i3++) {
            zzahv zzahvVar = zzahvVarArr[i3];
            if (zzahvVar.zzac() == i) {
                zzahs zzt = this.zze.zzt(zzahvVar);
                zzt.zzb(i2);
                zzt.zzd(obj);
                zzt.zzg();
            }
        }
    }

    public static zzaee zzah(zzaij zzaijVar) {
        return new zzaee(0, zzaijVar.zzc(), zzaijVar.zzd());
    }

    public static int zzai(boolean z, int i) {
        return (!z || i == 1) ? 1 : 2;
    }

    public static /* synthetic */ CopyOnWriteArraySet zze(zzaie zzaieVar) {
        return zzaieVar.zzh;
    }

    public static /* synthetic */ zzcy zzf(zzaie zzaieVar) {
        return zzaieVar.zzi;
    }

    public static /* synthetic */ zzaij zzg(zzaie zzaieVar) {
        return zzaieVar.zzl;
    }

    public static /* synthetic */ zzafv zzh(zzaie zzaieVar, zzafv zzafvVar) {
        zzaieVar.zzo = zzafvVar;
        return zzafvVar;
    }

    public static /* synthetic */ zzafv zzi(zzaie zzaieVar, zzafv zzafvVar) {
        zzaieVar.zzp = zzafvVar;
        return zzafvVar;
    }

    public static /* synthetic */ Object zzj(zzaie zzaieVar) {
        return zzaieVar.zzr;
    }

    public static /* synthetic */ zzaz zzk(zzaie zzaieVar, zzaz zzazVar) {
        zzaieVar.zzw = zzazVar;
        return zzazVar;
    }

    public static /* synthetic */ zzaz zzl(zzaie zzaieVar, zzaz zzazVar) {
        zzaieVar.zzx = zzazVar;
        return zzazVar;
    }

    public static /* synthetic */ boolean zzm(zzaie zzaieVar) {
        return zzaieVar.zzB;
    }

    public static /* synthetic */ boolean zzr(zzaie zzaieVar, boolean z) {
        zzaieVar.zzB = z;
        return z;
    }

    public static /* synthetic */ zzaee zzs(zzaie zzaieVar) {
        return zzaieVar.zzF;
    }

    public static /* synthetic */ zzaee zzt(zzaie zzaieVar, zzaee zzaeeVar) {
        zzaieVar.zzF = zzaeeVar;
        return zzaeeVar;
    }

    public static /* synthetic */ zzy zzw(zzaie zzaieVar, zzy zzyVar) {
        zzaieVar.zzG = zzyVar;
        return zzyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzahp
    public final boolean zzA() {
        zzaf();
        return this.zze.zzA();
    }

    @Override // com.google.android.gms.internal.ads.zzahp
    public final int zzB() {
        zzaf();
        return this.zze.zzB();
    }

    @Override // com.google.android.gms.internal.ads.zzahp
    public final int zzC() {
        zzaf();
        return this.zze.zzC();
    }

    @Override // com.google.android.gms.internal.ads.zzahp
    public final long zzD() {
        zzaf();
        return this.zze.zzD();
    }

    public final void zzE(float f) {
        zzaf();
        float zzz = zzamq.zzz(f, 0.0f, 1.0f);
        if (this.zzA == zzz) {
            return;
        }
        this.zzA = zzz;
        zzad();
        this.zzi.zzq(zzz);
        Iterator<zzahl> it = this.zzh.iterator();
        while (it.hasNext()) {
            it.next().zzq(zzz);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzahp
    public final zzaiq zzF() {
        zzaf();
        return this.zze.zzF();
    }

    public final void zzG(zzda zzdaVar) {
        this.zzi.zza(zzdaVar);
    }

    public final void zzH(zzda zzdaVar) {
        this.zzi.zzb(zzdaVar);
    }

    public final int zzI() {
        zzaf();
        return this.zze.zzi();
    }

    public final void zzJ() {
        zzaf();
        boolean zzM = zzM();
        int zzb = this.zzk.zzb(zzM, 2);
        zzae(zzM, zzb, zzai(zzM, zzb));
        this.zze.zzj();
    }

    public final void zzK(zzhh zzhhVar) {
        zzaf();
        this.zze.zzk(Collections.singletonList(zzhhVar), true);
    }

    public final void zzL(boolean z) {
        zzaf();
        int zzb = this.zzk.zzb(z, zzI());
        zzae(z, zzb, zzai(z, zzb));
    }

    public final boolean zzM() {
        zzaf();
        return this.zze.zzm();
    }

    public final void zzN() {
        AudioTrack audioTrack;
        zzaf();
        if (zzamq.zza < 21 && (audioTrack = this.zzq) != null) {
            audioTrack.release();
            this.zzq = null;
        }
        this.zzl.zze();
        this.zzk.zzc();
        this.zze.zzs();
        this.zzi.zzd();
        Surface surface = this.zzs;
        if (surface != null) {
            surface.release();
            this.zzs = null;
        }
        this.zzC = Collections.emptyList();
    }

    public final int zzO() {
        zzaf();
        this.zze.zzE();
        return 2;
    }

    public final long zzP() {
        zzaf();
        return this.zze.zzw();
    }

    public final long zzQ() {
        zzaf();
        return this.zze.zzy();
    }

    @Deprecated
    public final void zzR(boolean z) {
        this.zzD = false;
    }

    @Override // com.google.android.gms.internal.ads.zzahp
    public final int zzn() {
        zzaf();
        return 0;
    }

    @Override // com.google.android.gms.internal.ads.zzahp
    public final boolean zzo() {
        zzaf();
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzahp
    public final void zzp(int i, long j) {
        zzaf();
        this.zzi.zzf();
        this.zze.zzp(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzahp
    @Deprecated
    public final void zzq(boolean z) {
        zzaf();
        this.zzk.zzb(zzM(), 1);
        this.zze.zzr(false, null);
        this.zzC = Collections.emptyList();
    }

    @Override // com.google.android.gms.internal.ads.zzahp
    public final int zzu() {
        zzaf();
        return this.zze.zzu();
    }

    @Override // com.google.android.gms.internal.ads.zzahp
    public final int zzv() {
        zzaf();
        return this.zze.zzv();
    }

    @Override // com.google.android.gms.internal.ads.zzahp
    public final long zzx() {
        zzaf();
        return this.zze.zzx();
    }

    public final void zzy(Surface surface) {
        zzaf();
        zzab(surface);
        int i = surface == null ? 0 : -1;
        zzac(i, i);
    }

    @Override // com.google.android.gms.internal.ads.zzahp
    public final long zzz() {
        zzaf();
        return this.zze.zzz();
    }
}
