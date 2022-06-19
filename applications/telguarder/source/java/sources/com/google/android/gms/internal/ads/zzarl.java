package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import android.view.View;
import android.webkit.WebView;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzarl.class */
public final class zzarl {
    private static final Object lock = new Object();
    private static boolean zzdqy = false;
    private static boolean zzzl = false;
    private zzdst zzdqz;

    private final IObjectWrapper zza(String str, WebView webView, String str2, String str3, String str4, String str5, zzarm zzarmVar, zzarn zzarnVar, String str6) {
        synchronized (lock) {
            try {
                try {
                    if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcvm)).booleanValue() && zzzl) {
                        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcvp)).booleanValue()) {
                            return zza(str, webView, str2, str3, str4, str5);
                        }
                        try {
                            return this.zzdqz.zzb(str, ObjectWrapper.wrap(webView), str2, str3, str4, str5, zzarmVar.toString(), zzarnVar.toString(), str6);
                        } catch (RemoteException | NullPointerException e) {
                            zzazk.zze("#007 Could not call remote method.", e);
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

    private final void zzn(Context context) {
        synchronized (lock) {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcvm)).booleanValue() && !zzdqy) {
                try {
                    zzdqy = true;
                    this.zzdqz = (zzdst) zzazj.zza(context, "com.google.android.gms.ads.omid.DynamiteOmid", zzark.zzbyi);
                } catch (zzazl e) {
                    zzazk.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    public final String getVersion(Context context) {
        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcvm)).booleanValue()) {
            return null;
        }
        try {
            zzn(context);
            String valueOf = String.valueOf(this.zzdqz.getVersion());
            return valueOf.length() != 0 ? "a.".concat(valueOf) : new String("a.");
        } catch (RemoteException | NullPointerException e) {
            zzazk.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    public final IObjectWrapper zza(String str, WebView webView, String str2, String str3, String str4) {
        return zza(str, webView, str2, str3, str4, "Google");
    }

    public final IObjectWrapper zza(String str, WebView webView, String str2, String str3, String str4, zzarm zzarmVar, zzarn zzarnVar, String str5) {
        return zza(str, webView, str2, str3, str4, "Google", zzarmVar, zzarnVar, str5);
    }

    public final IObjectWrapper zza(String str, WebView webView, String str2, String str3, String str4, String str5) {
        synchronized (lock) {
            try {
                try {
                    if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcvm)).booleanValue() && zzzl) {
                        try {
                            return this.zzdqz.zza(str, ObjectWrapper.wrap(webView), str2, str3, str4, str5);
                        } catch (RemoteException | NullPointerException e) {
                            zzazk.zze("#007 Could not call remote method.", e);
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

    public final void zza(IObjectWrapper iObjectWrapper, View view) {
        synchronized (lock) {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcvm)).booleanValue() && zzzl) {
                try {
                    this.zzdqz.zzc(iObjectWrapper, ObjectWrapper.wrap(view));
                } catch (RemoteException | NullPointerException e) {
                    zzazk.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    public final void zzab(IObjectWrapper iObjectWrapper) {
        synchronized (lock) {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcvm)).booleanValue() && zzzl) {
                try {
                    this.zzdqz.zzab(iObjectWrapper);
                } catch (RemoteException | NullPointerException e) {
                    zzazk.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    public final void zzac(IObjectWrapper iObjectWrapper) {
        synchronized (lock) {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcvm)).booleanValue() && zzzl) {
                try {
                    this.zzdqz.zzac(iObjectWrapper);
                } catch (RemoteException | NullPointerException e) {
                    zzazk.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    public final IObjectWrapper zzb(String str, WebView webView, String str2, String str3, String str4, String str5, zzarm zzarmVar, zzarn zzarnVar, String str6) {
        synchronized (lock) {
            try {
                try {
                    if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcvm)).booleanValue() && zzzl) {
                        if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcvq)).booleanValue()) {
                            return zza(str, webView, str2, str3, str4, str5);
                        }
                        try {
                            return this.zzdqz.zza(str, ObjectWrapper.wrap(webView), str2, str3, str4, str5, zzarmVar.toString(), zzarnVar.toString(), str6);
                        } catch (RemoteException | NullPointerException e) {
                            zzazk.zze("#007 Could not call remote method.", e);
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

    public final void zzb(IObjectWrapper iObjectWrapper, View view) {
        synchronized (lock) {
            if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcvm)).booleanValue() && zzzl) {
                try {
                    this.zzdqz.zzd(iObjectWrapper, ObjectWrapper.wrap(view));
                } catch (RemoteException | NullPointerException e) {
                    zzazk.zze("#007 Could not call remote method.", e);
                }
            }
        }
    }

    public final boolean zzm(Context context) {
        synchronized (lock) {
            if (!((Boolean) zzwr.zzqr().zzd(zzabp.zzcvm)).booleanValue()) {
                return false;
            }
            if (zzzl) {
                return true;
            }
            try {
                zzn(context);
                boolean zzav = this.zzdqz.zzav(ObjectWrapper.wrap(context));
                zzzl = zzav;
                return zzav;
            } catch (RemoteException | NullPointerException e) {
                zzazk.zze("#007 Could not call remote method.", e);
                return false;
            }
        }
    }
}
