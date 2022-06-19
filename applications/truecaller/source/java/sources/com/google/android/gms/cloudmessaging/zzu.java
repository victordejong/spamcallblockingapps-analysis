package com.google.android.gms.cloudmessaging;

import android.os.Bundle;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
import java.util.Objects;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/cloudmessaging/zzu.class */
public final /* synthetic */ class zzu implements Continuation {

    /* renamed from: a */
    public final /* synthetic */ Rpc f5650a;

    /* renamed from: b */
    public final /* synthetic */ Bundle f5651b;

    public /* synthetic */ zzu(Rpc rpc, Bundle bundle) {
        this.f5650a = rpc;
        this.f5651b = bundle;
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final Object then(Task task) {
        Rpc rpc = this.f5650a;
        Bundle bundle = this.f5651b;
        Objects.requireNonNull(rpc);
        if (task.m38519s()) {
            Bundle bundle2 = (Bundle) task.m38523o();
            if (bundle2 != null && bundle2.containsKey("google.messenger")) {
                task = rpc.m39085a(bundle).m38517u(Rpc.f5619j, zzx.f5656a);
            }
        }
        return task;
    }
}
