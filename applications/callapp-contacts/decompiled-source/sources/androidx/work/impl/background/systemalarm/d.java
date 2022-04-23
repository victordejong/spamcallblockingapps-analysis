package androidx.work.impl.background.systemalarm;

import android.content.Context;
import android.content.Intent;
import android.os.PowerManager;
import androidx.work.WorkerParameters;
import androidx.work.impl.a.c;
import androidx.work.impl.b;
import androidx.work.impl.background.systemalarm.e;
import androidx.work.impl.utils.n;
import androidx.work.k;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/d.class */
public final class d implements c, b, n.a {
    private static final String h = k.a("DelayMetCommandHandler");

    /* renamed from: a  reason: collision with root package name */
    final Context f6048a;

    /* renamed from: b  reason: collision with root package name */
    final int f6049b;

    /* renamed from: c  reason: collision with root package name */
    final String f6050c;

    /* renamed from: d  reason: collision with root package name */
    final e f6051d;
    final androidx.work.impl.a.d e;
    PowerManager.WakeLock f;
    boolean g = false;
    private int j = 0;
    private final Object i = new Object();

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(Context context, int i, String str, e eVar) {
        this.f6048a = context;
        this.f6049b = i;
        this.f6051d = eVar;
        this.f6050c = str;
        this.e = new androidx.work.impl.a.d(context, eVar.f6054c, this);
    }

    private void b() {
        synchronized (this.i) {
            this.e.a();
            this.f6051d.f6055d.a(this.f6050c);
            PowerManager.WakeLock wakeLock = this.f;
            if (wakeLock != null && wakeLock.isHeld()) {
                k.a();
                String.format("Releasing wakelock %s for WorkSpec %s", this.f, this.f6050c);
                this.f.release();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        synchronized (this.i) {
            if (this.j < 2) {
                this.j = 2;
                k.a();
                String.format("Stopping work for WorkSpec %s", this.f6050c);
                Intent c2 = b.c(this.f6048a, this.f6050c);
                e eVar = this.f6051d;
                eVar.a(new e.a(eVar, c2, this.f6049b));
                if (this.f6051d.e.f(this.f6050c)) {
                    k.a();
                    String.format("WorkSpec %s needs to be rescheduled", this.f6050c);
                    Intent a2 = b.a(this.f6048a, this.f6050c);
                    e eVar2 = this.f6051d;
                    eVar2.a(new e.a(eVar2, a2, this.f6049b));
                } else {
                    k.a();
                    String.format("Processor does not have WorkSpec %s. No need to reschedule ", this.f6050c);
                }
            } else {
                k.a();
                String.format("Already stopped work for %s", this.f6050c);
            }
        }
    }

    @Override // androidx.work.impl.utils.n.a
    public final void a(String str) {
        k.a();
        String.format("Exceeded time limits on execution for %s", str);
        a();
    }

    @Override // androidx.work.impl.b
    public final void a(String str, boolean z) {
        k.a();
        String.format("onExecuted %s, %s", str, Boolean.valueOf(z));
        b();
        if (z) {
            Intent a2 = b.a(this.f6048a, this.f6050c);
            e eVar = this.f6051d;
            eVar.a(new e.a(eVar, a2, this.f6049b));
        }
        if (this.g) {
            Intent a3 = b.a(this.f6048a);
            e eVar2 = this.f6051d;
            eVar2.a(new e.a(eVar2, a3, this.f6049b));
        }
    }

    @Override // androidx.work.impl.a.c
    public final void a(List<String> list) {
        if (list.contains(this.f6050c)) {
            synchronized (this.i) {
                if (this.j == 0) {
                    this.j = 1;
                    k.a();
                    String.format("onAllConstraintsMet for %s", this.f6050c);
                    if (this.f6051d.e.a(this.f6050c, (WorkerParameters.a) null)) {
                        n nVar = this.f6051d.f6055d;
                        String str = this.f6050c;
                        synchronized (nVar.f6216d) {
                            k.a();
                            String.format("Starting timer for %s", str);
                            nVar.a(str);
                            n.b bVar = new n.b(nVar, str);
                            nVar.f6214b.put(str, bVar);
                            nVar.f6215c.put(str, this);
                            nVar.f6213a.schedule(bVar, 600000L, TimeUnit.MILLISECONDS);
                        }
                    } else {
                        b();
                    }
                } else {
                    k.a();
                    String.format("Already started work for %s", this.f6050c);
                }
            }
        }
    }

    @Override // androidx.work.impl.a.c
    public final void b(List<String> list) {
        a();
    }
}
