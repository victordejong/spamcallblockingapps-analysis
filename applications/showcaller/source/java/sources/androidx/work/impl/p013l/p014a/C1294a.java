package androidx.work.impl.p013l.p014a;

import androidx.work.AbstractC1404j;
import androidx.work.AbstractC1416o;
import androidx.work.impl.p018n.C1344p;
import java.util.HashMap;
import java.util.Map;
/* renamed from: androidx.work.impl.l.a.a */
/* loaded from: classes-dex2jar.jar:androidx/work/impl/l/a/a.class */
public class C1294a {

    /* renamed from: a */
    static final String f5491a = AbstractC1404j.m30159f("DelayedWorkTracker");

    /* renamed from: b */
    final C1296b f5492b;

    /* renamed from: c */
    private final AbstractC1416o f5493c;

    /* renamed from: d */
    private final Map<String, Runnable> f5494d = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.work.impl.l.a.a$a */
    /* loaded from: classes-dex2jar.jar:androidx/work/impl/l/a/a$a.class */
    public class RunnableC1295a implements Runnable {

        /* renamed from: d */
        final /* synthetic */ C1344p f5495d;

        RunnableC1295a(C1344p c1344p) {
            C1294a.this = r4;
            this.f5495d = c1344p;
        }

        @Override // java.lang.Runnable
        public void run() {
            AbstractC1404j.m30161c().mo30158a(C1294a.f5491a, String.format("Scheduling work %s", this.f5495d.f5578c), new Throwable[0]);
            C1294a.this.f5492b.mo30358a(this.f5495d);
        }
    }

    public C1294a(C1296b c1296b, AbstractC1416o abstractC1416o) {
        this.f5492b = c1296b;
        this.f5493c = abstractC1416o;
    }

    /* renamed from: a */
    public void m30360a(C1344p c1344p) {
        Runnable remove = this.f5494d.remove(c1344p.f5578c);
        if (remove != null) {
            this.f5493c.mo30147b(remove);
        }
        RunnableC1295a runnableC1295a = new RunnableC1295a(c1344p);
        this.f5494d.put(c1344p.f5578c, runnableC1295a);
        long currentTimeMillis = System.currentTimeMillis();
        this.f5493c.mo30148a(c1344p.m30286a() - currentTimeMillis, runnableC1295a);
    }

    /* renamed from: b */
    public void m30359b(String str) {
        Runnable remove = this.f5494d.remove(str);
        if (remove != null) {
            this.f5493c.mo30147b(remove);
        }
    }
}
