package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.internal.e.n;
import com.google.android.gms.internal.e.o;
import com.google.android.gms.internal.e.p;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/IndoorBuilding.class */
public final class IndoorBuilding {
    private final n zzdd;
    private final zza zzde;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/IndoorBuilding$zza.class */
    static final class zza {
        public static final zza zzdf = new zza();

        private zza() {
        }

        public static o zza(IBinder iBinder) {
            return p.a(iBinder);
        }

        public static IndoorLevel zza(o oVar) {
            return new IndoorLevel(oVar);
        }
    }

    public IndoorBuilding(n nVar) {
        this(nVar, zza.zzdf);
    }

    private IndoorBuilding(n nVar, zza zzaVar) {
        this.zzdd = (n) com.google.android.gms.common.internal.o.a(nVar, "delegate");
        this.zzde = (zza) com.google.android.gms.common.internal.o.a(zzaVar, "shim");
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof IndoorBuilding)) {
            return false;
        }
        try {
            return this.zzdd.e();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final int getActiveLevelIndex() {
        try {
            return this.zzdd.a();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final int getDefaultLevelIndex() {
        try {
            return this.zzdd.b();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final List<IndoorLevel> getLevels() {
        try {
            List<IBinder> c2 = this.zzdd.c();
            ArrayList arrayList = new ArrayList(c2.size());
            for (IBinder iBinder : c2) {
                arrayList.add(zza.zza(zza.zza(iBinder)));
            }
            return arrayList;
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final int hashCode() {
        try {
            return this.zzdd.f();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean isUnderground() {
        try {
            return this.zzdd.d();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}
