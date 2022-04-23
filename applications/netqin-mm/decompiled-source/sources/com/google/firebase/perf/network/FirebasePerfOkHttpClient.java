package com.google.firebase.perf.network;

import androidx.annotation.Keep;
import com.google.firebase.perf.util.Timer;
import java.io.IOException;
import p131c.p161d.p282e.p340u.p343f.C5954a;
import p131c.p161d.p282e.p340u.p347j.C5978g;
import p131c.p161d.p282e.p340u.p347j.C5979h;
import p131c.p161d.p282e.p340u.p348k.C5992l;
import p599h.AbstractC10095b0;
import p599h.AbstractC10210e;
import p599h.AbstractC10212f;
import p599h.C10091a0;
import p599h.C10236s;
import p599h.C10240u;
import p599h.C10250y;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/perf/network/FirebasePerfOkHttpClient.class */
public class FirebasePerfOkHttpClient {
    /* renamed from: a */
    public static void m7223a(C10091a0 a0Var, C5954a aVar, long j, long j2) throws IOException {
        C10250y n = a0Var.m1528n();
        if (n != null) {
            aVar.m22558c(n.m813g().m926o().toString());
            aVar.m22564a(n.m815e());
            if (n.m821a() != null) {
                long a = n.m821a().mo799a();
                if (a != -1) {
                    aVar.m22566a(a);
                }
            }
            AbstractC10095b0 a2 = a0Var.m1543a();
            if (a2 != null) {
                long b = a2.mo1302b();
                if (b != -1) {
                    aVar.m22559c(b);
                }
                C10240u c = a2.mo1301c();
                if (c != null) {
                    aVar.m22561b(c.toString());
                }
            }
            aVar.m22567a(a0Var.m1538d());
            aVar.m22562b(j);
            aVar.m22553e(j2);
            aVar.m22568a();
        }
    }

    @Keep
    public static void enqueue(AbstractC10210e eVar, AbstractC10212f fVar) {
        Timer timer = new Timer();
        eVar.mo836a(new C5978g(fVar, C5992l.m22374g(), timer, timer.m7216c()));
    }

    @Keep
    public static C10091a0 execute(AbstractC10210e eVar) throws IOException {
        C5954a a = C5954a.m22565a(C5992l.m22374g());
        Timer timer = new Timer();
        long c = timer.m7216c();
        try {
            C10091a0 execute = eVar.execute();
            m7223a(execute, a, c, timer.m7217b());
            return execute;
        } catch (IOException e) {
            C10250y i = eVar.mo828i();
            if (i != null) {
                C10236s g = i.m813g();
                if (g != null) {
                    a.m22558c(g.m926o().toString());
                }
                if (i.m815e() != null) {
                    a.m22564a(i.m815e());
                }
            }
            a.m22562b(c);
            a.m22553e(timer.m7217b());
            C5979h.m22430a(a);
            throw e;
        }
    }
}
