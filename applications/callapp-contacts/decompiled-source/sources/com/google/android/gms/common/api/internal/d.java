package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.common.api.m;
import com.google.android.gms.common.internal.o;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/d.class */
public final class d {

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/d$a.class */
    public static abstract class a<R extends m, A extends a.b> extends BasePendingResult<R> implements b<R> {

        /* renamed from: a  reason: collision with root package name */
        private final a.c<A> f22732a;

        /* renamed from: b  reason: collision with root package name */
        private final com.google.android.gms.common.api.a<?> f22733b;

        @Deprecated
        protected a(a.c<A> cVar, g gVar) {
            super((g) o.a(gVar, "GoogleApiClient must not be null"));
            this.f22732a = (a.c) o.a(cVar);
            this.f22733b = null;
        }

        public a(com.google.android.gms.common.api.a<?> aVar, g gVar) {
            super((g) o.a(gVar, "GoogleApiClient must not be null"));
            o.a(aVar, "Api must not be null");
            this.f22732a = aVar.f22611b;
            this.f22733b = aVar;
        }

        protected a(BasePendingResult.a<R> aVar) {
            super(aVar);
            this.f22732a = new a.c<>();
            this.f22733b = null;
        }

        private void a(RemoteException remoteException) {
            b(new Status(8, remoteException.getLocalizedMessage(), (PendingIntent) null));
        }

        protected abstract void a(A a2) throws RemoteException;

        /* JADX WARN: Multi-variable type inference failed */
        public /* bridge */ /* synthetic */ void a(Object obj) {
            super.a((a<R, A>) ((m) obj));
        }

        @Override // com.google.android.gms.common.api.internal.d.b
        public final void b(Status status) {
            o.b(!status.isSuccess(), "Failed result must not be success");
            a((a<R, A>) a(status));
        }

        public final void b(A a2) throws DeadObjectException {
            try {
                a((a<R, A>) a2);
            } catch (DeadObjectException e) {
                a((RemoteException) e);
                throw e;
            } catch (RemoteException e2) {
                a(e2);
            }
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/d$b.class */
    public interface b<R> {
        void a(R r);

        void b(Status status);
    }
}
