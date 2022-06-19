package com.google.android.datatransport.p232h.p237x;

import com.google.android.datatransport.AbstractC4648g;
import com.google.android.datatransport.p232h.AbstractC4664h;
import com.google.android.datatransport.p232h.AbstractC4673m;
/* renamed from: com.google.android.datatransport.h.x.a */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/h/x/a.class */
final /* synthetic */ class RunnableC4691a implements Runnable {

    /* renamed from: d */
    private final C4693c f14260d;

    /* renamed from: e */
    private final AbstractC4673m f14261e;

    /* renamed from: f */
    private final AbstractC4648g f14262f;

    /* renamed from: g */
    private final AbstractC4664h f14263g;

    private RunnableC4691a(C4693c c4693c, AbstractC4673m abstractC4673m, AbstractC4648g abstractC4648g, AbstractC4664h abstractC4664h) {
        this.f14260d = c4693c;
        this.f14261e = abstractC4673m;
        this.f14262f = abstractC4648g;
        this.f14263g = abstractC4664h;
    }

    /* renamed from: a */
    public static Runnable m21984a(C4693c c4693c, AbstractC4673m abstractC4673m, AbstractC4648g abstractC4648g, AbstractC4664h abstractC4664h) {
        return new RunnableC4691a(c4693c, abstractC4673m, abstractC4648g, abstractC4664h);
    }

    @Override // java.lang.Runnable
    public void run() {
        C4693c.m21981c(this.f14260d, this.f14261e, this.f14262f, this.f14263g);
    }
}
