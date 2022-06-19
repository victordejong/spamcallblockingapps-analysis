package com.google.firebase.crashlytics.internal.common;

import com.google.android.gms.tasks.AbstractC14179b;
import com.google.android.gms.tasks.AbstractC14185h;
import java.util.concurrent.CountDownLatch;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/common/Utils$$Lambda$1.class */
public final /* synthetic */ class Utils$$Lambda$1 implements AbstractC14179b {
    private final CountDownLatch arg$1;

    private Utils$$Lambda$1(CountDownLatch countDownLatch) {
        this.arg$1 = countDownLatch;
    }

    public static AbstractC14179b lambdaFactory$(CountDownLatch countDownLatch) {
        return new Utils$$Lambda$1(countDownLatch);
    }

    @Override // com.google.android.gms.tasks.AbstractC14179b
    public final Object then(AbstractC14185h abstractC14185h) {
        return this.arg$1.countDown();
    }
}
