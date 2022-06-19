package com.google.android.gms.internal.ads;

import android.graphics.SurfaceTexture;
import android.view.SurfaceHolder;
import android.view.TextureView;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArraySet;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzir.class */
public final class zzir implements SurfaceHolder.Callback, TextureView.SurfaceTextureListener, zzvp, zzlt, zzrv, zzpb, zzfv, zzfr, zziw, zzbs, zzgh {
    public final /* synthetic */ zziu zza;

    public /* synthetic */ zzir(zziu zziuVar, zziq zziqVar) {
        this.zza = zziuVar;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
        zziu.zzL(this.zza, surfaceTexture);
        this.zza.zzad(i, i2);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        this.zza.zzag(null);
        this.zza.zzad(0, 0);
        return true;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
        this.zza.zzad(i, i2);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceChanged(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        this.zza.zzad(i2, i3);
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceCreated(SurfaceHolder surfaceHolder) {
    }

    @Override // android.view.SurfaceHolder.Callback
    public final void surfaceDestroyed(SurfaceHolder surfaceHolder) {
        this.zza.zzad(0, 0);
    }

    @Override // com.google.android.gms.internal.ads.zzlt
    public final void zzA(long j) {
        zzlb zzlbVar;
        zzlbVar = this.zza.zzi;
        zzlbVar.zzA(j);
    }

    @Override // com.google.android.gms.internal.ads.zzlt
    public final void zzB(Exception exc) {
        zzlb zzlbVar;
        zzlbVar = this.zza.zzi;
        zzlbVar.zzB(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzlt
    public final void zzC(int i, long j, long j2) {
        zzlb zzlbVar;
        zzlbVar = this.zza.zzi;
        zzlbVar.zzC(i, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzvp
    public final void zzD(int i, long j) {
        zzlb zzlbVar;
        zzlbVar = this.zza.zzi;
        zzlbVar.zzD(i, j);
    }

    @Override // com.google.android.gms.internal.ads.zzvp
    public final void zzE(Object obj, long j) {
        zzlb zzlbVar;
        Object obj2;
        CopyOnWriteArraySet copyOnWriteArraySet;
        zzlbVar = this.zza.zzi;
        zzlbVar.zzE(obj, j);
        obj2 = this.zza.zzr;
        if (obj2 == obj) {
            copyOnWriteArraySet = this.zza.zzh;
            Iterator it2 = copyOnWriteArraySet.iterator();
            while (it2.hasNext()) {
                ((zzbt) it2.next()).zzbj();
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzvp
    public final void zzF(Exception exc) {
        zzlb zzlbVar;
        zzlbVar = this.zza.zzi;
        zzlbVar.zzF(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzvp
    public final void zzG(String str, long j, long j2) {
        zzlb zzlbVar;
        zzlbVar = this.zza.zzi;
        zzlbVar.zzG(str, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzvp
    public final void zzH(String str) {
        zzlb zzlbVar;
        zzlbVar = this.zza.zzi;
        zzlbVar.zzH(str);
    }

    @Override // com.google.android.gms.internal.ads.zzvp
    public final void zzI(zzfy zzfyVar) {
        zzlb zzlbVar;
        zzlbVar = this.zza.zzi;
        zzlbVar.zzI(zzfyVar);
        this.zza.zzo = null;
        this.zza.zzw = null;
    }

    @Override // com.google.android.gms.internal.ads.zzvp
    public final void zzJ(zzfy zzfyVar) {
        zzlb zzlbVar;
        this.zza.zzw = zzfyVar;
        zzlbVar = this.zza.zzi;
        zzlbVar.zzJ(zzfyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzvp
    public final void zzK(long j, int i) {
        zzlb zzlbVar;
        zzlbVar = this.zza.zzi;
        zzlbVar.zzK(j, i);
    }

    @Override // com.google.android.gms.internal.ads.zzvp
    public final void zzL(zzab zzabVar, zzfz zzfzVar) {
        zzlb zzlbVar;
        this.zza.zzo = zzabVar;
        zzlbVar = this.zza.zzi;
        zzlbVar.zzL(zzabVar, zzfzVar);
    }

    @Override // com.google.android.gms.internal.ads.zzbs
    public final /* synthetic */ void zza(zzbr zzbrVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbs
    public final void zzb(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzbs
    public final /* synthetic */ void zzbh(zzaz zzazVar, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzbs
    public final /* synthetic */ void zzbi(zzbe zzbeVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbs
    public final /* synthetic */ void zzc(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzbs
    public final void zzf(boolean z, int i) {
        zziu.zzO(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbs
    public final /* synthetic */ void zzg(zzbn zzbnVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbs
    public final void zzh(int i) {
        zziu.zzO(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzbs
    public final /* synthetic */ void zzi(int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzbs
    public final /* synthetic */ void zzj(zzbl zzblVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbs
    public final /* synthetic */ void zzk(boolean z, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzbs
    public final /* synthetic */ void zzl(zzbv zzbvVar, zzbv zzbvVar2, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzbs
    public final /* synthetic */ void zzm() {
    }

    @Override // com.google.android.gms.internal.ads.zzbs
    public final /* synthetic */ void zzn(zzcd zzcdVar, int i) {
    }

    @Override // com.google.android.gms.internal.ads.zzbs
    public final /* synthetic */ void zzo(zzch zzchVar, zzci zzciVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzbs
    public final /* synthetic */ void zzp(zzcr zzcrVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzgh
    public final /* synthetic */ void zzq(boolean z) {
    }

    @Override // com.google.android.gms.internal.ads.zzgh
    public final void zzr(boolean z) {
        zziu.zzO(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzlt
    public final void zzs(Exception exc) {
        zzlb zzlbVar;
        zzlbVar = this.zza.zzi;
        zzlbVar.zzs(exc);
    }

    @Override // com.google.android.gms.internal.ads.zzlt
    public final void zzt(boolean z) {
        boolean z2;
        z2 = this.zza.zzB;
        if (z2 == z) {
            return;
        }
        this.zza.zzB = z;
        zziu.zzJ(this.zza);
    }

    @Override // com.google.android.gms.internal.ads.zzlt
    public final void zzu(String str, long j, long j2) {
        zzlb zzlbVar;
        zzlbVar = this.zza.zzi;
        zzlbVar.zzu(str, j, j2);
    }

    @Override // com.google.android.gms.internal.ads.zzvp
    public final void zzv(zzct zzctVar) {
        zzlb zzlbVar;
        CopyOnWriteArraySet copyOnWriteArraySet;
        this.zza.zzG = zzctVar;
        zzlbVar = this.zza.zzi;
        zzlbVar.zzv(zzctVar);
        copyOnWriteArraySet = this.zza.zzh;
        Iterator it2 = copyOnWriteArraySet.iterator();
        while (it2.hasNext()) {
            ((zzbt) it2.next()).zzv(zzctVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzlt
    public final void zzw(String str) {
        zzlb zzlbVar;
        zzlbVar = this.zza.zzi;
        zzlbVar.zzw(str);
    }

    @Override // com.google.android.gms.internal.ads.zzlt
    public final void zzx(zzfy zzfyVar) {
        zzlb zzlbVar;
        zzlbVar = this.zza.zzi;
        zzlbVar.zzx(zzfyVar);
        this.zza.zzp = null;
        this.zza.zzx = null;
    }

    @Override // com.google.android.gms.internal.ads.zzlt
    public final void zzy(zzfy zzfyVar) {
        zzlb zzlbVar;
        this.zza.zzx = zzfyVar;
        zzlbVar = this.zza.zzi;
        zzlbVar.zzy(zzfyVar);
    }

    @Override // com.google.android.gms.internal.ads.zzlt
    public final void zzz(zzab zzabVar, zzfz zzfzVar) {
        zzlb zzlbVar;
        this.zza.zzp = zzabVar;
        zzlbVar = this.zza.zzi;
        zzlbVar.zzz(zzabVar, zzfzVar);
    }
}
