package com.google.android.gms.common.api.internal;

import android.os.RemoteException;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.api.internal.C11899i;
import com.google.android.gms.tasks.C14186i;
/* renamed from: com.google.android.gms.common.api.internal.bp */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/common/api/internal/bp.class */
public final class C11875bp extends AbstractC11871bl<Boolean> {

    /* renamed from: b */
    public final C11899i.C11900a<?> f39304b;

    public C11875bp(C11899i.C11900a<?> c11900a, C14186i<Boolean> c14186i) {
        super(4, c14186i);
        this.f39304b = c11900a;
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11871bl, com.google.android.gms.common.api.internal.AbstractC11876bq
    /* renamed from: a */
    public final /* bridge */ /* synthetic */ void mo19381a(C11916v c11916v, boolean z) {
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11848ap
    /* renamed from: a */
    public final Feature[] mo19386a(C11838af<?> c11838af) {
        C11851as c11851as = c11838af.f39222d.get(this.f39304b);
        if (c11851as == null) {
            return null;
        }
        return c11851as.f39258a.f39385b;
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11848ap
    /* renamed from: b */
    public final boolean mo19385b(C11838af<?> c11838af) {
        C11851as c11851as = c11838af.f39222d.get(this.f39304b);
        return c11851as != null && c11851as.f39258a.f39386c;
    }

    @Override // com.google.android.gms.common.api.internal.AbstractC11871bl
    /* renamed from: d */
    public final void mo19384d(C11838af<?> c11838af) throws RemoteException {
        C11851as remove = c11838af.f39222d.remove(this.f39304b);
        if (remove == null) {
            this.f39298a.m11469b((C14186i<T>) Boolean.FALSE);
            return;
        }
        remove.f39259b.mo11361a(c11838af.f39219a, this.f39298a);
        remove.f39258a.f39384a.m19324a();
    }
}
