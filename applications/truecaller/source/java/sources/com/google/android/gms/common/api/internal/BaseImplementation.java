package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.common.internal.Preconditions;
import java.util.Objects;
@KeepForSdk
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/BaseImplementation.class */
public class BaseImplementation {

    @KeepForSdk
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl.class */
    public static abstract class ApiMethodImpl<R extends Result, A extends Api.AnyClient> extends BasePendingResult<R> implements ResultHolder<R> {
        @KeepForSdk
        private final Api<?> mApi;
        @KeepForSdk
        private final Api.AnyClientKey<A> mClientKey;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        @KeepForSdk
        @Deprecated
        public ApiMethodImpl(@RecentlyNonNull Api.AnyClientKey<A> anyClientKey, @RecentlyNonNull GoogleApiClient googleApiClient) {
            super(googleApiClient);
            Preconditions.m38897k(googleApiClient, "GoogleApiClient must not be null");
            Objects.requireNonNull(anyClientKey, "null reference");
            this.mClientKey = anyClientKey;
            this.mApi = null;
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        @KeepForSdk
        public ApiMethodImpl(@RecentlyNonNull Api<?> api, @RecentlyNonNull GoogleApiClient googleApiClient) {
            super(googleApiClient);
            Preconditions.m38897k(googleApiClient, "GoogleApiClient must not be null");
            Preconditions.m38897k(api, "Api must not be null");
            this.mClientKey = api.f5690b;
            this.mApi = api;
        }

        @KeepForSdk
        public ApiMethodImpl(@RecentlyNonNull BasePendingResult.CallbackHandler<R> callbackHandler) {
            super(callbackHandler);
            this.mClientKey = new Api.AnyClientKey<>();
            this.mApi = null;
        }

        @KeepForSdk
        private void setFailedResult(RemoteException remoteException) {
            setFailedResult(new Status(8, remoteException.getLocalizedMessage(), null));
        }

        @KeepForSdk
        public abstract void doExecute(@RecentlyNonNull A a) throws RemoteException;

        @RecentlyNullable
        @KeepForSdk
        public final Api<?> getApi() {
            return this.mApi;
        }

        @RecentlyNonNull
        @KeepForSdk
        public final Api.AnyClientKey<A> getClientKey() {
            return this.mClientKey;
        }

        @KeepForSdk
        public void onSetFailedResult(@RecentlyNonNull R r) {
        }

        @KeepForSdk
        public final void run(@RecentlyNonNull A a) throws DeadObjectException {
            try {
                doExecute(a);
            } catch (DeadObjectException e) {
                setFailedResult(e);
                throw e;
            } catch (RemoteException e2) {
                setFailedResult(e2);
            }
        }

        @KeepForSdk
        public final void setFailedResult(@RecentlyNonNull Status status) {
            Preconditions.m38906b(!status.m39042q2(), "Failed result must not be success");
            R createFailedResult = createFailedResult(status);
            setResult((ApiMethodImpl<R, A>) createFailedResult);
            onSetFailedResult(createFailedResult);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
        @KeepForSdk
        public /* bridge */ /* synthetic */ void setResult(@RecentlyNonNull Object obj) {
            super.setResult((ApiMethodImpl<R, A>) ((Result) obj));
        }
    }

    @KeepForSdk
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/common/api/internal/BaseImplementation$ResultHolder.class */
    public interface ResultHolder<R> {
        @KeepForSdk
        void setResult(@RecentlyNonNull R r);
    }
}
