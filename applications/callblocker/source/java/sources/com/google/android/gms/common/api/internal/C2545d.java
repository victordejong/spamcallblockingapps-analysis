package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.AbstractC2492d;
import com.google.android.gms.common.api.AbstractC2500h;
import com.google.android.gms.common.api.C2471a;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.C2662s;
import com.google.android.gms.common.internal.C2669v;
/* renamed from: com.google.android.gms.common.api.internal.d */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/d.class */
public class C2545d {

    /* renamed from: com.google.android.gms.common.api.internal.d$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/d$a.class */
    public static abstract class AbstractC2546a<R extends AbstractC2500h, A extends C2471a.AbstractC2473b> extends BasePendingResult<R> {

        /* renamed from: b */
        private final C2471a.C2474c<A> f7167b;

        /* renamed from: c */
        private final C2471a<?> f7168c;

        public AbstractC2546a(C2471a<?> c2471a, AbstractC2492d abstractC2492d) {
            super((AbstractC2492d) C2662s.m13980a(abstractC2492d, "GoogleApiClient must not be null"));
            C2662s.m13980a(c2471a, "Api must not be null");
            this.f7167b = (C2471a.C2474c<A>) c2471a.m14456b();
            this.f7168c = c2471a;
        }

        /* renamed from: a */
        private void m14325a(RemoteException remoteException) {
            m14322b(new Status(8, remoteException.getLocalizedMessage(), null));
        }

        /* renamed from: a */
        protected abstract void mo14324a(A a);

        /* renamed from: a */
        protected void m14323a(R r) {
        }

        /* renamed from: b */
        public final void m14322b(Status status) {
            C2662s.m13972b(!status.m14460d(), "Failed result must not be success");
            R mo14232a = mo14232a(status);
            m14412b((AbstractC2546a<R, A>) mo14232a);
            m14323a((AbstractC2546a<R, A>) mo14232a);
        }

        /* renamed from: b */
        public final void m14321b(A a) {
            C2471a.AbstractC2485h abstractC2485h = a;
            if (a instanceof C2669v) {
                abstractC2485h = ((C2669v) a).m13910c();
            }
            try {
                mo14324a((AbstractC2546a<R, A>) abstractC2485h);
            } catch (DeadObjectException e) {
                m14325a(e);
                throw e;
            } catch (RemoteException e2) {
                m14325a(e2);
            }
        }
    }
}
