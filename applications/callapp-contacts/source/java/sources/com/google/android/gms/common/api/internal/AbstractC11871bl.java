package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.C14186i;
/* renamed from: com.google.android.gms.common.api.internal.bl */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/bl.class */
public abstract class AbstractC11871bl<T> extends AbstractC11848ap {

    /* renamed from: a */
    protected final C14186i<T> f39298a;

    public AbstractC11871bl(int i, C14186i<T> c14186i) {
        super(i);
        this.f39298a = c14186i;
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11876bq
    /* renamed from: a */
    public final void mo19382a(Status status) {
        this.f39298a.m11470b(new ApiException(status));
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11876bq
    /* renamed from: a */
    public void mo19381a(C11916v c11916v, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11876bq
    /* renamed from: a */
    public final void mo19380a(Exception exc) {
        this.f39298a.m11470b(exc);
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11876bq
    /* renamed from: c */
    public final void mo19379c(C11838af<?> c11838af) throws DeadObjectException {
        try {
            mo19384d(c11838af);
        } catch (DeadObjectException e) {
            mo19382a(AbstractC11876bq.m19383a((RemoteException) e));
            throw e;
        } catch (RemoteException e2) {
            mo19382a(AbstractC11876bq.m19383a(e2));
        } catch (RuntimeException e3) {
            this.f39298a.m11470b(e3);
        }
    }

    /* renamed from: d */
    protected abstract void mo19384d(C11838af<?> c11838af) throws RemoteException;
}
