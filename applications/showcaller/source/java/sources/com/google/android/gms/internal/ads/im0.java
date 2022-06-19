package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.HashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/im0.class */
public final class im0 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ String f24350d;

    /* renamed from: e */
    final /* synthetic */ String f24351e;

    /* renamed from: f */
    final /* synthetic */ String f24352f;

    /* renamed from: g */
    final /* synthetic */ String f24353g;

    /* renamed from: h */
    final /* synthetic */ km0 f24354h;

    public im0(km0 km0Var, String str, String str2, String str3, String str4) {
        this.f24354h = km0Var;
        this.f24350d = str;
        this.f24351e = str2;
        this.f24352f = str3;
        this.f24353g = str4;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheCanceled");
        hashMap.put("src", this.f24350d);
        if (!TextUtils.isEmpty(this.f24351e)) {
            hashMap.put("cachedSrc", this.f24351e);
        }
        String str = this.f24352f;
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
        hashMap.put("reason", this.f24352f);
        if (!TextUtils.isEmpty(this.f24353g)) {
            hashMap.put("message", this.f24353g);
        }
        km0.m13851v(this.f24354h, "onPrecacheEvent", hashMap);
    }
}
