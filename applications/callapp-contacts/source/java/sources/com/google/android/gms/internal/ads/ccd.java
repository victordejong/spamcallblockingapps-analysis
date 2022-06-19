package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ccd.class */
final /* synthetic */ class ccd implements daq {

    /* renamed from: a */
    static final daq f45495a = new ccd();

    private ccd() {
    }

    @Override // com.google.android.gms.internal.ads.daq
    public final dbt zzf(Object obj) {
        return dbh.m16899a(new cgy((String) obj) { // from class: com.google.android.gms.internal.ads.ccg

            /* renamed from: a */
            private final String f45500a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45500a = str;
            }

            @Override // com.google.android.gms.internal.ads.cgy
            /* renamed from: a */
            public final void mo17450a(Object obj2) {
                ((Bundle) obj2).putString("ms", this.f45500a);
            }
        });
    }
}
