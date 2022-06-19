package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import androidx.work.AbstractC3145k;
import androidx.work.WorkerParameters;
import androidx.work.impl.AbstractC3027b;
import androidx.work.impl.background.systemalarm.C3036e;
import androidx.work.impl.p085a.AbstractC3025c;
import androidx.work.impl.p085a.C3026d;
import androidx.work.impl.utils.C3137n;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* renamed from: androidx.work.impl.background.systemalarm.d */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/d.class */
public final class C3035d implements AbstractC3025c, AbstractC3027b, C3137n.AbstractC3139a {

    /* renamed from: h */
    private static final String f11242h = AbstractC3145k.m39275a("DelayMetCommandHandler");

    /* renamed from: a */
    final Context f11243a;

    /* renamed from: b */
    final int f11244b;

    /* renamed from: c */
    final String f11245c;

    /* renamed from: d */
    final C3036e f11246d;

    /* renamed from: e */
    final C3026d f11247e;

    /* renamed from: f */
    PowerManager.WakeLock f11248f;

    /* renamed from: g */
    boolean f11249g = false;

    /* renamed from: j */
    private int f11251j = 0;

    /* renamed from: i */
    private final Object f11250i = new Object();

    public C3035d(Context context, int i, String str, C3036e c3036e) {
        this.f11243a = context;
        this.f11244b = i;
        this.f11246d = c3036e;
        this.f11245c = str;
        this.f11247e = new C3026d(context, c3036e.f11254c, this);
    }

    /* renamed from: b */
    private void m39418b() {
        synchronized (this.f11250i) {
            this.f11247e.m39442a();
            this.f11246d.f11255d.m39285a(this.f11245c);
            PowerManager.WakeLock wakeLock = this.f11248f;
            if (wakeLock != null && wakeLock.isHeld()) {
                AbstractC3145k.m39277a();
                String.format("Releasing wakelock %s for WorkSpec %s", this.f11248f, this.f11245c);
                this.f11248f.release();
            }
        }
    }

    /* renamed from: a */
    public final void m39419a() {
        synchronized (this.f11250i) {
            if (this.f11251j < 2) {
                this.f11251j = 2;
                AbstractC3145k.m39277a();
                String.format("Stopping work for WorkSpec %s", this.f11245c);
                Intent m39420c = C3033b.m39420c(this.f11243a, this.f11245c);
                C3036e c3036e = this.f11246d;
                c3036e.m39414a(new C3036e.RunnableC3038a(c3036e, m39420c, this.f11244b));
                if (this.f11246d.f11256e.m39390f(this.f11245c)) {
                    AbstractC3145k.m39277a();
                    String.format("WorkSpec %s needs to be rescheduled", this.f11245c);
                    Intent m39425a = C3033b.m39425a(this.f11243a, this.f11245c);
                    C3036e c3036e2 = this.f11246d;
                    c3036e2.m39414a(new C3036e.RunnableC3038a(c3036e2, m39425a, this.f11244b));
                } else {
                    AbstractC3145k.m39277a();
                    String.format("Processor does not have WorkSpec %s. No need to reschedule ", this.f11245c);
                }
            } else {
                AbstractC3145k.m39277a();
                String.format("Already stopped work for %s", this.f11245c);
            }
        }
    }

    @Override // androidx.work.impl.utils.C3137n.AbstractC3139a
    /* renamed from: a */
    public final void mo39284a(String str) {
        AbstractC3145k.m39277a();
        String.format("Exceeded time limits on execution for %s", str);
        m39419a();
    }

    @Override // androidx.work.impl.AbstractC3027b
    /* renamed from: a */
    public final void mo39374a(String str, boolean z) {
        AbstractC3145k.m39277a();
        String.format("onExecuted %s, %s", str, Boolean.valueOf(z));
        m39418b();
        if (z) {
            Intent m39425a = C3033b.m39425a(this.f11243a, this.f11245c);
            C3036e c3036e = this.f11246d;
            c3036e.m39414a(new C3036e.RunnableC3038a(c3036e, m39425a, this.f11244b));
        }
        if (this.f11249g) {
            Intent m39426a = C3033b.m39426a(this.f11243a);
            C3036e c3036e2 = this.f11246d;
            c3036e2.m39414a(new C3036e.RunnableC3038a(c3036e2, m39426a, this.f11244b));
        }
    }

    @Override // androidx.work.impl.p085a.AbstractC3025c
    /* renamed from: a */
    public final void mo39282a(List<String> list) {
        if (!list.contains(this.f11245c)) {
            return;
        }
        synchronized (this.f11250i) {
            if (this.f11251j == 0) {
                this.f11251j = 1;
                AbstractC3145k.m39277a();
                String.format("onAllConstraintsMet for %s", this.f11245c);
                if (this.f11246d.f11256e.m39396a(this.f11245c, (WorkerParameters.C2985a) null)) {
                    C3137n c3137n = this.f11246d.f11255d;
                    String str = this.f11245c;
                    synchronized (c3137n.f11491d) {
                        AbstractC3145k.m39277a();
                        String.format("Starting timer for %s", str);
                        c3137n.m39285a(str);
                        C3137n.RunnableC3140b runnableC3140b = new C3137n.RunnableC3140b(c3137n, str);
                        c3137n.f11489b.put(str, runnableC3140b);
                        c3137n.f11490c.put(str, this);
                        c3137n.f11488a.schedule(runnableC3140b, 600000L, TimeUnit.MILLISECONDS);
                    }
                } else {
                    m39418b();
                }
            } else {
                AbstractC3145k.m39277a();
                String.format("Already started work for %s", this.f11245c);
            }
        }
    }

    @Override // androidx.work.impl.p085a.AbstractC3025c
    /* renamed from: b */
    public final void mo39280b(List<String> list) {
        m39419a();
    }
}
