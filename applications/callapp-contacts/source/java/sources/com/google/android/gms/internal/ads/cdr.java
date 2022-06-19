package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cdr.class */
public final class cdr implements chb<cgy<Bundle>> {

    /* renamed from: a */
    final clq f45585a;

    public cdr(clq clqVar) {
        this.f45585a = clqVar;
    }

    @Override // com.google.android.gms.internal.ads.chb
    /* renamed from: a */
    public final dbt<cgy<Bundle>> mo17449a() {
        clq clqVar = this.f45585a;
        return dbh.m16899a((clqVar == null || clqVar.f46044a == null || this.f45585a.f46044a.isEmpty()) ? null : new cgy(this) { // from class: com.google.android.gms.internal.ads.cdq

            /* renamed from: a */
            private final cdr f45584a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45584a = this;
            }

            @Override // com.google.android.gms.internal.ads.cgy
            /* renamed from: a */
            public final void mo17450a(Object obj) {
                ((Bundle) obj).putString("key_schema", this.f45584a.f45585a.f46044a);
            }
        });
    }
}
