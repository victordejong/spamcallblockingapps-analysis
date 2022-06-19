package com.google.android.gms.location;

import android.os.RemoteException;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.C12001b;
import com.google.android.gms.internal.location.AbstractBinderC13330e;
import com.google.android.gms.internal.location.zzaa;
import com.google.android.gms.tasks.C14186i;
/* renamed from: com.google.android.gms.location.i */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/i.class */
final class BinderC13759i extends AbstractBinderC13330e {

    /* renamed from: a */
    final /* synthetic */ C14186i f51109a;

    public BinderC13759i(C13752b c13752b, C14186i c14186i) {
        this.f51109a = c14186i;
    }

    @Override // com.google.android.gms.internal.location.AbstractC13331f
    /* renamed from: a */
    public final void mo12268a(zzaa zzaaVar) throws RemoteException {
        Status status = zzaaVar.getStatus();
        if (status == null) {
            this.f51109a.m11470b((Exception) new ApiException(new Status(8, "Got null status from location service")));
        } else if (status.getStatusCode() == 0) {
            this.f51109a.m11471a((C14186i) Boolean.TRUE);
        } else {
            this.f51109a.m11470b((Exception) C12001b.m19215a(status));
        }
    }

    @Override // com.google.android.gms.internal.location.AbstractC13331f
    /* renamed from: b */
    public final void mo12267b() {
    }
}
