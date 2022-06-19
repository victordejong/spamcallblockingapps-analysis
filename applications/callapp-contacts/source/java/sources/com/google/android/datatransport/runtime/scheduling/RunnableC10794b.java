package com.google.android.datatransport.runtime.scheduling;

import com.google.android.datatransport.AbstractC10680h;
import com.google.android.datatransport.runtime.AbstractC10730h;
import com.google.android.datatransport.runtime.AbstractC10738l;
/* renamed from: com.google.android.datatransport.runtime.scheduling.b */
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/b.class */
final /* synthetic */ class RunnableC10794b implements Runnable {

    /* renamed from: a */
    private final C10748a f34690a;

    /* renamed from: b */
    private final AbstractC10738l f34691b;

    /* renamed from: c */
    private final AbstractC10680h f34692c;

    /* renamed from: d */
    private final AbstractC10730h f34693d;

    private RunnableC10794b(C10748a c10748a, AbstractC10738l abstractC10738l, AbstractC10680h abstractC10680h, AbstractC10730h abstractC10730h) {
        this.f34690a = c10748a;
        this.f34691b = abstractC10738l;
        this.f34692c = abstractC10680h;
        this.f34693d = abstractC10730h;
    }

    /* renamed from: a */
    public static Runnable m22357a(C10748a c10748a, AbstractC10738l abstractC10738l, AbstractC10680h abstractC10680h, AbstractC10730h abstractC10730h) {
        return new RunnableC10794b(c10748a, abstractC10738l, abstractC10680h, abstractC10730h);
    }

    @Override // java.lang.Runnable
    public final void run() {
        C10748a.m22433a(this.f34690a, this.f34691b, this.f34692c, this.f34693d);
    }
}
