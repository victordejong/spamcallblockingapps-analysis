package com.google.android.gms.internal.ads;

import android.util.JsonReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.concurrent.Executor;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/but.class */
public final class but implements cqt<C3423pw, buu> {

    /* renamed from: a */
    private Executor f12303a;

    /* renamed from: b */
    private bkg f12304b;

    public but(Executor executor, bkg bkgVar) {
        this.f12303a = executor;
        this.f12304b = bkgVar;
    }

    @Override // com.google.android.gms.internal.ads.cqt
    /* renamed from: a */
    public final /* synthetic */ crt<buu> mo7012a(C3423pw c3423pw) {
        C3423pw c3423pw2 = c3423pw;
        return crg.m10782a(this.f12304b.m11835a(c3423pw2), new cqt(c3423pw2) { // from class: com.google.android.gms.internal.ads.bus

            /* renamed from: a */
            private final C3423pw f12302a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12302a = c3423pw2;
            }

            @Override // com.google.android.gms.internal.ads.cqt
            /* renamed from: a */
            public final crt mo7012a(Object obj) {
                return crg.m10778a(new buu(new JsonReader(new InputStreamReader((InputStream) obj))).m11605a(this.f12302a.f17198a));
            }
        }, this.f12303a);
    }
}
