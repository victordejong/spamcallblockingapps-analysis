package com.google.android.gms.common.api.internal;

import android.app.PendingIntent;
import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.AbstractC11826g;
import com.google.android.gms.common.api.AbstractC11925m;
import com.google.android.gms.common.api.C11808a;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.BasePendingResult;
import com.google.android.gms.common.internal.C12045o;
/* renamed from: com.google.android.gms.common.api.internal.d */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/d.class */
public final class C11892d {

    /* renamed from: com.google.android.gms.common.api.internal.d$a */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/d$a.class */
    public static abstract class AbstractC11893a<R extends AbstractC11925m, A extends C11808a.AbstractC11810b> extends BasePendingResult<R> implements AbstractC11894b<R> {

        /* renamed from: a */
        private final C11808a.C11811c<A> f39341a;

        /* renamed from: b */
        private final C11808a<?> f39342b;

        @Deprecated
        protected AbstractC11893a(C11808a.C11811c<A> c11811c, AbstractC11826g abstractC11826g) {
            super((AbstractC11826g) C12045o.m19161a(abstractC11826g, "GoogleApiClient must not be null"));
            this.f39341a = (C11808a.C11811c) C12045o.m19162a(c11811c);
            this.f39342b = null;
        }

        public AbstractC11893a(C11808a<?> c11808a, AbstractC11826g abstractC11826g) {
            super((AbstractC11826g) C12045o.m19161a(abstractC11826g, "GoogleApiClient must not be null"));
            C12045o.m19161a(c11808a, "Api must not be null");
            this.f39341a = c11808a.f39176b;
            this.f39342b = c11808a;
        }

        protected AbstractC11893a(BasePendingResult.HandlerC11831a<R> handlerC11831a) {
            super(handlerC11831a);
            this.f39341a = new C11808a.C11811c<>();
            this.f39342b = null;
        }

        /* renamed from: a */
        private void m19360a(RemoteException remoteException) {
            mo11400b(new Status(8, remoteException.getLocalizedMessage(), (PendingIntent) null));
        }

        /* renamed from: a */
        protected abstract void mo11353a(A a) throws RemoteException;

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        public /* bridge */ /* synthetic */ void mo11401a(Object obj) {
            super.m19438a((AbstractC11893a<R, A>) ((AbstractC11925m) obj));
        }

        @Override // com.google.android.gms.common.api.internal.C11892d.AbstractC11894b
        /* renamed from: b */
        public final void mo11400b(Status status) {
            C12045o.m19153b(!status.isSuccess(), "Failed result must not be success");
            m19438a((AbstractC11893a<R, A>) mo11354a(status));
        }

        /* renamed from: b */
        public final void m19359b(A a) throws DeadObjectException {
            try {
                mo11353a((AbstractC11893a<R, A>) a);
            } catch (DeadObjectException e) {
                m19360a((RemoteException) e);
                throw e;
            } catch (RemoteException e2) {
                m19360a(e2);
            }
        }
    }

    /* renamed from: com.google.android.gms.common.api.internal.d$b */
    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/d$b.class */
    public interface AbstractC11894b<R> {
        /* renamed from: a */
        void mo11401a(R r);

        /* renamed from: b */
        void mo11400b(Status status);
    }
}
