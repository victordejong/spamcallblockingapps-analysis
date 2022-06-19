package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zacs.class */
public final class zacs implements Continuation<Boolean, Void> {
    @Override // com.google.android.gms.tasks.Continuation
    public final /* bridge */ /* synthetic */ Void then(Task<Boolean> task) throws Exception {
        if (task.getResult().booleanValue()) {
            return null;
        }
        throw new ApiException(new Status(13, "listener already unregistered"));
    }
}
