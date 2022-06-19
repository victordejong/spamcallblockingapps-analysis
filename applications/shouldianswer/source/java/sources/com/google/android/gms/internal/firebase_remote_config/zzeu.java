package com.google.android.gms.internal.firebase_remote_config;

import com.google.android.gms.tasks.SuccessContinuation;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzeu.class */
public final /* synthetic */ class zzeu implements SuccessContinuation {
    static final SuccessContinuation zzjk = new zzeu();

    private zzeu() {
    }

    @Override // com.google.android.gms.tasks.SuccessContinuation
    public final Task then(Object obj) {
        Task forResult;
        forResult = Tasks.forResult(zzet.zzg((zzen) obj));
        return forResult;
    }
}
