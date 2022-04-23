package com.google.android.gms.location;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.location.e;
import com.google.android.gms.internal.location.zzaa;
import com.google.android.gms.tasks.i;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/l.class */
class l extends e {

    /* renamed from: a  reason: collision with root package name */
    private final i<Void> f29338a;

    public l(i<Void> iVar) {
        this.f29338a = iVar;
    }

    @Override // com.google.android.gms.internal.location.f
    public final void a(zzaa zzaaVar) {
        Status status = zzaaVar.getStatus();
        i<Void> iVar = this.f29338a;
        if (status.isSuccess()) {
            iVar.a((i<Void>) null);
        } else {
            iVar.a(new ApiException(status));
        }
    }

    public void b() {
    }
}
