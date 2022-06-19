package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import android.webkit.WebView;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzehr.class */
public final class zzehr implements zzcbm {
    private static zzfkf zzf(String str) {
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
                return zzfkf.NATIVE_DISPLAY;
            }
            if (z) {
                return zzfkf.VIDEO;
            }
            return null;
        }
        return zzfkf.HTML_DISPLAY;
    }

    private static zzfkh zzj(String str) {
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
        return z ? !z ? !z ? zzfkh.UNSPECIFIED : zzfkh.ONE_PIXEL : zzfkh.DEFINED_BY_JAVASCRIPT : zzfkh.BEGIN_TO_RENDER;
    }

    private static zzfki zzk(String str) {
        return "native".equals(str) ? zzfki.NATIVE : "javascript".equals(str) ? zzfki.JAVASCRIPT : zzfki.NONE;
    }

    @Override // com.google.android.gms.internal.ads.zzcbm
    public final IObjectWrapper zza(String str, WebView webView, String str2, String str3, String str4, zzcbo zzcboVar, zzcbn zzcbnVar, String str5) {
        IObjectWrapper iObjectWrapper = null;
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzdB)).booleanValue()) {
            if (!zzfjy.zzb()) {
                iObjectWrapper = null;
            } else {
                zzfkj zza = zzfkj.zza("Google", str);
                zzfki zzk = zzk("javascript");
                zzfkf zzf = zzf(zzcbnVar.toString());
                zzfki zzfkiVar = zzfki.NONE;
                if (zzk == zzfkiVar) {
                    zzciz.zzj("Omid html session error; Unable to parse impression owner: javascript");
                    iObjectWrapper = null;
                } else if (zzf == null) {
                    zzciz.zzj("Omid html session error; Unable to parse creative type: ".concat(String.valueOf(zzcbnVar)));
                    iObjectWrapper = null;
                } else {
                    zzfki zzk2 = zzk(str4);
                    if (zzf == zzfkf.VIDEO && zzk2 == zzfkiVar) {
                        String valueOf = String.valueOf(str4);
                        zzciz.zzj(valueOf.length() != 0 ? "Omid html session error; Video events owner unknown for video creative: ".concat(valueOf) : new String("Omid html session error; Video events owner unknown for video creative: "));
                        iObjectWrapper = null;
                    } else {
                        iObjectWrapper = ObjectWrapper.wrap(zzfka.zza(zzfkb.zza(zzf, zzj(zzcboVar.toString()), zzk, zzk2, true), zzfkc.zzb(zza, webView, str5, "")));
                    }
                }
            }
        }
        return iObjectWrapper;
    }

    @Override // com.google.android.gms.internal.ads.zzcbm
    public final IObjectWrapper zzb(String str, WebView webView, String str2, String str3, String str4, String str5, zzcbo zzcboVar, zzcbn zzcbnVar, String str6) {
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzdB)).booleanValue() || !zzfjy.zzb()) {
            return null;
        }
        zzfkj zza = zzfkj.zza(str5, str);
        zzfki zzk = zzk("javascript");
        zzfki zzk2 = zzk(str4);
        zzfkf zzf = zzf(zzcbnVar.toString());
        zzfki zzfkiVar = zzfki.NONE;
        if (zzk == zzfkiVar) {
            zzciz.zzj("Omid js session error; Unable to parse impression owner: javascript");
            return null;
        } else if (zzf == null) {
            zzciz.zzj("Omid js session error; Unable to parse creative type: ".concat(String.valueOf(zzcbnVar)));
            return null;
        } else if (zzf != zzfkf.VIDEO || zzk2 != zzfkiVar) {
            return ObjectWrapper.wrap(zzfka.zza(zzfkb.zza(zzf, zzj(zzcboVar.toString()), zzk, zzk2, true), zzfkc.zzc(zza, webView, str6, "")));
        } else {
            String valueOf = String.valueOf(str4);
            zzciz.zzj(valueOf.length() != 0 ? "Omid js session error; Video events owner unknown for video creative: ".concat(valueOf) : new String("Omid js session error; Video events owner unknown for video creative: "));
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzcbm
    public final String zzc(Context context) {
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzdB)).booleanValue()) {
            return null;
        }
        return "a.1.3.3-google_20200416";
    }

    @Override // com.google.android.gms.internal.ads.zzcbm
    public final void zzd(IObjectWrapper iObjectWrapper, View view) {
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzdB)).booleanValue() || !zzfjy.zzb()) {
            return;
        }
        Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
        if (!(unwrap instanceof zzfka)) {
            return;
        }
        ((zzfka) unwrap).zzb(view, zzfkg.NOT_VISIBLE, "Ad overlay");
    }

    @Override // com.google.android.gms.internal.ads.zzcbm
    public final void zze(IObjectWrapper iObjectWrapper) {
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzdB)).booleanValue() || !zzfjy.zzb()) {
            return;
        }
        Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
        if (!(unwrap instanceof zzfka)) {
            return;
        }
        ((zzfka) unwrap).zzc();
    }

    @Override // com.google.android.gms.internal.ads.zzcbm
    public final void zzg(IObjectWrapper iObjectWrapper, View view) {
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzdB)).booleanValue() || !zzfjy.zzb()) {
            return;
        }
        Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
        if (!(unwrap instanceof zzfka)) {
            return;
        }
        ((zzfka) unwrap).zzd(view);
    }

    @Override // com.google.android.gms.internal.ads.zzcbm
    public final void zzh(IObjectWrapper iObjectWrapper) {
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzdB)).booleanValue() || !zzfjy.zzb()) {
            return;
        }
        Object unwrap = ObjectWrapper.unwrap(iObjectWrapper);
        if (!(unwrap instanceof zzfka)) {
            return;
        }
        ((zzfka) unwrap).zze();
    }

    @Override // com.google.android.gms.internal.ads.zzcbm
    public final boolean zzi(Context context) {
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzdB)).booleanValue()) {
            zzciz.zzj("Omid flag is disabled");
            return false;
        } else if (zzfjy.zzb()) {
            return true;
        } else {
            zzfjy.zza(context);
            return zzfjy.zzb();
        }
    }
}
