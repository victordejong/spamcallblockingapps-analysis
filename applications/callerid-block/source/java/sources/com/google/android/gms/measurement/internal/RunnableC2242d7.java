package com.google.android.gms.measurement.internal;

import android.os.Bundle;
/* renamed from: com.google.android.gms.measurement.internal.d7 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/d7.class */
final class RunnableC2242d7 implements Runnable {

    /* renamed from: b */
    final /* synthetic */ Bundle f10148b;

    /* renamed from: c */
    final /* synthetic */ C2235c7 f10149c;

    /* renamed from: d */
    final /* synthetic */ C2235c7 f10150d;

    /* renamed from: e */
    final /* synthetic */ long f10151e;

    /* renamed from: f */
    final /* synthetic */ k7 f10152f;

    RunnableC2242d7(k7 k7Var, Bundle bundle, C2235c7 c2235c7, C2235c7 c2235c72, long j) {
        this.f10152f = k7Var;
        this.f10148b = bundle;
        this.f10149c = c2235c7;
        this.f10150d = c2235c72;
        this.f10151e = j;
    }

    @Override // java.lang.Runnable
    public final void run() {
        k7.E(this.f10152f, this.f10148b, this.f10149c, this.f10150d, this.f10151e);
    }
}
