package com.google.android.gms.maps;

import android.os.RemoteException;
import com.google.android.gms.maps.a.b;
import com.google.android.gms.maps.a.q;
import com.google.android.gms.maps.i;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/r.class */
final class r extends q {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ e f29380a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(i.a aVar, e eVar) {
        this.f29380a = eVar;
    }

    @Override // com.google.android.gms.maps.a.p
    public final void a(b bVar) throws RemoteException {
        this.f29380a.onMapReady(new c(bVar));
    }
}
