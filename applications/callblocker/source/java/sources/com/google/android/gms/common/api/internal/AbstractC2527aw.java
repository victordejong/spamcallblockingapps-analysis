package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.C2548f;
import com.google.android.gms.tasks.C4470h;
/* renamed from: com.google.android.gms.common.api.internal.aw */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/aw.class */
public abstract class AbstractC2527aw<T> extends AbstractC2570x {

    /* renamed from: a */
    protected final C4470h<T> f7122a;

    public AbstractC2527aw(int i, C4470h<T> c4470h) {
        super(i);
        this.f7122a = c4470h;
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC2514aj
    /* renamed from: a */
    public void mo14363a(Status status) {
        this.f7122a.m3886b(new ApiException(status));
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC2514aj
    /* renamed from: a */
    public void mo14362a(C2538bg c2538bg, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC2514aj
    /* renamed from: a */
    public void mo14361a(RuntimeException runtimeException) {
        this.f7122a.m3886b(runtimeException);
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC2514aj
    /* renamed from: c */
    public final void mo14364c(C2548f.C2549a<?> c2549a) {
        Status m14392b;
        Status m14392b2;
        try {
            mo14360d(c2549a);
        } catch (DeadObjectException e) {
            m14392b2 = AbstractC2514aj.m14392b(e);
            mo14363a(m14392b2);
            throw e;
        } catch (RemoteException e2) {
            m14392b = AbstractC2514aj.m14392b(e2);
            mo14363a(m14392b);
        } catch (RuntimeException e3) {
            mo14361a(e3);
        }
    }

    /* renamed from: d */
    protected abstract void mo14360d(C2548f.C2549a<?> c2549a);
}
