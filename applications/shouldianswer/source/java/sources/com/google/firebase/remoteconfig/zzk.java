package com.google.firebase.remoteconfig;

import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
/* loaded from: classes-dex2jar.jar:com/google/firebase/remoteconfig/zzk.class */
public final /* synthetic */ class zzk implements SuccessContinuation {
    static final SuccessContinuation zzjk = new zzk();

    private zzk() {
    }

    @Override // com.google.android.gms.tasks.SuccessContinuation
    public final Task then(Object obj) {
        return Tasks.forResult(null);
    }
}
