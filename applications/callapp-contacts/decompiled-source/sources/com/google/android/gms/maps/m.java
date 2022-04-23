package com.google.android.gms.maps;

import android.os.RemoteException;
import com.google.android.gms.maps.MapFragment;
import com.google.android.gms.maps.a.b;
import com.google.android.gms.maps.a.q;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/m.class */
final class m extends q {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ e f29376a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m(MapFragment.a aVar, e eVar) {
        this.f29376a = eVar;
    }

    @Override // com.google.android.gms.maps.a.p
    public final void a(b bVar) throws RemoteException {
        this.f29376a.onMapReady(new c(bVar));
    }
}
