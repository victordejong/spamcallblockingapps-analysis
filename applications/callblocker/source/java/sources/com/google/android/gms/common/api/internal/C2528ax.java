package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.C2587d;
import com.google.android.gms.common.api.C2471a;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.C2548f;
import com.google.android.gms.tasks.C4470h;
/* renamed from: com.google.android.gms.common.api.internal.ax */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/ax.class */
public final class C2528ax<ResultT> extends AbstractC2570x {

    /* renamed from: a */
    private final AbstractC2562p<C2471a.AbstractC2473b, ResultT> f7123a;

    /* renamed from: b */
    private final C4470h<ResultT> f7124b;

    /* renamed from: c */
    private final AbstractC2560n f7125c;

    public C2528ax(int i, AbstractC2562p<C2471a.AbstractC2473b, ResultT> abstractC2562p, C4470h<ResultT> c4470h, AbstractC2560n abstractC2560n) {
        super(i);
        this.f7124b = c4470h;
        this.f7123a = abstractC2562p;
        this.f7125c = abstractC2560n;
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC2514aj
    /* renamed from: a */
    public final void mo14363a(Status status) {
        this.f7124b.m3886b(this.f7125c.mo14233a(status));
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC2514aj
    /* renamed from: a */
    public final void mo14362a(C2538bg c2538bg, boolean z) {
        c2538bg.m14343a(this.f7124b, z);
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC2514aj
    /* renamed from: a */
    public final void mo14361a(RuntimeException runtimeException) {
        this.f7124b.m3886b(runtimeException);
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC2570x
    /* renamed from: a */
    public final C2587d[] mo14218a(C2548f.C2549a<?> c2549a) {
        return this.f7123a.m14231a();
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC2570x
    /* renamed from: b */
    public final boolean mo14217b(C2548f.C2549a<?> c2549a) {
        return this.f7123a.m14230b();
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC2514aj
    /* renamed from: c */
    public final void mo14364c(C2548f.C2549a<?> c2549a) {
        Status m14392b;
        try {
            this.f7123a.mo2027a(c2549a.m14283b(), this.f7124b);
        } catch (DeadObjectException e) {
            throw e;
        } catch (RemoteException e2) {
            m14392b = AbstractC2514aj.m14392b(e2);
            mo14363a(m14392b);
        } catch (RuntimeException e3) {
            mo14361a(e3);
        }
    }
}
