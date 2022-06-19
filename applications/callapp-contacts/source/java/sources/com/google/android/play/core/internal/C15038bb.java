package com.google.android.play.core.internal;
/* renamed from: com.google.android.play.core.internal.bb */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/internal/bb.class */
public final class C15038bb<T> implements AbstractC15041be<T> {

    /* renamed from: a */
    private AbstractC15041be<T> f54760a;

    /* renamed from: a */
    public static <T> void m9575a(AbstractC15041be<T> abstractC15041be, AbstractC15041be<T> abstractC15041be2) {
        C15038bb c15038bb = (C15038bb) abstractC15041be;
        if (c15038bb.f54760a == null) {
            c15038bb.f54760a = abstractC15041be2;
            return;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.play.core.internal.AbstractC15041be
    /* renamed from: a */
    public final T mo9335a() {
        AbstractC15041be<T> abstractC15041be = this.f54760a;
        if (abstractC15041be != null) {
            return abstractC15041be.mo9335a();
        }
        throw new IllegalStateException();
    }
}
