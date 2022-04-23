package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import java.util.HashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ada.class */
public final class ada implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ String f23137a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ String f23138b;

    /* renamed from: c  reason: collision with root package name */
    private final /* synthetic */ String f23139c;

    /* renamed from: d  reason: collision with root package name */
    private final /* synthetic */ String f23140d;
    private final /* synthetic */ acu e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ada(acu acuVar, String str, String str2, String str3, String str4) {
        this.e = acuVar;
        this.f23137a = str;
        this.f23138b = str2;
        this.f23139c = str3;
        this.f23140d = str4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheCanceled");
        hashMap.put("src", this.f23137a);
        if (!TextUtils.isEmpty(this.f23138b)) {
            hashMap.put("cachedSrc", this.f23138b);
        }
        String str = this.f23139c;
        str.hashCode();
        char c2 = 65535;
        switch (str.hashCode()) {
            case -1947652542:
                if (str.equals("interrupted")) {
                    c2 = 0;
                    break;
                }
                break;
            case -1396664534:
                if (str.equals("badUrl")) {
                    c2 = 1;
                    break;
                }
                break;
            case -1347010958:
                if (str.equals("inProgress")) {
                    c2 = 2;
                    break;
                }
                break;
            case -918817863:
                if (str.equals("downloadTimeout")) {
                    c2 = 3;
                    break;
                }
                break;
            case -659376217:
                if (str.equals("contentLengthMissing")) {
                    c2 = 4;
                    break;
                }
                break;
            case -642208130:
                if (str.equals("playerFailed")) {
                    c2 = 5;
                    break;
                }
                break;
            case -354048396:
                if (str.equals("sizeExceeded")) {
                    c2 = 6;
                    break;
                }
                break;
            case -32082395:
                if (str.equals("externalAbort")) {
                    c2 = 7;
                    break;
                }
                break;
            case 3387234:
                if (str.equals("noop")) {
                    c2 = '\b';
                    break;
                }
                break;
            case 96784904:
                if (str.equals("error")) {
                    c2 = '\t';
                    break;
                }
                break;
            case 580119100:
                if (str.equals("expireFailed")) {
                    c2 = '\n';
                    break;
                }
                break;
            case 725497484:
                if (str.equals("noCacheDir")) {
                    c2 = 11;
                    break;
                }
                break;
        }
        String str2 = "internal";
        switch (c2) {
            case 0:
            case 2:
            case 4:
            case 5:
            case '\b':
            case '\t':
                break;
            case 1:
            case 3:
                str2 = "network";
                break;
            case 6:
            case 7:
                str2 = "policy";
                break;
            case '\n':
            case 11:
                str2 = "io";
                break;
            default:
                str2 = "internal";
                break;
        }
        hashMap.put("type", str2);
        hashMap.put("reason", this.f23139c);
        if (!TextUtils.isEmpty(this.f23140d)) {
            hashMap.put("message", this.f23140d);
        }
        this.e.a("onPrecacheEvent", hashMap);
    }
}
