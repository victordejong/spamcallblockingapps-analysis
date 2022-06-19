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
import com.google.android.gms.ads.internal.util.zzcb;
import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdrb.class */
public final class zzdrb {
    private final zzg zza;
    private final zzfef zzb;
    private final zzdqh zzc;
    private final zzdqc zzd;
    private final zzdrm zze;
    private final zzdru zzf;
    private final Executor zzg;
    private final Executor zzh;
    private final zzbnw zzi;
    private final zzdpz zzj;

    public zzdrb(zzg zzgVar, zzfef zzfefVar, zzdqh zzdqhVar, zzdqc zzdqcVar, zzdrm zzdrmVar, zzdru zzdruVar, Executor executor, Executor executor2, zzdpz zzdpzVar) {
        this.zza = zzgVar;
        this.zzb = zzfefVar;
        this.zzi = zzfefVar.zzi;
        this.zzc = zzdqhVar;
        this.zzd = zzdqcVar;
        this.zze = zzdrmVar;
        this.zzf = zzdruVar;
        this.zzg = executor;
        this.zzh = executor2;
        this.zzj = zzdpzVar;
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
        View zzf = z ? this.zzd.zzf() : this.zzd.zzg();
        if (zzf == null) {
            return false;
        }
        viewGroup.removeAllViews();
        if (zzf.getParent() instanceof ViewGroup) {
            ((ViewGroup) zzf.getParent()).removeView(zzf);
        }
        viewGroup.addView(zzf, ((Boolean) zzbgq.zzc().zzb(zzblj.zzcv)).booleanValue() ? new FrameLayout.LayoutParams(-1, -1, 17) : new FrameLayout.LayoutParams(-2, -2, 17));
        return true;
    }

    public final /* synthetic */ void zza(ViewGroup viewGroup) {
        boolean z = viewGroup != null;
        if (this.zzd.zzf() != null) {
            if (this.zzd.zzc() == 2 || this.zzd.zzc() == 1) {
                this.zza.zzE(this.zzb.zzf, String.valueOf(this.zzd.zzc()), z);
            } else if (this.zzd.zzc() != 6) {
            } else {
                this.zza.zzE(this.zzb.zzf, "2", z);
                this.zza.zzE(this.zzb.zzf, "1", z);
            }
        }
    }

    public final /* synthetic */ void zzb(zzdrw zzdrwVar) {
        ViewGroup viewGroup;
        zzbns zzbnsVar;
        ViewGroup viewGroup2;
        zzbof zza;
        Drawable drawable;
        if (this.zzc.zze() || this.zzc.zzd()) {
            for (int i = 0; i < 2; i++) {
                View zzg = zzdrwVar.zzg(new String[]{NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW, "3011"}[i]);
                if (zzg != null && (zzg instanceof ViewGroup)) {
                    viewGroup = (ViewGroup) zzg;
                    break;
                }
            }
        }
        viewGroup = null;
        Context context = zzdrwVar.zzf().getContext();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (this.zzd.zze() != null) {
            View zze = this.zzd.zze();
            zzbnw zzbnwVar = this.zzi;
            if (zzbnwVar == null) {
                zzbnsVar = zze;
            } else {
                zzbnsVar = zze;
                if (viewGroup == null) {
                    zzg(layoutParams, zzbnwVar.zze);
                    zze.setLayoutParams(layoutParams);
                    zzbnsVar = zze;
                }
            }
        } else if (!(this.zzd.zzl() instanceof zzbnr)) {
            zzbnsVar = null;
        } else {
            zzbnr zzbnrVar = (zzbnr) this.zzd.zzl();
            if (viewGroup == null) {
                zzg(layoutParams, zzbnrVar.zzc());
            }
            zzbnsVar = new zzbns(context, zzbnrVar, layoutParams);
            zzbnsVar.setContentDescription((CharSequence) zzbgq.zzc().zzb(zzblj.zzct));
        }
        if (zzbnsVar != null) {
            if (zzbnsVar.getParent() instanceof ViewGroup) {
                ((ViewGroup) zzbnsVar.getParent()).removeView(zzbnsVar);
            }
            if (viewGroup != null) {
                viewGroup.removeAllViews();
                viewGroup.addView(zzbnsVar);
            } else {
                zza zzaVar = new zza(zzdrwVar.zzf().getContext());
                zzaVar.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                zzaVar.addView(zzbnsVar);
                FrameLayout zzh = zzdrwVar.zzh();
                if (zzh != null) {
                    zzh.addView(zzaVar);
                }
            }
            zzdrwVar.zzq(zzdrwVar.zzk(), zzbnsVar, true);
        }
        zzfss<String> zzfssVar = zzdqx.zza;
        int size = zzfssVar.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                viewGroup2 = null;
                break;
            }
            View zzg2 = zzdrwVar.zzg(zzfssVar.get(i2));
            i2++;
            if (zzg2 instanceof ViewGroup) {
                viewGroup2 = (ViewGroup) zzg2;
                break;
            }
        }
        final ViewGroup viewGroup3 = viewGroup2;
        this.zzh.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdqy
            @Override // java.lang.Runnable
            public final void run() {
                zzdrb.this.zza(viewGroup3);
            }
        });
        if (viewGroup2 == null) {
            return;
        }
        if (zzh(viewGroup2, true)) {
            if (this.zzd.zzr() == null) {
                return;
            }
            this.zzd.zzr().zzaq(new zzdra(zzdrwVar, viewGroup2));
        } else if (((Boolean) zzbgq.zzc().zzb(zzblj.zzgZ)).booleanValue() && zzh(viewGroup2, false)) {
            if (this.zzd.zzp() == null) {
                return;
            }
            this.zzd.zzp().zzaq(new zzdra(zzdrwVar, viewGroup2));
        } else {
            viewGroup2.removeAllViews();
            View zzf = zzdrwVar.zzf();
            Context context2 = null;
            if (zzf != null) {
                context2 = zzf.getContext();
            }
            if (context2 == null || (zza = this.zzj.zza()) == null) {
                return;
            }
            try {
                IObjectWrapper zzi = zza.zzi();
                if (zzi == null || (drawable = (Drawable) ObjectWrapper.unwrap(zzi)) == null) {
                    return;
                }
                ImageView imageView = new ImageView(context2);
                imageView.setImageDrawable(drawable);
                IObjectWrapper zzj = zzdrwVar.zzj();
                if (zzj == null || !((Boolean) zzbgq.zzc().zzb(zzblj.zzeD)).booleanValue()) {
                    imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                } else {
                    imageView.setScaleType((ImageView.ScaleType) ObjectWrapper.unwrap(zzj));
                }
                imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                viewGroup2.addView(imageView);
            } catch (RemoteException e) {
                zzciz.zzj("Could not get main image drawable");
            }
        }
    }

    public final void zzc(zzdrw zzdrwVar) {
        if (zzdrwVar == null || this.zze == null || zzdrwVar.zzh() == null || !this.zzc.zzf()) {
            return;
        }
        try {
            zzdrwVar.zzh().addView(this.zze.zza());
        } catch (zzcpa e) {
            zze.zzb("web view can not be obtained", e);
        }
    }

    public final void zzd(zzdrw zzdrwVar) {
        if (zzdrwVar == null) {
            return;
        }
        Context context = zzdrwVar.zzf().getContext();
        if (!zzcb.zzh(context, this.zzc.zza)) {
            return;
        }
        if (!(context instanceof Activity)) {
            zzciz.zze("Activity context is needed for policy validator.");
        } else if (this.zzf == null || zzdrwVar.zzh() == null) {
        } else {
            try {
                WindowManager windowManager = (WindowManager) context.getSystemService("window");
                windowManager.addView(this.zzf.zza(zzdrwVar.zzh(), windowManager), zzcb.zzb());
            } catch (zzcpa e) {
                zze.zzb("web view can not be obtained", e);
            }
        }
    }

    public final void zze(final zzdrw zzdrwVar) {
        this.zzg.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzdqz
            @Override // java.lang.Runnable
            public final void run() {
                zzdrb.this.zzb(zzdrwVar);
            }
        });
    }

    public final boolean zzf(ViewGroup viewGroup) {
        return zzh(viewGroup, true);
    }
}
