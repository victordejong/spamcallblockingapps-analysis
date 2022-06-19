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
import com.google.android.gms.ads.formats.AdChoicesView;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.internal.util.zzbn;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.concurrent.Executor;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzccz.class */
public final class zzccz {
    private final Executor executor;
    private final zzaeh zzdoe;
    private final zzf zzedg;
    private final Executor zzfsj;
    private final zzdnp zzfwy;
    private final zzccd zzgch;
    private final zzcch zzgdj;
    private final zzccc zzgds;
    private final zzcdh zzgfu;
    private final zzcdp zzgfv;

    public zzccz(zzf zzfVar, zzdnp zzdnpVar, zzcch zzcchVar, zzccd zzccdVar, zzcdh zzcdhVar, zzcdp zzcdpVar, Executor executor, Executor executor2, zzccc zzcccVar) {
        this.zzedg = zzfVar;
        this.zzfwy = zzdnpVar;
        this.zzdoe = zzdnpVar.zzdoe;
        this.zzgdj = zzcchVar;
        this.zzgch = zzccdVar;
        this.zzgfu = zzcdhVar;
        this.zzgfv = zzcdpVar;
        this.zzfsj = executor;
        this.executor = executor2;
        this.zzgds = zzcccVar;
    }

    private static void zza(RelativeLayout.LayoutParams layoutParams, int i) {
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

    public static boolean zza(zzcdx zzcdxVar, String[] strArr) {
        Map<String, WeakReference<View>> zzaow = zzcdxVar.zzaow();
        if (zzaow == null) {
            return false;
        }
        for (String str : strArr) {
            if (zzaow.get(str) != null) {
                return true;
            }
        }
        return false;
    }

    public final void zza(zzcdx zzcdxVar) {
        this.zzfsj.execute(new Runnable(this, zzcdxVar) { // from class: com.google.android.gms.internal.ads.zzcdc
            private final zzcdx zzgdv;
            private final zzccz zzgfx;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgfx = this;
                this.zzgdv = zzcdxVar;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzgfx.zzi(this.zzgdv);
            }
        });
    }

    public final boolean zza(ViewGroup viewGroup) {
        View zzany = this.zzgch.zzany();
        if (zzany == null) {
            return false;
        }
        viewGroup.removeAllViews();
        if (zzany.getParent() instanceof ViewGroup) {
            ((ViewGroup) zzany.getParent()).removeView(zzany);
        }
        viewGroup.addView(zzany, ((Boolean) zzwr.zzqr().zzd(zzabp.zzcti)).booleanValue() ? new FrameLayout.LayoutParams(-1, -1, 17) : new FrameLayout.LayoutParams(-2, -2, 17));
        return true;
    }

    public final /* synthetic */ void zzb(ViewGroup viewGroup) {
        boolean z = viewGroup != null;
        if (this.zzgch.zzany() != null) {
            if (2 == this.zzgch.zzanu() || 1 == this.zzgch.zzanu()) {
                this.zzedg.zza(this.zzfwy.zzhkx, String.valueOf(this.zzgch.zzanu()), z);
            } else if (6 != this.zzgch.zzanu()) {
            } else {
                this.zzedg.zza(this.zzfwy.zzhkx, "2", z);
                this.zzedg.zza(this.zzfwy.zzhkx, "1", z);
            }
        }
    }

    public final void zzg(zzcdx zzcdxVar) {
        if (zzcdxVar == null || this.zzgfu == null || zzcdxVar.zzaoz() == null || !this.zzgdj.zzaog()) {
            return;
        }
        try {
            zzcdxVar.zzaoz().addView(this.zzgfu.zzapf());
        } catch (zzben e) {
            zzd.zza("web view can not be obtained", e);
        }
    }

    public final void zzh(zzcdx zzcdxVar) {
        if (zzcdxVar == null) {
            return;
        }
        Context context = zzcdxVar.zzajr().getContext();
        if (!zzbn.zza(context, this.zzgdj.zzgeu)) {
            return;
        }
        if (!(context instanceof Activity)) {
            zzd.zzdy("Activity context is needed for policy validator.");
        } else if (this.zzgfv == null || zzcdxVar.zzaoz() == null) {
        } else {
            try {
                WindowManager windowManager = (WindowManager) context.getSystemService("window");
                windowManager.addView(this.zzgfv.zza(zzcdxVar.zzaoz(), windowManager), zzbn.zzzq());
            } catch (zzben e) {
                zzd.zza("web view can not be obtained", e);
            }
        }
    }

    public final /* synthetic */ void zzi(zzcdx zzcdxVar) {
        ViewGroup viewGroup;
        zzaeb zzaebVar;
        ViewGroup viewGroup2;
        IObjectWrapper iObjectWrapper;
        Drawable drawable;
        if (this.zzgdj.zzaoi() || this.zzgdj.zzaoh()) {
            for (int i = 0; i < 2; i++) {
                View zzgc = zzcdxVar.zzgc(new String[]{NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW, "3011"}[i]);
                if (zzgc != null && (zzgc instanceof ViewGroup)) {
                    viewGroup = (ViewGroup) zzgc;
                    break;
                }
            }
        }
        viewGroup = null;
        boolean z = viewGroup != null;
        Context context = zzcdxVar.zzajr().getContext();
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        if (this.zzgch.zzanv() != null) {
            View zzanv = this.zzgch.zzanv();
            zzaeh zzaehVar = this.zzdoe;
            if (zzaehVar == null) {
                zzaebVar = zzanv;
            } else {
                zzaebVar = zzanv;
                if (!z) {
                    zza(layoutParams, zzaehVar.zzbnv);
                    zzanv.setLayoutParams(layoutParams);
                    zzaebVar = zzanv;
                }
            }
        } else if (!(this.zzgch.zzto() instanceof zzady)) {
            zzaebVar = null;
        } else {
            zzady zzadyVar = (zzady) this.zzgch.zzto();
            if (!z) {
                zza(layoutParams, zzadyVar.zztg());
            }
            zzaebVar = new zzaeb(context, zzadyVar, layoutParams);
            zzaebVar.setContentDescription((CharSequence) zzwr.zzqr().zzd(zzabp.zzctf));
        }
        if (zzaebVar != null) {
            if (zzaebVar.getParent() instanceof ViewGroup) {
                ((ViewGroup) zzaebVar.getParent()).removeView(zzaebVar);
            }
            if (z) {
                viewGroup.removeAllViews();
                viewGroup.addView(zzaebVar);
            } else {
                AdChoicesView adChoicesView = new AdChoicesView(zzcdxVar.zzajr().getContext());
                adChoicesView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
                adChoicesView.addView(zzaebVar);
                FrameLayout zzaoz = zzcdxVar.zzaoz();
                if (zzaoz != null) {
                    zzaoz.addView(adChoicesView);
                }
            }
            zzcdxVar.zza(zzcdxVar.zzaoy(), zzaebVar, true);
        }
        String[] strArr = zzccx.zzgfi;
        int length = strArr.length;
        int i2 = 0;
        while (true) {
            if (i2 >= length) {
                viewGroup2 = null;
                break;
            }
            View zzgc2 = zzcdxVar.zzgc(strArr[i2]);
            if (zzgc2 instanceof ViewGroup) {
                viewGroup2 = (ViewGroup) zzgc2;
                break;
            }
            i2++;
        }
        this.executor.execute(new Runnable(this, viewGroup2) { // from class: com.google.android.gms.internal.ads.zzcdb
            private final zzccz zzgfx;
            private final ViewGroup zzgfy;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgfx = this;
                this.zzgfy = viewGroup2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzgfx.zzb(this.zzgfy);
            }
        });
        if (viewGroup2 != null) {
            if (zza(viewGroup2)) {
                if (this.zzgch.zzanz() == null) {
                    return;
                }
                this.zzgch.zzanz().zza(new zzcde(this, zzcdxVar, viewGroup2));
                return;
            }
            viewGroup2.removeAllViews();
            View zzajr = zzcdxVar.zzajr();
            Context context2 = zzajr != null ? zzajr.getContext() : null;
            if (context2 == null) {
                return;
            }
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcte)).booleanValue()) {
                zzaem zzty = this.zzgds.zzty();
                if (zzty == null) {
                    return;
                }
                try {
                    iObjectWrapper = zzty.zztl();
                } catch (RemoteException e) {
                    zzd.zzex("Could not get main image drawable");
                    return;
                }
            } else {
                zzaer zzanw = this.zzgch.zzanw();
                if (zzanw == null) {
                    return;
                }
                try {
                    iObjectWrapper = zzanw.zzti();
                } catch (RemoteException e2) {
                    zzd.zzex("Could not get drawable from image");
                    return;
                }
            }
            if (iObjectWrapper == null || (drawable = (Drawable) ObjectWrapper.unwrap(iObjectWrapper)) == null) {
                return;
            }
            ImageView imageView = new ImageView(context2);
            imageView.setImageDrawable(drawable);
            IObjectWrapper iObjectWrapper2 = null;
            if (zzcdxVar != null) {
                iObjectWrapper2 = zzcdxVar.zzapb();
            }
            if (iObjectWrapper2 == null || !((Boolean) zzwr.zzqr().zzd(zzabp.zzcxx)).booleanValue()) {
                imageView.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
            } else {
                imageView.setScaleType((ImageView.ScaleType) ObjectWrapper.unwrap(iObjectWrapper2));
            }
            imageView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
            viewGroup2.addView(imageView);
        }
    }
}
