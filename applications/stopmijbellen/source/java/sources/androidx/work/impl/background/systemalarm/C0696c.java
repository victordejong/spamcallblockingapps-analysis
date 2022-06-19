package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import androidx.work.impl.background.systemalarm.C0697d;
import java.util.Collections;
import java.util.List;
import p186o1.AbstractC3824h;
import p197p1.AbstractC3996a;
import p238t1.AbstractC4354c;
import p238t1.C4355d;
import p282x1.C4832p;
import p282x1.C4835r;
import p292y1.C4967m;
import p292y1.C4975r;
/* renamed from: androidx.work.impl.background.systemalarm.c */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/c.class */
public class C0696c implements AbstractC4354c, AbstractC3996a, C4975r.AbstractC4977b {

    /* renamed from: j */
    public static final String f2680j = AbstractC3824h.m1773e("DelayMetCommandHandler");

    /* renamed from: a */
    public final Context f2681a;

    /* renamed from: b */
    public final int f2682b;

    /* renamed from: c */
    public final String f2683c;

    /* renamed from: d */
    public final C0697d f2684d;

    /* renamed from: e */
    public final C4355d f2685e;

    /* renamed from: h */
    public PowerManager.WakeLock f2688h;

    /* renamed from: i */
    public boolean f2689i = false;

    /* renamed from: g */
    public int f2687g = 0;

    /* renamed from: f */
    public final Object f2686f = new Object();

    public C0696c(Context context, int i, String str, C0697d c0697d) {
        this.f2681a = context;
        this.f2682b = i;
        this.f2684d = c0697d;
        this.f2683c = str;
        this.f2685e = new C4355d(context, c0697d.f2692b, this);
    }

    @Override // p197p1.AbstractC3996a
    /* renamed from: a */
    public void mo1352a(String str, boolean z) {
        AbstractC3824h.m1774c().mo1772a(f2680j, String.format("onExecuted %s, %s", str, Boolean.valueOf(z)), new Throwable[0]);
        m7467d();
        if (z) {
            Intent m7469d = C0694a.m7469d(this.f2681a, this.f2683c);
            C0697d c0697d = this.f2684d;
            c0697d.f2697g.post(new C0697d.RunnableC0699b(c0697d, m7469d, this.f2682b));
        }
        if (this.f2689i) {
            Intent m7471b = C0694a.m7471b(this.f2681a);
            C0697d c0697d2 = this.f2684d;
            c0697d2.f2697g.post(new C0697d.RunnableC0699b(c0697d2, m7471b, this.f2682b));
        }
    }

    @Override // p292y1.C4975r.AbstractC4977b
    /* renamed from: b */
    public void mo167b(String str) {
        AbstractC3824h.m1774c().mo1772a(f2680j, String.format("Exceeded time limits on execution for %s", str), new Throwable[0]);
        m7465g();
    }

    @Override // p238t1.AbstractC4354c
    /* renamed from: c */
    public void mo1014c(List<String> list) {
        m7465g();
    }

    /* renamed from: d */
    public final void m7467d() {
        synchronized (this.f2686f) {
            this.f2685e.m1010c();
            this.f2684d.f2693c.m168b(this.f2683c);
            PowerManager.WakeLock wakeLock = this.f2688h;
            if (wakeLock != null && wakeLock.isHeld()) {
                AbstractC3824h.m1774c().mo1772a(f2680j, String.format("Releasing wakelock %s for WorkSpec %s", this.f2688h, this.f2683c), new Throwable[0]);
                this.f2688h.release();
            }
        }
    }

    @Override // p238t1.AbstractC4354c
    /* renamed from: e */
    public void mo1013e(List<String> list) {
        if (!list.contains(this.f2683c)) {
            return;
        }
        synchronized (this.f2686f) {
            if (this.f2687g == 0) {
                this.f2687g = 1;
                AbstractC3824h.m1774c().mo1772a(f2680j, String.format("onAllConstraintsMet for %s", this.f2683c), new Throwable[0]);
                if (this.f2684d.f2694d.m1546g(this.f2683c, null)) {
                    this.f2684d.f2693c.m169a(this.f2683c, 600000L, this);
                } else {
                    m7467d();
                }
            } else {
                AbstractC3824h.m1774c().mo1772a(f2680j, String.format("Already started work for %s", this.f2683c), new Throwable[0]);
            }
        }
    }

    /* renamed from: f */
    public void m7466f() {
        this.f2688h = C4967m.m171a(this.f2681a, String.format("%s (%s)", this.f2683c, Integer.valueOf(this.f2682b)));
        AbstractC3824h m1774c = AbstractC3824h.m1774c();
        String str = f2680j;
        m1774c.mo1772a(str, String.format("Acquiring wakelock %s for WorkSpec %s", this.f2688h, this.f2683c), new Throwable[0]);
        this.f2688h.acquire();
        C4832p m380i = ((C4835r) this.f2684d.f2695e.f12584c.mo7475q()).m380i(this.f2683c);
        if (m380i == null) {
            m7465g();
            return;
        }
        boolean m390b = m380i.m390b();
        this.f2689i = m390b;
        if (m390b) {
            this.f2685e.m1011b(Collections.singletonList(m380i));
            return;
        }
        AbstractC3824h.m1774c().mo1772a(str, String.format("No constraints for %s", this.f2683c), new Throwable[0]);
        mo1013e(Collections.singletonList(this.f2683c));
    }

    /* renamed from: g */
    public final void m7465g() {
        synchronized (this.f2686f) {
            if (this.f2687g < 2) {
                this.f2687g = 2;
                AbstractC3824h m1774c = AbstractC3824h.m1774c();
                String str = f2680j;
                m1774c.mo1772a(str, String.format("Stopping work for WorkSpec %s", this.f2683c), new Throwable[0]);
                Context context = this.f2681a;
                String str2 = this.f2683c;
                Intent intent = new Intent(context, SystemAlarmService.class);
                intent.setAction("ACTION_STOP_WORK");
                intent.putExtra("KEY_WORKSPEC_ID", str2);
                C0697d c0697d = this.f2684d;
                c0697d.f2697g.post(new C0697d.RunnableC0699b(c0697d, intent, this.f2682b));
                if (this.f2684d.f2694d.m1549d(this.f2683c)) {
                    AbstractC3824h.m1774c().mo1772a(str, String.format("WorkSpec %s needs to be rescheduled", this.f2683c), new Throwable[0]);
                    Intent m7469d = C0694a.m7469d(this.f2681a, this.f2683c);
                    C0697d c0697d2 = this.f2684d;
                    c0697d2.f2697g.post(new C0697d.RunnableC0699b(c0697d2, m7469d, this.f2682b));
                } else {
                    AbstractC3824h.m1774c().mo1772a(str, String.format("Processor does not have WorkSpec %s. No need to reschedule ", this.f2683c), new Throwable[0]);
                }
            } else {
                AbstractC3824h.m1774c().mo1772a(f2680j, String.format("Already stopped work for %s", this.f2683c), new Throwable[0]);
            }
        }
    }
}
