package p000;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.net.Uri;
import android.os.Handler;
import android.provider.CallLog;
import android.text.TextUtils;
import android.util.SparseArray;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p000.fa1;
import p000.n91;
import p000.q71;
/* renamed from: z91 */
/* loaded from: classes3-dex2jar.jar:z91.class */
public class z91 {

    /* renamed from: g */
    public static final String f8766g = "z91";

    /* renamed from: h */
    public static z91 f8767h;

    /* renamed from: i */
    public static ArrayList<AbstractC1744g> f8768i = new ArrayList<>();

    /* renamed from: j */
    public static SparseArray<Boolean> f8769j = new SparseArray<>();

    /* renamed from: e */
    public long f8774e = 0;

    /* renamed from: f */
    public long f8775f = 20;

    /* renamed from: a */
    public Handler f8770a = new Handler();

    /* renamed from: c */
    public ScheduledExecutorService[] f8772c = {Executors.newSingleThreadScheduledExecutor(), Executors.newSingleThreadScheduledExecutor(), Executors.newSingleThreadScheduledExecutor()};

    /* renamed from: d */
    public ScheduledFuture<?>[] f8773d = new ScheduledFuture[3];

    /* renamed from: b */
    public C1740d[] f8771b = {new C1740d(this.f8770a, q71.EnumC1618e.CALL, 0), new C1740d(this.f8770a, q71.EnumC1618e.SMS, 1)};

    /* renamed from: z91$a */
    /* loaded from: classes3-dex2jar.jar:z91$a.class */
    public class RunnableC1737a implements Runnable {
        public RunnableC1737a() {
            z91.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            ContentResolver contentResolver = fa1.m1840j().getContentResolver();
            contentResolver.registerContentObserver(CallLog.Calls.CONTENT_URI, true, z91.this.f8771b[0]);
            contentResolver.registerContentObserver(fa1.C1423g.f6600a, true, z91.this.f8771b[1]);
            for (C1740d c1740d : z91.this.f8771b) {
                c1740d.onChange(false);
            }
        }
    }

    /* renamed from: z91$b */
    /* loaded from: classes3-dex2jar.jar:z91$b.class */
    public class RunnableC1738b implements Runnable {
        public RunnableC1738b(z91 z91Var) {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (z91.f8768i.size() > 0) {
                String str = z91.f8768i.size() + " blocked notifications reached maximum TTL of 300 sec. Cleaning up";
                z91.f8768i.clear();
            }
        }
    }

    /* renamed from: z91$c */
    /* loaded from: classes3-dex2jar.jar:z91$c.class */
    public static /* synthetic */ class C1739c {

        /* renamed from: a */
        public static final /* synthetic */ int[] f8777a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[q71.EnumC1618e.values().length];
            f8777a = iArr;
            try {
                iArr[q71.EnumC1618e.CALL.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f8777a[q71.EnumC1618e.SMS.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f8777a[q71.EnumC1618e.MMS.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* renamed from: z91$d */
    /* loaded from: classes3-dex2jar.jar:z91$d.class */
    public static class C1740d extends ContentObserver {

        /* renamed from: a */
        public q71.EnumC1618e f8778a;

        /* renamed from: b */
        public int f8779b;

        /* renamed from: z91$d$a */
        /* loaded from: classes3-dex2jar.jar:z91$d$a.class */
        public class RunnableC1741a implements Runnable {
            public RunnableC1741a() {
                C1740d.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                z91.m49j().m45n(C1740d.this.f8778a, C1740d.this.f8779b);
            }
        }

        public C1740d(Handler handler, q71.EnumC1618e enumC1618e, int i) {
            super(handler);
            this.f8778a = enumC1618e;
            this.f8779b = i;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            super.onChange(z);
            ScheduledFuture scheduledFuture = z91.m49j().f8773d[this.f8779b];
            if (scheduledFuture != null) {
                scheduledFuture.cancel(false);
            }
            z91.f8767h.f8773d[this.f8779b] = z91.f8767h.f8772c[this.f8779b].schedule(new RunnableC1741a(), 1000L, TimeUnit.MILLISECONDS);
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z, Uri uri) {
            onChange(z);
        }
    }

    /* renamed from: z91$e */
    /* loaded from: classes3-dex2jar.jar:z91$e.class */
    public static class C1742e extends AbstractC1744g {

        /* renamed from: b */
        public n91.C1485b f8781b;

        /* renamed from: c */
        public q71.EnumC1618e f8782c;

        public C1742e(i91 i91Var, n91.C1485b c1485b, q71.EnumC1618e enumC1618e) {
            super(i91Var);
            this.f8781b = c1485b;
            this.f8782c = enumC1618e;
        }
    }

    /* renamed from: z91$f */
    /* loaded from: classes3-dex2jar.jar:z91$f.class */
    public static class C1743f extends AbstractC1744g {

        /* renamed from: b */
        public long f8783b;

        /* renamed from: c */
        public long f8784c;

        /* renamed from: d */
        public String f8785d;

        public C1743f(i91 i91Var, long j, long j2, String str) {
            super(i91Var);
            this.f8785d = str;
            this.f8783b = j;
            this.f8784c = j2;
        }
    }

    /* renamed from: z91$g */
    /* loaded from: classes3-dex2jar.jar:z91$g.class */
    public static abstract class AbstractC1744g {

        /* renamed from: a */
        public i91 f8786a;

        public AbstractC1744g(i91 i91Var) {
            this.f8786a = i91Var;
        }

        /* renamed from: a */
        public void m34a() {
            z91.f8768i.remove(this);
        }
    }

    public z91() {
        this.f8772c[0].schedule(new RunnableC1737a(), 1000L, TimeUnit.MILLISECONDS);
    }

    /* renamed from: h */
    public static void m51h(i91 i91Var) {
        String i91Var2 = i91Var.toString();
        ArrayList arrayList = new ArrayList();
        Iterator<AbstractC1744g> it = f8768i.iterator();
        while (it.hasNext()) {
            AbstractC1744g next = it.next();
            if ((next instanceof C1742e) && ((C1742e) next).f8781b.f7083b && i91Var2.equals(next.f8786a.toString())) {
                arrayList.add(next);
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            ((AbstractC1744g) it2.next()).m34a();
        }
        arrayList.clear();
    }

    /* renamed from: i */
    public static void m50i() {
        m38u();
        m49j();
    }

    /* renamed from: j */
    public static z91 m49j() {
        if (f8767h == null) {
            f8767h = new z91();
        }
        return f8767h;
    }

    /* renamed from: k */
    public static C1742e m48k(i91 i91Var) {
        String str = "Requested notification for " + i91Var;
        String i91Var2 = i91Var.toString();
        Iterator<AbstractC1744g> it = f8768i.iterator();
        while (it.hasNext()) {
            AbstractC1744g next = it.next();
            if ((next instanceof C1742e) && i91Var2.equals(next.f8786a.toString())) {
                return (C1742e) next;
            }
        }
        String str2 = "No notification found for " + i91Var + " from " + f8768i.size() + " queued";
        return null;
    }

    /* renamed from: l */
    public static C1743f m47l(i91 i91Var, String str) {
        String str2 = "Requested notification for " + i91Var + " with body " + str;
        String i91Var2 = i91Var.toString();
        Iterator<AbstractC1744g> it = f8768i.iterator();
        while (it.hasNext()) {
            AbstractC1744g next = it.next();
            if ((next instanceof C1743f) && i91Var2.equals(next.f8786a.toString())) {
                C1743f c1743f = (C1743f) next;
                if (c1743f.f8785d.equals(str)) {
                    return c1743f;
                }
            }
        }
        String str3 = "No notification found for " + i91Var + " from " + f8768i.size() + " queued";
        return null;
    }

    /* renamed from: m */
    public static boolean m46m(q71.EnumC1618e enumC1618e) {
        Boolean bool = f8769j.get(enumC1618e.m902b().intValue());
        if (bool == null) {
            return false;
        }
        return bool.booleanValue();
    }

    /* renamed from: o */
    public static void m44o(i91 i91Var, n91.C1485b c1485b, q71.EnumC1618e enumC1618e) {
        String str = "Received filter notification for " + i91Var;
        if (c1485b.f7085d != null) {
            String str2 = "Mask matched is " + c1485b.f7085d;
        }
        f8768i.add(new C1742e(i91Var, c1485b, enumC1618e));
        String str3 = "Notifications in queue: " + f8768i.size();
    }

    /* renamed from: p */
    public static void m43p(i91 i91Var, long j, long j2, String str) {
        String str2 = "Received Meta Thread notification for " + i91Var;
        f8768i.add(new C1743f(i91Var, j, j2, str));
        String str3 = "Notifications in queue: " + f8768i.size();
    }

    /* renamed from: q */
    public static void m42q(i91 i91Var, n91.C1485b c1485b) {
        String str;
        String str2;
        if (i91Var == null || c1485b == null) {
            str = f8766g;
            str2 = "Error registering blocked call, number or resolution is null!";
        } else if (c1485b.f7083b) {
            l81 l81Var = new l81();
            l81Var.f6930n = 1;
            l81Var.f6929m = i91Var;
            l81Var.f6923f = 0L;
            l81Var.f6932p = c1485b.f7082a;
            l81Var.f6933q = c1485b.f7087g;
            l81Var.f6931o = EnumSet.of(q71.EnumC1618e.CALL);
            l81Var.f6926j = true;
            l81Var.f6927k = c1485b.f7085d;
            if (c1485b.f7086f != null && !i91Var.m1601m().equals(c1485b.f7086f)) {
                l81Var.f6925h = c1485b.f7086f;
            }
            l81Var.m1365E();
            l81Var.m1364E0();
            if (TextUtils.isEmpty(l81Var.f6925h) || i91Var.m1601m().equals(l81Var.f6925h)) {
                x81 x81Var = new x81();
                Cursor m162K = x81Var.m162K(i91Var);
                if (m162K != null && m162K.moveToFirst()) {
                    while (true) {
                        x81Var.m164I(m162K);
                        if (TextUtils.isEmpty(x81Var.f8636f)) {
                            if (!m162K.moveToNext()) {
                                break;
                            }
                        } else {
                            l81Var.f6925h = x81Var.f8636f;
                            break;
                        }
                    }
                }
                if (m162K != null) {
                    m162K.close();
                }
            }
            l81Var.mo148z();
            return;
        } else {
            str = f8766g;
            str2 = "Trying to register blocked number with non-block resolution!";
        }
        j91.m1505k(str, str2);
    }

    /* renamed from: r */
    public static void m41r(i91 i91Var, String str) {
        l81 l81Var = new l81();
        Cursor m1341V = l81Var.m1341V();
        if (m1341V == null) {
            return;
        }
        if (!m1341V.moveToFirst()) {
            m1341V.close();
        }
        do {
            l81Var.m1344S(m1341V);
            if (l81Var.f6926j && l81Var.f6929m.toString().equals(i91Var.toString()) && l81Var.m1365E()) {
                l81Var.mo148z();
            }
        } while (m1341V.moveToNext());
        m1341V.close();
    }

    /* renamed from: s */
    public static void m40s() {
        m49j();
    }

    /* renamed from: u */
    public static void m38u() {
        z91 z91Var = f8767h;
        if (z91Var == null) {
            return;
        }
        z91Var.m39t();
        f8767h = null;
    }

    /* renamed from: v */
    public static void m37v(i91 i91Var, String str) {
        String i91Var2 = i91Var.toString();
        Iterator<AbstractC1744g> it = f8768i.iterator();
        while (it.hasNext()) {
            AbstractC1744g next = it.next();
            if ((next instanceof C1742e) && i91Var2.equals(next.f8786a.toString())) {
                ((C1742e) next).f8781b.f7086f = str;
                return;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:153:0x0737, code lost:
        if (r0 != false) goto L156;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x0746, code lost:
        if (r0 != false) goto L156;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x0749, code lost:
        r0.m1311z0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0752, code lost:
        r0.m1368B0();
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x040d, code lost:
        if (r8 == r0) goto L90;
     */
    /* JADX WARN: Removed duplicated region for block: B:218:0x0b01 A[LOOP:0: B:36:0x01eb->B:218:0x0b01, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:224:0x09cd A[EDGE_INSN: B:224:0x09cd->B:203:0x09cd ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0172 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0173  */
    /* JADX WARN: Type inference failed for: r0v484, types: [long] */
    /* renamed from: n */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m45n(p000.q71.EnumC1618e r8, int r9) {
        /*
            Method dump skipped, instructions count: 2841
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.z91.m45n(q71$e, int):void");
    }

    /* renamed from: t */
    public final void m39t() {
        ContentResolver contentResolver = fa1.m1840j().getContentResolver();
        for (C1740d c1740d : this.f8771b) {
            contentResolver.unregisterContentObserver(c1740d);
        }
        for (ScheduledExecutorService scheduledExecutorService : this.f8772c) {
            scheduledExecutorService.shutdownNow();
        }
        this.f8772c = null;
    }
}
