package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.internal.e.o;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/IndoorLevel.class */
public final class IndoorLevel {
    private final o zzdg;

    public IndoorLevel(o oVar) {
        this.zzdg = (o) com.google.android.gms.common.internal.o.a(oVar);
    }

    public final void activate() {
        try {
            this.zzdg.c();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof IndoorLevel)) {
            return false;
        }
        try {
            return this.zzdg.a(((IndoorLevel) obj).zzdg);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final String getName() {
        try {
            return this.zzdg.a();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final String getShortName() {
        try {
            return this.zzdg.b();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final int hashCode() {
        try {
            return this.zzdg.d();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}
