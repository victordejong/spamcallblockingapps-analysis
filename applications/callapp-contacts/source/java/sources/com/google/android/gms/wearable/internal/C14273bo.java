package com.google.android.gms.wearable.internal;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.C11892d;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.google.android.gms.wearable.internal.bo */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/bo.class */
public final class C14273bo<T> {

    /* renamed from: a */
    private final Map<T, BinderC14317de<T>> f52226a = new HashMap();

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [com.google.android.gms.wearable.internal.bm] */
    /* renamed from: a */
    public final void m11406a(IBinder iBinder) {
        C14272bn c14272bn;
        synchronized (this.f52226a) {
            if (iBinder == null) {
                c14272bn = null;
            } else {
                IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.wearable.internal.IWearableService");
                c14272bn = queryLocalInterface instanceof AbstractC14271bm ? (AbstractC14271bm) queryLocalInterface : new C14272bn(iBinder);
            }
            BinderC14308cw binderC14308cw = new BinderC14308cw();
            for (Map.Entry<T, BinderC14317de<T>> entry : this.f52226a.entrySet()) {
                BinderC14317de<T> value = entry.getValue();
                try {
                    c14272bn.mo11415a(binderC14308cw, new zzd(value));
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

    /* renamed from: a */
    public final void m11405a(C14314db c14314db, C11892d.AbstractC11894b<Status> abstractC11894b, T t) throws RemoteException {
        synchronized (this.f52226a) {
            BinderC14317de<T> remove = this.f52226a.remove(t);
            if (remove == null) {
                if (Log.isLoggable("WearableClient", 2)) {
                    String valueOf = String.valueOf(t);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 25);
                    sb.append("remove Listener unknown: ");
                    sb.append(valueOf);
                }
                abstractC11894b.mo11401a(new Status(4002));
                return;
            }
            remove.m11388a();
            if (Log.isLoggable("WearableClient", 2)) {
                String valueOf2 = String.valueOf(t);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 24);
                sb2.append("service.removeListener: ");
                sb2.append(valueOf2);
            }
            ((AbstractC14271bm) c14314db.getService()).mo11414a(new BinderC14275bq(this.f52226a, t, abstractC11894b), new zzfw(remove));
        }
    }

    /* renamed from: a */
    public final void m11404a(C14314db c14314db, C11892d.AbstractC11894b<Status> abstractC11894b, T t, BinderC14317de<T> binderC14317de) throws RemoteException {
        synchronized (this.f52226a) {
            if (this.f52226a.get(t) != null) {
                if (Log.isLoggable("WearableClient", 2)) {
                    String valueOf = String.valueOf(t);
                    StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 20);
                    sb.append("duplicate listener: ");
                    sb.append(valueOf);
                }
                abstractC11894b.mo11401a(new Status(4001));
                return;
            }
            if (Log.isLoggable("WearableClient", 2)) {
                String valueOf2 = String.valueOf(t);
                StringBuilder sb2 = new StringBuilder(String.valueOf(valueOf2).length() + 14);
                sb2.append("new listener: ");
                sb2.append(valueOf2);
            }
            this.f52226a.put(t, binderC14317de);
            try {
                ((AbstractC14271bm) c14314db.getService()).mo11415a(new BinderC14274bp(this.f52226a, t, abstractC11894b), new zzd(binderC14317de));
            } catch (RemoteException e) {
                if (Log.isLoggable("WearableClient", 3)) {
                    String valueOf3 = String.valueOf(t);
                    StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf3).length() + 39);
                    sb3.append("addListener failed, removing listener: ");
                    sb3.append(valueOf3);
                }
                this.f52226a.remove(t);
                throw e;
            }
        }
    }
}
