package p158l6;

import android.os.Process;
import android.support.p012v4.media.C0082b;
import android.system.Os;
import android.system.OsConstants;
import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p104g6.C2905a;
import p180n6.C3729e;
import p191o6.C3903e;
import p305z4.RunnableC5094n;
/* renamed from: l6.b */
/* loaded from: classes-dex2jar.jar:l6/b.class */
public class C3505b {

    /* renamed from: g */
    public static final C2905a f11624g = C2905a.m2869b();

    /* renamed from: h */
    public static final long f11625h = TimeUnit.SECONDS.toMicros(1);

    /* renamed from: i */
    public static C3505b f11626i = null;

    /* renamed from: c */
    public final String f11629c;

    /* renamed from: e */
    public ScheduledFuture f11631e = null;

    /* renamed from: f */
    public long f11632f = -1;

    /* renamed from: a */
    public final ConcurrentLinkedQueue<C3903e> f11627a = new ConcurrentLinkedQueue<>();

    /* renamed from: b */
    public final ScheduledExecutorService f11628b = Executors.newSingleThreadScheduledExecutor();

    /* renamed from: d */
    public final long f11630d = Os.sysconf(OsConstants._SC_CLK_TCK);

    public C3505b() {
        int myPid = Process.myPid();
        StringBuilder m8752j = C0082b.m8752j("/proc/");
        m8752j.append(Integer.toString(myPid));
        m8752j.append("/stat");
        this.f11629c = m8752j.toString();
    }

    /* renamed from: a */
    public final void m2223a(long j, C3729e c3729e) {
        synchronized (this) {
            this.f11632f = j;
            try {
                this.f11631e = this.f11628b.scheduleAtFixedRate(new RunnableC5094n(this, c3729e, 2), 0L, j, TimeUnit.MILLISECONDS);
            } catch (RejectedExecutionException e) {
                C2905a c2905a = f11624g;
                c2905a.m2866e("Unable to start collecting Cpu Metrics: " + e.getMessage());
            }
        }
    }

    /* renamed from: b */
    public final C3903e m2222b(C3729e c3729e) {
        RuntimeException e;
        if (c3729e == null) {
            return null;
        }
        try {
            BufferedReader bufferedReader = new BufferedReader(new FileReader(this.f11629c));
            try {
                long j = c3729e.f12119a;
                long m1840a = c3729e.m1840a();
                String[] split = bufferedReader.readLine().split(" ");
                long parseLong = Long.parseLong(split[13]);
                long parseLong2 = Long.parseLong(split[15]);
                long parseLong3 = Long.parseLong(split[14]);
                long parseLong4 = Long.parseLong(split[16]);
                C3903e.C3905b m1701C = C3903e.m1701C();
                m1701C.m4282n();
                C3903e.m1699z((C3903e) m1701C.f7078b, m1840a + j);
                double d = (parseLong3 + parseLong4) / this.f11630d;
                double d2 = f11625h;
                long round = Math.round(d * d2);
                m1701C.m4282n();
                C3903e.m1702B((C3903e) m1701C.f7078b, round);
                long round2 = Math.round(((parseLong + parseLong2) / this.f11630d) * d2);
                m1701C.m4282n();
                C3903e.m1703A((C3903e) m1701C.f7078b, round2);
                C3903e m4284l = m1701C.m4284l();
                bufferedReader.close();
                return m4284l;
            } catch (Throwable th) {
                try {
                    bufferedReader.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        } catch (IOException e2) {
            C2905a c2905a = f11624g;
            StringBuilder m8752j = C0082b.m8752j("Unable to read 'proc/[pid]/stat' file: ");
            m8752j.append(e2.getMessage());
            c2905a.m2866e(m8752j.toString());
            return null;
        } catch (ArrayIndexOutOfBoundsException e3) {
            e = e3;
            C2905a c2905a2 = f11624g;
            StringBuilder m8752j2 = C0082b.m8752j("Unexpected '/proc/[pid]/stat' file format encountered: ");
            m8752j2.append(e.getMessage());
            c2905a2.m2866e(m8752j2.toString());
            return null;
        } catch (NullPointerException e4) {
            e = e4;
            C2905a c2905a22 = f11624g;
            StringBuilder m8752j22 = C0082b.m8752j("Unexpected '/proc/[pid]/stat' file format encountered: ");
            m8752j22.append(e.getMessage());
            c2905a22.m2866e(m8752j22.toString());
            return null;
        } catch (NumberFormatException e5) {
            e = e5;
            C2905a c2905a222 = f11624g;
            StringBuilder m8752j222 = C0082b.m8752j("Unexpected '/proc/[pid]/stat' file format encountered: ");
            m8752j222.append(e.getMessage());
            c2905a222.m2866e(m8752j222.toString());
            return null;
        }
    }
}
