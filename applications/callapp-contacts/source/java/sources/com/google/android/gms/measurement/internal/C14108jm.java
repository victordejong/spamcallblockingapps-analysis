package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
/* renamed from: com.google.android.gms.measurement.internal.jm */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/jm.class */
public final class C14108jm implements AbstractC14115jt {

    /* renamed from: a */
    final /* synthetic */ C14110jo f51955a;

    public C14108jm(C14110jo c14110jo) {
        this.f51955a = c14110jo;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC14115jt
    /* renamed from: a */
    public final void mo11612a(String str, Bundle bundle) {
        C13979es c13979es;
        C13979es c13979es2;
        if (!TextUtils.isEmpty(str)) {
            this.f51955a.mo11658d().m12011a(new RunnableC14107jl(this, str, "_err", bundle));
            return;
        }
        c13979es = this.f51955a.f51969f;
        if (c13979es == null) {
            return;
        }
        c13979es2 = this.f51955a.f51969f;
        c13979es2.mo11661c().f51395c.m12091a("AppId not known when logging event", "_err");
    }
}
