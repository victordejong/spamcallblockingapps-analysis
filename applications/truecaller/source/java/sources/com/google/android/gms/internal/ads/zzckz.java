package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.razorpay.AnalyticsConstants;
import java.util.HashMap;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzckz.class */
public final class zzckz implements Runnable {
    public final /* synthetic */ String zza;
    public final /* synthetic */ String zzb;
    public final /* synthetic */ String zzc;
    public final /* synthetic */ String zzd;
    public final /* synthetic */ zzcla zze;

    public zzckz(zzcla zzclaVar, String str, String str2, String str3, String str4) {
        this.zze = zzclaVar;
        this.zza = str;
        this.zzb = str2;
        this.zzc = str3;
        this.zzd = str4;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        HashMap m8667T = C22128a.m8667T("event", "precacheCanceled");
        m8667T.put("src", this.zza);
        if (!TextUtils.isEmpty(this.zzb)) {
            m8667T.put("cachedSrc", this.zzb);
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
                z2 = AnalyticsConstants.NETWORK;
                break;
            case true:
            case true:
                z2 = "policy";
                break;
            default:
                z2 = "internal";
                break;
        }
        m8667T.put("type", z2);
        m8667T.put("reason", this.zzc);
        if (!TextUtils.isEmpty(this.zzd)) {
            m8667T.put("message", this.zzd);
        }
        zzcla.zzs(this.zze, "onPrecacheEvent", m8667T);
    }
}
