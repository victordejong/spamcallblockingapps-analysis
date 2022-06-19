package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.internal.p359e.AbstractC13296o;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/IndoorLevel.class */
public final class IndoorLevel {
    private final AbstractC13296o zzdg;

    public IndoorLevel(AbstractC13296o abstractC13296o) {
        this.zzdg = (AbstractC13296o) C12045o.m19162a(abstractC13296o);
    }

    public final void activate() {
        try {
            this.zzdg.mo13442c();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof IndoorLevel)) {
            return false;
        }
        try {
            return this.zzdg.mo13444a(((IndoorLevel) obj).zzdg);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final String getName() {
        try {
            return this.zzdg.mo13445a();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final String getShortName() {
        try {
            return this.zzdg.mo13443b();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final int hashCode() {
        try {
            return this.zzdg.mo13441d();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}
