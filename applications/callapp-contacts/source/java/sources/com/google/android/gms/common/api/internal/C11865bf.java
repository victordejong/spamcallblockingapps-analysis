package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.AbstractC14179b;
import com.google.android.gms.tasks.AbstractC14185h;
/* renamed from: com.google.android.gms.common.api.internal.bf */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/bf.class */
final class C11865bf implements AbstractC14179b<Boolean, Void> {
    @Override // com.google.android.gms.tasks.AbstractC14179b
    public final /* synthetic */ Void then(AbstractC14185h<Boolean> abstractC14185h) throws Exception {
        if (abstractC14185h.mo11475d().booleanValue()) {
            return null;
        }
        throw new ApiException(new Status(13, "listener already unregistered"));
    }
}
