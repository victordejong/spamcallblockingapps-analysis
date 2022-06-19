package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.measurement.internal.jl */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/jl.class */
final class RunnableC14107jl implements Runnable {

    /* renamed from: a */
    final /* synthetic */ String f51951a;

    /* renamed from: b */
    final /* synthetic */ String f51952b = "_err";

    /* renamed from: c */
    final /* synthetic */ Bundle f51953c;

    /* renamed from: d */
    final /* synthetic */ C14108jm f51954d;

    public RunnableC14107jl(C14108jm c14108jm, String str, String str2, Bundle bundle) {
        this.f51954d = c14108jm;
        this.f51951a = str;
        this.f51953c = bundle;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f51954d.f51955a.m11676a((zzas) C12045o.m19162a(this.f51954d.f51955a.m11652h().m11582a(this.f51951a, this.f51952b, this.f51953c, "auto", this.f51954d.f51955a.mo11690Y_().mo19039a(), false)), this.f51951a);
    }
}
