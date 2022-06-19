package com.google.android.gms.internal.ads;

import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bjt.class */
final /* synthetic */ class bjt implements cqt {

    /* renamed from: a */
    static final cqt f11402a = new bjt();

    private bjt() {
    }

    @Override // com.google.android.gms.internal.ads.cqt
    /* renamed from: a */
    public final crt mo7012a(Object obj) {
        TimeoutException timeoutException = (TimeoutException) obj;
        return crg.m10777a((Throwable) new zzclp("Timed out waiting for ad response.", 2));
    }
}
