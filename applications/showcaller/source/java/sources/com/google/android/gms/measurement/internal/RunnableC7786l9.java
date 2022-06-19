package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.C6155o;
/* renamed from: com.google.android.gms.measurement.internal.l9 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/l9.class */
final class RunnableC7786l9 implements Runnable {

    /* renamed from: d */
    final /* synthetic */ String f35442d;

    /* renamed from: e */
    final /* synthetic */ String f35443e = "_err";

    /* renamed from: f */
    final /* synthetic */ Bundle f35444f;

    /* renamed from: g */
    final /* synthetic */ C7797m9 f35445g;

    public RunnableC7786l9(C7797m9 c7797m9, String str, String str2, Bundle bundle) {
        this.f35445g = c7797m9;
        this.f35442d = str;
        this.f35444f = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f35445g.f35471a.m6140i0((zzas) C6155o.m17018j(this.f35445g.f35471a.m6150d0().m5992J(this.f35442d, this.f35443e, this.f35444f, "auto", this.f35445g.f35471a.mo6007x().mo16807a(), false, false)), this.f35442d);
    }
}
