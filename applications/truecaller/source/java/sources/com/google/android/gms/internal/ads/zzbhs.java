package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.webkit.WebView;
import com.amazon.device.ads.DtbConstants;
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
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbhs.class */
public final class zzbhs {
    private static zzbhs zzc;
    private zzbge zzd;
    private InitializationStatus zzi;
    private final Object zzb = new Object();
    private boolean zze = false;
    private boolean zzf = false;
    private OnAdInspectorClosedListener zzg = null;
    private RequestConfiguration zzh = new RequestConfiguration.Builder().build();
    private final ArrayList<OnInitializationCompleteListener> zza = new ArrayList<>();

    private zzbhs() {
    }

    public static zzbhs zze() {
        zzbhs zzbhsVar;
        synchronized (zzbhs.class) {
            try {
                if (zzc == null) {
                    zzc = new zzbhs();
                }
                zzbhsVar = zzc;
            } catch (Throwable th) {
                throw th;
            }
        }
        return zzbhsVar;
    }

    private final void zzv(RequestConfiguration requestConfiguration) {
        try {
            this.zzd.zzr(new zzbim(requestConfiguration));
        } catch (RemoteException e) {
            zzcgt.zzg("Unable to set request configuration parcel.", e);
        }
    }

    private final void zzw(Context context) {
        if (this.zzd == null) {
            this.zzd = new zzbej(zzber.zzb(), context).zzd(context, false);
        }
    }

    public static final InitializationStatus zzx(List<zzbrl> list) {
        HashMap hashMap = new HashMap();
        for (zzbrl zzbrlVar : list) {
            hashMap.put(zzbrlVar.zza, new zzbrt(zzbrlVar.zzb ? AdapterStatus.State.READY : AdapterStatus.State.NOT_READY, zzbrlVar.zzd, zzbrlVar.zzc));
        }
        return new zzbru(hashMap);
    }

    public final void zzf(Context context, String str, OnInitializationCompleteListener onInitializationCompleteListener) {
        synchronized (this.zzb) {
            if (this.zze) {
                if (onInitializationCompleteListener != null) {
                    zze().zza.add(onInitializationCompleteListener);
                }
            } else if (this.zzf) {
                if (onInitializationCompleteListener != null) {
                    onInitializationCompleteListener.onInitializationComplete(zzn());
                }
            } else {
                this.zze = true;
                if (onInitializationCompleteListener != null) {
                    zze().zza.add(onInitializationCompleteListener);
                }
                if (context == null) {
                    throw new IllegalArgumentException("Context cannot be null.");
                }
                try {
                    zzbuz.zza().zzb(context, null);
                    zzw(context);
                    if (onInitializationCompleteListener != null) {
                        this.zzd.zzp(new zzbhr(this, null));
                    }
                    this.zzd.zzo(new zzbvd());
                    this.zzd.zze();
                    this.zzd.zzj(null, new ObjectWrapper(null));
                    if (this.zzh.getTagForChildDirectedTreatment() != -1 || this.zzh.getTagForUnderAgeOfConsent() != -1) {
                        zzv(this.zzh);
                    }
                    zzbjl.zza(context);
                    if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzdI)).booleanValue() && !zzl().endsWith(DtbConstants.NETWORK_TYPE_UNKNOWN)) {
                        zzcgt.zzf("Google Mobile Ads SDK initialization functionality unavailable for this session. Ad requests can be made at any time.");
                        this.zzi = new zzbhn(this);
                        if (onInitializationCompleteListener != null) {
                            zzcgm.zza.post(new Runnable(this, onInitializationCompleteListener) { // from class: com.google.android.gms.internal.ads.zzbhm
                                private final zzbhs zza;
                                private final OnInitializationCompleteListener zzb;

                                {
                                    this.zza = this;
                                    this.zzb = onInitializationCompleteListener;
                                }

                                @Override // java.lang.Runnable
                                public final void run() {
                                    this.zza.zzu(this.zzb);
                                }
                            });
                        }
                    }
                } catch (RemoteException e) {
                    zzcgt.zzj("MobileAdsSettingManager initialization failed", e);
                }
            }
        }
    }

    public final void zzg(float f) {
        Preconditions.m38906b(f >= 0.0f && f <= 1.0f, "The app volume must be a value between 0 and 1 inclusive.");
        synchronized (this.zzb) {
            Preconditions.m38895m(this.zzd != null, "MobileAds.initialize() must be called prior to setting the app volume.");
            try {
                this.zzd.zzf(f);
            } catch (RemoteException e) {
                zzcgt.zzg("Unable to set app volume.", e);
            }
        }
    }

    public final float zzh() {
        synchronized (this.zzb) {
            zzbge zzbgeVar = this.zzd;
            float f = 1.0f;
            if (zzbgeVar == null) {
                return 1.0f;
            }
            try {
                f = zzbgeVar.zzk();
            } catch (RemoteException e) {
                zzcgt.zzg("Unable to get app volume.", e);
            }
            return f;
        }
    }

    public final void zzi(boolean z) {
        synchronized (this.zzb) {
            Preconditions.m38895m(this.zzd != null, "MobileAds.initialize() must be called prior to setting app muted state.");
            try {
                this.zzd.zzh(z);
            } catch (RemoteException e) {
                zzcgt.zzg("Unable to set app mute state.", e);
            }
        }
    }

    public final boolean zzj() {
        synchronized (this.zzb) {
            zzbge zzbgeVar = this.zzd;
            boolean z = false;
            if (zzbgeVar == null) {
                return false;
            }
            try {
                z = zzbgeVar.zzl();
            } catch (RemoteException e) {
                zzcgt.zzg("Unable to get app mute state.", e);
            }
            return z;
        }
    }

    public final void zzk(Context context, String str) {
        synchronized (this.zzb) {
            Preconditions.m38895m(this.zzd != null, "MobileAds.initialize() must be called prior to opening debug menu.");
            try {
                this.zzd.zzi(new ObjectWrapper(context), str);
            } catch (RemoteException e) {
                zzcgt.zzg("Unable to open debug menu.", e);
            }
        }
    }

    public final String zzl() {
        String zza;
        synchronized (this.zzb) {
            Preconditions.m38895m(this.zzd != null, "MobileAds.initialize() must be called prior to getting version string.");
            try {
                zza = zzfmi.zza(this.zzd.zzm());
            } catch (RemoteException e) {
                zzcgt.zzg("Unable to get version string.", e);
                return "";
            }
        }
        return zza;
    }

    public final void zzm(Class<? extends RtbAdapter> cls) {
        synchronized (this.zzb) {
            try {
                this.zzd.zzn(cls.getCanonicalName());
            } catch (RemoteException e) {
                zzcgt.zzg("Unable to register RtbAdapter", e);
            }
        }
    }

    public final InitializationStatus zzn() {
        synchronized (this.zzb) {
            Preconditions.m38895m(this.zzd != null, "MobileAds.initialize() must be called prior to getting initialization status.");
            try {
                InitializationStatus initializationStatus = this.zzi;
                if (initializationStatus != null) {
                    return initializationStatus;
                }
                return zzx(this.zzd.zzq());
            } catch (RemoteException e) {
                zzcgt.zzf("Unable to get Initialization status.");
                return new zzbhn(this);
            }
        }
    }

    public final void zzo(Context context) {
        synchronized (this.zzb) {
            zzw(context);
            try {
                this.zzd.zzs();
            } catch (RemoteException e) {
                zzcgt.zzf("Unable to disable mediation adapter initialization.");
            }
        }
    }

    public final void zzp(Context context, OnAdInspectorClosedListener onAdInspectorClosedListener) {
        synchronized (this.zzb) {
            zzw(context);
            zze().zzg = onAdInspectorClosedListener;
            try {
                this.zzd.zzt(new zzbhq(null));
            } catch (RemoteException e) {
                zzcgt.zzf("Unable to open the ad inspector.");
                if (onAdInspectorClosedListener != null) {
                    onAdInspectorClosedListener.onAdInspectorClosed(new AdInspectorError(0, "Ad inspector had an internal error.", MobileAds.ERROR_DOMAIN));
                }
            }
        }
    }

    public final RequestConfiguration zzr() {
        return this.zzh;
    }

    public final void zzs(RequestConfiguration requestConfiguration) {
        Preconditions.m38906b(requestConfiguration != null, "Null passed to setRequestConfiguration.");
        synchronized (this.zzb) {
            RequestConfiguration requestConfiguration2 = this.zzh;
            this.zzh = requestConfiguration;
            if (this.zzd == null) {
                return;
            }
            if (requestConfiguration2.getTagForChildDirectedTreatment() != requestConfiguration.getTagForChildDirectedTreatment() || requestConfiguration2.getTagForUnderAgeOfConsent() != requestConfiguration.getTagForUnderAgeOfConsent()) {
                zzv(requestConfiguration);
            }
        }
    }

    public final void zzt(WebView webView) {
        Preconditions.m38902f("#008 Must be called on the main UI thread.");
        synchronized (this.zzb) {
            if (webView == null) {
                zzcgt.zzf("The webview to be registered cannot be null.");
                return;
            }
            zzcfn zza = zzcah.zza(webView.getContext());
            if (zza == null) {
                zzcgt.zzi("Internal error, query info generator is null.");
                return;
            }
            try {
                zza.zzj(new ObjectWrapper(webView));
            } catch (RemoteException e) {
                zzcgt.zzg("", e);
            }
        }
    }

    public final /* synthetic */ void zzu(OnInitializationCompleteListener onInitializationCompleteListener) {
        onInitializationCompleteListener.onInitializationComplete(this.zzi);
    }
}
