package com.google.android.gms.location;

import android.os.RemoteException;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.b;
import com.google.android.gms.internal.location.e;
import com.google.android.gms.internal.location.zzaa;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/i.class */
final class i extends e {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ com.google.android.gms.tasks.i f29336a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i(b bVar, com.google.android.gms.tasks.i iVar) {
        this.f29336a = iVar;
    }

    @Override // com.google.android.gms.internal.location.f
    public final void a(zzaa zzaaVar) throws RemoteException {
        Status status = zzaaVar.getStatus();
        if (status == null) {
            this.f29336a.b((Exception) new ApiException(new Status(8, "Got null status from location service")));
        } else if (status.getStatusCode() == 0) {
            this.f29336a.a((com.google.android.gms.tasks.i) Boolean.TRUE);
        } else {
            this.f29336a.b((Exception) b.a(status));
        }
    }

    @Override // com.google.android.gms.internal.location.f
    public final void b() {
    }
}
