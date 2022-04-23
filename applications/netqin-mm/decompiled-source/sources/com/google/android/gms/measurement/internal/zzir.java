package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.stats.ConnectionTracker;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.measurement.zzml;
import com.google.android.gms.internal.measurement.zzw;
import com.google.common.collect.MapMakerInternalMap;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4687f;
import p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4827u3;
import p131c.p161d.p170b.p224d.p260i.p261a.C4722i6;
import p131c.p161d.p170b.p224d.p260i.p261a.C4723i7;
import p131c.p161d.p170b.p224d.p260i.p261a.C4874z5;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4644a6;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4654b6;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4664c6;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4674d6;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4684e6;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4694f6;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4704g6;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4731j6;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4740k6;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4749l6;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4758m6;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4767n6;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4776o6;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4785p6;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4794q6;
import p131c.p161d.p170b.p224d.p260i.p261a.RunnableC4803r6;
@VisibleForTesting
/* loaded from: classes-dex2jar.jar:com/google/android/gms/measurement/internal/zzir.class */
public final class zzir extends AbstractC4827u3 {

    /* renamed from: d */
    public zzei f30089d;

    /* renamed from: e */
    public volatile Boolean f30090e;

    /* renamed from: f */
    public final AbstractC4687f f30091f;

    /* renamed from: g */
    public final C4723i7 f30092g;

    /* renamed from: i */
    public final AbstractC4687f f30094i;

    /* renamed from: h */
    public final List<Runnable> f30093h = new ArrayList();

    /* renamed from: c */
    public final zzjl f30088c = new zzjl(this);

    public zzir(zzfu zzfuVar) {
        super(zzfuVar);
        this.f30092g = new C4723i7(zzfuVar.mo8779z());
        this.f30091f = new C4874z5(this, zzfuVar);
        this.f30094i = new C4722i6(this, zzfuVar);
    }

    /* renamed from: A */
    public final void m8920A() {
        mo9085c();
        m24876t();
        m8893a(new RunnableC4740k6(this, m8887b(true)));
    }

    /* renamed from: C */
    public final void m8919C() {
        mo9085c();
        m24876t();
        zzn b = m8887b(false);
        m24883q().m9184y();
        m8893a(new RunnableC4664c6(this, b));
    }

    /* renamed from: D */
    public final void m8918D() {
        mo9085c();
        m24876t();
        zzn b = m8887b(true);
        m24883q().m9194A();
        m8893a(new RunnableC4704g6(this, b));
    }

    /* renamed from: E */
    public final void m8917E() {
        mo9085c();
        m24876t();
        if (!m8883y()) {
            if (m8911K()) {
                this.f30088c.m8879b();
            } else if (!m24897h().m9326t()) {
                List<ResolveInfo> queryIntentServices = mo8846B().getPackageManager().queryIntentServices(new Intent().setClassName(mo8846B(), "com.google.android.gms.measurement.AppMeasurementService"), MapMakerInternalMap.MAX_SEGMENTS);
                if (queryIntentServices != null && queryIntentServices.size() > 0) {
                    Intent intent = new Intent("com.google.android.gms.measurement.START");
                    intent.setComponent(new ComponentName(mo8846B(), "com.google.android.gms.measurement.AppMeasurementService"));
                    this.f30088c.m8881a(intent);
                    return;
                }
                mo8789p().m9152q().m9143a("Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest");
            }
        }
    }

    /* renamed from: F */
    public final Boolean m8916F() {
        return this.f30090e;
    }

    /* renamed from: G */
    public final void m8915G() {
        mo9085c();
        m24876t();
        this.f30088c.m8882a();
        try {
            ConnectionTracker.m17130a().m17128a(mo8846B(), this.f30088c);
        } catch (IllegalArgumentException | IllegalStateException e) {
        }
        this.f30089d = null;
    }

    /* renamed from: H */
    public final boolean m8914H() {
        mo9085c();
        m24876t();
        return !m8911K() || m24899f().m8673s() >= 200900;
    }

    /* renamed from: I */
    public final boolean m8913I() {
        mo9085c();
        m24876t();
        if (!m24897h().m9354a(zzas.f29835J0)) {
            return false;
        }
        return !m8911K() || m24899f().m8673s() >= zzas.f29837K0.m9196a(null).intValue();
    }

    /* renamed from: J */
    public final void m8912J() {
        mo9085c();
        this.f30092g.m24937a();
        this.f30091f.m25025a(zzas.f29834J.m9196a(null).longValue());
    }

    /* JADX WARN: Removed duplicated region for block: B:41:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x0155  */
    /* renamed from: K */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m8911K() {
        /*
            Method dump skipped, instructions count: 369
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.zzir.m8911K():boolean");
    }

    /* renamed from: L */
    public final void m8910L() {
        mo9085c();
        if (m8883y()) {
            mo8789p().m9144y().m9143a("Inactivity, disconnecting from the service");
            m8915G();
        }
    }

    /* renamed from: M */
    public final void m8909M() {
        mo9085c();
        mo8789p().m9144y().m9142a("Processing queued up service tasks", Integer.valueOf(this.f30093h.size()));
        for (Runnable runnable : this.f30093h) {
            try {
                runnable.run();
            } catch (Exception e) {
                mo8789p().m9152q().m9142a("Task exception while flushing queue", e);
            }
        }
        this.f30093h.clear();
        this.f30094i.m25022c();
    }

    /* renamed from: a */
    public final void m8908a(ComponentName componentName) {
        mo9085c();
        if (this.f30089d != null) {
            this.f30089d = null;
            mo8789p().m9144y().m9142a("Disconnected from device MeasurementService", componentName);
            mo9085c();
            m8917E();
        }
    }

    /* renamed from: a */
    public final void m8907a(Bundle bundle) {
        mo9085c();
        m24876t();
        m8893a(new RunnableC4731j6(this, bundle, m8887b(false)));
    }

    /* renamed from: a */
    public final void m8906a(zzw zzwVar) {
        mo9085c();
        m24876t();
        m8893a(new RunnableC4674d6(this, m8887b(false), zzwVar));
    }

    /* renamed from: a */
    public final void m8905a(zzw zzwVar, zzaq zzaqVar, String str) {
        mo9085c();
        m24876t();
        if (m24899f().m8744a(GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE) != 0) {
            mo8789p().m9149t().m9143a("Not bundling data. Service unavailable or out of date");
            m24899f().m8721a(zzwVar, new byte[0]);
            return;
        }
        m8893a(new RunnableC4749l6(this, zzaqVar, str, zzwVar));
    }

    /* renamed from: a */
    public final void m8904a(zzw zzwVar, String str, String str2) {
        mo9085c();
        m24876t();
        m8893a(new RunnableC4803r6(this, str, str2, m8887b(false), zzwVar));
    }

    /* renamed from: a */
    public final void m8903a(zzw zzwVar, String str, String str2, boolean z) {
        mo9085c();
        m24876t();
        m8893a(new RunnableC4654b6(this, str, str2, z, m8887b(false), zzwVar));
    }

    /* renamed from: a */
    public final void m8902a(zzaq zzaqVar, String str) {
        Preconditions.m17288a(zzaqVar);
        mo9085c();
        m24876t();
        m8893a(new RunnableC4758m6(this, true, m24883q().m9187a(zzaqVar), zzaqVar, m8887b(true), str));
    }

    @VisibleForTesting
    /* renamed from: a */
    public final void m8901a(zzei zzeiVar) {
        mo9085c();
        Preconditions.m17288a(zzeiVar);
        this.f30089d = zzeiVar;
        m8912J();
        m8909M();
    }

    @VisibleForTesting
    /* renamed from: a */
    public final void m8900a(zzei zzeiVar, AbstractSafeParcelable abstractSafeParcelable, zzn zznVar) {
        mo9085c();
        m24876t();
        int i = 100;
        for (int i2 = 0; i2 < 1001 && i == 100; i2++) {
            ArrayList arrayList = new ArrayList();
            List<AbstractSafeParcelable> a = m24883q().m9190a(100);
            if (a != null) {
                arrayList.addAll(a);
                i = a.size();
            } else {
                i = 0;
            }
            if (abstractSafeParcelable != null && i < 100) {
                arrayList.add(abstractSafeParcelable);
            }
            int size = arrayList.size();
            int i3 = 0;
            while (i3 < size) {
                Object obj = arrayList.get(i3);
                i3++;
                AbstractSafeParcelable abstractSafeParcelable2 = (AbstractSafeParcelable) obj;
                if (abstractSafeParcelable2 instanceof zzaq) {
                    try {
                        zzeiVar.mo9035a((zzaq) abstractSafeParcelable2, zznVar);
                    } catch (RemoteException e) {
                        mo8789p().m9152q().m9142a("Failed to send event to the service", e);
                    }
                } else if (abstractSafeParcelable2 instanceof zzku) {
                    try {
                        zzeiVar.mo9031a((zzku) abstractSafeParcelable2, zznVar);
                    } catch (RemoteException e2) {
                        mo8789p().m9152q().m9142a("Failed to send user property to the service", e2);
                    }
                } else if (abstractSafeParcelable2 instanceof zzz) {
                    try {
                        zzeiVar.mo9026a((zzz) abstractSafeParcelable2, zznVar);
                    } catch (RemoteException e3) {
                        mo8789p().m9152q().m9142a("Failed to send conditional user property to the service", e3);
                    }
                } else {
                    mo8789p().m9152q().m9143a("Discarding data. Unrecognized parcel type.");
                }
            }
        }
    }

    /* renamed from: a */
    public final void m8899a(zzij zzijVar) {
        mo9085c();
        m24876t();
        m8893a(new RunnableC4694f6(this, zzijVar));
    }

    /* renamed from: a */
    public final void m8895a(zzku zzkuVar) {
        mo9085c();
        m24876t();
        m8893a(new RunnableC4644a6(this, m24883q().m9186a(zzkuVar), zzkuVar, m8887b(true)));
    }

    /* renamed from: a */
    public final void m8894a(zzz zzzVar) {
        Preconditions.m17288a(zzzVar);
        mo9085c();
        m24876t();
        m8893a(new RunnableC4785p6(this, true, m24883q().m9185a(zzzVar), new zzz(zzzVar), m8887b(true), zzzVar));
    }

    /* renamed from: a */
    public final void m8893a(Runnable runnable) throws IllegalStateException {
        mo9085c();
        if (m8883y()) {
            runnable.run();
        } else if (this.f30093h.size() >= 1000) {
            mo8789p().m9152q().m9143a("Discarding data. Max runnable queue size reached");
        } else {
            this.f30093h.add(runnable);
            this.f30094i.m25025a(60000L);
            m8917E();
        }
    }

    /* renamed from: a */
    public final void m8892a(AtomicReference<String> atomicReference) {
        mo9085c();
        m24876t();
        m8893a(new RunnableC4684e6(this, atomicReference, m8887b(false)));
    }

    /* renamed from: a */
    public final void m8891a(AtomicReference<List<zzz>> atomicReference, String str, String str2, String str3) {
        mo9085c();
        m24876t();
        m8893a(new RunnableC4776o6(this, atomicReference, str, str2, str3, m8887b(false)));
    }

    /* renamed from: a */
    public final void m8890a(AtomicReference<List<zzku>> atomicReference, String str, String str2, String str3, boolean z) {
        mo9085c();
        m24876t();
        m8893a(new RunnableC4794q6(this, atomicReference, str, str2, str3, z, m8887b(false)));
    }

    /* renamed from: a */
    public final void m8889a(boolean z) {
        if (zzml.m9520a() && m24897h().m9354a(zzas.f29831H0)) {
            mo9085c();
            m24876t();
            if (z) {
                m24883q().m9184y();
            }
            if (m8913I()) {
                m8893a(new RunnableC4767n6(this, m8887b(false)));
            }
        }
    }

    /* renamed from: b */
    public final zzn m8887b(boolean z) {
        return m24886m().m9176a(z ? mo8789p().m9165A() : null);
    }

    @Override // p131c.p161d.p170b.p224d.p260i.p261a.AbstractC4827u3
    /* renamed from: w */
    public final boolean mo8854w() {
        return false;
    }

    /* renamed from: y */
    public final boolean m8883y() {
        mo9085c();
        m24876t();
        return this.f30089d != null;
    }
}
