package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.C7968h;
/* renamed from: com.google.android.gms.common.api.internal.x0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/x0.class */
public abstract class AbstractC6072x0<T> extends AbstractC6044l0 {

    /* renamed from: b */
    protected final C7968h<T> f19366b;

    public AbstractC6072x0(int i, C7968h<T> c7968h) {
        super(i);
        this.f19366b = c7968h;
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC6014b1
    /* renamed from: a */
    public final void mo17255a(Status status) {
        this.f19366b.m5804d(new ApiException(status));
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC6014b1
    /* renamed from: b */
    public final void mo17254b(Exception exc) {
        this.f19366b.m5804d(exc);
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC6014b1
    /* renamed from: d */
    public final void mo17252d(C6017c0<?> c6017c0) {
        try {
            mo17256h(c6017c0);
        } catch (DeadObjectException e) {
            mo17255a(AbstractC6014b1.m17434e(e));
            throw e;
        } catch (RemoteException e2) {
            mo17255a(AbstractC6014b1.m17434e(e2));
        } catch (RuntimeException e3) {
            this.f19366b.m5804d(e3);
        }
    }

    /* renamed from: h */
    protected abstract void mo17256h(C6017c0<?> c6017c0);
}
