package com.google.android.gms.common.api.internal;

import androidx.annotation.NonNull;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zacl.class */
final class zacl implements Continuation<Boolean, Void> {
    zacl() {
    }

    @Override // com.google.android.gms.tasks.Continuation
    public final /* synthetic */ Void then(@NonNull Task<Boolean> task) throws Exception {
        if (task.mo10786j().booleanValue()) {
            return null;
        }
        throw new ApiException(new Status(13, "listener already unregistered"));
    }
}
