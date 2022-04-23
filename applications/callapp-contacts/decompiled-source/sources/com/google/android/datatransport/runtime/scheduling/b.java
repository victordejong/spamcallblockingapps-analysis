package com.google.android.datatransport.runtime.scheduling;

import com.google.android.datatransport.h;
import com.google.android.datatransport.runtime.l;
/* loaded from: classes3-dex2jar.jar:com/google/android/datatransport/runtime/scheduling/b.class */
final /* synthetic */ class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    private final a f20530a;

    /* renamed from: b  reason: collision with root package name */
    private final l f20531b;

    /* renamed from: c  reason: collision with root package name */
    private final h f20532c;

    /* renamed from: d  reason: collision with root package name */
    private final com.google.android.datatransport.runtime.h f20533d;

    private b(a aVar, l lVar, h hVar, com.google.android.datatransport.runtime.h hVar2) {
        this.f20530a = aVar;
        this.f20531b = lVar;
        this.f20532c = hVar;
        this.f20533d = hVar2;
    }

    public static Runnable a(a aVar, l lVar, h hVar, com.google.android.datatransport.runtime.h hVar2) {
        return new b(aVar, lVar, hVar, hVar2);
    }

    @Override // java.lang.Runnable
    public final void run() {
        a.a(this.f20530a, this.f20531b, this.f20532c, this.f20533d);
    }
}
