package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.content.ContentProviderClient;
import android.content.Context;
import android.location.Location;
import android.os.RemoteException;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.zzu;
import com.google.android.gms.location.zzx;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/location/zzas.class */
public final class zzas {
    private final zzbj<zzao> zzcb;
    private final Context zzcu;
    private ContentProviderClient zzcv = null;
    private boolean zzcw = false;
    private final Map<ListenerHolder.ListenerKey<LocationListener>, zzax> zzcx = new HashMap();
    private final Map<ListenerHolder.ListenerKey<Object>, zzaw> zzcy = new HashMap();
    private final Map<ListenerHolder.ListenerKey<LocationCallback>, zzat> zzcz = new HashMap();

    public zzas(Context context, zzbj<zzao> zzbjVar) {
        this.zzcu = context;
        this.zzcb = zzbjVar;
    }

    private final zzax zza(ListenerHolder<LocationListener> listenerHolder) {
        zzax zzaxVar;
        synchronized (this.zzcx) {
            zzax zzaxVar2 = this.zzcx.get(listenerHolder.f5765c);
            zzaxVar = zzaxVar2;
            if (zzaxVar2 == null) {
                zzaxVar = new zzax(listenerHolder);
            }
            this.zzcx.put(listenerHolder.f5765c, zzaxVar);
        }
        return zzaxVar;
    }

    private final zzat zzb(ListenerHolder<LocationCallback> listenerHolder) {
        zzat zzatVar;
        synchronized (this.zzcz) {
            zzat zzatVar2 = this.zzcz.get(listenerHolder.f5765c);
            zzatVar = zzatVar2;
            if (zzatVar2 == null) {
                zzatVar = new zzat(listenerHolder);
            }
            this.zzcz.put(listenerHolder.f5765c, zzatVar);
        }
        return zzatVar;
    }

    public final Location getLastLocation() throws RemoteException {
        this.zzcb.checkConnected();
        return this.zzcb.getService().zza(this.zzcu.getPackageName());
    }

    /* JADX WARN: Type inference failed for: r0v44, types: [com.google.android.gms.internal.location.zzaw, android.os.IInterface] */
    /* JADX WARN: Type inference failed for: r0v55, types: [com.google.android.gms.internal.location.zzat, com.google.android.gms.location.zzu] */
    /* JADX WARN: Type inference failed for: r0v63, types: [com.google.android.gms.internal.location.zzax, com.google.android.gms.location.zzx] */
    public final void removeAllListeners() throws RemoteException {
        synchronized (this.zzcx) {
            for (zzax zzaxVar : this.zzcx.values()) {
                if (zzaxVar != 0) {
                    this.zzcb.getService().zza(zzbf.zza((zzx) zzaxVar, (zzaj) null));
                }
            }
            this.zzcx.clear();
        }
        synchronized (this.zzcz) {
            for (zzat zzatVar : this.zzcz.values()) {
                if (zzatVar != 0) {
                    this.zzcb.getService().zza(zzbf.zza((zzu) zzatVar, (zzaj) null));
                }
            }
            this.zzcz.clear();
        }
        synchronized (this.zzcy) {
            for (zzaw zzawVar : this.zzcy.values()) {
                if (zzawVar != 0) {
                    this.zzcb.getService().zza(new zzo(2, null, zzawVar.asBinder(), null));
                }
            }
            this.zzcy.clear();
        }
    }

    public final LocationAvailability zza() throws RemoteException {
        this.zzcb.checkConnected();
        return this.zzcb.getService().zzb(this.zzcu.getPackageName());
    }

    public final void zza(PendingIntent pendingIntent, zzaj zzajVar) throws RemoteException {
        this.zzcb.checkConnected();
        this.zzcb.getService().zza(new zzbf(2, null, null, pendingIntent, null, zzajVar != null ? zzajVar.asBinder() : null));
    }

    public final void zza(Location location) throws RemoteException {
        this.zzcb.checkConnected();
        this.zzcb.getService().zza(location);
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [com.google.android.gms.internal.location.zzax, com.google.android.gms.location.zzx] */
    public final void zza(ListenerHolder.ListenerKey<LocationListener> listenerKey, zzaj zzajVar) throws RemoteException {
        this.zzcb.checkConnected();
        Preconditions.m38897k(listenerKey, "Invalid null listener key");
        synchronized (this.zzcx) {
            zzax remove = this.zzcx.remove(listenerKey);
            if (remove != 0) {
                remove.release();
                this.zzcb.getService().zza(zzbf.zza((zzx) remove, zzajVar));
            }
        }
    }

    public final void zza(zzaj zzajVar) throws RemoteException {
        this.zzcb.checkConnected();
        this.zzcb.getService().zza(zzajVar);
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.gms.internal.location.zzat, android.os.IInterface] */
    public final void zza(zzbd zzbdVar, ListenerHolder<LocationCallback> listenerHolder, zzaj zzajVar) throws RemoteException {
        this.zzcb.checkConnected();
        this.zzcb.getService().zza(new zzbf(1, zzbdVar, null, null, zzb(listenerHolder).asBinder(), zzajVar != null ? zzajVar.asBinder() : null));
    }

    public final void zza(LocationRequest locationRequest, PendingIntent pendingIntent, zzaj zzajVar) throws RemoteException {
        this.zzcb.checkConnected();
        this.zzcb.getService().zza(new zzbf(1, zzbd.zza(locationRequest), null, pendingIntent, null, zzajVar != null ? zzajVar.asBinder() : null));
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.gms.internal.location.zzax, android.os.IInterface] */
    public final void zza(LocationRequest locationRequest, ListenerHolder<LocationListener> listenerHolder, zzaj zzajVar) throws RemoteException {
        this.zzcb.checkConnected();
        this.zzcb.getService().zza(new zzbf(1, zzbd.zza(locationRequest), zza(listenerHolder).asBinder(), null, null, zzajVar != null ? zzajVar.asBinder() : null));
    }

    public final void zza(boolean z) throws RemoteException {
        this.zzcb.checkConnected();
        this.zzcb.getService().zza(z);
        this.zzcw = z;
    }

    public final void zzb() throws RemoteException {
        if (this.zzcw) {
            zza(false);
        }
    }

    /* JADX WARN: Type inference failed for: r0v12, types: [com.google.android.gms.internal.location.zzat, com.google.android.gms.location.zzu] */
    public final void zzb(ListenerHolder.ListenerKey<LocationCallback> listenerKey, zzaj zzajVar) throws RemoteException {
        this.zzcb.checkConnected();
        Preconditions.m38897k(listenerKey, "Invalid null listener key");
        synchronized (this.zzcz) {
            zzat remove = this.zzcz.remove(listenerKey);
            if (remove != 0) {
                remove.release();
                this.zzcb.getService().zza(zzbf.zza((zzu) remove, zzajVar));
            }
        }
    }
}
