package androidx.work.impl.background.systemalarm;

import android.content.Intent;
import android.os.PowerManager;
import androidx.work.AbstractC0555f;
import androidx.work.impl.utils.C0606i;
/* loaded from: classes-dex2jar.jar:androidx/work/impl/background/systemalarm/e$a.class */
class e$a implements Runnable {

    /* renamed from: b */
    final /* synthetic */ e f3003b;

    e$a(e eVar) {
        this.f3003b = eVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        Runnable runnable;
        e eVar;
        synchronized (this.f3003b.i) {
            e eVar2 = this.f3003b;
            eVar2.j = (Intent) eVar2.i.get(0);
        }
        Intent intent = this.f3003b.j;
        if (intent != null) {
            String action = intent.getAction();
            int intExtra = this.f3003b.j.getIntExtra("KEY_START_ID", 0);
            AbstractC0555f m11741c = AbstractC0555f.m11741c();
            String str = e.l;
            m11741c.m11743a(str, String.format("Processing command %s, %s", this.f3003b.j, Integer.valueOf(intExtra)), new Throwable[0]);
            PowerManager.WakeLock m11596b = C0606i.m11596b(this.f3003b.b, String.format("%s (%s)", action, Integer.valueOf(intExtra)));
            try {
                AbstractC0555f.m11741c().m11743a(str, String.format("Acquiring operation wake lock (%s) %s", action, m11596b), new Throwable[0]);
                m11596b.acquire();
                e eVar3 = this.f3003b;
                eVar3.g.p(eVar3.j, intExtra, eVar3);
                AbstractC0555f.m11741c().m11743a(str, String.format("Releasing operation wake lock (%s) %s", action, m11596b), new Throwable[0]);
                m11596b.release();
                eVar = this.f3003b;
                runnable = new Runnable(eVar) { // from class: androidx.work.impl.background.systemalarm.e$d

                    /* renamed from: b */
                    private final e f3007b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f3007b = eVar;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        this.f3007b.d();
                    }
                };
            } catch (Throwable th) {
                try {
                    AbstractC0555f m11741c2 = AbstractC0555f.m11741c();
                    String str2 = e.l;
                    m11741c2.m11742b(str2, "Unexpected error in onHandleIntent", th);
                    AbstractC0555f.m11741c().m11743a(str2, String.format("Releasing operation wake lock (%s) %s", action, m11596b), new Throwable[0]);
                    m11596b.release();
                    eVar = this.f3003b;
                    runnable = new Runnable(eVar) { // from class: androidx.work.impl.background.systemalarm.e$d

                        /* renamed from: b */
                        private final e f3007b;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f3007b = eVar;
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            this.f3007b.d();
                        }
                    };
                } catch (Throwable th2) {
                    AbstractC0555f.m11741c().m11743a(e.l, String.format("Releasing operation wake lock (%s) %s", action, m11596b), new Throwable[0]);
                    m11596b.release();
                    e eVar4 = this.f3003b;
                    eVar4.k(new Runnable(eVar4) { // from class: androidx.work.impl.background.systemalarm.e$d

                        /* renamed from: b */
                        private final e f3007b;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f3007b = eVar4;
                        }

                        @Override // java.lang.Runnable
                        public void run() {
                            this.f3007b.d();
                        }
                    });
                    throw th2;
                }
            }
            eVar.k(runnable);
        }
    }
}
