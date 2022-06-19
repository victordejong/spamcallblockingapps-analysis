package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.webkit.WebView;
import com.google.android.gms.ads.AdInspectorError;
import com.google.android.gms.ads.MobileAds;
import com.google.android.gms.ads.OnAdInspectorClosedListener;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.initialization.AdapterStatus;
import com.google.android.gms.ads.initialization.InitializationStatus;
import com.google.android.gms.ads.initialization.OnInitializationCompleteListener;
import com.google.android.gms.ads.mediation.rtb.RtbAdapter;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import javax.annotation.Nullable;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbjq.class */
public final class zzbjq {
    @GuardedBy("InternalMobileAds.class")
    private static zzbjq zza;
    @GuardedBy("lock")
    private zzbib zzd;
    private InitializationStatus zzi;
    private final Object zzc = new Object();
    private boolean zze = false;
    private boolean zzf = false;
    @Nullable
    private OnAdInspectorClosedListener zzg = null;
    private RequestConfiguration zzh = new RequestConfiguration.Builder().build();
    private final ArrayList<OnInitializationCompleteListener> zzb = new ArrayList<>();

    private zzbjq() {
    }

    public static zzbjq zzf() {
        zzbjq zzbjqVar;
        synchronized (zzbjq.class) {
            try {
                if (zza == null) {
                    zza = new zzbjq();
                }
                zzbjqVar = zza;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzbjqVar;
    }

    @GuardedBy("lock")
    private final void zzv(Context context) {
        if (this.zzd == null) {
            this.zzd = new zzbgg(zzbgo.zza(), context).zzd(context, false);
        }
    }

    @GuardedBy("lock")
    private final void zzw(RequestConfiguration requestConfiguration) {
        try {
            this.zzd.zzs(new zzbkk(requestConfiguration));
        } catch (RemoteException e) {
            zzciz.zzh("Unable to set request configuration parcel.", e);
        }
    }

    public static final InitializationStatus zzx(List<zzbtn> list) {
        HashMap hashMap = new HashMap();
        for (zzbtn zzbtnVar : list) {
            hashMap.put(zzbtnVar.zza, new zzbtv(zzbtnVar.zzb ? AdapterStatus.State.READY : AdapterStatus.State.NOT_READY, zzbtnVar.zzd, zzbtnVar.zzc));
        }
        return new zzbtw(hashMap);
    }

    public final float zza() {
        synchronized (this.zzc) {
            zzbib zzbibVar = this.zzd;
            float f = 1.0f;
            if (zzbibVar == null) {
                return 1.0f;
            }
            try {
                f = zzbibVar.zze();
            } catch (RemoteException e) {
                zzciz.zzh("Unable to get app volume.", e);
            }
            return f;
        }
    }

    public final RequestConfiguration zzc() {
        return this.zzh;
    }

    public final InitializationStatus zze() {
        synchronized (this.zzc) {
            Preconditions.checkState(this.zzd != null, "MobileAds.initialize() must be called prior to getting initialization status.");
            try {
                InitializationStatus initializationStatus = this.zzi;
                if (initializationStatus != null) {
                    return initializationStatus;
                }
                return zzx(this.zzd.zzg());
            } catch (RemoteException e) {
                zzciz.zzg("Unable to get Initialization status.");
                return new zzbjj(this);
            }
        }
    }

    public final String zzg() {
        String zzc;
        synchronized (this.zzc) {
            Preconditions.checkState(this.zzd != null, "MobileAds.initialize() must be called prior to getting version string.");
            try {
                zzc = zzfqr.zzc(this.zzd.zzf());
            } catch (RemoteException e) {
                zzciz.zzh("Unable to get version string.", e);
                return "";
            }
        }
        return zzc;
    }

    public final void zzk(Context context) {
        synchronized (this.zzc) {
            zzv(context);
            try {
                this.zzd.zzi();
            } catch (RemoteException e) {
                zzciz.zzg("Unable to disable mediation adapter initialization.");
            }
        }
    }

    public final void zzl(Context context, @Nullable String str, @Nullable final OnInitializationCompleteListener onInitializationCompleteListener) {
        synchronized (this.zzc) {
            if (this.zze) {
                if (onInitializationCompleteListener != null) {
                    zzf().zzb.add(onInitializationCompleteListener);
                }
            } else if (this.zzf) {
                if (onInitializationCompleteListener != null) {
                    onInitializationCompleteListener.onInitializationComplete(zze());
                }
            } else {
                this.zze = true;
                if (onInitializationCompleteListener != null) {
                    zzf().zzb.add(onInitializationCompleteListener);
                }
                if (context == null) {
                    throw new IllegalArgumentException("Context cannot be null.");
                }
                try {
                    zzbxa.zza().zzb(context, null);
                    zzv(context);
                    if (onInitializationCompleteListener != null) {
                        this.zzd.zzr(new zzbjp(this, null));
                    }
                    this.zzd.zzn(new zzbxe());
                    this.zzd.zzj();
                    this.zzd.zzk(null, ObjectWrapper.wrap(null));
                    if (this.zzh.getTagForChildDirectedTreatment() != -1 || this.zzh.getTagForUnderAgeOfConsent() != -1) {
                        zzw(this.zzh);
                    }
                    zzblj.zzc(context);
                    if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzdP)).booleanValue() && !zzg().endsWith("0")) {
                        zzciz.zzg("Google Mobile Ads SDK initialization functionality unavailable for this session. Ad requests can be made at any time.");
                        this.zzi = new zzbjj(this);
                        if (onInitializationCompleteListener != null) {
                            zzcis.zza.post(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbjk
                                @Override // java.lang.Runnable
                                public final void run() {
                                    zzbjq.this.zzm(onInitializationCompleteListener);
                                }
                            });
                        }
                    }
                } catch (RemoteException e) {
                    zzciz.zzk("MobileAdsSettingManager initialization failed", e);
                }
            }
        }
    }

    public final /* synthetic */ void zzm(OnInitializationCompleteListener onInitializationCompleteListener) {
        onInitializationCompleteListener.onInitializationComplete(this.zzi);
    }

    public final void zzn(Context context, OnAdInspectorClosedListener onAdInspectorClosedListener) {
        synchronized (this.zzc) {
            zzv(context);
            zzf().zzg = onAdInspectorClosedListener;
            try {
                this.zzd.zzl(new zzbjn(null));
            } catch (RemoteException e) {
                zzciz.zzg("Unable to open the ad inspector.");
                if (onAdInspectorClosedListener != null) {
                    onAdInspectorClosedListener.onAdInspectorClosed(new AdInspectorError(0, "Ad inspector had an internal error.", MobileAds.ERROR_DOMAIN));
                }
            }
        }
    }

    public final void zzo(Context context, String str) {
        synchronized (this.zzc) {
            Preconditions.checkState(this.zzd != null, "MobileAds.initialize() must be called prior to opening debug menu.");
            try {
                this.zzd.zzm(ObjectWrapper.wrap(context), str);
            } catch (RemoteException e) {
                zzciz.zzh("Unable to open debug menu.", e);
            }
        }
    }

    public final void zzp(Class<? extends RtbAdapter> cls) {
        synchronized (this.zzc) {
            try {
                this.zzd.zzh(cls.getCanonicalName());
            } catch (RemoteException e) {
                zzciz.zzh("Unable to register RtbAdapter", e);
            }
        }
    }

    public final void zzq(WebView webView) {
        Preconditions.checkMainThread("#008 Must be called on the main UI thread.");
        synchronized (this.zzc) {
            if (webView == null) {
                zzciz.zzg("The webview to be registered cannot be null.");
                return;
            }
            zzcht zza2 = zzccj.zza(webView.getContext());
            if (zza2 == null) {
                zzciz.zzj("Internal error, query info generator is null.");
                return;
            }
            try {
                zza2.zzg(ObjectWrapper.wrap(webView));
            } catch (RemoteException e) {
                zzciz.zzh("", e);
            }
        }
    }

    public final void zzr(boolean z) {
        synchronized (this.zzc) {
            Preconditions.checkState(this.zzd != null, "MobileAds.initialize() must be called prior to setting app muted state.");
            try {
                this.zzd.zzo(z);
            } catch (RemoteException e) {
                zzciz.zzh("Unable to set app mute state.", e);
            }
        }
    }

    public final void zzs(float f) {
        Preconditions.checkArgument(f >= 0.0f && f <= 1.0f, "The app volume must be a value between 0 and 1 inclusive.");
        synchronized (this.zzc) {
            Preconditions.checkState(this.zzd != null, "MobileAds.initialize() must be called prior to setting the app volume.");
            try {
                this.zzd.zzp(f);
            } catch (RemoteException e) {
                zzciz.zzh("Unable to set app volume.", e);
            }
        }
    }

    public final void zzt(RequestConfiguration requestConfiguration) {
        Preconditions.checkArgument(requestConfiguration != null, "Null passed to setRequestConfiguration.");
        synchronized (this.zzc) {
            RequestConfiguration requestConfiguration2 = this.zzh;
            this.zzh = requestConfiguration;
            if (this.zzd == null) {
                return;
            }
            if (requestConfiguration2.getTagForChildDirectedTreatment() != requestConfiguration.getTagForChildDirectedTreatment() || requestConfiguration2.getTagForUnderAgeOfConsent() != requestConfiguration.getTagForUnderAgeOfConsent()) {
                zzw(requestConfiguration);
            }
        }
    }

    public final boolean zzu() {
        boolean z;
        synchronized (this.zzc) {
            zzbib zzbibVar = this.zzd;
            if (zzbibVar == null) {
                return false;
            }
            try {
                z = zzbibVar.zzt();
            } catch (RemoteException e) {
                zzciz.zzh("Unable to get app mute state.", e);
                z = false;
            }
            return z;
        }
    }
}
