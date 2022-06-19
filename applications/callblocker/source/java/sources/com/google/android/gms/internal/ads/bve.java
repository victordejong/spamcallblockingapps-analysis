package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bve.class */
final /* synthetic */ class bve implements cqt {

    /* renamed from: a */
    static final cqt f12326a = new bve();

    private bve() {
    }

    @Override // com.google.android.gms.internal.ads.cqt
    /* renamed from: a */
    public final crt mo7012a(Object obj) {
        return crg.m10778a(new cae((String) obj) { // from class: com.google.android.gms.internal.ads.bvh

            /* renamed from: a */
            private final String f12331a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12331a = str;
            }

            @Override // com.google.android.gms.internal.ads.cae
            /* renamed from: a */
            public final void mo11481a(Object obj2) {
                ((Bundle) obj2).putString("ms", this.f12331a);
            }
        });
    }
}
