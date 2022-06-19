package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.AnyClient;
import com.google.android.gms.common.api.internal.RegistrationMethods;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.BiConsumer;
import com.google.android.gms.tasks.TaskCompletionSource;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/RegistrationMethods.class */
public class RegistrationMethods<A extends Api.AnyClient, L> {
    public final RegisterListenerMethod<A, L> zajz;
    public final UnregisterListenerMethod<A, L> zaka;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/RegistrationMethods$Builder.class */
    public static class Builder<A extends Api.AnyClient, L> {
        private boolean zajw;
        private RemoteCall<A, TaskCompletionSource<Void>> zakb;
        private RemoteCall<A, TaskCompletionSource<Boolean>> zakc;
        private ListenerHolder<L> zakd;
        private Feature[] zake;

        private Builder() {
            this.zajw = true;
        }

        public RegistrationMethods<A, L> build() {
            Preconditions.checkArgument(this.zakb != null, "Must set register function");
            Preconditions.checkArgument(this.zakc != null, "Must set unregister function");
            Preconditions.checkArgument(this.zakd != null, "Must set holder");
            return new RegistrationMethods<>(new zaca(this, this.zakd, this.zake, this.zajw), new zacb(this, this.zakd.getListenerKey()));
        }

        public Builder<A, L> register(RemoteCall<A, TaskCompletionSource<Void>> remoteCall) {
            this.zakb = remoteCall;
            return this;
        }

        @Deprecated
        public Builder<A, L> register(BiConsumer<A, TaskCompletionSource<Void>> biConsumer) {
            this.zakb = new RemoteCall(biConsumer) { // from class: com.google.android.gms.common.api.internal.zaby
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

        public Builder<A, L> setAutoResolveMissingFeatures(boolean z) {
            this.zajw = z;
            return this;
        }

        public Builder<A, L> setFeatures(Feature[] featureArr) {
            this.zake = featureArr;
            return this;
        }

        public Builder<A, L> unregister(RemoteCall<A, TaskCompletionSource<Boolean>> remoteCall) {
            this.zakc = remoteCall;
            return this;
        }

        @Deprecated
        public Builder<A, L> unregister(BiConsumer<A, TaskCompletionSource<Boolean>> biConsumer) {
            this.zakb = new RemoteCall(this) { // from class: com.google.android.gms.common.api.internal.zabz
                private final RegistrationMethods.Builder zakg;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zakg = this;
                }

                @Override // com.google.android.gms.common.api.internal.RemoteCall
                public final void accept(Object obj, Object obj2) {
                    this.zakg.zaa((Api.AnyClient) obj, (TaskCompletionSource) obj2);
                }
            };
            return this;
        }

        public Builder<A, L> withHolder(ListenerHolder<L> listenerHolder) {
            this.zakd = listenerHolder;
            return this;
        }

        public final /* synthetic */ void zaa(Api.AnyClient anyClient, TaskCompletionSource taskCompletionSource) {
            this.zakb.accept(anyClient, taskCompletionSource);
        }
    }

    private RegistrationMethods(RegisterListenerMethod<A, L> registerListenerMethod, UnregisterListenerMethod<A, L> unregisterListenerMethod) {
        this.zajz = registerListenerMethod;
        this.zaka = unregisterListenerMethod;
    }

    public static <A extends Api.AnyClient, L> Builder<A, L> builder() {
        return new Builder<>();
    }
}
