package com.google.android.play.core.splitinstall;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/ag.class */
public final class ag implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ c f31493a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ int f31494b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ int f31495c;

    /* renamed from: d  reason: collision with root package name */
    final /* synthetic */ ah f31496d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ag(ah ahVar, c cVar, int i, int i2) {
        this.f31496d = ahVar;
        this.f31493a = cVar;
        this.f31494b = i;
        this.f31495c = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ah ahVar = this.f31496d;
        c cVar = this.f31493a;
        ahVar.a((c) new e(cVar.a(), this.f31494b, this.f31495c, cVar.d(), cVar.e(), cVar.i(), cVar.j(), cVar.h(), cVar.k()));
    }
}
