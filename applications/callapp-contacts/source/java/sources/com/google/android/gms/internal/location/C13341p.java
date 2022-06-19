package com.google.android.gms.internal.location;

import android.content.Context;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.AbstractC11826g;
import com.google.android.gms.common.api.internal.C11899i;
import com.google.android.gms.common.internal.C12031e;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.location.AbstractC13754d;
/* renamed from: com.google.android.gms.internal.location.p */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/location/p.class */
public final class C13341p extends C13323ak {

    /* renamed from: a */
    public final C13340o f50571a;

    public C13341p(Context context, Looper looper, AbstractC11826g.AbstractC11827a abstractC11827a, AbstractC11826g.AbstractC11828b abstractC11828b, String str, C12031e c12031e) {
        super(context, looper, abstractC11827a, abstractC11828b, str, c12031e);
        this.f50571a = new C13340o(context, this.f50559b);
    }

    /* renamed from: a */
    public final void m13327a(C11899i.C11900a<AbstractC13754d> c11900a, AbstractC13331f abstractC13331f) throws RemoteException {
        C13340o c13340o = this.f50571a;
        ((C13322aj) c13340o.f50565a).f50557a.checkConnected();
        C12045o.m19161a(c11900a, "Invalid null listener key");
        synchronized (c13340o.f50569e) {
            BinderC13336k remove = c13340o.f50569e.remove(c11900a);
            if (remove != null) {
                remove.m13328a();
                ((C13322aj) c13340o.f50565a).m13334a().mo13333a(zzbc.zzc(remove, abstractC13331f));
            }
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d, com.google.android.gms.common.api.C11808a.AbstractC11817f
    public final void disconnect() {
        synchronized (this.f50571a) {
            if (isConnected()) {
                try {
                    C13340o c13340o = this.f50571a;
                    synchronized (c13340o.f50567c) {
                        for (BinderC13339n binderC13339n : c13340o.f50567c.values()) {
                            if (binderC13339n != null) {
                                ((C13322aj) c13340o.f50565a).m13334a().mo13333a(zzbc.zza(binderC13339n, null));
                            }
                        }
                        c13340o.f50567c.clear();
                    }
                    synchronized (c13340o.f50569e) {
                        for (BinderC13336k binderC13336k : c13340o.f50569e.values()) {
                            if (binderC13336k != null) {
                                ((C13322aj) c13340o.f50565a).m13334a().mo13333a(zzbc.zzc(binderC13336k, null));
                            }
                        }
                        c13340o.f50569e.clear();
                    }
                    synchronized (c13340o.f50568d) {
                        for (BinderC13337l binderC13337l : c13340o.f50568d.values()) {
                            if (binderC13337l != null) {
                                ((C13322aj) c13340o.f50565a).m13334a().mo13332a(new zzl(2, null, binderC13337l, null));
                            }
                        }
                        c13340o.f50568d.clear();
                    }
                    C13340o c13340o2 = this.f50571a;
                    if (c13340o2.f50566b) {
                        ((C13322aj) c13340o2.f50565a).f50557a.checkConnected();
                        ((C13322aj) c13340o2.f50565a).m13334a().mo13330a(false);
                        c13340o2.f50566b = false;
                    }
                } catch (Exception e) {
                    Log.e("LocationClientImpl", "Client disconnected before listeners could be cleaned up", e);
                }
            }
            super.disconnect();
        }
    }

    @Override // com.google.android.gms.common.internal.AbstractC12025d
    public final boolean usesClientTelemetry() {
        return true;
    }
}
