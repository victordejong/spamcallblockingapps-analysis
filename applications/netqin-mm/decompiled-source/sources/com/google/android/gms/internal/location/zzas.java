package com.google.android.gms.internal.location;

import android.content.Context;
import android.location.Location;
import android.os.RemoteException;
import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.location.LocationCallback;
import com.google.android.gms.location.LocationListener;
import java.util.HashMap;
import java.util.Map;
import p131c.p161d.p170b.p224d.p252g.p257e.BinderC4446a;
import p131c.p161d.p170b.p224d.p252g.p257e.BinderC4449d;
import p131c.p161d.p170b.p224d.p252g.p257e.BinderC4450e;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/zzas.class */
public final class zzas {

    /* renamed from: a */
    public final zzbj<zzao> f29359a;

    /* renamed from: b */
    public final Context f29360b;

    /* renamed from: c */
    public boolean f29361c = false;

    /* renamed from: d */
    public final Map<ListenerHolder.ListenerKey<LocationListener>, BinderC4450e> f29362d = new HashMap();

    /* renamed from: e */
    public final Map<ListenerHolder.ListenerKey<Object>, BinderC4449d> f29363e = new HashMap();

    /* renamed from: f */
    public final Map<ListenerHolder.ListenerKey<LocationCallback>, BinderC4446a> f29364f = new HashMap();

    public zzas(Context context, zzbj<zzao> zzbjVar) {
        this.f29360b = context;
        this.f29359a = zzbjVar;
    }

    /* renamed from: a */
    public final Location m10496a() throws RemoteException {
        this.f29359a.mo10487a();
        return this.f29359a.mo10486b().mo10499c(this.f29360b.getPackageName());
    }

    /* renamed from: a */
    public final void m10495a(boolean z) throws RemoteException {
        this.f29359a.mo10487a();
        this.f29359a.mo10486b().mo10498c(z);
        this.f29361c = z;
    }

    /* renamed from: b */
    public final void m10494b() throws RemoteException {
        synchronized (this.f29362d) {
            try {
                for (BinderC4450e eVar : this.f29362d.values()) {
                    if (eVar != null) {
                        this.f29359a.mo10486b().mo10501a(zzbf.m10489a(eVar, (zzaj) null));
                    }
                }
                this.f29362d.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
        synchronized (this.f29364f) {
            for (BinderC4446a aVar : this.f29364f.values()) {
                if (aVar != null) {
                    this.f29359a.mo10486b().mo10501a(zzbf.m10490a(aVar, (zzaj) null));
                }
            }
            this.f29364f.clear();
        }
        synchronized (this.f29363e) {
            for (BinderC4449d dVar : this.f29363e.values()) {
                if (dVar != null) {
                    this.f29359a.mo10486b().mo10500a(new zzo(2, null, dVar.asBinder(), null));
                }
            }
            this.f29363e.clear();
        }
    }

    /* renamed from: c */
    public final void m10493c() throws RemoteException {
        if (this.f29361c) {
            m10495a(false);
        }
    }
}
