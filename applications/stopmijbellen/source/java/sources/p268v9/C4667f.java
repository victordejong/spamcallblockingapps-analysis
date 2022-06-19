package p268v9;

import com.google.android.gms.common.api.Api;
import java.io.Closeable;
import java.io.IOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import p011aa.AbstractC0054g;
import p011aa.AbstractC0055h;
import p134j4.C3248s0;
import p214q9.AbstractRunnableC4170b;
import p214q9.C4171c;
import p214q9.ThreadFactoryC4173d;
import p268v9.C4681n;
/* renamed from: v9.f */
/* loaded from: classes2-dex2jar.jar:v9/f.class */
public final class C4667f implements Closeable {

    /* renamed from: u */
    public static final ExecutorService f14401u;

    /* renamed from: b */
    public final AbstractC4670c f14403b;

    /* renamed from: d */
    public final String f14405d;

    /* renamed from: e */
    public int f14406e;

    /* renamed from: f */
    public int f14407f;

    /* renamed from: g */
    public boolean f14408g;

    /* renamed from: h */
    public final ScheduledExecutorService f14409h;

    /* renamed from: i */
    public final ExecutorService f14410i;

    /* renamed from: k */
    public boolean f14412k;

    /* renamed from: m */
    public long f14414m;

    /* renamed from: o */
    public final C3248s0 f14416o;

    /* renamed from: q */
    public final Socket f14418q;

    /* renamed from: r */
    public final C4688p f14419r;

    /* renamed from: s */
    public final C4673e f14420s;

    /* renamed from: c */
    public final Map<Integer, C4684o> f14404c = new LinkedHashMap();

    /* renamed from: l */
    public long f14413l = 0;

    /* renamed from: n */
    public C3248s0 f14415n = new C3248s0();

    /* renamed from: p */
    public boolean f14417p = false;

    /* renamed from: t */
    public final Set<Integer> f14421t = new LinkedHashSet();

    /* renamed from: j */
    public final AbstractC4691r f14411j = AbstractC4691r.f14502a;

    /* renamed from: a */
    public final boolean f14402a = true;

    /* renamed from: v9.f$a */
    /* loaded from: classes2-dex2jar.jar:v9/f$a.class */
    public class C4668a extends AbstractRunnableC4170b {

        /* renamed from: b */
        public final /* synthetic */ int f14422b;

        /* renamed from: c */
        public final /* synthetic */ long f14423c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4668a(String str, Object[] objArr, int i, long j) {
            super(str, objArr);
            C4667f.this = r5;
            this.f14422b = i;
            this.f14423c = j;
        }

        @Override // p214q9.AbstractRunnableC4170b
        /* renamed from: b */
        public void mo635b() {
            try {
                C4667f.this.f14419r.m605A(this.f14422b, this.f14423c);
            } catch (IOException e) {
                C4667f.m644d(C4667f.this);
            }
        }
    }

    /* renamed from: v9.f$b */
    /* loaded from: classes2-dex2jar.jar:v9/f$b.class */
    public static class C4669b {

        /* renamed from: a */
        public Socket f14425a;

        /* renamed from: b */
        public String f14426b;

        /* renamed from: c */
        public AbstractC0055h f14427c;

        /* renamed from: d */
        public AbstractC0054g f14428d;

        /* renamed from: e */
        public AbstractC4670c f14429e = AbstractC4670c.f14431a;

        /* renamed from: f */
        public int f14430f;

        public C4669b(boolean z) {
        }
    }

    /* renamed from: v9.f$c */
    /* loaded from: classes2-dex2jar.jar:v9/f$c.class */
    public static abstract class AbstractC4670c {

        /* renamed from: a */
        public static final AbstractC4670c f14431a = new C4671a();

        /* renamed from: v9.f$c$a */
        /* loaded from: classes2-dex2jar.jar:v9/f$c$a.class */
        public class C4671a extends AbstractC4670c {
            @Override // p268v9.C4667f.AbstractC4670c
            /* renamed from: b */
            public void mo636b(C4684o c4684o) throws IOException {
                c4684o.m621c(5);
            }
        }

        /* renamed from: a */
        public void mo637a(C4667f c4667f) {
        }

        /* renamed from: b */
        public abstract void mo636b(C4684o c4684o) throws IOException;
    }

    /* renamed from: v9.f$d */
    /* loaded from: classes2-dex2jar.jar:v9/f$d.class */
    public final class C4672d extends AbstractRunnableC4170b {

        /* renamed from: b */
        public final boolean f14432b;

        /* renamed from: c */
        public final int f14433c;

        /* renamed from: d */
        public final int f14434d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4672d(boolean z, int i, int i2) {
            super("OkHttp %s ping %08x%08x", r8.f14405d, Integer.valueOf(i), Integer.valueOf(i2));
            C4667f.this = r8;
            this.f14432b = z;
            this.f14433c = i;
            this.f14434d = i2;
        }

        /* JADX WARN: Can't wrap try/catch for region: R(6:22|(4:4|1f|8|(3:10|21|19))|24|16|21|19) */
        /* JADX WARN: Code restructure failed: missing block: B:18:0x0052, code lost:
            r0.m643k(2, 2);
         */
        @Override // p214q9.AbstractRunnableC4170b
        /* renamed from: b */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo635b() {
            /*
                r5 = this;
                r0 = r5
                v9.f r0 = p268v9.C4667f.this
                r6 = r0
                r0 = r5
                boolean r0 = r0.f14432b
                r7 = r0
                r0 = r5
                int r0 = r0.f14433c
                r8 = r0
                r0 = r5
                int r0 = r0.f14434d
                r9 = r0
                r0 = r6
                java.lang.Object r0 = java.util.Objects.requireNonNull(r0)
                r0 = r7
                if (r0 != 0) goto L42
                r0 = r6
                monitor-enter(r0)
                r0 = r6
                boolean r0 = r0.f14412k     // Catch: java.lang.Throwable -> L3b
                r10 = r0
                r0 = r6
                r1 = 1
                r0.f14412k = r1     // Catch: java.lang.Throwable -> L3b
                r0 = r6
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L3b
                r0 = r10
                if (r0 == 0) goto L42
                r0 = r6
                r1 = 2
                r2 = 2
                r0.m643k(r1, r2)     // Catch: java.io.IOException -> L59
                goto L58
            L3b:
                r11 = move-exception
                r0 = r6
                monitor-exit(r0)     // Catch: java.lang.Throwable -> L3b
                r0 = r11
                throw r0
            L42:
                r0 = r6
                v9.p r0 = r0.f14419r     // Catch: java.io.IOException -> L50
                r1 = r7
                r2 = r8
                r3 = r9
                r0.m598r(r1, r2, r3)     // Catch: java.io.IOException -> L50
                goto L58
            L50:
                r11 = move-exception
                r0 = r6
                r1 = 2
                r2 = 2
                r0.m643k(r1, r2)     // Catch: java.io.IOException -> L59
            L58:
                return
            L59:
                r6 = move-exception
                goto L58
            */
            throw new UnsupportedOperationException("Method not decompiled: p268v9.C4667f.C4672d.mo635b():void");
        }
    }

    /* renamed from: v9.f$e */
    /* loaded from: classes2-dex2jar.jar:v9/f$e.class */
    public class C4673e extends AbstractRunnableC4170b implements C4681n.AbstractC4683b {

        /* renamed from: b */
        public final C4681n f14436b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4673e(C4681n c4681n) {
            super("OkHttp %s", r8.f14405d);
            C4667f.this = r8;
            this.f14436b = c4681n;
        }

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:17:0x004b -> B:14:0x0043). Please submit an issue!!! */
        @Override // p214q9.AbstractRunnableC4170b
        /* renamed from: b */
        public void mo635b() {
            try {
                try {
                    this.f14436b.m628l(this);
                    do {
                    } while (this.f14436b.m629k(false, this));
                    C4667f.this.m643k(1, 6);
                } catch (IOException e) {
                    C4667f.this.m643k(2, 2);
                } catch (Throwable th) {
                    try {
                        C4667f.this.m643k(3, 3);
                    } catch (IOException e2) {
                    }
                    C4171c.m1332d(this.f14436b);
                    throw th;
                }
            } catch (IOException e3) {
            }
            C4171c.m1332d(this.f14436b);
        }
    }

    static {
        TimeUnit timeUnit = TimeUnit.SECONDS;
        SynchronousQueue synchronousQueue = new SynchronousQueue();
        byte[] bArr = C4171c.f13144a;
        f14401u = new ThreadPoolExecutor(0, (int) Api.BaseClientBuilder.API_PRIORITY_OTHER, 60L, timeUnit, synchronousQueue, new ThreadFactoryC4173d("OkHttp Http2Connection", true));
    }

    public C4667f(C4669b c4669b) {
        C3248s0 c3248s0 = new C3248s0();
        this.f14416o = c3248s0;
        this.f14403b = c4669b.f14429e;
        this.f14407f = 1;
        this.f14407f = 3;
        this.f14415n.m2510b(7, 16777216);
        String str = c4669b.f14426b;
        this.f14405d = str;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, new ThreadFactoryC4173d(C4171c.m1324l("OkHttp %s Writer", str), false));
        this.f14409h = scheduledThreadPoolExecutor;
        if (c4669b.f14430f != 0) {
            C4672d c4672d = new C4672d(false, 0, 0);
            long j = c4669b.f14430f;
            scheduledThreadPoolExecutor.scheduleAtFixedRate(c4672d, j, j, TimeUnit.MILLISECONDS);
        }
        this.f14410i = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactoryC4173d(C4171c.m1324l("OkHttp %s Push Observer", str), true));
        c3248s0.m2510b(7, 65535);
        c3248s0.m2510b(5, 16384);
        this.f14414m = c3248s0.m2511a();
        this.f14418q = c4669b.f14425a;
        this.f14419r = new C4688p(c4669b.f14428d, true);
        this.f14420s = new C4673e(new C4681n(c4669b.f14427c, true));
    }

    /* renamed from: d */
    public static void m644d(C4667f c4667f) {
        Objects.requireNonNull(c4667f);
        try {
            c4667f.m643k(2, 2);
        } catch (IOException e) {
        }
    }

    /* renamed from: A */
    public void m649A(int i) throws IOException {
        synchronized (this.f14419r) {
            synchronized (this) {
                if (this.f14408g) {
                    return;
                }
                this.f14408g = true;
                this.f14419r.m600o(this.f14406e, i, C4171c.f13144a);
            }
        }
    }

    /* renamed from: B */
    public void m648B(long j) {
        synchronized (this) {
            long j2 = this.f14413l + j;
            this.f14413l = j2;
            if (j2 >= this.f14415n.m2511a() / 2) {
                m645K(0, this.f14413l);
                this.f14413l = 0L;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004f, code lost:
        throw new java.io.IOException("stream closed");
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0052, code lost:
        r0 = java.lang.Math.min((int) java.lang.Math.min((long) r12, r0), r6.f14419r.f14492d);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x006c, code lost:
        r0 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x006f, code lost:
        r6.f14414m -= r0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* renamed from: D */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m647D(int r7, boolean r8, p011aa.C0053f r9, long r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 195
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p268v9.C4667f.m647D(int, boolean, aa.f, long):void");
    }

    /* renamed from: J */
    public void m646J(int i, int i2) {
        try {
            this.f14409h.execute(new C4666e(this, "OkHttp %s stream %d", new Object[]{this.f14405d, Integer.valueOf(i)}, i, i2));
        } catch (RejectedExecutionException e) {
        }
    }

    /* renamed from: K */
    public void m645K(int i, long j) {
        try {
            this.f14409h.execute(new C4668a("OkHttp Window Update %s stream %d", new Object[]{this.f14405d, Integer.valueOf(i)}, i, j));
        } catch (RejectedExecutionException e) {
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        m643k(1, 6);
    }

    public void flush() throws IOException {
        this.f14419r.flush();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(14:2|(3:51|3|4)|6|10|13|14|(8:16|(2:17|(6:19|47|20|21|56|26)(0))|27|28|53|33|35|(1:37)(2:38|39))(0)|45|27|28|53|33|35|(0)(0)) */
    /* JADX WARN: Can't wrap try/catch for region: R(16:2|51|3|4|6|10|13|14|(8:16|(2:17|(6:19|47|20|21|56|26)(0))|27|28|53|33|35|(1:37)(2:38|39))(0)|45|27|28|53|33|35|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0097, code lost:
        r6 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0098, code lost:
        r7 = r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x009e, code lost:
        if (r8 == null) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00a1, code lost:
        r7 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00ae, code lost:
        r7 = e;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00c7 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00c8  */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m643k(int r4, int r5) throws java.io.IOException {
        /*
            r3 = this;
            r0 = 0
            r6 = r0
            r0 = r3
            r1 = r4
            r0.m649A(r1)     // Catch: java.io.IOException -> Ld
            r0 = 0
            r7 = r0
            goto Lf
        Ld:
            r7 = move-exception
        Lf:
            r0 = r3
            monitor-enter(r0)
            r0 = r3
            java.util.Map<java.lang.Integer, v9.o> r0 = r0.f14404c     // Catch: java.lang.Throwable -> Lcb
            boolean r0 = r0.isEmpty()     // Catch: java.lang.Throwable -> Lcb
            if (r0 != 0) goto L44
            r0 = r3
            java.util.Map<java.lang.Integer, v9.o> r0 = r0.f14404c     // Catch: java.lang.Throwable -> Lcb
            java.util.Collection r0 = r0.values()     // Catch: java.lang.Throwable -> Lcb
            r1 = r3
            java.util.Map<java.lang.Integer, v9.o> r1 = r1.f14404c     // Catch: java.lang.Throwable -> Lcb
            int r1 = r1.size()     // Catch: java.lang.Throwable -> Lcb
            v9.o[] r1 = new p268v9.C4684o[r1]     // Catch: java.lang.Throwable -> Lcb
            java.lang.Object[] r0 = r0.toArray(r1)     // Catch: java.lang.Throwable -> Lcb
            v9.o[] r0 = (p268v9.C4684o[]) r0     // Catch: java.lang.Throwable -> Lcb
            r6 = r0
            r0 = r3
            java.util.Map<java.lang.Integer, v9.o> r0 = r0.f14404c     // Catch: java.lang.Throwable -> Lcb
            r0.clear()     // Catch: java.lang.Throwable -> Lcb
        L44:
            r0 = r3
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lcb
            r0 = r7
            r8 = r0
            r0 = r6
            if (r0 == 0) goto L89
            r0 = r6
            int r0 = r0.length
            r9 = r0
            r0 = 0
            r4 = r0
        L54:
            r0 = r7
            r8 = r0
            r0 = r4
            r1 = r9
            if (r0 >= r1) goto L89
            r0 = r6
            r1 = r4
            r0 = r0[r1]
            r8 = r0
            r0 = r8
            r1 = r5
            r0.m621c(r1)     // Catch: java.io.IOException -> L70
            r0 = r7
            r8 = r0
            goto L7f
        L70:
            r10 = move-exception
            r0 = r7
            r8 = r0
            r0 = r7
            if (r0 == 0) goto L7f
            r0 = r10
            r8 = r0
        L7f:
            int r4 = r4 + 1
            r0 = r8
            r7 = r0
            goto L54
        L89:
            r0 = r3
            v9.p r0 = r0.f14419r     // Catch: java.io.IOException -> L97
            r0.close()     // Catch: java.io.IOException -> L97
            r0 = r8
            r7 = r0
            goto La4
        L97:
            r6 = move-exception
            r0 = r8
            r7 = r0
            r0 = r8
            if (r0 != 0) goto La4
            r0 = r6
            r7 = r0
        La4:
            r0 = r3
            java.net.Socket r0 = r0.f14418q     // Catch: java.io.IOException -> Lae
            r0.close()     // Catch: java.io.IOException -> Lae
            goto Lb0
        Lae:
            r7 = move-exception
        Lb0:
            r0 = r3
            java.util.concurrent.ScheduledExecutorService r0 = r0.f14409h
            r0.shutdown()
            r0 = r3
            java.util.concurrent.ExecutorService r0 = r0.f14410i
            r0.shutdown()
            r0 = r7
            if (r0 != 0) goto Lc8
            return
        Lc8:
            r0 = r7
            throw r0
        Lcb:
            r7 = move-exception
            r0 = r3
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lcb
            r0 = r7
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p268v9.C4667f.m643k(int, int):void");
    }

    /* renamed from: l */
    public C4684o m642l(int i) {
        C4684o c4684o;
        synchronized (this) {
            c4684o = this.f14404c.get(Integer.valueOf(i));
        }
        return c4684o;
    }

    /* renamed from: o */
    public int m641o() {
        int i;
        synchronized (this) {
            C3248s0 c3248s0 = this.f14416o;
            i = Integer.MAX_VALUE;
            if ((c3248s0.f10959a & 16) != 0) {
                i = ((int[]) c3248s0.f10960b)[4];
            }
        }
        return i;
    }

    /* renamed from: p */
    public final void m640p(AbstractRunnableC4170b abstractRunnableC4170b) {
        boolean z;
        synchronized (this) {
            synchronized (this) {
                z = this.f14408g;
            }
        }
        if (!z) {
            this.f14410i.execute(abstractRunnableC4170b);
        }
    }

    /* renamed from: r */
    public boolean m639r(int i) {
        boolean z = true;
        if (i == 0 || (i & 1) != 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: s */
    public C4684o m638s(int i) {
        C4684o remove;
        synchronized (this) {
            remove = this.f14404c.remove(Integer.valueOf(i));
            notifyAll();
        }
        return remove;
    }
}
