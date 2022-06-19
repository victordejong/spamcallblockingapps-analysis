package com.google.android.datatransport.p062h.p067x;

import com.google.android.datatransport.AbstractC1294g;
import com.google.android.datatransport.p062h.AbstractC1297h;
import com.google.android.datatransport.p062h.AbstractC1304m;
/* renamed from: com.google.android.datatransport.h.x.a */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/x/a.class */
final /* synthetic */ class RunnableC1314a implements Runnable {

    /* renamed from: b */
    private final c f5375b;

    /* renamed from: c */
    private final AbstractC1304m f5376c;

    /* renamed from: d */
    private final AbstractC1294g f5377d;

    /* renamed from: e */
    private final AbstractC1297h f5378e;

    private RunnableC1314a(c cVar, AbstractC1304m abstractC1304m, AbstractC1294g abstractC1294g, AbstractC1297h abstractC1297h) {
        this.f5375b = cVar;
        this.f5376c = abstractC1304m;
        this.f5377d = abstractC1294g;
        this.f5378e = abstractC1297h;
    }

    /* renamed from: a */
    public static Runnable m9183a(c cVar, AbstractC1304m abstractC1304m, AbstractC1294g abstractC1294g, AbstractC1297h abstractC1297h) {
        return new RunnableC1314a(cVar, abstractC1304m, abstractC1294g, abstractC1297h);
    }

    @Override // java.lang.Runnable
    public void run() {
        c.c(this.f5375b, this.f5376c, this.f5377d, this.f5378e);
    }
}
