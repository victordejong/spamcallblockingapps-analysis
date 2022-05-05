package com.google.android.gms.cloudmessaging;

import android.os.Bundle;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/cloudmessaging/zzw.class */
public final /* synthetic */ class zzw implements SuccessContinuation {

    /* renamed from: a */
    static final SuccessContinuation f6957a = new zzw();

    private zzw() {
    }

    @Override // com.google.android.gms.tasks.SuccessContinuation
    public final Task then(Object obj) {
        return Rpc.m15130c((Bundle) obj);
    }
}
