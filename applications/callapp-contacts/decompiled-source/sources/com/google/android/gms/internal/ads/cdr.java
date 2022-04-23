package com.google.android.gms.internal.ads;

import android.os.Bundle;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cdr.class */
public final class cdr implements chb<cgy<Bundle>> {

    /* renamed from: a  reason: collision with root package name */
    final clq f25650a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public cdr(clq clqVar) {
        this.f25650a = clqVar;
    }

    @Override // com.google.android.gms.internal.ads.chb
    public final dbt<cgy<Bundle>> a() {
        clq clqVar = this.f25650a;
        return dbh.a((clqVar == null || clqVar.f26040a == null || this.f25650a.f26040a.isEmpty()) ? null : new cgy(this) { // from class: com.google.android.gms.internal.ads.cdq

            /* renamed from: a  reason: collision with root package name */
            private final cdr f25649a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25649a = this;
            }

            @Override // com.google.android.gms.internal.ads.cgy
            public final void a(Object obj) {
                ((Bundle) obj).putString("key_schema", this.f25649a.f25650a.f26040a);
            }
        });
    }
}
