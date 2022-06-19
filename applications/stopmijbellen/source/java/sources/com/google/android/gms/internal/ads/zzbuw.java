package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.common.util.Predicate;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbuw.class */
public final class zzbuw implements zzbuo, zzbum {
    private final zzcop zza;

    public zzbuw(Context context, zzcjf zzcjfVar, zzalt zzaltVar, zza zzaVar) throws zzcpa {
        zzt.zzz();
        zzcop zza = zzcpb.zza(context, zzcqe.zza(), "", false, false, null, null, zzcjfVar, null, null, null, zzbay.zza(), null, null);
        this.zza = zza;
        ((View) zza).setWillNotDraw(true);
    }

    private static final void zzs(Runnable runnable) {
        zzbgo.zzb();
        if (zzcis.zzp()) {
            runnable.run();
        } else {
            com.google.android.gms.ads.internal.util.zzt.zza.post(runnable);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbux
    public final void zza(final String str) {
        zzs(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbur
            @Override // java.lang.Runnable
            public final void run() {
                zzbuw.this.zzm(str);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbux
    public final /* synthetic */ void zzb(String str, String str2) {
        zzbul.zzc(this, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbuo
    public final void zzc() {
        this.zza.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzbuk
    public final /* synthetic */ void zzd(String str, Map map) {
        zzbul.zza(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.zzbuk
    public final /* synthetic */ void zze(String str, JSONObject jSONObject) {
        zzbul.zzb(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzbuo
    public final void zzf(final String str) {
        zzs(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbus
            @Override // java.lang.Runnable
            public final void run() {
                zzbuw.this.zzn(str);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbuo
    public final void zzg(final String str) {
        zzs(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbut
            @Override // java.lang.Runnable
            public final void run() {
                zzbuw.this.zzo(str);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbuo
    public final void zzh(String str) {
        final String format = String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head><body></body></html>", str);
        zzs(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbuu
            @Override // java.lang.Runnable
            public final void run() {
                zzbuw.this.zzp(format);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbuo
    public final boolean zzi() {
        return this.zza.zzaB();
    }

    @Override // com.google.android.gms.internal.ads.zzbuo
    public final zzbvv zzj() {
        return new zzbvv(this);
    }

    @Override // com.google.android.gms.internal.ads.zzbuo
    public final void zzk(zzbuy zzbuyVar) {
        this.zza.zzP().zzF(new zzcqb(null) { // from class: com.google.android.gms.internal.ads.zzbup
            @Override // com.google.android.gms.internal.ads.zzcqb
            public final void zza() {
                zzbuy zzbuyVar2 = zzbuy.this;
                final zzbvt zzbvtVar = zzbuyVar2.zza;
                final zzbvs zzbvsVar = zzbuyVar2.zzb;
                final zzbuo zzbuoVar = zzbuyVar2.zzc;
                com.google.android.gms.ads.internal.util.zzt.zza.postDelayed(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbvd
                    @Override // java.lang.Runnable
                    public final void run() {
                        zzbvt.this.zzh(zzbvsVar, zzbuoVar);
                    }
                }, 10000L);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzbux
    public final /* synthetic */ void zzl(String str, JSONObject jSONObject) {
        zzbul.zzd(this, str, jSONObject);
    }

    public final /* synthetic */ void zzm(String str) {
        this.zza.zza(str);
    }

    public final /* synthetic */ void zzn(String str) {
        this.zza.loadData(str, "text/html", "UTF-8");
    }

    public final /* synthetic */ void zzo(String str) {
        this.zza.loadUrl(str);
    }

    public final /* synthetic */ void zzp(String str) {
        this.zza.loadData(str, "text/html", "UTF-8");
    }

    @Override // com.google.android.gms.internal.ads.zzbvu
    public final void zzq(String str, zzbrt<? super zzbvu> zzbrtVar) {
        this.zza.zzaf(str, new zzbuv(this, zzbrtVar));
    }

    @Override // com.google.android.gms.internal.ads.zzbvu
    public final void zzr(String str, final zzbrt<? super zzbvu> zzbrtVar) {
        this.zza.zzax(str, new Predicate() { // from class: com.google.android.gms.internal.ads.zzbuq
            @Override // com.google.android.gms.common.util.Predicate
            public final boolean apply(Object obj) {
                zzbrt zzbrtVar2;
                zzbrt zzbrtVar3 = zzbrt.this;
                zzbrt zzbrtVar4 = (zzbrt) obj;
                if (zzbrtVar4 instanceof zzbuv) {
                    zzbrtVar2 = ((zzbuv) zzbrtVar4).zzb;
                    return zzbrtVar2.equals(zzbrtVar3);
                }
                return false;
            }
        });
    }
}
