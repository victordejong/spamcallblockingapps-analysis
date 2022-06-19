package p068d2;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.support.p012v4.media.C0082b;
import androidx.recyclerview.widget.C0608b;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import p068d2.C2374o1;
/* renamed from: d2.r1 */
/* loaded from: classes-dex2jar.jar:d2/r1.class */
public class C2396r1 {

    /* renamed from: e */
    public static C2396r1 f8462e;

    /* renamed from: a */
    public C2374o1 f8463a;

    /* renamed from: b */
    public final ExecutorService f8464b = C2315i3.m3671F();

    /* renamed from: c */
    public C2432w1 f8465c = null;

    /* renamed from: d */
    public boolean f8466d = false;

    /* renamed from: d2.r1$a */
    /* loaded from: classes-dex2jar.jar:d2/r1$a.class */
    public class RunnableC2397a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ AbstractC2161a f8467a;

        /* renamed from: b */
        public final /* synthetic */ long f8468b;

        public RunnableC2397a(AbstractC2161a abstractC2161a, long j) {
            C2396r1.this = r5;
            this.f8467a = abstractC2161a;
            this.f8468b = j;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2432w1 c2432w1;
            AbstractC2161a abstractC2161a = this.f8467a;
            C2396r1 c2396r1 = C2396r1.this;
            if (c2396r1.f8466d) {
                c2432w1 = c2396r1.f8465c;
            } else {
                C2197d3 m3765d = C2197d3.m3765d();
                C2374o1 c2374o1 = C2396r1.this.f8463a;
                long j = this.f8468b;
                if (m3765d.f8019c) {
                    SQLiteDatabase sQLiteDatabase = m3765d.f8018b;
                    Executor executor = m3765d.f8017a;
                    C2432w1 c2432w12 = new C2432w1(c2374o1.f8396a, null);
                    try {
                        CountDownLatch countDownLatch = new CountDownLatch(1);
                        executor.execute(new RunnableC2426v1(c2374o1, sQLiteDatabase, c2432w12, countDownLatch));
                        if (j > 0) {
                            countDownLatch.await(j, TimeUnit.MILLISECONDS);
                        } else {
                            countDownLatch.await();
                        }
                    } catch (InterruptedException | RejectedExecutionException e) {
                        StringBuilder sb = new StringBuilder();
                        StringBuilder m8752j = C0082b.m8752j("ADCDbReader.calculateFeatureVectors failed with: ");
                        m8752j.append(e.toString());
                        sb.append(m8752j.toString());
                        C0082b.m8750l(0, 0, sb.toString(), true);
                    }
                    c2432w1 = c2432w12;
                } else {
                    c2432w1 = null;
                }
            }
            abstractC2161a.accept(c2432w1);
        }
    }

    /* renamed from: a */
    public static ContentValues m3613a(C2267f4 c2267f4, C2374o1.C2375a c2375a) throws NumberFormatException, NullPointerException {
        ContentValues contentValues = new ContentValues();
        for (C2374o1.C2376b c2376b : c2375a.f8403f) {
            Object m3698n = c2267f4.m3698n(c2376b.f8407a);
            if (m3698n != null) {
                if (m3698n instanceof Boolean) {
                    contentValues.put(c2376b.f8407a, (Boolean) m3698n);
                } else if (m3698n instanceof Long) {
                    contentValues.put(c2376b.f8407a, (Long) m3698n);
                } else if (m3698n instanceof Double) {
                    contentValues.put(c2376b.f8407a, (Double) m3698n);
                } else if (m3698n instanceof Number) {
                    Number number = (Number) m3698n;
                    if (number.doubleValue() != number.longValue() || !"INTEGER".equalsIgnoreCase(c2376b.f8408b)) {
                        contentValues.put(c2376b.f8407a, Double.valueOf(number.doubleValue()));
                    } else {
                        contentValues.put(c2376b.f8407a, Long.valueOf(number.longValue()));
                    }
                } else if (m3698n instanceof String) {
                    contentValues.put(c2376b.f8407a, (String) m3698n);
                }
            }
        }
        return contentValues;
    }

    /* renamed from: c */
    public static C2396r1 m3611c() {
        if (f8462e == null) {
            synchronized (C2396r1.class) {
                try {
                    if (f8462e == null) {
                        f8462e = new C2396r1();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f8462e;
    }

    /* renamed from: b */
    public void m3612b(AbstractC2161a<C2432w1> abstractC2161a, long j) {
        if (this.f8463a == null) {
            abstractC2161a.accept(null);
        } else if (this.f8466d) {
            abstractC2161a.accept(this.f8465c);
        } else if (C2315i3.m3658m(this.f8464b, new RunnableC2397a(abstractC2161a, j))) {
        } else {
            C0082b.m8750l(0, 0, C0608b.m7626i("Execute ADCOdtEventsListener.calculateFeatureVectors failed"), true);
        }
    }
}
