package com.google.android.gms.internal.icing;

import android.os.RemoteException;
import com.google.android.gms.appindexing.AppIndexApi;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BaseImplementation;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzaj.class */
public final class zzaj implements AppIndexApi {

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzaj$zza.class */
    static abstract class zza<T extends Result> extends BaseImplementation.ApiMethodImpl<T, zzah> {
        /* renamed from: A */
        protected abstract void mo14053A(zzaa zzaaVar) throws RemoteException;

        @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
        /* renamed from: t */
        protected /* synthetic */ void mo14041t(zzah zzahVar) throws RemoteException {
            mo14053A((zzaa) zzahVar.getService());
        }
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzaj$zzb.class */
    static final class zzb implements AppIndexApi.ActionResult {
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzaj$zzc.class */
    public static final class zzc extends zzae<Status> {
        public zzc(BaseImplementation.ResultHolder<Status> resultHolder) {
            super(resultHolder);
        }

        @Override // com.google.android.gms.internal.icing.zzae, com.google.android.gms.internal.icing.zzac
        /* renamed from: r0 */
        public final void mo14052r0(Status status) {
            this.f7869a.setResult(status);
        }
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzaj$zzd.class */
    public static abstract class zzd<T extends Result> extends zza<Status> {
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.google.android.gms.common.api.internal.BasePendingResult
        /* renamed from: e */
        public /* synthetic */ Result mo14042e(Status status) {
            return status;
        }
    }
}
