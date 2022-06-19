package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.internal.p359e.AbstractBinderC13297p;
import com.google.android.gms.internal.p359e.AbstractC13295n;
import com.google.android.gms.internal.p359e.AbstractC13296o;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/IndoorBuilding.class */
public final class IndoorBuilding {
    private final AbstractC13295n zzdd;
    private final zza zzde;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/IndoorBuilding$zza.class */
    public static final class zza {
        public static final zza zzdf = new zza();

        private zza() {
        }

        public static AbstractC13296o zza(IBinder iBinder) {
            return AbstractBinderC13297p.m13446a(iBinder);
        }

        public static IndoorLevel zza(AbstractC13296o abstractC13296o) {
            return new IndoorLevel(abstractC13296o);
        }
    }

    public IndoorBuilding(AbstractC13295n abstractC13295n) {
        this(abstractC13295n, zza.zzdf);
    }

    private IndoorBuilding(AbstractC13295n abstractC13295n, zza zzaVar) {
        this.zzdd = (AbstractC13295n) C12045o.m19161a(abstractC13295n, "delegate");
        this.zzde = (zza) C12045o.m19161a(zzaVar, "shim");
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof IndoorBuilding)) {
            return false;
        }
        try {
            return this.zzdd.m13448e();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final int getActiveLevelIndex() {
        try {
            return this.zzdd.m13452a();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final int getDefaultLevelIndex() {
        try {
            return this.zzdd.m13451b();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final List<IndoorLevel> getLevels() {
        try {
            List<IBinder> m13450c = this.zzdd.m13450c();
            ArrayList arrayList = new ArrayList(m13450c.size());
            for (IBinder iBinder : m13450c) {
                arrayList.add(zza.zza(zza.zza(iBinder)));
            }
            return arrayList;
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final int hashCode() {
        try {
            return this.zzdd.m13447f();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean isUnderground() {
        try {
            return this.zzdd.m13449d();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}
