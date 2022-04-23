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

    private RunnableC1314a(c cVar, AbstractC1304m mVar, AbstractC1294g gVar, AbstractC1297h hVar) {
        this.f5375b = cVar;
        this.f5376c = mVar;
        this.f5377d = gVar;
        this.f5378e = hVar;
    }

    /* renamed from: a */
    public static Runnable m9183a(c cVar, AbstractC1304m mVar, AbstractC1294g gVar, AbstractC1297h hVar) {
        return new RunnableC1314a(cVar, mVar, gVar, hVar);
    }

    @Override // java.lang.Runnable
    public void run() {
        c.c(this.f5375b, this.f5376c, this.f5377d, this.f5378e);
    }
}
