package com.google.android.play.core.splitinstall;

import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.play.core.splitinstall.aa */
/* loaded from: classes4-dex2jar.jar:com/google/android/play/core/splitinstall/aa.class */
public final class EnumC15135aa extends Enum<EnumC15135aa> implements AbstractC15170t {

    /* renamed from: a */
    public static final EnumC15135aa f54917a = new EnumC15135aa();

    /* renamed from: b */
    private static final AtomicReference<AbstractC15171u> f54918b = new AtomicReference<>(null);

    private EnumC15135aa() {
        super("INSTANCE", 0);
    }

    @Override // com.google.android.play.core.splitinstall.AbstractC15170t
    /* renamed from: a */
    public final AbstractC15171u mo9344a() {
        return f54918b.get();
    }

    /* renamed from: b */
    public final void m9405b(AbstractC15171u abstractC15171u) {
        f54918b.set(abstractC15171u);
    }
}
