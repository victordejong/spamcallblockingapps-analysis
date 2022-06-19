package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/g52.class */
final /* synthetic */ class g52 implements uz2 {

    /* renamed from: a */
    static final uz2 f23247a = new g52();

    private g52() {
    }

    @Override // com.google.android.gms.internal.ads.uz2
    /* renamed from: a */
    public final r03 mo8403a(Object obj) {
        return k03.m14003a(new va2((String) obj) { // from class: com.google.android.gms.internal.ads.h52

            /* renamed from: a */
            private final String f23806a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23806a = str;
            }

            @Override // com.google.android.gms.internal.ads.va2
            /* renamed from: a */
            public final void mo8928a(Object obj2) {
                ((Bundle) obj2).putString("ms", this.f23806a);
            }
        });
    }
}
