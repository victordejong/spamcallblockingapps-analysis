package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.webkit.WebView;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbzj.class */
public final class zzbzj implements zzbzk {
    @VisibleForTesting
    public static boolean zza = false;
    @VisibleForTesting
    public static boolean zzb = false;
    private static final Object zzd = new Object();
    @VisibleForTesting
    public zzffy zzc;

    @Override // com.google.android.gms.internal.ads.zzbzk
    public final boolean zza(Context context) {
        synchronized (zzd) {
            if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzdu)).booleanValue()) {
                return false;
            }
            if (zza) {
                return true;
            }
            try {
                zzb(context);
                boolean zze = this.zzc.zze(new ObjectWrapper(context));
                zza = zze;
                return zze;
            } catch (RemoteException | NullPointerException e) {
                zzcgt.zzl("#007 Could not call remote method.", e);
                return false;
            }
        }
    }

    @VisibleForTesting
    public final void zzb(Context context) {
        synchronized (zzd) {
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzdu)).booleanValue() && !zzb) {
                try {
                    zzb = true;
                    this.zzc = (zzffy) zzcgx.zza(context, "com.google.android.gms.ads.omid.DynamiteOmid", zzbzi.zza);
                } catch (zzcgw e) {
                    zzcgt.zzl("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzk
    public final String zzc(Context context) {
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzdu)).booleanValue()) {
            return null;
        }
        try {
            zzb(context);
            String valueOf = String.valueOf(this.zzc.zzh());
            return valueOf.length() != 0 ? "a.".concat(valueOf) : new String("a.");
        } catch (RemoteException | NullPointerException e) {
            zzcgt.zzl("#007 Could not call remote method.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzk
    public final IObjectWrapper zzd(String str, WebView webView, String str2, String str3, String str4, zzbzm zzbzmVar, zzbzl zzbzlVar, String str5) {
        IObjectWrapper iObjectWrapper;
        synchronized (zzd) {
            try {
                try {
                    if (((Boolean) zzbet.zzc().zzc(zzbjl.zzdu)).booleanValue() && zza) {
                        try {
                            iObjectWrapper = this.zzc.zzl(str, new ObjectWrapper(webView), "", "javascript", str4, "Google", zzbzmVar.toString(), zzbzlVar.toString(), str5);
                        } catch (RemoteException | NullPointerException e) {
                            zzcgt.zzl("#007 Could not call remote method.", e);
                            iObjectWrapper = null;
                        }
                        return iObjectWrapper;
                    }
                    iObjectWrapper = null;
                    return iObjectWrapper;
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzk
    public final IObjectWrapper zze(String str, WebView webView, String str2, String str3, String str4, String str5, zzbzm zzbzmVar, zzbzl zzbzlVar, String str6) {
        synchronized (zzd) {
            try {
                try {
                    if (((Boolean) zzbet.zzc().zzc(zzbjl.zzdu)).booleanValue() && zza) {
                        try {
                            return this.zzc.zzk(str, new ObjectWrapper(webView), "", "javascript", str4, str5, zzbzmVar.toString(), zzbzlVar.toString(), str6);
                        } catch (RemoteException | NullPointerException e) {
                            zzcgt.zzl("#007 Could not call remote method.", e);
                            return null;
                        }
                    }
                    return null;
                } catch (Throwable th) {
                    th = th;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzk
    public final void zzf(IObjectWrapper iObjectWrapper) {
        synchronized (zzd) {
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzdu)).booleanValue() && zza) {
                try {
                    this.zzc.zzf(iObjectWrapper);
                } catch (RemoteException | NullPointerException e) {
                    zzcgt.zzl("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzk
    public final void zzg(IObjectWrapper iObjectWrapper) {
        synchronized (zzd) {
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzdu)).booleanValue() && zza) {
                try {
                    this.zzc.zzi(iObjectWrapper);
                } catch (RemoteException | NullPointerException e) {
                    zzcgt.zzl("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzk
    public final void zzh(IObjectWrapper iObjectWrapper, View view) {
        synchronized (zzd) {
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzdu)).booleanValue() && zza) {
                try {
                    this.zzc.zzg(iObjectWrapper, new ObjectWrapper(view));
                } catch (RemoteException | NullPointerException e) {
                    zzcgt.zzl("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzk
    public final void zzi(IObjectWrapper iObjectWrapper, View view) {
        synchronized (zzd) {
            if (((Boolean) zzbet.zzc().zzc(zzbjl.zzdu)).booleanValue() && zza) {
                try {
                    this.zzc.zzj(iObjectWrapper, new ObjectWrapper(view));
                } catch (RemoteException | NullPointerException e) {
                    zzcgt.zzl("#007 Could not call remote method.", e);
                }
            }
        }
    }
}
