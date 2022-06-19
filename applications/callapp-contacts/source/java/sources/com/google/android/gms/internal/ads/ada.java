package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.HashMap;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ada.class */
public final class ada implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ String f39956a;

    /* renamed from: b */
    private final /* synthetic */ String f39957b;

    /* renamed from: c */
    private final /* synthetic */ String f39958c;

    /* renamed from: d */
    private final /* synthetic */ String f39959d;

    /* renamed from: e */
    private final /* synthetic */ acu f39960e;

    public ada(acu acuVar, String str, String str2, String str3, String str4) {
        this.f39960e = acuVar;
        this.f39956a = str;
        this.f39957b = str2;
        this.f39958c = str3;
        this.f39959d = str4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheCanceled");
        hashMap.put("src", this.f39956a);
        if (!TextUtils.isEmpty(this.f39957b)) {
            hashMap.put("cachedSrc", this.f39957b);
        }
        String str = this.f39958c;
        str.hashCode();
        boolean z = true;
        switch (str.hashCode()) {
            case -1947652542:
                if (str.equals("interrupted")) {
                    z = false;
                    break;
                }
                break;
            case -1396664534:
                if (str.equals("badUrl")) {
                    z = true;
                    break;
                }
                break;
            case -1347010958:
                if (str.equals("inProgress")) {
                    z = true;
                    break;
                }
                break;
            case -918817863:
                if (str.equals("downloadTimeout")) {
                    z = true;
                    break;
                }
                break;
            case -659376217:
                if (str.equals("contentLengthMissing")) {
                    z = true;
                    break;
                }
                break;
            case -642208130:
                if (str.equals("playerFailed")) {
                    z = true;
                    break;
                }
                break;
            case -354048396:
                if (str.equals("sizeExceeded")) {
                    z = true;
                    break;
                }
                break;
            case -32082395:
                if (str.equals("externalAbort")) {
                    z = true;
                    break;
                }
                break;
            case 3387234:
                if (str.equals("noop")) {
                    z = true;
                    break;
                }
                break;
            case 96784904:
                if (str.equals("error")) {
                    z = true;
                    break;
                }
                break;
            case 580119100:
                if (str.equals("expireFailed")) {
                    z = true;
                    break;
                }
                break;
            case 725497484:
                if (str.equals("noCacheDir")) {
                    z = true;
                    break;
                }
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
                z2 = "network";
                break;
            case true:
            case true:
                z2 = "policy";
                break;
            case true:
            case true:
                z2 = "io";
                break;
            default:
                z2 = "internal";
                break;
        }
        hashMap.put("type", z2);
        hashMap.put("reason", this.f39958c);
        if (!TextUtils.isEmpty(this.f39959d)) {
            hashMap.put("message", this.f39959d);
        }
        this.f39960e.m18872a("onPrecacheEvent", hashMap);
    }
}
