package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.BiConsumer;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/TaskApiCall.class */
public abstract class TaskApiCall<A extends Api.AnyClient, ResultT> {
    private final Feature[] zake;
    private final boolean zakl;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/TaskApiCall$Builder.class */
    public static class Builder<A extends Api.AnyClient, ResultT> {
        private Feature[] zake;
        private boolean zakl;
        private RemoteCall<A, TaskCompletionSource<ResultT>> zakm;

        private Builder() {
            this.zakl = true;
        }

        public TaskApiCall<A, ResultT> build() {
            Preconditions.checkArgument(this.zakm != null, "execute parameter required");
            return new zack(this, this.zake, this.zakl);
        }

        @Deprecated
        public Builder<A, ResultT> execute(BiConsumer<A, TaskCompletionSource<ResultT>> biConsumer) {
            this.zakm = new RemoteCall(biConsumer) { // from class: com.google.android.gms.common.api.internal.zacj
                private final BiConsumer zakf;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zakf = biConsumer;
                }

                @Override // com.google.android.gms.common.api.internal.RemoteCall
                public final void accept(Object obj, Object obj2) {
                    this.zakf.accept((Api.AnyClient) obj, (TaskCompletionSource) obj2);
                }
            };
            return this;
        }

        public Builder<A, ResultT> run(RemoteCall<A, TaskCompletionSource<ResultT>> remoteCall) {
            this.zakm = remoteCall;
            return this;
        }

        public Builder<A, ResultT> setAutoResolveMissingFeatures(boolean z) {
            this.zakl = z;
            return this;
        }

        public Builder<A, ResultT> setFeatures(Feature... featureArr) {
            this.zake = featureArr;
            return this;
        }
    }

    @Deprecated
    public TaskApiCall() {
        this.zake = null;
        this.zakl = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TaskApiCall(Feature[] featureArr, boolean z) {
        this.zake = featureArr;
        this.zakl = z;
    }

    public static <A extends Api.AnyClient, ResultT> Builder<A, ResultT> builder() {
        return new Builder<>();
    }

    public abstract void doExecute(A a, TaskCompletionSource<ResultT> taskCompletionSource);

    public boolean shouldAutoResolveMissingFeatures() {
        return this.zakl;
    }

    public final Feature[] zabt() {
        return this.zake;
    }
}
