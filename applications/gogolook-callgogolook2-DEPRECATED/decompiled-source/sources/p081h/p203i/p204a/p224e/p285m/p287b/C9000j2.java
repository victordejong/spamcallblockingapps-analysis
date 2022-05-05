package p081h.p203i.p204a.p224e.p285m.p287b;

import android.content.ComponentName;
import android.os.RemoteException;
import androidx.annotation.Nullable;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.measurement.internal.zzad;
import com.google.android.gms.measurement.internal.zzfh;
import com.google.android.gms.measurement.internal.zzh;
import com.google.android.gms.measurement.internal.zzl;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicReference;
import p081h.p203i.p204a.p224e.p235d.p240n.C7021t;
import p081h.p203i.p204a.p224e.p235d.p248r.C7064a;
/* renamed from: h.i.a.e.m.b.j2 */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/m/b/j2.class */
public final class C9000j2 extends AbstractC9055s3 {

    /* renamed from: d */
    public AbstractC8973f f20451d;

    /* renamed from: e */
    public volatile Boolean f20452e;

    /* renamed from: f */
    public final AbstractC9056s4 f20453f;

    /* renamed from: g */
    public final C9025n3 f20454g;

    /* renamed from: i */
    public final AbstractC9056s4 f20456i;

    /* renamed from: h */
    public final List<Runnable> f20455h = new ArrayList();

    /* renamed from: c */
    public final ServiceConnectionC9085x2 f20450c = new ServiceConnectionC9085x2(this);

    public C9000j2(C9052s0 s0Var) {
        super(s0Var);
        this.f20454g = new C9025n3(s0Var.mo16174e());
        this.f20453f = new C9006k2(this, s0Var);
        this.f20456i = new C9030o2(this, s0Var);
    }

    @WorkerThread
    /* renamed from: A */
    public final void m16547A() {
        mo16328d();
        m16226v();
        if (C9008k4.m16479w()) {
            this.f20450c.m16114a();
        }
        try {
            C7064a.m21184a().m21182a(getContext(), this.f20450c);
        } catch (IllegalArgumentException | IllegalStateException e) {
        }
        this.f20451d = null;
    }

    @WorkerThread
    /* renamed from: B */
    public final boolean m16546B() {
        mo16328d();
        m16226v();
        return this.f20451d != null;
    }

    @WorkerThread
    /* renamed from: C */
    public final void m16545C() {
        mo16328d();
        this.f20454g.m16448b();
        this.f20453f.m16220a(C8966e.f20291Q.m16678a().longValue());
    }

    @WorkerThread
    /* renamed from: D */
    public final void m16544D() {
        mo16328d();
        if (m16546B()) {
            mo16178c().m16389A().m16338a("Inactivity, disconnecting from the service");
            m16547A();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0163  */
    @androidx.annotation.WorkerThread
    /* renamed from: E */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m16543E() {
        /*
            Method dump skipped, instructions count: 529
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p203i.p204a.p224e.p285m.p287b.C9000j2.m16543E():void");
    }

    @WorkerThread
    /* renamed from: F */
    public final void m16542F() {
        mo16328d();
        m16226v();
        m16527a(new RunnableC9018m2(this, m16522a(true)));
    }

    @WorkerThread
    /* renamed from: G */
    public final void m16541G() {
        mo16328d();
        m16226v();
        m16527a(new RunnableC9036p2(this, m16522a(true)));
    }

    /* renamed from: H */
    public final boolean m16540H() {
        mo16187b();
        return true;
    }

    /* renamed from: I */
    public final Boolean m16539I() {
        return this.f20452e;
    }

    @WorkerThread
    /* renamed from: J */
    public final void m16538J() {
        mo16328d();
        mo16178c().m16389A().m16337a("Processing queued up service tasks", Integer.valueOf(this.f20455h.size()));
        for (Runnable runnable : this.f20455h) {
            try {
                runnable.run();
            } catch (Exception e) {
                mo16178c().m16375s().m16337a("Task exception while flushing queue", e);
            }
        }
        this.f20455h.clear();
        this.f20456i.m16221a();
    }

    @Nullable
    @WorkerThread
    /* renamed from: a */
    public final zzh m16522a(boolean z) {
        mo16187b();
        return m16322p().m16563a(z ? mo16178c().m16387C() : null);
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16537a(ComponentName componentName) {
        mo16328d();
        if (this.f20451d != null) {
            this.f20451d = null;
            mo16178c().m16389A().m16337a("Disconnected from device MeasurementService", componentName);
            mo16328d();
            m16543E();
        }
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16536a(zzad zzadVar, String str) {
        C7021t.m21290a(zzadVar);
        mo16328d();
        m16226v();
        boolean H = m16540H();
        m16527a(new RunnableC9042q2(this, H, H && m16319s().m16513a(zzadVar), zzadVar, m16522a(true), str));
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16535a(zzfh zzfhVar) {
        mo16328d();
        m16226v();
        m16527a(new RunnableC9073v2(this, m16540H() && m16319s().m16512a(zzfhVar), zzfhVar, m16522a(true)));
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16534a(zzl zzlVar) {
        C7021t.m21290a(zzlVar);
        mo16328d();
        m16226v();
        mo16187b();
        m16527a(new RunnableC9054s2(this, true, m16319s().m16511a(zzlVar), new zzl(zzlVar), m16522a(true), zzlVar));
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16533a(C8976f2 f2Var) {
        mo16328d();
        m16226v();
        m16527a(new RunnableC9024n2(this, f2Var));
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16532a(AbstractC8973f fVar) {
        mo16328d();
        C7021t.m21290a(fVar);
        this.f20451d = fVar;
        m16545C();
        m16538J();
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16531a(AbstractC8973f fVar, AbstractSafeParcelable abstractSafeParcelable, zzh zzhVar) {
        List<AbstractSafeParcelable> a;
        mo16328d();
        mo16327f();
        m16226v();
        boolean H = m16540H();
        int i = 100;
        for (int i2 = 0; i2 < 1001 && i == 100; i2++) {
            ArrayList arrayList = new ArrayList();
            if (!H || (a = m16319s().m16515a(100)) == null) {
                i = 0;
            } else {
                arrayList.addAll(a);
                i = a.size();
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
                if (abstractSafeParcelable2 instanceof zzad) {
                    try {
                        fVar.mo16147a((zzad) abstractSafeParcelable2, zzhVar);
                    } catch (RemoteException e) {
                        mo16178c().m16375s().m16337a("Failed to send event to the service", e);
                    }
                } else if (abstractSafeParcelable2 instanceof zzfh) {
                    try {
                        fVar.mo16144a((zzfh) abstractSafeParcelable2, zzhVar);
                    } catch (RemoteException e2) {
                        mo16178c().m16375s().m16337a("Failed to send attribute to the service", e2);
                    }
                } else if (abstractSafeParcelable2 instanceof zzl) {
                    try {
                        fVar.mo16140a((zzl) abstractSafeParcelable2, zzhVar);
                    } catch (RemoteException e3) {
                        mo16178c().m16375s().m16337a("Failed to send conditional property to the service", e3);
                    }
                } else {
                    mo16178c().m16375s().m16338a("Discarding data. Unrecognized parcel type.");
                }
            }
        }
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16527a(Runnable runnable) throws IllegalStateException {
        mo16328d();
        if (m16546B()) {
            runnable.run();
        } else if (this.f20455h.size() >= 1000) {
            mo16178c().m16375s().m16338a("Discarding data. Max runnable queue size reached");
        } else {
            this.f20455h.add(runnable);
            this.f20456i.m16220a(60000L);
            m16543E();
        }
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16526a(AtomicReference<String> atomicReference) {
        mo16328d();
        m16226v();
        m16527a(new RunnableC9012l2(this, atomicReference, m16522a(false)));
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16525a(AtomicReference<List<zzl>> atomicReference, String str, String str2, String str3) {
        mo16328d();
        m16226v();
        m16527a(new RunnableC9060t2(this, atomicReference, str, str2, str3, m16522a(false)));
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16524a(AtomicReference<List<zzfh>> atomicReference, String str, String str2, String str3, boolean z) {
        mo16328d();
        m16226v();
        m16527a(new RunnableC9067u2(this, atomicReference, str, str2, str3, z, m16522a(false)));
    }

    @WorkerThread
    /* renamed from: a */
    public final void m16523a(AtomicReference<List<zzfh>> atomicReference, boolean z) {
        mo16328d();
        m16226v();
        m16527a(new RunnableC9079w2(this, atomicReference, m16522a(false), z));
    }

    @Override // p081h.p203i.p204a.p224e.p285m.p287b.AbstractC9055s3
    /* renamed from: x */
    public final boolean mo16224x() {
        return false;
    }
}
