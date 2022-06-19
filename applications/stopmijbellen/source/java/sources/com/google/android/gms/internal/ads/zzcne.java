package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.HashMap;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcne.class */
public final class zzcne implements Runnable {
    public final /* synthetic */ String zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ String zzc;
    public final /* synthetic */ String zzd;
    public final /* synthetic */ zzcnf zze;

    public zzcne(zzcnf zzcnfVar, String str, String str2, String str3, String str4) {
        this.zze = zzcnfVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = str4;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheCanceled");
        hashMap.put("src", this.zza);
        if (!TextUtils.isEmpty(this.zzb)) {
            hashMap.put("cachedSrc", this.zzb);
        }
        String str = this.zzc;
        switch (str.hashCode()) {
            case -1947652542:
                if (str.equals("interrupted")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -1396664534:
                if (str.equals("badUrl")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -1347010958:
                if (str.equals("inProgress")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -918817863:
                if (str.equals("downloadTimeout")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -659376217:
                if (str.equals("contentLengthMissing")) {
                    z = false;
                    break;
                }
                z = true;
                break;
            case -642208130:
                if (str.equals("playerFailed")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -354048396:
                if (str.equals("sizeExceeded")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -32082395:
                if (str.equals("externalAbort")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 3387234:
                if (str.equals("noop")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 96784904:
                if (str.equals("error")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 580119100:
                if (str.equals("expireFailed")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 725497484:
                if (str.equals("noCacheDir")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            default:
                z = true;
                break;
        }
        boolean z2 = "internal";
        switch (z) {
            case false:
            case true:
            case true:
            case true:
            case true:
            case true:
                break;
            case true:
            case true:
                z2 = "io";
                break;
            case true:
            case true:
                z2 = "network";
                break;
            case true:
            case true:
                z2 = "policy";
                break;
            default:
                z2 = "internal";
                break;
        }
        hashMap.put("type", z2);
        hashMap.put("reason", this.zzc);
        if (!TextUtils.isEmpty(this.zzd)) {
            hashMap.put("message", this.zzd);
        }
        zzcnf.zza(this.zze, "onPrecacheEvent", hashMap);
    }
}
