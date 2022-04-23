package com.google.android.gms.maps;

import android.graphics.Bitmap;
import android.os.RemoteException;
import com.google.android.gms.dynamic.b;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.maps.a.v;
import com.google.android.gms.maps.c;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/u.class */
public final class u extends v {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ c.AbstractC0480c f29383a;

    public u(c cVar, c.AbstractC0480c cVar2) {
        this.f29383a = cVar2;
    }

    @Override // com.google.android.gms.maps.a.u
    public final void a(Bitmap bitmap) throws RemoteException {
        this.f29383a.onSnapshotReady(bitmap);
    }

    @Override // com.google.android.gms.maps.a.u
    public final void a(b bVar) throws RemoteException {
        this.f29383a.onSnapshotReady((Bitmap) d.a(bVar));
    }
}
