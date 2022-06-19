package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/zack.class */
final class zack extends TaskApiCall<A, ResultT> {
    private final /* synthetic */ TaskApiCall.Builder zakn;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zack(TaskApiCall.Builder builder, Feature[] featureArr, boolean z) {
        super(featureArr, z);
        this.zakn = builder;
    }

    @Override // com.google.android.gms.common.api.internal.TaskApiCall
    public final void doExecute(Api.AnyClient anyClient, TaskCompletionSource taskCompletionSource) {
        RemoteCall remoteCall;
        remoteCall = this.zakn.zakm;
        remoteCall.accept(anyClient, taskCompletionSource);
    }
}
