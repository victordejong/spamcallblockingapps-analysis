package com.google.firebase.perf.p084g;

import com.google.firebase.perf.p085v1.ApplicationProcessState;
import com.google.firebase.perf.p085v1.NetworkRequestMetric;
/* renamed from: com.google.firebase.perf.g.i */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/g/i.class */
final /* synthetic */ class RunnableC2429i implements Runnable {

    /* renamed from: b */
    private final C2431k f10633b;

    /* renamed from: c */
    private final NetworkRequestMetric f10634c;

    /* renamed from: d */
    private final ApplicationProcessState f10635d;

    private RunnableC2429i(C2431k kVar, NetworkRequestMetric networkRequestMetric, ApplicationProcessState applicationProcessState) {
        this.f10633b = kVar;
        this.f10634c = networkRequestMetric;
        this.f10635d = applicationProcessState;
    }

    /* renamed from: a */
    public static Runnable m3688a(C2431k kVar, NetworkRequestMetric networkRequestMetric, ApplicationProcessState applicationProcessState) {
        return new RunnableC2429i(kVar, networkRequestMetric, applicationProcessState);
    }

    @Override // java.lang.Runnable
    public void run() {
        C2431k.m3667r(this.f10633b, this.f10634c, this.f10635d);
    }
}
