package p1727n3.p1834m0.p1835c0.p1845t;

import androidx.work.impl.WorkDatabase;
import p1727n3.p1834m0.AbstractC26839p;
import p1727n3.p1834m0.C26855x;
import p1727n3.p1834m0.p1835c0.C26684d;
import p1727n3.p1834m0.p1835c0.C26702l;
import p1727n3.p1834m0.p1835c0.p1844s.AbstractC26764q;
import p1727n3.p1834m0.p1835c0.p1844s.C26767t;
/* renamed from: n3.m0.c0.t.p */
/* loaded from: classes-dex2jar.jar:n3/m0/c0/t/p.class */
public class RunnableC26796p implements Runnable {

    /* renamed from: d */
    public static final String f74981d = AbstractC26839p.m1295e("StopWorkRunnable");

    /* renamed from: a */
    public final C26702l f74982a;

    /* renamed from: b */
    public final String f74983b;

    /* renamed from: c */
    public final boolean f74984c;

    public RunnableC26796p(C26702l c26702l, String str, boolean z) {
        this.f74982a = c26702l;
        this.f74983b = str;
        this.f74984c = z;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean containsKey;
        boolean z;
        C26702l c26702l = this.f74982a;
        WorkDatabase workDatabase = c26702l.f74725c;
        C26684d c26684d = c26702l.f74728f;
        AbstractC26764q m42606f = workDatabase.m42606f();
        workDatabase.beginTransaction();
        try {
            String str = this.f74983b;
            synchronized (c26684d.f74693k) {
                containsKey = c26684d.f74688f.containsKey(str);
            }
            if (this.f74984c) {
                z = this.f74982a.f74728f.m1440i(this.f74983b);
            } else {
                if (!containsKey) {
                    C26767t c26767t = (C26767t) m42606f;
                    if (c26767t.m1349h(this.f74983b) == C26855x.EnumC26856a.RUNNING) {
                        c26767t.m1339r(C26855x.EnumC26856a.ENQUEUED, this.f74983b);
                    }
                }
                z = this.f74982a.f74728f.m1439j(this.f74983b);
            }
            AbstractC26839p.m1296c().mo1294a(f74981d, String.format("StopWorkRunnable for %s; Processor.stopWork = %s", this.f74983b, Boolean.valueOf(z)), new Throwable[0]);
            workDatabase.setTransactionSuccessful();
        } finally {
            workDatabase.endTransaction();
        }
    }
}
