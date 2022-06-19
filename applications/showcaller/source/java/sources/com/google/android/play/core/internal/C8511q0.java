package com.google.android.play.core.internal;
/* renamed from: com.google.android.play.core.internal.q0 */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/internal/q0.class */
public final class C8511q0<T> implements AbstractC8515s0<T> {

    /* renamed from: a */
    private AbstractC8515s0<T> f38071a;

    /* renamed from: b */
    public static <T> void m3479b(AbstractC8515s0<T> abstractC8515s0, AbstractC8515s0<T> abstractC8515s02) {
        C8480d0.m3542j(abstractC8515s02);
        C8511q0 c8511q0 = (C8511q0) abstractC8515s0;
        if (c8511q0.f38071a == null) {
            c8511q0.f38071a = abstractC8515s02;
            return;
        }
        throw new IllegalStateException();
    }

    @Override // com.google.android.play.core.internal.AbstractC8515s0
    /* renamed from: a */
    public final T mo3471a() {
        AbstractC8515s0<T> abstractC8515s0 = this.f38071a;
        if (abstractC8515s0 != null) {
            return abstractC8515s0.mo3471a();
        }
        throw new IllegalStateException();
    }
}
