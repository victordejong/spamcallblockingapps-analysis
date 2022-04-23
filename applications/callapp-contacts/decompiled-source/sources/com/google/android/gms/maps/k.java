package com.google.android.gms.maps;

import android.os.RemoteException;
import com.google.android.gms.maps.a.h;
import com.google.android.gms.maps.model.RuntimeRemoteException;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/k.class */
public final class k {

    /* renamed from: a  reason: collision with root package name */
    private final h f29375a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public k(h hVar) {
        this.f29375a = hVar;
    }

    public final void a() {
        try {
            this.f29375a.a(false);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void b() {
        try {
            this.f29375a.b(false);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final void c() {
        try {
            this.f29375a.c(false);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}
