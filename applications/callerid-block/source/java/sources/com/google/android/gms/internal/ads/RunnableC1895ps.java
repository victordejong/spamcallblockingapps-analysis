package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.HashMap;
/* renamed from: com.google.android.gms.internal.ads.ps */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ps.class */
final class RunnableC1895ps implements Runnable {

    /* renamed from: b */
    final /* synthetic */ String f8152b;

    /* renamed from: c */
    final /* synthetic */ String f8153c;

    /* renamed from: d */
    final /* synthetic */ String f8154d;

    /* renamed from: e */
    final /* synthetic */ String f8155e;

    /* renamed from: f */
    final /* synthetic */ AbstractC1912qs f8156f;

    public RunnableC1895ps(AbstractC1912qs abstractC1912qs, String str, String str2, String str3, String str4) {
        this.f8156f = abstractC1912qs;
        this.f8152b = str;
        this.f8153c = str2;
        this.f8154d = str3;
        this.f8155e = str4;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheCanceled");
        hashMap.put("src", this.f8152b);
        if (!TextUtils.isEmpty(this.f8153c)) {
            hashMap.put("cachedSrc", this.f8153c);
        }
        String str = this.f8154d;
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
        hashMap.put("reason", this.f8154d);
        if (!TextUtils.isEmpty(this.f8155e)) {
            hashMap.put("message", this.f8155e);
        }
        AbstractC1912qs.m6048u(this.f8156f, "onPrecacheEvent", hashMap);
    }
}
