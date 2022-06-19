package com.google.android.gms.location;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.location.AbstractBinderC13330e;
import com.google.android.gms.internal.location.zzaa;
import com.google.android.gms.tasks.C14186i;
/* renamed from: com.google.android.gms.location.l */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/l.class */
class BinderC13762l extends AbstractBinderC13330e {

    /* renamed from: a */
    private final C14186i<Void> f51111a;

    public BinderC13762l(C14186i<Void> c14186i) {
        this.f51111a = c14186i;
    }

    @Override // com.google.android.gms.internal.location.AbstractC13331f
    /* renamed from: a */
    public final void mo12268a(zzaa zzaaVar) {
        Status status = zzaaVar.getStatus();
        C14186i<Void> c14186i = this.f51111a;
        if (status.isSuccess()) {
            c14186i.m11471a((C14186i<Void>) null);
        } else {
            c14186i.m11472a(new ApiException(status));
        }
    }

    /* renamed from: b */
    public void mo12267b() {
    }
}
