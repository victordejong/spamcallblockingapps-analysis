package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.webkit.WebView;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcbl.class */
public final class zzcbl implements zzcbm {
    @VisibleForTesting
    @GuardedBy("lock")
    public static boolean zza = false;
    @VisibleForTesting
    @GuardedBy("lock")
    public static boolean zzb = false;
    private static final Object zzd = new Object();
    @VisibleForTesting
    public zzfjw zzc;

    @Override // com.google.android.gms.internal.ads.zzcbm
    public final IObjectWrapper zza(String str, WebView webView, String str2, String str3, String str4, zzcbo zzcboVar, zzcbn zzcbnVar, String str5) {
        IObjectWrapper iObjectWrapper;
        synchronized (zzd) {
            try {
                try {
                    if (((Boolean) zzbgq.zzc().zzb(zzblj.zzdB)).booleanValue() && zza) {
                        try {
                            iObjectWrapper = this.zzc.zze(str, ObjectWrapper.wrap(webView), "", "javascript", str4, "Google", zzcboVar.toString(), zzcbnVar.toString(), str5);
                        } catch (RemoteException | NullPointerException e) {
                            zzciz.zzl("#007 Could not call remote method.", e);
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
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbm
    public final IObjectWrapper zzb(String str, WebView webView, String str2, String str3, String str4, String str5, zzcbo zzcboVar, zzcbn zzcbnVar, String str6) {
        synchronized (zzd) {
            try {
                try {
                    if (((Boolean) zzbgq.zzc().zzb(zzblj.zzdB)).booleanValue() && zza) {
                        try {
                            return this.zzc.zzf(str, ObjectWrapper.wrap(webView), "", "javascript", str4, str5, zzcboVar.toString(), zzcbnVar.toString(), str6);
                        } catch (RemoteException | NullPointerException e) {
                            zzciz.zzl("#007 Could not call remote method.", e);
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
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbm
    public final String zzc(Context context) {
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzdB)).booleanValue()) {
            return null;
        }
        try {
            zzf(context);
            String valueOf = String.valueOf(this.zzc.zzg());
            return valueOf.length() != 0 ? "a.".concat(valueOf) : new String("a.");
        } catch (RemoteException | NullPointerException e) {
            zzciz.zzl("#007 Could not call remote method.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbm
    public final void zzd(IObjectWrapper iObjectWrapper, View view) {
        synchronized (zzd) {
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzdB)).booleanValue() && zza) {
                try {
                    this.zzc.zzh(iObjectWrapper, ObjectWrapper.wrap(view));
                } catch (RemoteException | NullPointerException e) {
                    zzciz.zzl("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbm
    public final void zze(IObjectWrapper iObjectWrapper) {
        synchronized (zzd) {
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzdB)).booleanValue() && zza) {
                try {
                    this.zzc.zzi(iObjectWrapper);
                } catch (RemoteException | NullPointerException e) {
                    zzciz.zzl("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @VisibleForTesting
    public final void zzf(Context context) {
        synchronized (zzd) {
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzdB)).booleanValue() && !zzb) {
                try {
                    zzb = true;
                    this.zzc = (zzfjw) zzcjd.zzb(context, "com.google.android.gms.ads.omid.DynamiteOmid", zzcbk.zza);
                } catch (zzcjc e) {
                    zzciz.zzl("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbm
    public final void zzg(IObjectWrapper iObjectWrapper, View view) {
        synchronized (zzd) {
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzdB)).booleanValue() && zza) {
                try {
                    this.zzc.zzj(iObjectWrapper, ObjectWrapper.wrap(view));
                } catch (RemoteException | NullPointerException e) {
                    zzciz.zzl("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbm
    public final void zzh(IObjectWrapper iObjectWrapper) {
        synchronized (zzd) {
            if (((Boolean) zzbgq.zzc().zzb(zzblj.zzdB)).booleanValue() && zza) {
                try {
                    this.zzc.zzk(iObjectWrapper);
                } catch (RemoteException | NullPointerException e) {
                    zzciz.zzl("#007 Could not call remote method.", e);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbm
    public final boolean zzi(Context context) {
        synchronized (zzd) {
            if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzdB)).booleanValue()) {
                return false;
            }
            if (zza) {
                return true;
            }
            try {
                zzf(context);
                boolean zzl = this.zzc.zzl(ObjectWrapper.wrap(context));
                zza = zzl;
                return zzl;
            } catch (RemoteException | NullPointerException e) {
                zzciz.zzl("#007 Could not call remote method.", e);
                return false;
            }
        }
    }
}
