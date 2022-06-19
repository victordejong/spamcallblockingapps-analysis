package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzcfw.class */
public final class zzcfw extends zzaju implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, zzaea {
    private zzzc zzgef;
    private View zzgek;
    private zzcbu zzgfm;
    private boolean zzesz = false;
    private boolean zzgiq = false;

    public zzcfw(zzcbu zzcbuVar, zzccd zzccdVar) {
        this.zzgek = zzccdVar.zzany();
        this.zzgef = zzccdVar.getVideoController();
        this.zzgfm = zzcbuVar;
        if (zzccdVar.zzanz() != null) {
            zzccdVar.zzanz().zza(this);
        }
    }

    private static void zza(zzajw zzajwVar, int i) {
        try {
            zzajwVar.zzda(i);
        } catch (RemoteException e) {
            zzd.zze("#007 Could not call remote method.", e);
        }
    }

    private final void zzapk() {
        View view = this.zzgek;
        if (view == null) {
            return;
        }
        ViewParent parent = view.getParent();
        if (!(parent instanceof ViewGroup)) {
            return;
        }
        ((ViewGroup) parent).removeView(this.zzgek);
    }

    private final void zzapl() {
        View view;
        zzcbu zzcbuVar = this.zzgfm;
        if (zzcbuVar == null || (view = this.zzgek) == null) {
            return;
        }
        zzcbuVar.zzb(view, Collections.emptyMap(), Collections.emptyMap(), zzcbu.zzz(this.zzgek));
    }

    @Override // com.google.android.gms.internal.ads.zzajv
    public final void destroy() throws RemoteException {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zzapk();
        zzcbu zzcbuVar = this.zzgfm;
        if (zzcbuVar != null) {
            zzcbuVar.destroy();
        }
        this.zzgfm = null;
        this.zzgek = null;
        this.zzgef = null;
        this.zzesz = true;
    }

    @Override // com.google.android.gms.internal.ads.zzajv
    public final zzzc getVideoController() throws RemoteException {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        if (this.zzesz) {
            zzd.zzev("getVideoController: Instream ad should not be used after destroyed");
            return null;
        }
        return this.zzgef;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        zzapl();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        zzapl();
    }

    @Override // com.google.android.gms.internal.ads.zzajv
    public final void zza(IObjectWrapper iObjectWrapper, zzajw zzajwVar) throws RemoteException {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        if (this.zzesz) {
            zzd.zzev("Instream ad can not be shown after destroy().");
            zza(zzajwVar, 2);
            return;
        }
        View view = this.zzgek;
        if (view == null || this.zzgef == null) {
            String str = view == null ? "can not get video view." : "can not get video controller.";
            zzd.zzev(str.length() != 0 ? "Instream internal error: ".concat(str) : new String("Instream internal error: "));
            zza(zzajwVar, 0);
        } else if (this.zzgiq) {
            zzd.zzev("Instream ad should not be used again.");
            zza(zzajwVar, 1);
        } else {
            this.zzgiq = true;
            zzapk();
            ((ViewGroup) ObjectWrapper.unwrap(iObjectWrapper)).addView(this.zzgek, new ViewGroup.LayoutParams(-1, -1));
            zzr.zzlo();
            zzbai.zza(this.zzgek, (ViewTreeObserver.OnGlobalLayoutListener) this);
            zzr.zzlo();
            zzbai.zza(this.zzgek, (ViewTreeObserver.OnScrollChangedListener) this);
            zzapl();
            try {
                zzajwVar.zzue();
            } catch (RemoteException e) {
                zzd.zze("#007 Could not call remote method.", e);
            }
        }
    }

    public final /* synthetic */ void zzapm() {
        try {
            destroy();
        } catch (RemoteException e) {
            zzd.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzajv
    public final void zzr(IObjectWrapper iObjectWrapper) throws RemoteException {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        zza(iObjectWrapper, new zzcfy(this));
    }

    @Override // com.google.android.gms.internal.ads.zzaea
    public final void zzth() {
        zzj.zzeen.post(new Runnable(this) { // from class: com.google.android.gms.internal.ads.zzcfv
            private final zzcfw zzgip;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzgip = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.zzgip.zzapm();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzajv
    public final zzaem zzty() {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        if (this.zzesz) {
            zzd.zzev("getVideoController: Instream ad should not be used after destroyed");
            return null;
        }
        zzcbu zzcbuVar = this.zzgfm;
        if (zzcbuVar != null && zzcbuVar.zzanr() != null) {
            return this.zzgfm.zzanr().zzty();
        }
        return null;
    }
}
