package p1727n3.p1834m0.p1835c0.p1836p.p1838b;

import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import androidx.work.impl.background.systemalarm.SystemAlarmService;
import java.util.Collections;
import java.util.List;
import p1727n3.p1834m0.AbstractC26839p;
import p1727n3.p1834m0.p1835c0.AbstractC26682b;
import p1727n3.p1834m0.p1835c0.p1836p.p1838b.C26715e;
import p1727n3.p1834m0.p1835c0.p1840q.AbstractC26724c;
import p1727n3.p1834m0.p1835c0.p1840q.C26725d;
import p1727n3.p1834m0.p1835c0.p1844s.C26760p;
import p1727n3.p1834m0.p1835c0.p1844s.C26767t;
import p1727n3.p1834m0.p1835c0.p1845t.C26797q;
import p1727n3.p1834m0.p1835c0.p1845t.C26805v;
/* renamed from: n3.m0.c0.p.b.d */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/p/b/d.class */
public class C26714d implements AbstractC26724c, AbstractC26682b, C26805v.AbstractC26807b {

    /* renamed from: j */
    public static final String f74791j = AbstractC26839p.m1295e("DelayMetCommandHandler");

    /* renamed from: a */
    public final Context f74792a;

    /* renamed from: b */
    public final int f74793b;

    /* renamed from: c */
    public final String f74794c;

    /* renamed from: d */
    public final C26715e f74795d;

    /* renamed from: e */
    public final C26725d f74796e;

    /* renamed from: h */
    public PowerManager.WakeLock f74799h;

    /* renamed from: i */
    public boolean f74800i = false;

    /* renamed from: g */
    public int f74798g = 0;

    /* renamed from: f */
    public final Object f74797f = new Object();

    public C26714d(Context context, int i, String str, C26715e c26715e) {
        this.f74792a = context;
        this.f74793b = i;
        this.f74795d = c26715e;
        this.f74794c = str;
        this.f74796e = new C26725d(context, c26715e.f74803b, this);
    }

    @Override // p1727n3.p1834m0.p1835c0.p1845t.C26805v.AbstractC26807b
    /* renamed from: a */
    public void mo1322a(String str) {
        AbstractC26839p.m1296c().mo1294a(f74791j, String.format("Exceeded time limits on execution for %s", str), new Throwable[0]);
        m1408f();
    }

    @Override // p1727n3.p1834m0.p1835c0.AbstractC26682b
    /* renamed from: b */
    public void mo1376b(String str, boolean z) {
        AbstractC26839p.m1296c().mo1294a(f74791j, String.format("onExecuted %s, %s", str, Boolean.valueOf(z)), new Throwable[0]);
        m1410d();
        if (z) {
            Intent m1412d = C26712b.m1412d(this.f74792a, this.f74794c);
            C26715e c26715e = this.f74795d;
            c26715e.f74808g.post(new C26715e.RunnableC26717b(c26715e, m1412d, this.f74793b));
        }
        if (this.f74800i) {
            Intent m1414a = C26712b.m1414a(this.f74792a);
            C26715e c26715e2 = this.f74795d;
            c26715e2.f74808g.post(new C26715e.RunnableC26717b(c26715e2, m1414a, this.f74793b));
        }
    }

    @Override // p1727n3.p1834m0.p1835c0.p1840q.AbstractC26724c
    /* renamed from: c */
    public void mo1375c(List<String> list) {
        m1408f();
    }

    /* renamed from: d */
    public final void m1410d() {
        synchronized (this.f74797f) {
            this.f74796e.m1393c();
            this.f74795d.f74804c.m1323b(this.f74794c);
            PowerManager.WakeLock wakeLock = this.f74799h;
            if (wakeLock != null && wakeLock.isHeld()) {
                AbstractC26839p.m1296c().mo1294a(f74791j, String.format("Releasing wakelock %s for WorkSpec %s", this.f74799h, this.f74794c), new Throwable[0]);
                this.f74799h.release();
            }
        }
    }

    /* renamed from: e */
    public void m1409e() {
        this.f74799h = C26797q.m1326a(this.f74792a, String.format("%s (%s)", this.f74794c, Integer.valueOf(this.f74793b)));
        AbstractC26839p m1296c = AbstractC26839p.m1296c();
        String str = f74791j;
        m1296c.mo1294a(str, String.format("Acquiring wakelock %s for WorkSpec %s", this.f74799h, this.f74794c), new Throwable[0]);
        this.f74799h.acquire();
        C26760p m1346k = ((C26767t) this.f74795d.f74806e.f74725c.m42606f()).m1346k(this.f74794c);
        if (m1346k == null) {
            m1408f();
            return;
        }
        boolean m1360b = m1346k.m1360b();
        this.f74800i = m1360b;
        if (m1360b) {
            this.f74796e.m1394b(Collections.singletonList(m1346k));
            return;
        }
        AbstractC26839p.m1296c().mo1294a(str, String.format("No constraints for %s", this.f74794c), new Throwable[0]);
        mo1371m(Collections.singletonList(this.f74794c));
    }

    /* renamed from: f */
    public final void m1408f() {
        synchronized (this.f74797f) {
            if (this.f74798g < 2) {
                this.f74798g = 2;
                AbstractC26839p m1296c = AbstractC26839p.m1296c();
                String str = f74791j;
                m1296c.mo1294a(str, String.format("Stopping work for WorkSpec %s", this.f74794c), new Throwable[0]);
                Context context = this.f74792a;
                String str2 = this.f74794c;
                Intent intent = new Intent(context, SystemAlarmService.class);
                intent.setAction("ACTION_STOP_WORK");
                intent.putExtra("KEY_WORKSPEC_ID", str2);
                C26715e c26715e = this.f74795d;
                c26715e.f74808g.post(new C26715e.RunnableC26717b(c26715e, intent, this.f74793b));
                if (this.f74795d.f74805d.m1445d(this.f74794c)) {
                    AbstractC26839p.m1296c().mo1294a(str, String.format("WorkSpec %s needs to be rescheduled", this.f74794c), new Throwable[0]);
                    Intent m1412d = C26712b.m1412d(this.f74792a, this.f74794c);
                    C26715e c26715e2 = this.f74795d;
                    c26715e2.f74808g.post(new C26715e.RunnableC26717b(c26715e2, m1412d, this.f74793b));
                } else {
                    AbstractC26839p.m1296c().mo1294a(str, String.format("Processor does not have WorkSpec %s. No need to reschedule ", this.f74794c), new Throwable[0]);
                }
            } else {
                AbstractC26839p.m1296c().mo1294a(f74791j, String.format("Already stopped work for %s", this.f74794c), new Throwable[0]);
            }
        }
    }

    @Override // p1727n3.p1834m0.p1835c0.p1840q.AbstractC26724c
    /* renamed from: m */
    public void mo1371m(List<String> list) {
        if (!list.contains(this.f74794c)) {
            return;
        }
        synchronized (this.f74797f) {
            if (this.f74798g == 0) {
                this.f74798g = 1;
                AbstractC26839p.m1296c().mo1294a(f74791j, String.format("onAllConstraintsMet for %s", this.f74794c), new Throwable[0]);
                if (this.f74795d.f74805d.m1442g(this.f74794c, null)) {
                    this.f74795d.f74804c.m1324a(this.f74794c, 600000L, this);
                } else {
                    m1410d();
                }
            } else {
                AbstractC26839p.m1296c().mo1294a(f74791j, String.format("Already started work for %s", this.f74794c), new Throwable[0]);
            }
        }
    }
}
