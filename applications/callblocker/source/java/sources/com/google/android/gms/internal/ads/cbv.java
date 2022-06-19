package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cbv.class */
public final class cbv implements cah<cbw> {

    /* renamed from: a */
    private AbstractC3532tx f12695a;

    /* renamed from: b */
    private crs f12696b;

    /* renamed from: c */
    private String f12697c;

    public cbv(AbstractC3532tx abstractC3532tx, crs crsVar, String str) {
        this.f12695a = abstractC3532tx;
        this.f12696b = crsVar;
        this.f12697c = str;
    }

    @Override // com.google.android.gms.internal.ads.cah
    /* renamed from: a */
    public final crt<cbw> mo11479a() {
        new C3658yo();
        crt<String> m10778a = crg.m10778a((Object) null);
        if (((Boolean) dyx.m8158e().m7876a(edi.f16457cJ)).booleanValue()) {
            m10778a = this.f12695a.mo7118a(this.f12697c);
        }
        crt<String> mo7117b = this.f12695a.mo7117b(this.f12697c);
        return crg.m10772b(m10778a, mo7117b).m10770a(new Callable(m10778a, mo7117b) { // from class: com.google.android.gms.internal.ads.cbz

            /* renamed from: a */
            private final crt f12704a;

            /* renamed from: b */
            private final crt f12705b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12704a = m10778a;
                this.f12705b = mo7117b;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new cbw((String) this.f12704a.get(), (String) this.f12705b.get());
            }
        }, C3650yg.f17642a);
    }
}
