package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.C11808a;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.C14186i;
/* renamed from: com.google.android.gms.common.api.internal.bo */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/bo.class */
public final class C11874bo<ResultT> extends AbstractC11848ap {

    /* renamed from: a */
    private final AbstractC11912s<C11808a.AbstractC11810b, ResultT> f39301a;

    /* renamed from: b */
    private final C14186i<ResultT> f39302b;

    /* renamed from: d */
    private final AbstractC11910q f39303d;

    public C11874bo(int i, AbstractC11912s<C11808a.AbstractC11810b, ResultT> abstractC11912s, C14186i<ResultT> c14186i, AbstractC11910q abstractC11910q) {
        super(i);
        this.f39302b = c14186i;
        this.f39301a = abstractC11912s;
        this.f39303d = abstractC11910q;
        if (i != 2 || !abstractC11912s.f39399b) {
            return;
        }
        throw new IllegalArgumentException("Best-effort write calls cannot pass methods that should auto-resolve missing features.");
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11876bq
    /* renamed from: a */
    public final void mo19382a(Status status) {
        this.f39302b.m11470b(this.f39303d.mo19317a(status));
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11876bq
    /* renamed from: a */
    public final void mo19381a(C11916v c11916v, boolean z) {
        C14186i<ResultT> c14186i = this.f39302b;
        c11916v.f39407b.put(c14186i, Boolean.valueOf(z));
        c14186i.f52142a.mo11489a(new C11888ca(c11916v, c14186i));
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11876bq
    /* renamed from: a */
    public final void mo19380a(Exception exc) {
        this.f39302b.m11470b(exc);
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11848ap
    /* renamed from: a */
    public final Feature[] mo19386a(C11838af<?> c11838af) {
        return this.f39301a.f39398a;
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11848ap
    /* renamed from: b */
    public final boolean mo19385b(C11838af<?> c11838af) {
        return this.f39301a.f39399b;
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11876bq
    /* renamed from: c */
    public final void mo19379c(C11838af<?> c11838af) throws DeadObjectException {
        try {
            this.f39301a.mo19315a(c11838af.f39219a, this.f39302b);
        } catch (DeadObjectException e) {
            throw e;
        } catch (RemoteException e2) {
            mo19382a(AbstractC11876bq.m19383a(e2));
        } catch (RuntimeException e3) {
            this.f39302b.m11470b(e3);
        }
    }
}
