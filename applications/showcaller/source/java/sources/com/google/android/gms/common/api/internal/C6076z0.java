package com.google.android.gms.common.api.internal;

import android.os.DeadObjectException;
import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.C5984a;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.tasks.C7968h;
/* renamed from: com.google.android.gms.common.api.internal.z0 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/z0.class */
public final class C6076z0<ResultT> extends AbstractC6044l0 {

    /* renamed from: b */
    private final AbstractC6056q<C5984a.AbstractC5986b, ResultT> f19371b;

    /* renamed from: c */
    private final C7968h<ResultT> f19372c;

    /* renamed from: d */
    private final AbstractC6052o f19373d;

    public C6076z0(int i, AbstractC6056q<C5984a.AbstractC5986b, ResultT> abstractC6056q, C7968h<ResultT> c7968h, AbstractC6052o abstractC6052o) {
        super(i);
        this.f19372c = c7968h;
        this.f19371b = abstractC6056q;
        this.f19373d = abstractC6052o;
        if (i != 2 || !abstractC6056q.m17295c()) {
            return;
        }
        throw new IllegalArgumentException("Best-effort write calls cannot pass methods that should auto-resolve missing features.");
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC6014b1
    /* renamed from: a */
    public final void mo17255a(Status status) {
        this.f19372c.m5804d(this.f19373d.mo17297a(status));
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC6014b1
    /* renamed from: b */
    public final void mo17254b(Exception exc) {
        this.f19372c.m5804d(exc);
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC6014b1
    /* renamed from: c */
    public final void mo17253c(C6061s c6061s, boolean z) {
        c6061s.m17282b(this.f19372c, z);
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC6014b1
    /* renamed from: d */
    public final void mo17252d(C6017c0<?> c6017c0) {
        try {
            this.f19371b.mo17258b(c6017c0.m17396s(), this.f19372c);
        } catch (DeadObjectException e) {
            throw e;
        } catch (RemoteException e2) {
            mo17255a(AbstractC6014b1.m17434e(e2));
        } catch (RuntimeException e3) {
            this.f19372c.m5804d(e3);
        }
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC6044l0
    /* renamed from: f */
    public final Feature[] mo17251f(C6017c0<?> c6017c0) {
        return this.f19371b.m17294d();
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC6044l0
    /* renamed from: g */
    public final boolean mo17250g(C6017c0<?> c6017c0) {
        return this.f19371b.m17295c();
    }
}
