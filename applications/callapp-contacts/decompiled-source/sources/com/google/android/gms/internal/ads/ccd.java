package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ccd.class */
final /* synthetic */ class ccd implements daq {

    /* renamed from: a  reason: collision with root package name */
    static final daq f25573a = new ccd();

    private ccd() {
    }

    @Override // com.google.android.gms.internal.ads.daq
    public final dbt zzf(Object obj) {
        final String str = (String) obj;
        return dbh.a(new cgy(str) { // from class: com.google.android.gms.internal.ads.ccg

            /* renamed from: a  reason: collision with root package name */
            private final String f25578a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25578a = str;
            }

            @Override // com.google.android.gms.internal.ads.cgy
            public final void a(Object obj2) {
                ((Bundle) obj2).putString("ms", this.f25578a);
            }
        });
    }
}
