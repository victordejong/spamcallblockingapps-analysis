package p000;

import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p000.i91;
import p000.m91;
import p000.n91;
/* renamed from: o71 */
/* loaded from: classes3-dex2jar.jar:o71.class */
public class o71 implements Serializable, m91.AbstractC1469b {

    /* renamed from: c */
    public static final String f7153c = o71.class.getSimpleName();

    /* renamed from: d */
    public static o71 f7154d = null;

    /* renamed from: f */
    public static ScheduledExecutorService f7155f;

    /* renamed from: g */
    public static ScheduledFuture<?> f7156g;

    /* renamed from: a */
    public HashMap<String, C1506b> f7157a = new HashMap<>();

    /* renamed from: b */
    public boolean f7158b = u71.m429n();

    /* renamed from: o71$a */
    /* loaded from: classes3-dex2jar.jar:o71$a.class */
    public class RunnableC1505a implements Runnable {
        public RunnableC1505a() {
            o71.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            o71.this.m1156c(false);
            o71.m1149k();
        }
    }

    /* renamed from: o71$b */
    /* loaded from: classes3-dex2jar.jar:o71$b.class */
    public static class C1506b implements Serializable {

        /* renamed from: a */
        public n91.C1485b f7160a;

        /* renamed from: b */
        public long f7161b;

        /* renamed from: c */
        public long f7162c = System.currentTimeMillis();

        public C1506b(n91.C1485b c1485b, long j) {
            this.f7160a = c1485b;
            this.f7161b = j;
        }

        /* renamed from: a */
        public boolean m1146a() {
            return this.f7161b > 0 && System.currentTimeMillis() - this.f7161b > this.f7162c;
        }

        /* renamed from: b */
        public void m1145b() {
            this.f7162c = System.currentTimeMillis();
        }
    }

    /* renamed from: d */
    public static void m1155d() {
        m1153f().f7157a.clear();
        f7154d.m1148l();
    }

    /* renamed from: e */
    public static n91.C1485b m1154e(i91 i91Var) {
        if (u71.m429n() != m1153f().f7158b) {
            o71 o71Var = f7154d;
            o71Var.f7158b = !o71Var.f7158b;
            o71Var.f7157a.clear();
            f7154d.m1148l();
            return null;
        } else if (i91Var == null) {
            return null;
        } else {
            HashMap<String, C1506b> hashMap = m1153f().f7157a;
            i91.EnumC1446b enumC1446b = i91.EnumC1446b.FULL;
            C1506b c1506b = hashMap.get(i91Var.m1607g(enumC1446b));
            if (c1506b == null) {
                String str = "No cached data for " + i91Var.m1607g(enumC1446b) + ".";
                return null;
            } else if (c1506b.m1146a()) {
                String str2 = "Cached data for " + i91Var.m1607g(enumC1446b) + " exists but expired. Cache HIT anyway but not anymore";
                f7154d.f7157a.remove(i91Var.m1607g(enumC1446b));
                return c1506b.f7160a;
            } else {
                String str3 = "Cache HIT: " + i91Var.m1607g(enumC1446b) + ". Decision: " + c1506b.f7160a.f7082a + " Block:" + c1506b.f7160a.f7083b;
                c1506b.m1145b();
                return new n91.C1485b(c1506b.f7160a);
            }
        }
    }

    /* renamed from: f */
    public static o71 m1153f() {
        if (f7154d == null) {
            m1152g();
        }
        return f7154d;
    }

    /* renamed from: g */
    public static void m1152g() {
        try {
            ObjectInputStream objectInputStream = new ObjectInputStream(fa1.m1840j().openFileInput("FilterCache"));
            f7154d = (o71) objectInputStream.readObject();
            objectInputStream.close();
        } catch (Throwable th) {
            f7154d = new o71();
            j91.m1517G(f7153c, "Instance load failure. Defaults used");
        }
        m91.m1278d(f7154d, EnumSet.of(m91.EnumC1470c.DATA_UPDATE, m91.EnumC1470c.SETTINGS_CHANGED), new Class[0]);
    }

    /* renamed from: h */
    public static void m1151h(i91 i91Var, n91.C1485b c1485b, long j) {
        if (!c1485b.m1212b()) {
            return;
        }
        String str = "Cache put: " + i91Var + " (" + c1485b.f7086f + ")";
        m1153f().f7157a.put(i91Var.m1607g(i91.EnumC1446b.FULL), new C1506b(new n91.C1485b(c1485b), j));
        f7154d.m1148l();
    }

    /* renamed from: j */
    public static void m1150j(i91 i91Var) {
        m1153f().f7157a.remove(i91Var.m1607g(i91.EnumC1446b.FULL));
    }

    /* renamed from: k */
    public static void m1149k() {
        if (f7154d == null) {
            return;
        }
        try {
            ObjectOutputStream objectOutputStream = new ObjectOutputStream(fa1.m1840j().openFileOutput("FilterCache", 0));
            objectOutputStream.writeObject(f7154d);
            objectOutputStream.close();
        } catch (Throwable th) {
            j91.m1504l(f7153c, "Unable to save to FilterCache", th);
        }
    }

    /* renamed from: m */
    public static void m1147m() {
        m1153f().m1156c(false);
    }

    /* renamed from: c */
    public final void m1156c(boolean z) {
        String str = "Starting cache cleanup. Data updated:" + z;
        ArrayList arrayList = new ArrayList();
        for (String str2 : this.f7157a.keySet()) {
            C1506b c1506b = this.f7157a.get(str2);
            if ((z && c1506b.f7161b == -1) || (!z && c1506b.m1146a())) {
                arrayList.add(str2);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            String str3 = (String) it.next();
            String str4 = "Removing cache for " + str3;
            this.f7157a.remove(str3);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0069, code lost:
        if (r0.getInt(p000.aa1.f217j) <= 0) goto L21;
     */
    @Override // p000.m91.AbstractC1469b
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo648i(p000.m91.EnumC1470c r5, java.lang.Class<?> r6, java.lang.Object r7) {
        /*
            Method dump skipped, instructions count: 407
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.o71.mo648i(m91$c, java.lang.Class, java.lang.Object):void");
    }

    /* renamed from: l */
    public final void m1148l() {
        if (f7155f == null) {
            f7155f = Executors.newSingleThreadScheduledExecutor();
        }
        ScheduledFuture<?> scheduledFuture = f7156g;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        f7156g = f7155f.schedule(new RunnableC1505a(), 5000L, TimeUnit.MILLISECONDS);
    }
}
