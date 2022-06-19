package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.Feature;
import com.google.android.gms.tasks.C7968h;
/* renamed from: com.google.android.gms.common.api.internal.a1 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/common/api/internal/a1.class */
public final class C6011a1 extends AbstractC6072x0<Boolean> {

    /* renamed from: c */
    public final C6034i<?> f19218c;

    public C6011a1(C6034i<?> c6034i, C7968h<Boolean> c7968h) {
        super(4, c7968h);
        this.f19218c = c6034i;
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC6014b1
    /* renamed from: c */
    public final /* bridge */ /* synthetic */ void mo17253c(C6061s c6061s, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC6044l0
    /* renamed from: f */
    public final Feature[] mo17251f(C6017c0<?> c6017c0) {
        if (c6017c0.m17395t().get(this.f19218c) == null) {
            return null;
        }
        throw null;
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC6044l0
    /* renamed from: g */
    public final boolean mo17250g(C6017c0<?> c6017c0) {
        if (c6017c0.m17395t().get(this.f19218c) == null) {
            return false;
        }
        throw null;
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC6072x0
    /* renamed from: h */
    public final void mo17256h(C6017c0<?> c6017c0) {
        if (c6017c0.m17395t().remove(this.f19218c) == null) {
            this.f19366b.m5803e(Boolean.FALSE);
        } else {
            c6017c0.m17396s();
            throw null;
        }
    }
}
