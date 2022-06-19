package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.C11899i;
import com.google.android.gms.tasks.C14186i;
/* renamed from: com.google.android.gms.common.api.internal.bn */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/bn.class */
public final class C11873bn extends AbstractC11871bl<Void> {

    /* renamed from: b */
    public final C11851as f39300b;

    public C11873bn(C11851as c11851as, C14186i<Void> c14186i) {
        super(3, c14186i);
        this.f39300b = c11851as;
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11871bl, com.google.android.gms.common.api.internal.AbstractC11876bq
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo19381a(C11916v c11916v, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11848ap
    /* renamed from: a */
    public final Feature[] mo19386a(C11838af<?> c11838af) {
        return this.f39300b.f39258a.f39385b;
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11848ap
    /* renamed from: b */
    public final boolean mo19385b(C11838af<?> c11838af) {
        return this.f39300b.f39258a.f39386c;
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11871bl
    /* renamed from: d */
    public final void mo19384d(C11838af<?> c11838af) throws RemoteException {
        this.f39300b.f39258a.mo11362a(c11838af.f39219a, this.f39298a);
        C11899i.C11900a<?> c11900a = this.f39300b.f39258a.f39384a.f39366b;
        if (c11900a != null) {
            c11838af.f39222d.put(c11900a, this.f39300b);
        }
    }
}
