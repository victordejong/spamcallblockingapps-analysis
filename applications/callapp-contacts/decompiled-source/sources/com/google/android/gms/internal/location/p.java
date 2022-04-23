package com.google.android.gms.internal.location;

import android.content.Context;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.g;
import com.google.android.gms.common.api.internal.i;
import com.google.android.gms.common.internal.e;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.location.d;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/p.class */
public final class p extends ak {

    /* renamed from: a  reason: collision with root package name */
    public final o f28909a;

    public p(Context context, Looper looper, g.a aVar, g.b bVar, String str, e eVar) {
        super(context, looper, aVar, bVar, str, eVar);
        this.f28909a = new o(context, this.f28899b);
    }

    public final void a(i.a<d> aVar, f fVar) throws RemoteException {
        o oVar = this.f28909a;
        ((aj) oVar.f28905a).f28897a.checkConnected();
        o.a(aVar, "Invalid null listener key");
        synchronized (oVar.e) {
            k remove = oVar.e.remove(aVar);
            if (remove != null) {
                remove.a();
                ((aj) oVar.f28905a).a().a(zzbc.zzc(remove, fVar));
            }
        }
    }

    @Override // com.google.android.gms.common.internal.d, com.google.android.gms.common.api.a.f
    public final void disconnect() {
        synchronized (this.f28909a) {
            if (isConnected()) {
                try {
                    o oVar = this.f28909a;
                    synchronized (oVar.f28907c) {
                        for (n nVar : oVar.f28907c.values()) {
                            if (nVar != null) {
                                ((aj) oVar.f28905a).a().a(zzbc.zza(nVar, null));
                            }
                        }
                        oVar.f28907c.clear();
                    }
                    synchronized (oVar.e) {
                        for (k kVar : oVar.e.values()) {
                            if (kVar != null) {
                                ((aj) oVar.f28905a).a().a(zzbc.zzc(kVar, null));
                            }
                        }
                        oVar.e.clear();
                    }
                    synchronized (oVar.f28908d) {
                        for (l lVar : oVar.f28908d.values()) {
                            if (lVar != null) {
                                ((aj) oVar.f28905a).a().a(new zzl(2, null, lVar, null));
                            }
                        }
                        oVar.f28908d.clear();
                    }
                    o oVar2 = this.f28909a;
                    if (oVar2.f28906b) {
                        ((aj) oVar2.f28905a).f28897a.checkConnected();
                        ((aj) oVar2.f28905a).a().a(false);
                        oVar2.f28906b = false;
                    }
                } catch (Exception e) {
                    Log.e("LocationClientImpl", "Client disconnected before listeners could be cleaned up", e);
                }
            }
            super.disconnect();
        }
    }

    @Override // com.google.android.gms.common.internal.d
    public final boolean usesClientTelemetry() {
        return true;
    }
}
