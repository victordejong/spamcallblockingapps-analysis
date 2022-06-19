package p204p9;

import android.support.p012v4.media.C0082b;
import com.google.android.gms.common.api.Api;
import java.lang.ref.Reference;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p086f.C2678t;
import p214q9.C4171c;
import p214q9.ThreadFactoryC4173d;
import p236s9.C4335c;
import p236s9.C4338e;
import p290x9.C4945f;
/* renamed from: p9.i */
/* loaded from: classes2-dex2jar.jar:p9/i.class */
public final class C4106i {

    /* renamed from: g */
    public static final Executor f12909g;

    /* renamed from: b */
    public final long f12911b;

    /* renamed from: f */
    public boolean f12915f;

    /* renamed from: c */
    public final Runnable f12912c = new RunnableC4107a();

    /* renamed from: d */
    public final Deque<C4335c> f12913d = new ArrayDeque();

    /* renamed from: e */
    public final C2678t f12914e = new C2678t(5);

    /* renamed from: a */
    public final int f12910a = 5;

    /* renamed from: p9.i$a */
    /* loaded from: classes2-dex2jar.jar:p9/i$a.class */
    public class RunnableC4107a implements Runnable {
        public RunnableC4107a() {
            C4106i.this = r4;
        }

        /* JADX WARN: Type inference failed for: r0v16, types: [long] */
        /* JADX WARN: Type inference failed for: r0v49, types: [long] */
        /* JADX WARN: Type inference failed for: r0v59, types: [long] */
        @Override // java.lang.Runnable
        public void run() {
            char c;
            while (true) {
                C4106i c4106i = C4106i.this;
                long nanoTime = System.nanoTime();
                synchronized (c4106i) {
                    C4335c c4335c = null;
                    char c2 = 0;
                    int i = 0;
                    int i2 = 0;
                    for (C4335c c4335c2 : c4106i.f12913d) {
                        if (c4106i.m1416a(c4335c2, nanoTime) > 0) {
                            i2++;
                        } else {
                            int i3 = i + 1;
                            ?? r0 = nanoTime - c4335c2.f13498o;
                            i = i3;
                            if (r0 > c2) {
                                c4335c = c4335c2;
                                c2 = r0;
                                i = i3;
                            }
                        }
                    }
                    ?? r02 = c4106i.f12911b;
                    if (c2 < r02 && i <= c4106i.f12910a) {
                        if (i > 0) {
                            c = r02 - c2;
                        } else if (i2 > 0) {
                            c = r02;
                        } else {
                            c4106i.f12915f = false;
                            c = 65535;
                        }
                    }
                    c4106i.f12913d.remove(c4335c);
                    C4171c.m1331e(c4335c.f13488e);
                    c = 0;
                }
                if (c == -1) {
                    return;
                }
                if (c > 0) {
                    long j = c / 16960;
                    synchronized (C4106i.this) {
                        try {
                            C4106i.this.wait(j, (int) (c - (1000000 * j)));
                        } catch (InterruptedException e) {
                        }
                    }
                }
            }
        }
    }

    static {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        SynchronousQueue synchronousQueue = new SynchronousQueue();
        byte[] bArr = C4171c.f13144a;
        f12909g = new ThreadPoolExecutor(0, (int) Api.BaseClientBuilder.API_PRIORITY_OTHER, 60L, timeUnit, synchronousQueue, new ThreadFactoryC4173d("OkHttp ConnectionPool", true));
    }

    public C4106i() {
        TimeUnit timeUnit = TimeUnit.MINUTES;
        this.f12911b = timeUnit.toNanos(5L);
    }

    /* renamed from: a */
    public final int m1416a(C4335c c4335c, long j) {
        List<Reference<C4338e>> list = c4335c.f13497n;
        int i = 0;
        while (i < list.size()) {
            Reference<C4338e> reference = list.get(i);
            if (reference.get() != null) {
                i++;
            } else {
                C4338e.C4339a c4339a = (C4338e.C4339a) reference;
                StringBuilder m8752j = C0082b.m8752j("A connection to ");
                m8752j.append(c4335c.f13486c.f12875a.f12785a);
                m8752j.append(" was leaked. Did you forget to close a response body?");
                C4945f.f15078a.mo209m(m8752j.toString(), c4339a.f13522a);
                list.remove(i);
                c4335c.f13494k = true;
                if (list.isEmpty()) {
                    c4335c.f13498o = j - this.f12911b;
                    return 0;
                }
            }
        }
        return list.size();
    }
}
