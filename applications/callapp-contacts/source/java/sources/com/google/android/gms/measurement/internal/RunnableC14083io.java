package com.google.android.gms.measurement.internal;

import java.util.ArrayList;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.measurement.internal.io */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/io.class */
public final class RunnableC14083io implements Runnable {

    /* renamed from: a */
    final /* synthetic */ C14110jo f51911a;

    /* renamed from: b */
    final /* synthetic */ Runnable f51912b;

    public RunnableC14083io(C14085iq c14085iq, C14110jo c14110jo, Runnable runnable) {
        this.f51911a = c14110jo;
        this.f51912b = runnable;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f51911a.m11648n();
        C14110jo c14110jo = this.f51911a;
        Runnable runnable = this.f51912b;
        c14110jo.mo11658d().mo11884S_();
        if (c14110jo.f51971h == null) {
            c14110jo.f51971h = new ArrayList();
        }
        c14110jo.f51971h.add(runnable);
        this.f51911a.m11650l();
    }
}
