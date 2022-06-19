package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.os.Bundle;
import android.os.RemoteException;
import android.util.Pair;
import com.callapp.contacts.model.Constants;
import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.stats.C12088a;
import com.google.android.gms.internal.measurement.AbstractC13706nc;
import com.google.android.gms.internal.measurement.C13620jy;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: com.google.android.gms.measurement.internal.ik */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/measurement/internal/ik.class */
public final class C14079ik extends AbstractC13962ec {

    /* renamed from: b */
    AbstractC13938df f51890b;

    /* renamed from: c */
    volatile Boolean f51891c;

    /* renamed from: d */
    private final AbstractC14134l f51892d;

    /* renamed from: e */
    private final C14096ja f51893e;

    /* renamed from: g */
    private final AbstractC14134l f51895g;

    /* renamed from: f */
    private final List<Runnable> f51894f = new ArrayList();

    /* renamed from: a */
    final ServiceConnectionC14078ij f51889a = new ServiceConnectionC14078ij(this);

    public C14079ik(C13979es c13979es) {
        super(c13979es);
        this.f51893e = new C14096ja(c13979es.f51532j);
        this.f51892d = new C14061ht(this, c13979es);
        this.f51895g = new C14063hv(this, c13979es);
    }

    /* renamed from: a */
    public static /* synthetic */ void m11750a(C14079ik c14079ik, ComponentName componentName) {
        c14079ik.mo11884S_();
        if (c14079ik.f51890b != null) {
            c14079ik.f51890b = null;
            c14079ik.f51637t.mo11661c().f51403k.m12091a("Disconnected from device MeasurementService", componentName);
            c14079ik.mo11884S_();
            c14079ik.m11735n();
        }
    }

    /* renamed from: a */
    private final void m11746a(Runnable runnable) throws IllegalStateException {
        mo11884S_();
        if (m11740e()) {
            runnable.run();
        } else if (this.f51894f.size() >= 1000) {
            this.f51637t.mo11661c().f51395c.m12092a("Discarding data. Max runnable queue size reached");
        } else {
            this.f51894f.add(runnable);
            this.f51895g.m11525a(Constants.MINUTE_IN_MILLIS);
            m11735n();
        }
    }

    /* renamed from: b */
    private final zzp m11741b(boolean z) {
        C13939dg m11982o = this.f51637t.m11982o();
        String str = null;
        if (z) {
            C13947do mo11661c = this.f51637t.mo11661c();
            if (mo11661c.f51637t.m11991b().f51457c == null) {
                str = null;
            } else {
                Pair<String, Long> m12051a = mo11661c.f51637t.m11991b().f51457c.m12051a();
                str = null;
                if (m12051a != null) {
                    if (m12051a == C13964ee.f51455a) {
                        str = null;
                    } else {
                        String valueOf = String.valueOf(m12051a.second);
                        String str2 = (String) m12051a.first;
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 1 + String.valueOf(str2).length());
                        sb.append(valueOf);
                        sb.append(":");
                        sb.append(str2);
                        str = sb.toString();
                    }
                }
            }
        }
        return m11982o.m12112a(str);
    }

    /* renamed from: a */
    public final void m11758a(Bundle bundle) {
        mo11884S_();
        m12046k();
        m11746a(new RunnableC14060hs(this, m11741b(false), bundle));
    }

    /* renamed from: a */
    public final void m11757a(AbstractC13706nc abstractC13706nc) {
        mo11884S_();
        m12046k();
        m11746a(new RunnableC14057hp(this, m11741b(false), abstractC13706nc));
    }

    /* renamed from: a */
    public final void m11756a(AbstractC13706nc abstractC13706nc, zzas zzasVar, String str) {
        mo11884S_();
        m12046k();
        if (this.f51637t.m11988g().m11551o() == 0) {
            m11746a(new RunnableC14062hu(this, zzasVar, str, abstractC13706nc));
            return;
        }
        this.f51637t.mo11661c().f51398f.m12092a("Not bundling data. Service unavailable or out of date");
        this.f51637t.m11988g().m11593a(abstractC13706nc, new byte[0]);
    }

    /* renamed from: a */
    public final void m11755a(AbstractC13706nc abstractC13706nc, String str, String str2) {
        mo11884S_();
        m12046k();
        m11746a(new RunnableC14070ib(this, str, str2, m11741b(false), abstractC13706nc));
    }

    /* renamed from: a */
    public final void m11754a(AbstractC13706nc abstractC13706nc, String str, String str2, boolean z) {
        mo11884S_();
        m12046k();
        m11746a(new RunnableC14053hl(this, str, str2, m11741b(false), z, abstractC13706nc));
    }

    /* renamed from: a */
    public final void m11753a(AbstractC13938df abstractC13938df) {
        mo11884S_();
        C12045o.m19162a(abstractC13938df);
        this.f51890b = abstractC13938df;
        m11736i();
        m11732q();
    }

    /* renamed from: a */
    public final void m11752a(AbstractC13938df abstractC13938df, AbstractSafeParcelable abstractSafeParcelable, zzp zzpVar) {
        mo11884S_();
        m12046k();
        int i = 100;
        for (int i2 = 0; i2 < 1001 && i == 100; i2++) {
            ArrayList arrayList = new ArrayList();
            List<AbstractSafeParcelable> m12102e = this.f51637t.m11986i().m12102e();
            if (m12102e != null) {
                arrayList.addAll(m12102e);
                i = m12102e.size();
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
                        abstractC13938df.mo11902a((zzas) abstractSafeParcelable2, zzpVar);
                    } catch (RemoteException e) {
                        this.f51637t.mo11661c().f51395c.m12091a("Failed to send event to the service", e);
                    }
                } else if (abstractSafeParcelable2 instanceof zzkl) {
                    try {
                        abstractC13938df.mo11900a((zzkl) abstractSafeParcelable2, zzpVar);
                    } catch (RemoteException e2) {
                        this.f51637t.mo11661c().f51395c.m12091a("Failed to send user property to the service", e2);
                    }
                } else if (abstractSafeParcelable2 instanceof zzaa) {
                    try {
                        abstractC13938df.mo11903a((zzaa) abstractSafeParcelable2, zzpVar);
                    } catch (RemoteException e3) {
                        this.f51637t.mo11661c().f51395c.m12091a("Failed to send conditional user property to the service", e3);
                    }
                } else {
                    this.f51637t.mo11661c().f51395c.m12092a("Discarding data. Unrecognized parcel type.");
                }
            }
        }
    }

    /* renamed from: a */
    public final void m11751a(C14044hc c14044hc) {
        mo11884S_();
        m12046k();
        m11746a(new RunnableC14059hr(this, c14044hc));
    }

    /* renamed from: a */
    public final void m11749a(zzaa zzaaVar) {
        C12045o.m19162a(zzaaVar);
        mo11884S_();
        m12046k();
        m11746a(new RunnableC14067hz(this, true, m11741b(true), this.f51637t.m11986i().m12105a(zzaaVar), new zzaa(zzaaVar), zzaaVar));
    }

    /* renamed from: a */
    public final void m11748a(zzas zzasVar, String str) {
        C12045o.m19162a(zzasVar);
        mo11884S_();
        m12046k();
        m11746a(new RunnableC14066hy(this, true, m11741b(true), this.f51637t.m11986i().m12104a(zzasVar), zzasVar, str));
    }

    /* renamed from: a */
    public final void m11747a(zzkl zzklVar) {
        mo11884S_();
        m12046k();
        m11746a(new RunnableC14054hm(this, m11741b(true), this.f51637t.m11986i().m12103a(zzklVar), zzklVar));
    }

    /* renamed from: a */
    public final void m11745a(AtomicReference<String> atomicReference) {
        mo11884S_();
        m12046k();
        m11746a(new RunnableC14056ho(this, atomicReference, m11741b(false)));
    }

    /* renamed from: a */
    public final void m11744a(AtomicReference<List<zzaa>> atomicReference, String str, String str2) {
        mo11884S_();
        m12046k();
        m11746a(new RunnableC14069ia(this, atomicReference, null, str, str2, m11741b(false)));
    }

    /* renamed from: a */
    public final void m11743a(AtomicReference<List<zzkl>> atomicReference, String str, String str2, boolean z) {
        mo11884S_();
        m12046k();
        m11746a(new RunnableC14071ic(this, atomicReference, null, str, str2, m11741b(false), z));
    }

    /* renamed from: a */
    public final void m11742a(boolean z) {
        C13620jy.m12411b();
        if (this.f51637t.f51529g.m12061d(null, C13935dc.f51333au)) {
            mo11884S_();
            m12046k();
            if (z) {
                this.f51637t.m11986i().ae_();
            }
            if (!m11731r()) {
                return;
            }
            m11746a(new RunnableC14065hx(this, m11741b(false)));
        }
    }

    @Override // com.google.android.gms.measurement.internal.AbstractC13962ec
    /* renamed from: b */
    protected final boolean mo11709b() {
        return false;
    }

    /* renamed from: e */
    public final boolean m11740e() {
        mo11884S_();
        m12046k();
        return this.f51890b != null;
    }

    /* renamed from: f */
    public final void m11739f() {
        mo11884S_();
        m12046k();
        m11746a(new RunnableC14064hw(this, m11741b(true)));
    }

    /* renamed from: g */
    public final void m11738g() {
        mo11884S_();
        m12046k();
        zzp m11741b = m11741b(false);
        this.f51637t.m11986i().ae_();
        m11746a(new RunnableC14055hn(this, m11741b));
    }

    /* renamed from: h */
    public final void m11737h() {
        mo11884S_();
        m12046k();
        zzp m11741b = m11741b(true);
        this.f51637t.m11986i().m12106a(3, new byte[0]);
        m11746a(new RunnableC14058hq(this, m11741b));
    }

    /* renamed from: i */
    public final void m11736i() {
        mo11884S_();
        this.f51893e.m11704a();
        this.f51892d.m11525a(C13935dc.f51286I.m12117a(null).longValue());
    }

    /* renamed from: n */
    public final void m11735n() {
        mo11884S_();
        m12046k();
        if (m11740e()) {
            return;
        }
        if (m11734o()) {
            this.f51889a.m11759b();
        } else if (this.f51637t.f51529g.m12057g()) {
        } else {
            List<ResolveInfo> queryIntentServices = this.f51637t.f51523a.getPackageManager().queryIntentServices(new Intent().setClassName(this.f51637t.f51523a, "com.google.android.gms.measurement.AppMeasurementService"), 65536);
            if (queryIntentServices == null || queryIntentServices.size() <= 0) {
                this.f51637t.mo11661c().f51395c.m12092a("Unable to use remote or local measurement implementation. Please register the AppMeasurementService service in the app manifest");
                return;
            }
            Intent intent = new Intent("com.google.android.gms.measurement.START");
            intent.setComponent(new ComponentName(this.f51637t.f51523a, "com.google.android.gms.measurement.AppMeasurementService"));
            this.f51889a.m11762a(intent);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:49:0x019b  */
    /* renamed from: o */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m11734o() {
        /*
            Method dump skipped, instructions count: 468
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.C14079ik.m11734o():boolean");
    }

    /* renamed from: p */
    public final void m11733p() {
        mo11884S_();
        m12046k();
        ServiceConnectionC14078ij serviceConnectionC14078ij = this.f51889a;
        if (serviceConnectionC14078ij.f51886a != null && (serviceConnectionC14078ij.f51886a.isConnected() || serviceConnectionC14078ij.f51886a.isConnecting())) {
            serviceConnectionC14078ij.f51886a.disconnect();
        }
        serviceConnectionC14078ij.f51886a = null;
        try {
            C12088a.m19072a().m19070a(this.f51637t.f51523a, this.f51889a);
        } catch (IllegalArgumentException | IllegalStateException e) {
        }
        this.f51890b = null;
    }

    /* renamed from: q */
    public final void m11732q() {
        mo11884S_();
        this.f51637t.mo11661c().f51403k.m12091a("Processing queued up service tasks", Integer.valueOf(this.f51894f.size()));
        for (Runnable runnable : this.f51894f) {
            try {
                runnable.run();
            } catch (Exception e) {
                this.f51637t.mo11661c().f51395c.m12091a("Task exception while flushing queue", e);
            }
        }
        this.f51894f.clear();
        this.f51895g.m11522c();
    }

    /* renamed from: r */
    public final boolean m11731r() {
        mo11884S_();
        m12046k();
        if (!this.f51637t.f51529g.m12061d(null, C13935dc.f51335aw)) {
            return false;
        }
        return !m11734o() || this.f51637t.m11988g().m11552n() >= C13935dc.f51336ax.m12117a(null).intValue();
    }
}
