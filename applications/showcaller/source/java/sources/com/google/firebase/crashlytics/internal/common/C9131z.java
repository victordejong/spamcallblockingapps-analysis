package com.google.firebase.crashlytics.internal.common;

import com.google.android.gms.tasks.AbstractC7954a;
import com.google.android.gms.tasks.AbstractC7966g;
/* renamed from: com.google.firebase.crashlytics.internal.common.z */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/z.class */
public final /* synthetic */ class C9131z implements AbstractC7954a {

    /* renamed from: a */
    private final C9078b0 f39410a;

    private C9131z(C9078b0 c9078b0) {
        this.f39410a = c9078b0;
    }

    /* renamed from: b */
    public static AbstractC7954a m1762b(C9078b0 c9078b0) {
        return new C9131z(c9078b0);
    }

    @Override // com.google.android.gms.tasks.AbstractC7954a
    /* renamed from: a */
    public Object mo1125a(AbstractC7966g abstractC7966g) {
        boolean m1937j;
        m1937j = this.f39410a.m1937j(abstractC7966g);
        return Boolean.valueOf(m1937j);
    }
}
