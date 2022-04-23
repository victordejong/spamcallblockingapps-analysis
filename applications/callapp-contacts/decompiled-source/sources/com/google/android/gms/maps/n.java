package com.google.android.gms.maps;

import android.os.RemoteException;
import com.google.android.gms.maps.MapView;
import com.google.android.gms.maps.a.b;
import com.google.android.gms.maps.a.q;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/n.class */
final class n extends q {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ e f29377a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(MapView.a aVar, e eVar) {
        this.f29377a = eVar;
    }

    @Override // com.google.android.gms.maps.a.p
    public final void a(b bVar) throws RemoteException {
        this.f29377a.onMapReady(new c(bVar));
    }
}
