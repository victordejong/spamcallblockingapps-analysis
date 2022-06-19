package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
/* renamed from: com.google.android.gms.measurement.internal.gk */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/gk.class */
public final class C14025gk implements AbstractC14115jt {

    /* renamed from: a */
    final /* synthetic */ C14036gv f51705a;

    public C14025gk(C14036gv c14036gv) {
        this.f51705a = c14036gv;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC14115jt
    /* renamed from: a */
    public final void mo11612a(String str, Bundle bundle) {
        if (TextUtils.isEmpty(str)) {
            this.f51705a.m11856a("auto", "_err", bundle);
            return;
        }
        C14036gv c14036gv = this.f51705a;
        C13979es.m11972y();
        c14036gv.m11849b("auto", "_err", c14036gv.f51637t.f51532j.mo19039a(), bundle, false, true, false, str);
    }
}
