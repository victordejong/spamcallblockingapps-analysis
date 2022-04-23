package p131c.p161d.p282e.p340u.p342e;

import android.os.Build;
import android.os.Process;
import android.system.Os;
import android.system.OsConstants;
import com.google.firebase.perf.util.Timer;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p131c.p161d.p282e.p340u.p345h.C5969a;
import p131c.p161d.p282e.p340u.p350m.C6013g;
/* renamed from: c.d.e.u.e.c */
/* loaded from: classes2-dex2jar.jar:c/d/e/u/e/c.class */
public class C5950c {

    /* renamed from: g */
    public static final C5969a f19313g = C5969a.m22496a();

    /* renamed from: h */
    public static final long f19314h = TimeUnit.SECONDS.toMicros(1);

    /* renamed from: i */
    public static C5950c f19315i = null;

    /* renamed from: e */
    public final String f19320e;

    /* renamed from: a */
    public ScheduledFuture f19316a = null;

    /* renamed from: c */
    public long f19318c = -1;

    /* renamed from: f */
    public final ConcurrentLinkedQueue<C6013g> f19321f = new ConcurrentLinkedQueue<>();

    /* renamed from: b */
    public final ScheduledExecutorService f19317b = Executors.newSingleThreadScheduledExecutor();

    /* renamed from: d */
    public final long f19319d = m22593a();

    public C5950c() {
        int myPid = Process.myPid();
        this.f19320e = "/proc/" + Integer.toString(myPid) + "/stat";
    }

    /* renamed from: a */
    public static /* synthetic */ void m22590a(C5950c cVar, Timer timer) {
        C6013g c = cVar.m22582c(timer);
        if (c != null) {
            cVar.f19321f.add(c);
        }
    }

    /* renamed from: b */
    public static /* synthetic */ void m22585b(C5950c cVar, Timer timer) {
        C6013g c = cVar.m22582c(timer);
        if (c != null) {
            cVar.f19321f.add(c);
        }
    }

    /* renamed from: b */
    public static boolean m22587b(long j) {
        return j <= 0;
    }

    /* renamed from: c */
    public static C5950c m22583c() {
        if (f19315i == null) {
            f19315i = new C5950c();
        }
        return f19315i;
    }

    /* renamed from: a */
    public final long m22593a() {
        if (Build.VERSION.SDK_INT >= 21) {
            return Os.sysconf(OsConstants._SC_CLK_TCK);
        }
        return -1L;
    }

    /* renamed from: a */
    public final long m22592a(long j) {
        double d = j;
        double d2 = this.f19319d;
        Double.isNaN(d);
        Double.isNaN(d2);
        double d3 = d / d2;
        double d4 = f19314h;
        Double.isNaN(d4);
        return Math.round(d3 * d4);
    }

    /* renamed from: a */
    public final void m22591a(long j, Timer timer) {
        synchronized (this) {
            this.f19318c = j;
            try {
                this.f19316a = this.f19317b.scheduleAtFixedRate(RunnableC5948a.m22595a(this, timer), 0L, j, TimeUnit.MILLISECONDS);
            } catch (RejectedExecutionException e) {
                C5969a aVar = f19313g;
                aVar.m22491d("Unable to start collecting Cpu Metrics: " + e.getMessage(), new Object[0]);
            }
        }
    }

    /* renamed from: a */
    public void m22589a(Timer timer) {
        m22584b(timer);
    }

    /* renamed from: b */
    public void m22588b() {
        ScheduledFuture scheduledFuture = this.f19316a;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
            this.f19316a = null;
            this.f19318c = -1L;
        }
    }

    /* renamed from: b */
    public void m22586b(long j, Timer timer) {
        long j2 = this.f19319d;
        if (j2 != -1 && j2 != 0 && !m22587b(j)) {
            if (this.f19316a == null) {
                m22591a(j, timer);
            } else if (this.f19318c != j) {
                m22588b();
                m22591a(j, timer);
            }
        }
    }

    /* renamed from: b */
    public final void m22584b(Timer timer) {
        synchronized (this) {
            try {
                this.f19317b.schedule(RunnableC5949b.m22594a(this, timer), 0L, TimeUnit.MILLISECONDS);
            } catch (RejectedExecutionException e) {
                C5969a aVar = f19313g;
                aVar.m22491d("Unable to collect Cpu Metric: " + e.getMessage(), new Object[0]);
            }
        }
    }

    /* renamed from: c */
    public final C6013g m22582c(Timer timer) {
        RuntimeException e;
        if (timer == null) {
            return null;
        }
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(this.f19320e));
            try {
                long a = timer.m7219a();
                String[] split = bufferedReader.readLine().split(" ");
                long parseLong = Long.parseLong(split[13]);
                long parseLong2 = Long.parseLong(split[15]);
                long parseLong3 = Long.parseLong(split[14]);
                long parseLong4 = Long.parseLong(split[16]);
                C6013g.C6015b w = C6013g.m22300w();
                w.m22299a(a);
                w.m22298b(m22592a(parseLong3 + parseLong4));
                w.m22297c(m22592a(parseLong + parseLong2));
                C6013g a2 = w.mo6937a();
                bufferedReader.close();
                return a2;
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                }
                throw th;
            }
        } catch (IOException e2) {
            C5969a aVar = f19313g;
            aVar.m22491d("Unable to read 'proc/[pid]/stat' file: " + e2.getMessage(), new Object[0]);
            return null;
        } catch (ArrayIndexOutOfBoundsException e3) {
            e = e3;
            C5969a aVar2 = f19313g;
            aVar2.m22491d("Unexpected '/proc/[pid]/stat' file format encountered: " + e.getMessage(), new Object[0]);
            return null;
        } catch (NullPointerException e4) {
            e = e4;
            C5969a aVar22 = f19313g;
            aVar22.m22491d("Unexpected '/proc/[pid]/stat' file format encountered: " + e.getMessage(), new Object[0]);
            return null;
        } catch (NumberFormatException e5) {
            e = e5;
            C5969a aVar222 = f19313g;
            aVar222.m22491d("Unexpected '/proc/[pid]/stat' file format encountered: " + e.getMessage(), new Object[0]);
            return null;
        }
    }
}
