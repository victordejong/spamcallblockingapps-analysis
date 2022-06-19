package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeea.class */
public final class zzeea implements zzbzk {
    private static zzfgk zzb(String str) {
        return "native".equals(str) ? zzfgk.NATIVE : "javascript".equals(str) ? zzfgk.JAVASCRIPT : zzfgk.NONE;
    }

    private static zzfgj zzj(String str) {
        boolean z;
        int hashCode = str.hashCode();
        if (hashCode == -1104128070) {
            if (str.equals("beginToRender")) {
                z = false;
            }
            z = true;
        } else if (hashCode != 1318088141) {
            if (hashCode == 1988248512 && str.equals("onePixel")) {
                z = true;
            }
            z = true;
        } else {
            if (str.equals("definedByJavascript")) {
                z = true;
            }
            z = true;
        }
        return z ? !z ? !z ? zzfgj.UNSPECIFIED : zzfgj.ONE_PIXEL : zzfgj.DEFINED_BY_JAVASCRIPT : zzfgj.BEGIN_TO_RENDER;
    }

    private static zzfgh zzk(String str) {
        boolean z;
        int hashCode = str.hashCode();
        if (hashCode == -382745961) {
            if (str.equals("htmlDisplay")) {
                z = false;
            }
            z = true;
        } else if (hashCode != 112202875) {
            if (hashCode == 714893483 && str.equals("nativeDisplay")) {
                z = true;
            }
            z = true;
        } else {
            if (str.equals("video")) {
                z = true;
            }
            z = true;
        }
        if (z) {
            if (z) {
                return zzfgh.NATIVE_DISPLAY;
            }
            if (z) {
                return zzfgh.VIDEO;
            }
            return null;
        }
        return zzfgh.HTML_DISPLAY;
    }

    @Override // com.google.android.gms.internal.ads.zzbzk
    public final boolean zza(Context context) {
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzdu)).booleanValue()) {
            zzcgt.zzi("Omid flag is disabled");
            return false;
        } else if (zzfga.zzb()) {
            return true;
        } else {
            zzfga.zza(context);
            return zzfga.zzb();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzk
    public final String zzc(Context context) {
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzdu)).booleanValue()) {
            return null;
        }
        return "a.1.3.3-google_20200416";
    }

    @Override // com.google.android.gms.internal.ads.zzbzk
    public final IObjectWrapper zzd(String str, WebView webView, String str2, String str3, String str4, zzbzm zzbzmVar, zzbzl zzbzlVar, String str5) {
        ObjectWrapper objectWrapper = null;
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzdu)).booleanValue()) {
            if (!zzfga.zzb()) {
                objectWrapper = null;
            } else {
                zzfgl zza = zzfgl.zza("Google", str);
                zzfgk zzb = zzb("javascript");
                zzfgh zzk = zzk(zzbzlVar.toString());
                zzfgk zzfgkVar = zzfgk.NONE;
                if (zzb == zzfgkVar) {
                    zzcgt.zzi("Omid html session error; Unable to parse impression owner: javascript");
                    objectWrapper = null;
                } else if (zzk == null) {
                    String valueOf = String.valueOf(zzbzlVar);
                    valueOf.length();
                    zzcgt.zzi("Omid html session error; Unable to parse creative type: ".concat(valueOf));
                    objectWrapper = null;
                } else {
                    zzfgk zzb2 = zzb(str4);
                    if (zzk == zzfgh.VIDEO && zzb2 == zzfgkVar) {
                        String valueOf2 = String.valueOf(str4);
                        zzcgt.zzi(valueOf2.length() != 0 ? "Omid html session error; Video events owner unknown for video creative: ".concat(valueOf2) : new String("Omid html session error; Video events owner unknown for video creative: "));
                        objectWrapper = null;
                    } else {
                        objectWrapper = new ObjectWrapper(zzfgc.zze(zzfgd.zza(zzk, zzj(zzbzmVar.toString()), zzb, zzb2, true), zzfge.zza(zza, webView, str5, "")));
                    }
                }
            }
        }
        return objectWrapper;
    }

    @Override // com.google.android.gms.internal.ads.zzbzk
    public final IObjectWrapper zze(String str, WebView webView, String str2, String str3, String str4, String str5, zzbzm zzbzmVar, zzbzl zzbzlVar, String str6) {
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzdu)).booleanValue() || !zzfga.zzb()) {
            return null;
        }
        zzfgl zza = zzfgl.zza(str5, str);
        zzfgk zzb = zzb("javascript");
        zzfgk zzb2 = zzb(str4);
        zzfgh zzk = zzk(zzbzlVar.toString());
        zzfgk zzfgkVar = zzfgk.NONE;
        if (zzb == zzfgkVar) {
            zzcgt.zzi("Omid js session error; Unable to parse impression owner: javascript");
            return null;
        } else if (zzk == null) {
            String valueOf = String.valueOf(zzbzlVar);
            valueOf.length();
            zzcgt.zzi("Omid js session error; Unable to parse creative type: ".concat(valueOf));
            return null;
        } else if (zzk != zzfgh.VIDEO || zzb2 != zzfgkVar) {
            return new ObjectWrapper(zzfgc.zze(zzfgd.zza(zzk, zzj(zzbzmVar.toString()), zzb, zzb2, true), zzfge.zzb(zza, webView, str6, "")));
        } else {
            String valueOf2 = String.valueOf(str4);
            zzcgt.zzi(valueOf2.length() != 0 ? "Omid js session error; Video events owner unknown for video creative: ".concat(valueOf2) : new String("Omid js session error; Video events owner unknown for video creative: "));
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbzk
    public final void zzf(IObjectWrapper iObjectWrapper) {
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzdu)).booleanValue() || !zzfga.zzb()) {
            return;
        }
        Object m38746B1 = ObjectWrapper.m38746B1(iObjectWrapper);
        if (!(m38746B1 instanceof zzfgc)) {
            return;
        }
        ((zzfgc) m38746B1).zza();
    }

    @Override // com.google.android.gms.internal.ads.zzbzk
    public final void zzg(IObjectWrapper iObjectWrapper) {
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzdu)).booleanValue() || !zzfga.zzb()) {
            return;
        }
        Object m38746B1 = ObjectWrapper.m38746B1(iObjectWrapper);
        if (!(m38746B1 instanceof zzfgc)) {
            return;
        }
        ((zzfgc) m38746B1).zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzbzk
    public final void zzh(IObjectWrapper iObjectWrapper, View view) {
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzdu)).booleanValue() || !zzfga.zzb()) {
            return;
        }
        Object m38746B1 = ObjectWrapper.m38746B1(iObjectWrapper);
        if (!(m38746B1 instanceof zzfgc)) {
            return;
        }
        ((zzfgc) m38746B1).zzb(view);
    }

    @Override // com.google.android.gms.internal.ads.zzbzk
    public final void zzi(IObjectWrapper iObjectWrapper, View view) {
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzdu)).booleanValue() || !zzfga.zzb()) {
            return;
        }
        Object m38746B1 = ObjectWrapper.m38746B1(iObjectWrapper);
        if (!(m38746B1 instanceof zzfgc)) {
            return;
        }
        ((zzfgc) m38746B1).zzd(view, zzfgi.NOT_VISIBLE, "Ad overlay");
    }
}
