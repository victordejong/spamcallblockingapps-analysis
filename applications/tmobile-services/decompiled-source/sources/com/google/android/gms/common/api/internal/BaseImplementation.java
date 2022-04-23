package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import androidx.annotation.NonNull;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.SimpleClientAdapter;
@KeepForSdk
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/BaseImplementation.class */
public class BaseImplementation {

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/BaseImplementation$ApiMethodImpl.class */
    public static abstract class ApiMethodImpl<R extends Result, A extends Api.AnyClient> extends BasePendingResult<R> implements ResultHolder<R> {
        @KeepForSdk

        /* renamed from: q */
        private final Api.AnyClientKey<A> f7042q;
        @KeepForSdk

        /* renamed from: r */
        private final Api<?> f7043r;

        /* JADX INFO: Access modifiers changed from: protected */
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        @KeepForSdk
        public ApiMethodImpl(@NonNull Api<?> api, @NonNull GoogleApiClient googleApiClient) {
            super(googleApiClient);
            Preconditions.m14522l(googleApiClient, "GoogleApiClient must not be null");
            Preconditions.m14522l(api, "Api must not be null");
            this.f7042q = (Api.AnyClientKey<A>) api.m15033a();
            this.f7043r = api;
        }

        @KeepForSdk
        /* renamed from: y */
        private void m14980y(@NonNull RemoteException remoteException) {
            m14979z(new Status(8, remoteException.getLocalizedMessage(), null));
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // com.google.android.gms.common.api.internal.BaseImplementation.ResultHolder
        @KeepForSdk
        public /* bridge */ /* synthetic */ void setResult(Object obj) {
            super.m14974i((Result) obj);
        }

        @KeepForSdk
        /* renamed from: t */
        protected abstract void mo14041t(@NonNull A a) throws RemoteException;

        @KeepForSdk
        /* renamed from: u */
        public final Api<?> m14984u() {
            return this.f7043r;
        }

        @KeepForSdk
        /* renamed from: v */
        public final Api.AnyClientKey<A> m14983v() {
            return this.f7042q;
        }

        @KeepForSdk
        /* renamed from: w */
        protected void m14982w(@NonNull R r) {
        }

        @KeepForSdk
        /* renamed from: x */
        public final void m14981x(@NonNull A a) throws DeadObjectException {
            A a2 = a;
            if (a instanceof SimpleClientAdapter) {
                a2 = ((SimpleClientAdapter) a).m14503e();
            }
            try {
                mo14041t(a2);
            } catch (DeadObjectException e) {
                m14980y(e);
                throw e;
            } catch (RemoteException e2) {
                m14980y(e2);
            }
        }

        @KeepForSdk
        /* renamed from: z */
        public final void m14979z(@NonNull Status status) {
            Preconditions.m14532b(!status.m14996d0(), "Failed result must not be success");
            R e = mo14042e(status);
            m14974i(e);
            m14982w(e);
        }
    }

    @KeepForSdk
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/BaseImplementation$ResultHolder.class */
    public interface ResultHolder<R> {
        @KeepForSdk
        void setResult(R r);
    }
}
