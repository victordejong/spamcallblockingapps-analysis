package com.google.firebase.crashlytics.internal.common;

import com.google.android.gms.tasks.AbstractC7954a;
import com.google.android.gms.tasks.AbstractC7966g;
import java.util.concurrent.CountDownLatch;
/* renamed from: com.google.firebase.crashlytics.internal.common.e0 */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/e0.class */
public final /* synthetic */ class C9084e0 implements AbstractC7954a {

    /* renamed from: a */
    private final CountDownLatch f39289a;

    private C9084e0(CountDownLatch countDownLatch) {
        this.f39289a = countDownLatch;
    }

    /* renamed from: b */
    public static AbstractC7954a m1924b(CountDownLatch countDownLatch) {
        return new C9084e0(countDownLatch);
    }

    @Override // com.google.android.gms.tasks.AbstractC7954a
    /* renamed from: a */
    public Object mo1125a(AbstractC7966g abstractC7966g) {
        return this.f39289a.countDown();
    }
}
