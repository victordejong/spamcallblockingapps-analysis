package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.b;
import com.google.android.gms.tasks.h;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/bf.class */
final class bf implements b<Boolean, Void> {
    @Override // com.google.android.gms.tasks.b
    public final /* synthetic */ Void then(h<Boolean> hVar) throws Exception {
        if (hVar.d().booleanValue()) {
            return null;
        }
        throw new ApiException(new Status(13, "listener already unregistered"));
    }
}
