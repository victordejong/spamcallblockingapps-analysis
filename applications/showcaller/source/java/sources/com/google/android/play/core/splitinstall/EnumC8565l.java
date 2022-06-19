package com.google.android.play.core.splitinstall;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.play.core.splitinstall.l */
/* loaded from: classes2-dex2jar.jar:com/google/android/play/core/splitinstall/l.class */
public final class EnumC8565l extends Enum<EnumC8565l> implements AbstractC8558e {

    /* renamed from: d */
    public static final EnumC8565l f38153d = new EnumC8565l();

    /* renamed from: e */
    private static final AtomicReference<AbstractC8559f> f38154e = new AtomicReference<>(null);

    private EnumC8565l() {
        super("INSTANCE", 0);
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC8558e
    /* renamed from: a */
    public final AbstractC8559f mo3337a() {
        return f38154e.get();
    }

    /* renamed from: b */
    public final void m3336b(AbstractC8559f abstractC8559f) {
        f38154e.set(abstractC8559f);
    }
}
