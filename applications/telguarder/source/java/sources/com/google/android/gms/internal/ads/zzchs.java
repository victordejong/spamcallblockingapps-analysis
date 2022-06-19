package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.overlay.zzv;
import com.google.android.gms.ads.internal.zza;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzchs.class */
public final class zzchs {
    private final zzawz zzboi;
    private final zzckn zzdib;
    private final zzdrz zzdic;
    private final zzcqr zzdie;
    private final zzei zzesm;
    private final zzdss zzfrf;
    private final Executor zzfsj;
    private final zzbsm zzfwu;
    private final zzbtj zzgbl;
    private final zzbrl zzgcj;
    private final zzbjz zzgck;
    private final zzbxz zzgcm;
    private final zzbta zzgjf;
    private final zzbvt zzgjg;
    private final zza zzgjy;
    private final zzbsg zzgjz;
    private final zzbvi zzgka;

    public zzchs(zzbrl zzbrlVar, zzbsm zzbsmVar, zzbta zzbtaVar, zzbtj zzbtjVar, zzbvt zzbvtVar, Executor executor, zzbxz zzbxzVar, zzbjz zzbjzVar, zza zzaVar, zzbsg zzbsgVar, zzawz zzawzVar, zzei zzeiVar, zzbvi zzbviVar, zzcqr zzcqrVar, zzdss zzdssVar, zzckn zzcknVar, zzdrz zzdrzVar) {
        this.zzgcj = zzbrlVar;
        this.zzfwu = zzbsmVar;
        this.zzgjf = zzbtaVar;
        this.zzgbl = zzbtjVar;
        this.zzgjg = zzbvtVar;
        this.zzfsj = executor;
        this.zzgcm = zzbxzVar;
        this.zzgck = zzbjzVar;
        this.zzgjy = zzaVar;
        this.zzgjz = zzbsgVar;
        this.zzboi = zzawzVar;
        this.zzesm = zzeiVar;
        this.zzgka = zzbviVar;
        this.zzdie = zzcqrVar;
        this.zzfrf = zzdssVar;
        this.zzdib = zzcknVar;
        this.zzdic = zzdrzVar;
    }

    public static zzdzw<?> zza(zzbeb zzbebVar, String str, String str2) {
        zzbaa zzbaaVar = new zzbaa();
        zzbebVar.zzacx().zza(new zzbfq(zzbaaVar) { // from class: com.google.android.gms.internal.ads.zzchz
            private final zzbaa zzbwd;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzbwd = zzbaaVar;
            }

            @Override // com.google.android.gms.internal.ads.zzbfq
            public final void zzal(boolean z) {
                zzbaa zzbaaVar2 = this.zzbwd;
                if (z) {
                    zzbaaVar2.set(null);
                } else {
                    zzbaaVar2.setException(new Exception("Ad Web View failed to load."));
                }
            }
        });
        zzbebVar.zzb(str, str2, null);
        return zzbaaVar;
    }

    public final /* synthetic */ void zza(zzbeb zzbebVar, zzbeb zzbebVar2, Map map) {
        this.zzgck.zzc(zzbebVar);
    }

    public final void zza(zzbeb zzbebVar, boolean z) {
        zzdy zzca;
        zzbebVar.zzacx().zza(new zzvc(this) { // from class: com.google.android.gms.internal.ads.zzchr
            private final zzchs zzgjx;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgjx = this;
            }

            @Override // com.google.android.gms.internal.ads.zzvc
            public final void onAdClicked() {
                this.zzgjx.zzapq();
            }
        }, this.zzgjf, this.zzgbl, new zzahk(this) { // from class: com.google.android.gms.internal.ads.zzchu
            private final zzchs zzgjx;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgjx = this;
            }

            @Override // com.google.android.gms.internal.ads.zzahk
            public final void onAppEvent(String str, String str2) {
                this.zzgjx.zzp(str, str2);
            }
        }, new zzv(this) { // from class: com.google.android.gms.internal.ads.zzcht
            private final zzchs zzgjx;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgjx = this;
            }

            @Override // com.google.android.gms.ads.internal.overlay.zzv
            public final void zzwg() {
                this.zzgjx.zzapp();
            }
        }, z, null, this.zzgjy, new zzcic(this), this.zzboi, this.zzdie, this.zzfrf, this.zzdib, this.zzdic);
        zzbebVar.setOnTouchListener(new View.OnTouchListener(this) { // from class: com.google.android.gms.internal.ads.zzchw
            private final zzchs zzgjx;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgjx = this;
            }

            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                return this.zzgjx.zza(view, motionEvent);
            }
        });
        zzbebVar.setOnClickListener(new View.OnClickListener(this) { // from class: com.google.android.gms.internal.ads.zzchv
            private final zzchs zzgjx;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgjx = this;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.zzgjx.zzae(view);
            }
        });
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcsb)).booleanValue() && (zzca = this.zzesm.zzca()) != null) {
            zzca.zzb(zzbebVar.getView());
        }
        this.zzgcm.zza(zzbebVar, this.zzfsj);
        this.zzgcm.zza(new zzqw(zzbebVar) { // from class: com.google.android.gms.internal.ads.zzchy
            private final zzbeb zzeuk;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzeuk = zzbebVar;
            }

            @Override // com.google.android.gms.internal.ads.zzqw
            public final void zza(zzqx zzqxVar) {
                this.zzeuk.zzacx().zza(zzqxVar.zzbrx.left, zzqxVar.zzbrx.top, false);
            }
        }, this.zzfsj);
        this.zzgcm.zzv(zzbebVar.getView());
        zzbebVar.zza("/trackActiveViewUnit", new zzaif(this, zzbebVar) { // from class: com.google.android.gms.internal.ads.zzchx
            private final zzbeb zzggw;
            private final zzchs zzgjx;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgjx = this;
                this.zzggw = zzbebVar;
            }

            @Override // com.google.android.gms.internal.ads.zzaif
            public final void zza(Object obj, Map map) {
                this.zzgjx.zza(this.zzggw, (zzbeb) obj, map);
            }
        });
        this.zzgck.zzn(zzbebVar);
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcpe)).booleanValue()) {
            zzbsg zzbsgVar = this.zzgjz;
            zzbebVar.getClass();
            zzbsgVar.zza(zzcia.zzk(zzbebVar), this.zzfsj);
        }
    }

    public final /* synthetic */ boolean zza(View view, MotionEvent motionEvent) {
        this.zzgjy.recordClick();
        zzawz zzawzVar = this.zzboi;
        if (zzawzVar != null) {
            zzawzVar.zzwx();
            return false;
        }
        return false;
    }

    public final /* synthetic */ void zzae(View view) {
        this.zzgjy.recordClick();
        zzawz zzawzVar = this.zzboi;
        if (zzawzVar != null) {
            zzawzVar.zzwx();
        }
    }

    public final /* synthetic */ void zzapp() {
        this.zzfwu.onAdLeftApplication();
    }

    public final /* synthetic */ void zzapq() {
        this.zzgcj.onAdClicked();
    }

    public final /* synthetic */ void zzp(String str, String str2) {
        this.zzgjg.onAppEvent(str, str2);
    }
}
