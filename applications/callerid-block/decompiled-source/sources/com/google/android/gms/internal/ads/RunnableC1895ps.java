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

    /* JADX INFO: Access modifiers changed from: package-private */
    public RunnableC1895ps(AbstractC1912qs qsVar, String str, String str2, String str3, String str4) {
        this.f8156f = qsVar;
        this.f8152b = str;
        this.f8153c = str2;
        this.f8154d = str3;
        this.f8155e = str4;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // java.lang.Runnable
    public final void run() {
        char c;
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
                    c = 3;
                    break;
                }
                c = 65535;
                break;
            case -1396664534:
                if (str.equals("badUrl")) {
                    c = '\b';
                    break;
                }
                c = 65535;
                break;
            case -1347010958:
                if (str.equals("inProgress")) {
                    c = 2;
                    break;
                }
                c = 65535;
                break;
            case -918817863:
                if (str.equals("downloadTimeout")) {
                    c = '\t';
                    break;
                }
                c = 65535;
                break;
            case -659376217:
                if (str.equals("contentLengthMissing")) {
                    c = 0;
                    break;
                }
                c = 65535;
                break;
            case -642208130:
                if (str.equals("playerFailed")) {
                    c = 5;
                    break;
                }
                c = 65535;
                break;
            case -354048396:
                if (str.equals("sizeExceeded")) {
                    c = 11;
                    break;
                }
                c = 65535;
                break;
            case -32082395:
                if (str.equals("externalAbort")) {
                    c = '\n';
                    break;
                }
                c = 65535;
                break;
            case 3387234:
                if (str.equals("noop")) {
                    c = 4;
                    break;
                }
                c = 65535;
                break;
            case 96784904:
                if (str.equals("error")) {
                    c = 1;
                    break;
                }
                c = 65535;
                break;
            case 580119100:
                if (str.equals("expireFailed")) {
                    c = 6;
                    break;
                }
                c = 65535;
                break;
            case 725497484:
                if (str.equals("noCacheDir")) {
                    c = 7;
                    break;
                }
                c = 65535;
                break;
            default:
                c = 65535;
                break;
        }
        String str2 = "internal";
        switch (c) {
            case 0:
            case 1:
            case 2:
            case 3:
            case 4:
            case 5:
                break;
            case 6:
            case 7:
                str2 = "io";
                break;
            case '\b':
            case '\t':
                str2 = "network";
                break;
            case '\n':
            case 11:
                str2 = "policy";
                break;
            default:
                str2 = "internal";
                break;
        }
        hashMap.put("type", str2);
        hashMap.put("reason", this.f8154d);
        if (!TextUtils.isEmpty(this.f8155e)) {
            hashMap.put("message", this.f8155e);
        }
        AbstractC1912qs.m6048u(this.f8156f, "onPrecacheEvent", hashMap);
    }
}
