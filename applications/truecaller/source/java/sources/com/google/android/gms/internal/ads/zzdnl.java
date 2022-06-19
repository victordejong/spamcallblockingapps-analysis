package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.zza;
import com.google.android.gms.ads.internal.util.zzca;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdnl.class */
public final class zzdnl {
    private final zzg zza;
    private final zzfar zzb;
    private final zzdmr zzc;
    private final zzdmm zzd;
    private final zzdnw zze;
    private final zzdoe zzf;
    private final Executor zzg;
    private final Executor zzh;
    private final zzblv zzi;
    private final zzdmj zzj;

    public zzdnl(zzg zzgVar, zzfar zzfarVar, zzdmr zzdmrVar, zzdmm zzdmmVar, zzdnw zzdnwVar, zzdoe zzdoeVar, Executor executor, Executor executor2, zzdmj zzdmjVar) {
        this.zza = zzgVar;
        this.zzb = zzfarVar;
        this.zzi = zzfarVar.zzi;
        this.zzc = zzdmrVar;
        this.zzd = zzdmmVar;
        this.zze = zzdnwVar;
        this.zzf = zzdoeVar;
        this.zzg = executor;
        this.zzh = executor2;
        this.zzj = zzdmjVar;
    }

    private static void zzg(RelativeLayout.LayoutParams layoutParams, int i) {
        if (i == 0) {
            layoutParams.addRule(10);
            layoutParams.addRule(9);
        } else if (i == 2) {
            layoutParams.addRule(12);
            layoutParams.addRule(11);
        } else if (i != 3) {
            layoutParams.addRule(10);
            layoutParams.addRule(11);
        } else {
            layoutParams.addRule(12);
            layoutParams.addRule(9);
        }
    }

    private final boolean zzh(ViewGroup viewGroup, boolean z) {
        View zzH = z ? this.zzd.zzH() : this.zzd.zzI();
        if (zzH == null) {
            return false;
        }
        viewGroup.removeAllViews();
        if (zzH.getParent() instanceof ViewGroup) {
            ((ViewGroup) zzH.getParent()).removeView(zzH);
        }
        viewGroup.addView(zzH, ((Boolean) zzbet.zzc().zzc(zzbjl.zzco)).booleanValue() ? new FrameLayout.LayoutParams(-1, -1, 17) : new FrameLayout.LayoutParams(-2, -2, 17));
        return true;
    }

    public final void zza(zzdog zzdogVar) {
        this.zzg.execute(new Runnable(this, zzdogVar) { // from class: com.google.android.gms.internal.ads.zzdni
            private final zzdnl zza;
            private final zzdog zzb;

            {
                this.zza = this;
                this.zzb = zzdogVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzf(this.zzb);
            }
        });
    }

    public final void zzb(zzdog zzdogVar) {
        if (zzdogVar == null || this.zze == null || zzdogVar.zzbt() == null || !this.zzc.zzb()) {
            return;
        }
        try {
            zzdogVar.zzbt().addView(this.zze.zza());
        } catch (zzcmw e) {
            zze.zzb("web view can not be obtained", e);
        }
    }

    public final void zzc(zzdog zzdogVar) {
        if (zzdogVar == null) {
            return;
        }
        Context context = zzdogVar.zzbx().getContext();
        if (!zzca.zzi(context, this.zzc.zza)) {
            return;
        }
        if (!(context instanceof Activity)) {
            zzcgt.zzd("Activity context is needed for policy validator.");
        } else if (this.zzf == null || zzdogVar.zzbt() == null) {
        } else {
            try {
                WindowManager windowManager = (WindowManager) context.getSystemService("window");
                windowManager.addView(this.zzf.zza(zzdogVar.zzbt(), windowManager), zzca.zzj());
            } catch (zzcmw e) {
                zze.zzb("web view can not be obtained", e);
            }
        }
    }

    public final boolean zzd(ViewGroup viewGroup) {
        return zzh(viewGroup, true);
    }

    public final /* synthetic */ void zze(ViewGroup viewGroup) {
        boolean z = viewGroup != null;
        if (this.zzd.zzH() != null) {
            if (this.zzd.zzv() == 2 || this.zzd.zzv() == 1) {
                this.zza.zzw(this.zzb.zzf, String.valueOf(this.zzd.zzv()), z);
            } else if (this.zzd.zzv() != 6) {
            } else {
                this.zza.zzw(this.zzb.zzf, "2", z);
                this.zza.zzw(this.zzb.zzf, "1", z);
            }
        }
    }

    public final /* synthetic */ void zzf(zzdog zzdogVar) {
        ViewGroup viewGroup;
        zzblp zzblpVar;
        ViewGroup viewGroup2;
        zzbme zza;
        Drawable drawable;
        if (this.zzc.zze() || this.zzc.zzc()) {
            for (int i = 0; i < 2; i++) {
                View zzm = zzdogVar.zzm(new String[]{NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW, "3011"}[i]);
                if (zzm != null && (zzm instanceof ViewGroup)) {
                    viewGroup = (ViewGroup) zzm;
                    break;
                }
            }
        }
        viewGroup = null;
        Context context = zzdogVar.zzbx().getContext();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (this.zzd.zzy() != null) {
            View zzy = this.zzd.zzy();
            zzblv zzblvVar = this.zzi;
            if (zzblvVar == null) {
                zzblpVar = zzy;
            } else {
                zzblpVar = zzy;
                if (viewGroup == null) {
                    zzg(layoutParams, zzblvVar.zze);
                    zzy.setLayoutParams(layoutParams);
                    zzblpVar = zzy;
                }
            }
        } else if (!(this.zzd.zzx() instanceof zzblo)) {
            zzblpVar = null;
        } else {
            zzblo zzbloVar = (zzblo) this.zzd.zzx();
            if (viewGroup == null) {
                zzg(layoutParams, zzbloVar.zzi());
            }
            zzblpVar = new zzblp(context, zzbloVar, layoutParams);
            zzblpVar.setContentDescription((CharSequence) zzbet.zzc().zzc(zzbjl.zzcm));
        }
        if (zzblpVar != null) {
            if (zzblpVar.getParent() instanceof ViewGroup) {
                ((ViewGroup) zzblpVar.getParent()).removeView(zzblpVar);
            }
            if (viewGroup != null) {
                viewGroup.removeAllViews();
                viewGroup.addView(zzblpVar);
            } else {
                zza zzaVar = new zza(zzdogVar.zzbx().getContext());
                zzaVar.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                zzaVar.addView(zzblpVar);
                FrameLayout zzbt = zzdogVar.zzbt();
                if (zzbt != null) {
                    zzbt.addView(zzaVar);
                }
            }
            zzdogVar.zzi(zzdogVar.zzn(), zzblpVar, true);
        }
        zzfoj<String> zzfojVar = zzdnh.zza;
        int size = zzfojVar.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                viewGroup2 = null;
                break;
            }
            View zzm2 = zzdogVar.zzm(zzfojVar.get(i2));
            i2++;
            if (zzm2 instanceof ViewGroup) {
                viewGroup2 = (ViewGroup) zzm2;
                break;
            }
        }
        this.zzh.execute(new Runnable(this, viewGroup2) { // from class: com.google.android.gms.internal.ads.zzdnj
            private final zzdnl zza;
            private final ViewGroup zzb;

            {
                this.zza = this;
                this.zzb = viewGroup2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zze(this.zzb);
            }
        });
        if (viewGroup2 == null) {
            return;
        }
        if (zzh(viewGroup2, true)) {
            if (this.zzd.zzR() == null) {
                return;
            }
            this.zzd.zzR().zzap(new zzdnk(zzdogVar, viewGroup2));
        } else if (((Boolean) zzbet.zzc().zzc(zzbjl.zzgO)).booleanValue() && zzh(viewGroup2, false)) {
            if (this.zzd.zzS() == null) {
                return;
            }
            this.zzd.zzS().zzap(new zzdnk(zzdogVar, viewGroup2));
        } else {
            viewGroup2.removeAllViews();
            View zzbx = zzdogVar.zzbx();
            Context context2 = null;
            if (zzbx != null) {
                context2 = zzbx.getContext();
            }
            if (context2 == null || (zza = this.zzj.zza()) == null) {
                return;
            }
            try {
                IObjectWrapper zzg = zza.zzg();
                if (zzg == null || (drawable = (Drawable) ObjectWrapper.m38746B1(zzg)) == null) {
                    return;
                }
                ImageView imageView = new ImageView(context2);
                imageView.setImageDrawable(drawable);
                IObjectWrapper zzo = zzdogVar.zzo();
                if (zzo == null || !((Boolean) zzbet.zzc().zzc(zzbjl.zzew)).booleanValue()) {
                    imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                } else {
                    imageView.setScaleType((ImageView.ScaleType) ObjectWrapper.m38746B1(zzo));
                }
                imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                viewGroup2.addView(imageView);
            } catch (RemoteException e) {
                zzcgt.zzi("Could not get main image drawable");
            }
        }
    }
}
