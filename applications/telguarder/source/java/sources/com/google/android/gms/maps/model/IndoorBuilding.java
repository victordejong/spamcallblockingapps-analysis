package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.maps.zzn;
import com.google.android.gms.internal.maps.zzq;
import com.google.android.gms.internal.maps.zzr;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/IndoorBuilding.class */
public final class IndoorBuilding {
    private final zzn zzdd;
    private final zza zzde;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/maps/model/IndoorBuilding$zza.class */
    public static final class zza {
        public static final zza zzdf = new zza();

        private zza() {
        }

        public static zzq zza(IBinder iBinder) {
            return zzr.zzf(iBinder);
        }

        public static IndoorLevel zza(zzq zzqVar) {
            return new IndoorLevel(zzqVar);
        }
    }

    public IndoorBuilding(zzn zznVar) {
        this(zznVar, zza.zzdf);
    }

    private IndoorBuilding(zzn zznVar, zza zzaVar) {
        this.zzdd = (zzn) Preconditions.checkNotNull(zznVar, "delegate");
        this.zzde = (zza) Preconditions.checkNotNull(zzaVar, "shim");
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof IndoorBuilding)) {
            return false;
        }
        try {
            return this.zzdd.zzb(((IndoorBuilding) obj).zzdd);
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final int getActiveLevelIndex() {
        try {
            return this.zzdd.getActiveLevelIndex();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final int getDefaultLevelIndex() {
        try {
            return this.zzdd.getDefaultLevelIndex();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final List<IndoorLevel> getLevels() {
        try {
            List<IBinder> levels = this.zzdd.getLevels();
            ArrayList arrayList = new ArrayList(levels.size());
            for (IBinder iBinder : levels) {
                arrayList.add(zza.zza(zza.zza(iBinder)));
            }
            return arrayList;
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final int hashCode() {
        try {
            return this.zzdd.zzj();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }

    public final boolean isUnderground() {
        try {
            return this.zzdd.isUnderground();
        } catch (RemoteException e) {
            throw new RuntimeRemoteException(e);
        }
    }
}
