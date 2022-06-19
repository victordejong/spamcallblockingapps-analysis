package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.text.TextUtils;
/* renamed from: com.google.android.gms.measurement.internal.m9 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/m9.class */
public final class C7797m9 implements AbstractC7874t9 {

    /* renamed from: a */
    final /* synthetic */ C7819o9 f35471a;

    public C7797m9(C7819o9 c7819o9) {
        this.f35471a = c7819o9;
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC7874t9
    /* renamed from: b */
    public final void mo6004b(String str, String str2, Bundle bundle) {
        C7858s4 c7858s4;
        C7858s4 c7858s42;
        if (!TextUtils.isEmpty(str)) {
            this.f35471a.mo6029b().m6109p(new RunnableC7786l9(this, str, "_err", bundle));
            return;
        }
        c7858s4 = this.f35471a.f35549l;
        if (c7858s4 == null) {
            return;
        }
        c7858s42 = this.f35471a.f35549l;
        c7858s42.mo6047C().m6195m().m6215b("AppId not known when logging event", "_err");
    }
}
