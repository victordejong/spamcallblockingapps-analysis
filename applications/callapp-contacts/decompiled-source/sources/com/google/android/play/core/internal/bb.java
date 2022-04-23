package com.google.android.play.core.internal;
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/bb.class */
public final class bb<T> implements be<T> {

    /* renamed from: a  reason: collision with root package name */
    private be<T> f31358a;

    public static <T> void a(be<T> beVar, be<T> beVar2) {
        bb bbVar = (bb) beVar;
        if (bbVar.f31358a == null) {
            bbVar.f31358a = beVar2;
            return;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.play.core.internal.be
    public final T a() {
        be<T> beVar = this.f31358a;
        if (beVar != null) {
            return beVar.a();
        }
        throw new IllegalStateException();
    }
}
