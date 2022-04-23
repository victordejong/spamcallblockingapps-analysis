package com.google.android.gms.location;

import android.os.RemoteException;
import com.google.android.gms.common.api.internal.i;
import com.google.android.gms.internal.location.f;
import com.google.android.gms.internal.location.p;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/location/h.class */
public final class h extends m {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ i f29334a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ b f29335b;

    public h(b bVar, i iVar) {
        this.f29335b = bVar;
        this.f29334a = iVar;
    }

    @Override // com.google.android.gms.common.api.internal.p
    public final /* synthetic */ void a(p pVar, com.google.android.gms.tasks.i<Boolean> iVar) throws RemoteException {
        p pVar2 = pVar;
        com.google.android.gms.tasks.i<Boolean> iVar2 = iVar;
        if (this.f29339c) {
            f iVar3 = new i(this.f29335b, iVar2);
            try {
                i.a<L> aVar = this.f29334a.f22740b;
                if (aVar != 0) {
                    pVar2.a(aVar, iVar3);
                }
            } catch (RuntimeException e) {
                iVar2.b(e);
            }
        }
    }
}
