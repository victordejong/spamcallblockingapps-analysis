package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
/* renamed from: com.google.android.gms.measurement.internal.io */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/io.class */
final class RunnableC4388io implements Runnable {

    /* renamed from: a */
    private final /* synthetic */ ComponentName f19179a;

    /* renamed from: b */
    private final /* synthetic */ ServiceConnectionC4386im f19180b;

    public RunnableC4388io(ServiceConnectionC4386im serviceConnectionC4386im, ComponentName componentName) {
        this.f19180b = serviceConnectionC4386im;
        this.f19179a = componentName;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f19180b.f19170a.m4334a(this.f19179a);
    }
}
