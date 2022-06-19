package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.os.PowerManager;
import androidx.work.AbstractC1293l;
import androidx.work.impl.AbstractC1142a;
import androidx.work.impl.background.systemalarm.C1217e;
import androidx.work.impl.p052a.AbstractC1165c;
import androidx.work.impl.p052a.C1166d;
import androidx.work.impl.p055b.C1191p;
import androidx.work.impl.utils.C1281i;
import androidx.work.impl.utils.C1284l;
import java.util.Collections;
import java.util.List;
/* renamed from: androidx.work.impl.background.systemalarm.d */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/d.class */
public class C1216d implements AbstractC1142a, AbstractC1165c, C1284l.AbstractC1286a {

    /* renamed from: a */
    private static final String f4087a = AbstractC1293l.m17541a("DelayMetCommandHandler");

    /* renamed from: b */
    private final Context f4088b;

    /* renamed from: c */
    private final int f4089c;

    /* renamed from: d */
    private final String f4090d;

    /* renamed from: e */
    private final C1217e f4091e;

    /* renamed from: f */
    private final C1166d f4092f;

    /* renamed from: i */
    private PowerManager.WakeLock f4095i;

    /* renamed from: j */
    private boolean f4096j = false;

    /* renamed from: h */
    private int f4094h = 0;

    /* renamed from: g */
    private final Object f4093g = new Object();

    public C1216d(Context context, int i, String str, C1217e c1217e) {
        this.f4088b = context;
        this.f4089c = i;
        this.f4091e = c1217e;
        this.f4090d = str;
        this.f4092f = new C1166d(this.f4088b, c1217e.m17733e(), this);
    }

    /* renamed from: b */
    private void m17743b() {
        synchronized (this.f4093g) {
            if (this.f4094h < 2) {
                this.f4094h = 2;
                AbstractC1293l.m17543a().mo17539b(f4087a, String.format("Stopping work for WorkSpec %s", this.f4090d), new Throwable[0]);
                this.f4091e.m17738a(new C1217e.RunnableC1219a(this.f4091e, C1214b.m17749c(this.f4088b, this.f4090d), this.f4089c));
                if (this.f4091e.m17736b().m17706g(this.f4090d)) {
                    AbstractC1293l.m17543a().mo17539b(f4087a, String.format("WorkSpec %s needs to be rescheduled", this.f4090d), new Throwable[0]);
                    this.f4091e.m17738a(new C1217e.RunnableC1219a(this.f4091e, C1214b.m17758a(this.f4088b, this.f4090d), this.f4089c));
                } else {
                    AbstractC1293l.m17543a().mo17539b(f4087a, String.format("Processor does not have WorkSpec %s. No need to reschedule ", this.f4090d), new Throwable[0]);
                }
            } else {
                AbstractC1293l.m17543a().mo17539b(f4087a, String.format("Already stopped work for %s", this.f4090d), new Throwable[0]);
            }
        }
    }

    /* renamed from: c */
    private void m17742c() {
        synchronized (this.f4093g) {
            this.f4092f.m17831a();
            this.f4091e.m17735c().m17560a(this.f4090d);
            if (this.f4095i != null && this.f4095i.isHeld()) {
                AbstractC1293l.m17543a().mo17539b(f4087a, String.format("Releasing wakelock %s for WorkSpec %s", this.f4095i, this.f4090d), new Throwable[0]);
                this.f4095i.release();
            }
        }
    }

    /* renamed from: a */
    public void m17744a() {
        this.f4095i = C1281i.m17562a(this.f4088b, String.format("%s (%s)", this.f4090d, Integer.valueOf(this.f4089c)));
        AbstractC1293l.m17543a().mo17539b(f4087a, String.format("Acquiring wakelock %s for WorkSpec %s", this.f4095i, this.f4090d), new Throwable[0]);
        this.f4095i.acquire();
        C1191p mo17794b = this.f4091e.m17734d().m17652c().mo17885o().mo17794b(this.f4090d);
        if (mo17794b == null) {
            m17743b();
            return;
        }
        this.f4096j = mo17794b.m17803d();
        if (this.f4096j) {
            this.f4092f.m17830a((Iterable<C1191p>) Collections.singletonList(mo17794b));
            return;
        }
        AbstractC1293l.m17543a().mo17539b(f4087a, String.format("No constraints for %s", this.f4090d), new Throwable[0]);
        mo17557a(Collections.singletonList(this.f4090d));
    }

    @Override // androidx.work.impl.utils.C1284l.AbstractC1286a
    /* renamed from: a */
    public void mo17558a(String str) {
        AbstractC1293l.m17543a().mo17539b(f4087a, String.format("Exceeded time limits on execution for %s", str), new Throwable[0]);
        m17743b();
    }

    @Override // androidx.work.impl.AbstractC1142a
    /* renamed from: a */
    public void mo17680a(String str, boolean z) {
        AbstractC1293l.m17543a().mo17539b(f4087a, String.format("onExecuted %s, %s", str, Boolean.valueOf(z)), new Throwable[0]);
        m17742c();
        if (z) {
            this.f4091e.m17738a(new C1217e.RunnableC1219a(this.f4091e, C1214b.m17758a(this.f4088b, this.f4090d), this.f4089c));
        }
        if (this.f4096j) {
            this.f4091e.m17738a(new C1217e.RunnableC1219a(this.f4091e, C1214b.m17759a(this.f4088b), this.f4089c));
        }
    }

    @Override // androidx.work.impl.p052a.AbstractC1165c
    /* renamed from: a */
    public void mo17557a(List<String> list) {
        if (!list.contains(this.f4090d)) {
            return;
        }
        synchronized (this.f4093g) {
            if (this.f4094h == 0) {
                this.f4094h = 1;
                AbstractC1293l.m17543a().mo17539b(f4087a, String.format("onAllConstraintsMet for %s", this.f4090d), new Throwable[0]);
                if (this.f4091e.m17736b().m17714a(this.f4090d)) {
                    this.f4091e.m17735c().m17559a(this.f4090d, 600000L, this);
                } else {
                    m17742c();
                }
            } else {
                AbstractC1293l.m17543a().mo17539b(f4087a, String.format("Already started work for %s", this.f4090d), new Throwable[0]);
            }
        }
    }

    @Override // androidx.work.impl.p052a.AbstractC1165c
    /* renamed from: b */
    public void mo17556b(List<String> list) {
        m17743b();
    }
}
