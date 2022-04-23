package com.google.android.gms.wearable.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.d;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/bo.class */
final class bo<T> {

    /* renamed from: a  reason: collision with root package name */
    private final Map<T, de<T>> f30089a = new HashMap();

    public final void a(IBinder iBinder) {
        bm bnVar;
        synchronized (this.f30089a) {
            if (iBinder == null) {
                bnVar = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.wearable.internal.IWearableService");
                bnVar = queryLocalInterface instanceof bm ? (bm) queryLocalInterface : new bn(iBinder);
            }
            cw cwVar = new cw();
            for (Map.Entry<T, de<T>> entry : this.f30089a.entrySet()) {
                de<T> value = entry.getValue();
                try {
                    bnVar.a(cwVar, new zzd(value));
                    if (Log.isLoggable("WearableClient", 3)) {
                        String valueOf = String.valueOf(entry.getKey());
                        String valueOf2 = String.valueOf(value);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27 + String.valueOf(valueOf2).length());
                        sb.append("onPostInitHandler: added: ");
                        sb.append(valueOf);
                        sb.append("/");
                        sb.append(valueOf2);
                    }
                } catch (RemoteException e) {
                    String valueOf3 = String.valueOf(entry.getKey());
                    String valueOf4 = String.valueOf(value);
                    StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf3).length() + 32 + String.valueOf(valueOf4).length());
                    sb2.append("onPostInitHandler: Didn't add: ");
                    sb2.append(valueOf3);
                    sb2.append("/");
                    sb2.append(valueOf4);
                    Log.w("WearableClient", sb2.toString());
                }
            }
        }
    }

    public final void a(db dbVar, d.b<Status> bVar, T t) throws RemoteException {
        synchronized (this.f30089a) {
            de<T> remove = this.f30089a.remove(t);
            if (remove == null) {
                if (Log.isLoggable("WearableClient", 2)) {
                    String valueOf = String.valueOf(t);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 25);
                    sb.append("remove Listener unknown: ");
                    sb.append(valueOf);
                }
                bVar.a(new Status(4002));
                return;
            }
            remove.a();
            if (Log.isLoggable("WearableClient", 2)) {
                String valueOf2 = String.valueOf(t);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 24);
                sb2.append("service.removeListener: ");
                sb2.append(valueOf2);
            }
            ((bm) dbVar.getService()).a(new bq(this.f30089a, t, bVar), new zzfw(remove));
        }
    }

    public final void a(db dbVar, d.b<Status> bVar, T t, de<T> deVar) throws RemoteException {
        synchronized (this.f30089a) {
            if (this.f30089a.get(t) != null) {
                if (Log.isLoggable("WearableClient", 2)) {
                    String valueOf = String.valueOf(t);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 20);
                    sb.append("duplicate listener: ");
                    sb.append(valueOf);
                }
                bVar.a(new Status(4001));
                return;
            }
            if (Log.isLoggable("WearableClient", 2)) {
                String valueOf2 = String.valueOf(t);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 14);
                sb2.append("new listener: ");
                sb2.append(valueOf2);
            }
            this.f30089a.put(t, deVar);
            try {
                ((bm) dbVar.getService()).a(new bp(this.f30089a, t, bVar), new zzd(deVar));
            } catch (RemoteException e) {
                if (Log.isLoggable("WearableClient", 3)) {
                    String valueOf3 = String.valueOf(t);
                    StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf3).length() + 39);
                    sb3.append("addListener failed, removing listener: ");
                    sb3.append(valueOf3);
                }
                this.f30089a.remove(t);
                throw e;
            }
        }
    }
}
