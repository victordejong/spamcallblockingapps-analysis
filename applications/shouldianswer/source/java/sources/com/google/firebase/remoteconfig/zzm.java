package com.google.firebase.remoteconfig;

import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
/* loaded from: classes-dex2jar.jar:com/google/firebase/remoteconfig/zzm.class */
final /* synthetic */ class zzm implements SuccessContinuation {
    static final SuccessContinuation zzjk = new zzm();

    private zzm() {
    }

    @Override // com.google.android.gms.tasks.SuccessContinuation
    public final Task then(Object obj) {
        return Tasks.forResult(null);
    }
}
