package com.google.android.gms.cloudmessaging;

import android.os.Bundle;
import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/cloudmessaging/zzx.class */
public final /* synthetic */ class zzx implements SuccessContinuation {

    /* renamed from: a */
    public static final /* synthetic */ zzx f5656a = new zzx();

    private /* synthetic */ zzx() {
    }

    @Override // com.google.android.gms.tasks.SuccessContinuation
    public final Task then(Object obj) {
        Bundle bundle = (Bundle) obj;
        int i = Rpc.f5617h;
        return bundle != null && bundle.containsKey("google.messenger") ? Tasks.m38509f(null) : Tasks.m38509f(bundle);
    }
}
