package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Pair;
import com.callapp.contacts.model.Constants;
import com.google.android.gms.common.internal.o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.stats.a;
import com.google.android.gms.internal.measurement.jy;
import com.google.android.gms.internal.measurement.nc;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ik.class */
public final class ik extends ec {

    /* renamed from: b  reason: collision with root package name */
    df f29842b;

    /* renamed from: c  reason: collision with root package name */
    volatile Boolean f29843c;

    /* renamed from: d  reason: collision with root package name */
    private final l f29844d;
    private final ja e;
    private final l g;
    private final List<Runnable> f = new ArrayList();

    /* renamed from: a  reason: collision with root package name */
    final ij f29841a = new ij(this);

    /* JADX INFO: Access modifiers changed from: protected */
    public ik(es esVar) {
        super(esVar);
        this.e = new ja(esVar.j);
        this.f29844d = new ht(this, esVar);
        this.g = new hv(this, esVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(ik ikVar, ComponentName componentName) {
        ikVar.S_();
        if (ikVar.f29842b != null) {
            ikVar.f29842b = null;
            ikVar.t.c().k.a("Disconnected from device MeasurementService", componentName);
            ikVar.S_();
            ikVar.n();
        }
    }

    private final void a(Runnable runnable) throws IllegalStateException {
        S_();
        if (e()) {
            runnable.run();
        } else if (this.f.size() >= 1000) {
            this.t.c().f29506c.a("Discarding data. Max runnable queue size reached");
        } else {
            this.f.add(runnable);
            this.g.a(Constants.MINUTE_IN_MILLIS);
            n();
        }
    }

    private final zzp b(boolean z) {
        dg o = this.t.o();
        String str = null;
        if (z) {
            Cdo c2 = this.t.c();
            if (c2.t.b().f29553c == null) {
                str = null;
            } else {
                Pair<String, Long> a2 = c2.t.b().f29553c.a();
                str = null;
                if (a2 != null) {
                    if (a2 == ee.f29551a) {
                        str = null;
                    } else {
                        String valueOf = String.valueOf(a2.second);
                        String str2 = (String) a2.first;
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(str2).length());
                        sb.append(valueOf);
                        sb.append(":");
                        sb.append(str2);
                        str = sb.toString();
                    }
                }
            }
        }
        return o.a(str);
    }

    public final void a(Bundle bundle) {
        S_();
        k();
        a(new hs(this, b(false), bundle));
    }

    public final void a(nc ncVar) {
        S_();
        k();
        a(new hp(this, b(false), ncVar));
    }

    public final void a(nc ncVar, zzas zzasVar, String str) {
        S_();
        k();
        if (this.t.g().o() != 0) {
            this.t.c().f.a("Not bundling data. Service unavailable or out of date");
            this.t.g().a(ncVar, new byte[0]);
            return;
        }
        a(new hu(this, zzasVar, str, ncVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(nc ncVar, String str, String str2) {
        S_();
        k();
        a(new ib(this, str, str2, b(false), ncVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(nc ncVar, String str, String str2, boolean z) {
        S_();
        k();
        a(new hl(this, str, str2, b(false), z, ncVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(df dfVar) {
        S_();
        o.a(dfVar);
        this.f29842b = dfVar;
        i();
        q();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(df dfVar, AbstractSafeParcelable abstractSafeParcelable, zzp zzpVar) {
        S_();
        k();
        int i = 100;
        for (int i2 = 0; i2 < 1001 && i == 100; i2++) {
            ArrayList arrayList = new ArrayList();
            List<AbstractSafeParcelable> e = this.t.i().e();
            if (e != null) {
                arrayList.addAll(e);
                i = e.size();
            } else {
                i = 0;
            }
            if (abstractSafeParcelable != null && i < 100) {
                arrayList.add(abstractSafeParcelable);
            }
            int size = arrayList.size();
            for (int i3 = 0; i3 < size; i3++) {
                AbstractSafeParcelable abstractSafeParcelable2 = (AbstractSafeParcelable) arrayList.get(i3);
                if (abstractSafeParcelable2 instanceof zzas) {
                    try {
                        dfVar.a((zzas) abstractSafeParcelable2, zzpVar);
                    } catch (RemoteException e2) {
                        this.t.c().f29506c.a("Failed to send event to the service", e2);
                    }
                } else if (abstractSafeParcelable2 instanceof zzkl) {
                    try {
                        dfVar.a((zzkl) abstractSafeParcelable2, zzpVar);
                    } catch (RemoteException e3) {
                        this.t.c().f29506c.a("Failed to send user property to the service", e3);
                    }
                } else if (abstractSafeParcelable2 instanceof zzaa) {
                    try {
                        dfVar.a((zzaa) abstractSafeParcelable2, zzpVar);
                    } catch (RemoteException e4) {
                        this.t.c().f29506c.a("Failed to send conditional user property to the service", e4);
                    }
                } else {
                    this.t.c().f29506c.a("Discarding data. Unrecognized parcel type.");
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(hc hcVar) {
        S_();
        k();
        a(new hr(this, hcVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(zzaa zzaaVar) {
        o.a(zzaaVar);
        S_();
        k();
        a(new hz(this, true, b(true), this.t.i().a(zzaaVar), new zzaa(zzaaVar), zzaaVar));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(zzas zzasVar, String str) {
        o.a(zzasVar);
        S_();
        k();
        a(new hy(this, true, b(true), this.t.i().a(zzasVar), zzasVar, str));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(zzkl zzklVar) {
        S_();
        k();
        a(new hm(this, b(true), this.t.i().a(zzklVar), zzklVar));
    }

    public final void a(AtomicReference<String> atomicReference) {
        S_();
        k();
        a(new ho(this, atomicReference, b(false)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(AtomicReference<List<zzaa>> atomicReference, String str, String str2) {
        S_();
        k();
        a(new ia(this, atomicReference, null, str, str2, b(false)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(AtomicReference<List<zzkl>> atomicReference, String str, String str2, boolean z) {
        S_();
        k();
        a(new ic(this, atomicReference, null, str, str2, b(false), z));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void a(boolean z) {
        jy.b();
        if (this.t.g.d(null, dc.au)) {
            S_();
            k();
            if (z) {
                this.t.i().ae_();
            }
            if (r()) {
                a(new hx(this, b(false)));
            }
        }
    }

    @Override // com.google.android.gms.measurement.internal.ec
    protected final boolean b() {
        return false;
    }

    public final boolean e() {
        S_();
        k();
        return this.f29842b != null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void f() {
        S_();
        k();
        a(new hw(this, b(true)));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void g() {
        S_();
        k();
        zzp b2 = b(false);
        this.t.i().ae_();
        a(new hn(this, b2));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void h() {
        S_();
        k();
        zzp b2 = b(true);
        this.t.i().a(3, new byte[0]);
        a(new hq(this, b2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void i() {
        S_();
        this.e.a();
        this.f29844d.a(dc.I.a(null).longValue());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void n() {
        S_();
        k();
        if (!e()) {
            if (o()) {
                this.f29841a.b();
            } else if (!this.t.g.g()) {
                List<ResolveInfo> queryIntentServices = this.t.f29583a.getPackageManager().queryIntentServices(new Intent().setClassName(this.t.f29583a, "com.google.android.gms.measurement.AppMeasurementService"), 65536);
                if (queryIntentServices == null || queryIntentServices.size() <= 0) {
                    this.t.c().f29506c.a("Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest");
                    return;
                }
                Intent intent = new Intent("com.google.android.gms.measurement.START");
                intent.setComponent(new ComponentName(this.t.f29583a, "com.google.android.gms.measurement.AppMeasurementService"));
                this.f29841a.a(intent);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:49:0x019b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean o() {
        /*
            Method dump skipped, instructions count: 468
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.ik.o():boolean");
    }

    public final void p() {
        S_();
        k();
        ij ijVar = this.f29841a;
        if (ijVar.f29838a != null && (ijVar.f29838a.isConnected() || ijVar.f29838a.isConnecting())) {
            ijVar.f29838a.disconnect();
        }
        ijVar.f29838a = null;
        try {
            a.a().a(this.t.f29583a, this.f29841a);
        } catch (IllegalArgumentException | IllegalStateException e) {
        }
        this.f29842b = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void q() {
        S_();
        this.t.c().k.a("Processing queued up service tasks", Integer.valueOf(this.f.size()));
        for (Runnable runnable : this.f) {
            try {
                runnable.run();
            } catch (Exception e) {
                this.t.c().f29506c.a("Task exception while flushing queue", e);
            }
        }
        this.f.clear();
        this.g.c();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean r() {
        S_();
        k();
        if (!this.t.g.d(null, dc.aw)) {
            return false;
        }
        return !o() || this.t.g().n() >= dc.ax.a(null).intValue();
    }
}
