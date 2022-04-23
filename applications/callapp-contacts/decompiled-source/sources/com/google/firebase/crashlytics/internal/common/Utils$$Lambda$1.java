package com.google.firebase.crashlytics.internal.common;

import com.google.android.gms.tasks.b;
import com.google.android.gms.tasks.h;
import java.util.concurrent.CountDownLatch;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/common/Utils$$Lambda$1.class */
public final /* synthetic */ class Utils$$Lambda$1 implements b {
    private final CountDownLatch arg$1;

    private Utils$$Lambda$1(CountDownLatch countDownLatch) {
        this.arg$1 = countDownLatch;
    }

    public static b lambdaFactory$(CountDownLatch countDownLatch) {
        return new Utils$$Lambda$1(countDownLatch);
    }

    @Override // com.google.android.gms.tasks.b
    public final Object then(h hVar) {
        return this.arg$1.countDown();
    }
}
