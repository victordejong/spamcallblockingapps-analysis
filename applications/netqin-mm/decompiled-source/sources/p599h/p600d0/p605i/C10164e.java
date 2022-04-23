package p599h.p600d0.p605i;

import com.google.common.collect.RegularImmutableMap;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.io.Closeable;
import java.io.IOException;
import java.net.Socket;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import okhttp3.internal.http2.ErrorCode;
import okio.ByteString;
import p599h.p600d0.AbstractRunnableC10108b;
import p599h.p600d0.C10109c;
import p599h.p600d0.p605i.C10179f;
import p599h.p600d0.p607k.C10203f;
import p610i.AbstractC10263d;
import p610i.AbstractC10264e;
import p610i.C10260c;
/* renamed from: h.d0.i.e */
/* loaded from: classes2-dex2jar.jar:h/d0/i/e.class */
public final class C10164e implements Closeable {

    /* renamed from: u */
    public static final ExecutorService f37531u = new ThreadPoolExecutor(0, (int) MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT, 60, TimeUnit.SECONDS, new SynchronousQueue(), C10109c.m1453a("OkHttp Http2Connection", true));

    /* renamed from: a */
    public final boolean f37532a;

    /* renamed from: b */
    public final AbstractC10172h f37533b;

    /* renamed from: d */
    public final String f37535d;

    /* renamed from: e */
    public int f37536e;

    /* renamed from: f */
    public int f37537f;

    /* renamed from: g */
    public boolean f37538g;

    /* renamed from: h */
    public final ScheduledExecutorService f37539h;

    /* renamed from: i */
    public final ExecutorService f37540i;

    /* renamed from: j */
    public final AbstractC10189j f37541j;

    /* renamed from: k */
    public boolean f37542k;

    /* renamed from: m */
    public long f37544m;

    /* renamed from: q */
    public final Socket f37548q;

    /* renamed from: r */
    public final C10186h f37549r;

    /* renamed from: s */
    public final C10175j f37550s;

    /* renamed from: c */
    public final Map<Integer, C10182g> f37534c = new LinkedHashMap();

    /* renamed from: l */
    public long f37543l = 0;

    /* renamed from: n */
    public C10191k f37545n = new C10191k();

    /* renamed from: o */
    public final C10191k f37546o = new C10191k();

    /* renamed from: p */
    public boolean f37547p = false;

    /* renamed from: t */
    public final Set<Integer> f37551t = new LinkedHashSet();

    /* renamed from: h.d0.i.e$a */
    /* loaded from: classes2-dex2jar.jar:h/d0/i/e$a.class */
    public class C10165a extends AbstractRunnableC10108b {

        /* renamed from: b */
        public final /* synthetic */ int f37552b;

        /* renamed from: c */
        public final /* synthetic */ ErrorCode f37553c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10165a(String str, Object[] objArr, int i, ErrorCode errorCode) {
            super(str, objArr);
            this.f37552b = i;
            this.f37553c = errorCode;
        }

        @Override // p599h.p600d0.AbstractRunnableC10108b
        /* renamed from: b */
        public void mo824b() {
            try {
                C10164e.this.m1216b(this.f37552b, this.f37553c);
            } catch (IOException e) {
                C10164e.this.m1234a();
            }
        }
    }

    /* renamed from: h.d0.i.e$b */
    /* loaded from: classes2-dex2jar.jar:h/d0/i/e$b.class */
    public class C10166b extends AbstractRunnableC10108b {

        /* renamed from: b */
        public final /* synthetic */ int f37555b;

        /* renamed from: c */
        public final /* synthetic */ long f37556c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10166b(String str, Object[] objArr, int i, long j) {
            super(str, objArr);
            this.f37555b = i;
            this.f37556c = j;
        }

        @Override // p599h.p600d0.AbstractRunnableC10108b
        /* renamed from: b */
        public void mo824b() {
            try {
                C10164e.this.f37549r.m1145a(this.f37555b, this.f37556c);
            } catch (IOException e) {
                C10164e.this.m1234a();
            }
        }
    }

    /* renamed from: h.d0.i.e$c */
    /* loaded from: classes2-dex2jar.jar:h/d0/i/e$c.class */
    public class C10167c extends AbstractRunnableC10108b {

        /* renamed from: b */
        public final /* synthetic */ int f37558b;

        /* renamed from: c */
        public final /* synthetic */ List f37559c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10167c(String str, Object[] objArr, int i, List list) {
            super(str, objArr);
            this.f37558b = i;
            this.f37559c = list;
        }

        @Override // p599h.p600d0.AbstractRunnableC10108b
        /* renamed from: b */
        public void mo824b() {
            if (C10164e.this.f37541j.mo1126a(this.f37558b, this.f37559c)) {
                try {
                    C10164e.this.f37549r.m1144a(this.f37558b, ErrorCode.CANCEL);
                    synchronized (C10164e.this) {
                        C10164e.this.f37551t.remove(Integer.valueOf(this.f37558b));
                    }
                } catch (IOException e) {
                }
            }
        }
    }

    /* renamed from: h.d0.i.e$d */
    /* loaded from: classes2-dex2jar.jar:h/d0/i/e$d.class */
    public class C10168d extends AbstractRunnableC10108b {

        /* renamed from: b */
        public final /* synthetic */ int f37561b;

        /* renamed from: c */
        public final /* synthetic */ List f37562c;

        /* renamed from: d */
        public final /* synthetic */ boolean f37563d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10168d(String str, Object[] objArr, int i, List list, boolean z) {
            super(str, objArr);
            this.f37561b = i;
            this.f37562c = list;
            this.f37563d = z;
        }

        @Override // p599h.p600d0.AbstractRunnableC10108b
        /* renamed from: b */
        public void mo824b() {
            boolean a = C10164e.this.f37541j.mo1125a(this.f37561b, this.f37562c, this.f37563d);
            if (a) {
                try {
                    C10164e.this.f37549r.m1144a(this.f37561b, ErrorCode.CANCEL);
                } catch (IOException e) {
                    return;
                }
            }
            if (a || this.f37563d) {
                synchronized (C10164e.this) {
                    C10164e.this.f37551t.remove(Integer.valueOf(this.f37561b));
                }
            }
        }
    }

    /* renamed from: h.d0.i.e$e */
    /* loaded from: classes2-dex2jar.jar:h/d0/i/e$e.class */
    public class C10169e extends AbstractRunnableC10108b {

        /* renamed from: b */
        public final /* synthetic */ int f37565b;

        /* renamed from: c */
        public final /* synthetic */ C10260c f37566c;

        /* renamed from: d */
        public final /* synthetic */ int f37567d;

        /* renamed from: e */
        public final /* synthetic */ boolean f37568e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10169e(String str, Object[] objArr, int i, C10260c cVar, int i2, boolean z) {
            super(str, objArr);
            this.f37565b = i;
            this.f37566c = cVar;
            this.f37567d = i2;
            this.f37568e = z;
        }

        @Override // p599h.p600d0.AbstractRunnableC10108b
        /* renamed from: b */
        public void mo824b() {
            try {
                boolean a = C10164e.this.f37541j.mo1127a(this.f37565b, this.f37566c, this.f37567d, this.f37568e);
                if (a) {
                    C10164e.this.f37549r.m1144a(this.f37565b, ErrorCode.CANCEL);
                }
                if (a || this.f37568e) {
                    synchronized (C10164e.this) {
                        C10164e.this.f37551t.remove(Integer.valueOf(this.f37565b));
                    }
                }
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: h.d0.i.e$f */
    /* loaded from: classes2-dex2jar.jar:h/d0/i/e$f.class */
    public class C10170f extends AbstractRunnableC10108b {

        /* renamed from: b */
        public final /* synthetic */ int f37570b;

        /* renamed from: c */
        public final /* synthetic */ ErrorCode f37571c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10170f(String str, Object[] objArr, int i, ErrorCode errorCode) {
            super(str, objArr);
            this.f37570b = i;
            this.f37571c = errorCode;
        }

        @Override // p599h.p600d0.AbstractRunnableC10108b
        /* renamed from: b */
        public void mo824b() {
            C10164e.this.f37541j.mo1124a(this.f37570b, this.f37571c);
            synchronized (C10164e.this) {
                C10164e.this.f37551t.remove(Integer.valueOf(this.f37570b));
            }
        }
    }

    /* renamed from: h.d0.i.e$g */
    /* loaded from: classes2-dex2jar.jar:h/d0/i/e$g.class */
    public static class C10171g {

        /* renamed from: a */
        public Socket f37573a;

        /* renamed from: b */
        public String f37574b;

        /* renamed from: c */
        public AbstractC10264e f37575c;

        /* renamed from: d */
        public AbstractC10263d f37576d;

        /* renamed from: e */
        public AbstractC10172h f37577e = AbstractC10172h.f37581a;

        /* renamed from: f */
        public AbstractC10189j f37578f = AbstractC10189j.f37641a;

        /* renamed from: g */
        public boolean f37579g;

        /* renamed from: h */
        public int f37580h;

        public C10171g(boolean z) {
            this.f37579g = z;
        }

        /* renamed from: a */
        public C10171g m1206a(int i) {
            this.f37580h = i;
            return this;
        }

        /* renamed from: a */
        public C10171g m1205a(AbstractC10172h hVar) {
            this.f37577e = hVar;
            return this;
        }

        /* renamed from: a */
        public C10171g m1204a(Socket socket, String str, AbstractC10264e eVar, AbstractC10263d dVar) {
            this.f37573a = socket;
            this.f37574b = str;
            this.f37575c = eVar;
            this.f37576d = dVar;
            return this;
        }

        /* renamed from: a */
        public C10164e m1207a() {
            return new C10164e(this);
        }
    }

    /* renamed from: h.d0.i.e$h */
    /* loaded from: classes2-dex2jar.jar:h/d0/i/e$h.class */
    public static abstract class AbstractC10172h {

        /* renamed from: a */
        public static final AbstractC10172h f37581a = new C10173a();

        /* renamed from: h.d0.i.e$h$a */
        /* loaded from: classes2-dex2jar.jar:h/d0/i/e$h$a.class */
        public class C10173a extends AbstractC10172h {
            @Override // p599h.p600d0.p605i.C10164e.AbstractC10172h
            /* renamed from: a */
            public void mo1202a(C10182g gVar) throws IOException {
                gVar.m1169a(ErrorCode.REFUSED_STREAM);
            }
        }

        /* renamed from: a */
        public void mo1203a(C10164e eVar) {
        }

        /* renamed from: a */
        public abstract void mo1202a(C10182g gVar) throws IOException;
    }

    /* renamed from: h.d0.i.e$i */
    /* loaded from: classes2-dex2jar.jar:h/d0/i/e$i.class */
    public final class C10174i extends AbstractRunnableC10108b {

        /* renamed from: b */
        public final boolean f37582b;

        /* renamed from: c */
        public final int f37583c;

        /* renamed from: d */
        public final int f37584d;

        public C10174i(boolean z, int i, int i2) {
            super("OkHttp %s ping %08x%08x", C10164e.this.f37535d, Integer.valueOf(i), Integer.valueOf(i2));
            this.f37582b = z;
            this.f37583c = i;
            this.f37584d = i2;
        }

        @Override // p599h.p600d0.AbstractRunnableC10108b
        /* renamed from: b */
        public void mo824b() {
            C10164e.this.m1214b(this.f37582b, this.f37583c, this.f37584d);
        }
    }

    /* renamed from: h.d0.i.e$j */
    /* loaded from: classes2-dex2jar.jar:h/d0/i/e$j.class */
    public class C10175j extends AbstractRunnableC10108b implements C10179f.AbstractC10181b {

        /* renamed from: b */
        public final C10179f f37586b;

        /* renamed from: h.d0.i.e$j$a */
        /* loaded from: classes2-dex2jar.jar:h/d0/i/e$j$a.class */
        public class C10176a extends AbstractRunnableC10108b {

            /* renamed from: b */
            public final /* synthetic */ C10182g f37588b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C10176a(String str, Object[] objArr, C10182g gVar) {
                super(str, objArr);
                this.f37588b = gVar;
            }

            @Override // p599h.p600d0.AbstractRunnableC10108b
            /* renamed from: b */
            public void mo824b() {
                try {
                    C10164e.this.f37533b.mo1202a(this.f37588b);
                } catch (IOException e) {
                    C10203f d = C10203f.m1071d();
                    d.mo1086a(4, "Http2Connection.Listener failure for " + C10164e.this.f37535d, e);
                    try {
                        this.f37588b.m1169a(ErrorCode.PROTOCOL_ERROR);
                    } catch (IOException e2) {
                    }
                }
            }
        }

        /* renamed from: h.d0.i.e$j$b */
        /* loaded from: classes2-dex2jar.jar:h/d0/i/e$j$b.class */
        public class C10177b extends AbstractRunnableC10108b {
            public C10177b(String str, Object... objArr) {
                super(str, objArr);
            }

            @Override // p599h.p600d0.AbstractRunnableC10108b
            /* renamed from: b */
            public void mo824b() {
                C10164e eVar = C10164e.this;
                eVar.f37533b.mo1203a(eVar);
            }
        }

        /* renamed from: h.d0.i.e$j$c */
        /* loaded from: classes2-dex2jar.jar:h/d0/i/e$j$c.class */
        public class C10178c extends AbstractRunnableC10108b {

            /* renamed from: b */
            public final /* synthetic */ C10191k f37591b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C10178c(String str, Object[] objArr, C10191k kVar) {
                super(str, objArr);
                this.f37591b = kVar;
            }

            @Override // p599h.p600d0.AbstractRunnableC10108b
            /* renamed from: b */
            public void mo824b() {
                try {
                    C10164e.this.f37549r.m1142a(this.f37591b);
                } catch (IOException e) {
                    C10164e.this.m1234a();
                }
            }
        }

        public C10175j(C10179f fVar) {
            super("OkHttp %s", C10164e.this.f37535d);
            this.f37586b = fVar;
        }

        @Override // p599h.p600d0.p605i.C10179f.AbstractC10181b
        /* renamed from: a */
        public void mo1184a() {
        }

        @Override // p599h.p600d0.p605i.C10179f.AbstractC10181b
        /* renamed from: a */
        public void mo1183a(int i, int i2, int i3, boolean z) {
        }

        @Override // p599h.p600d0.p605i.C10179f.AbstractC10181b
        /* renamed from: a */
        public void mo1182a(int i, int i2, List<C10156a> list) {
            C10164e.this.m1231a(i2, list);
        }

        @Override // p599h.p600d0.p605i.C10179f.AbstractC10181b
        /* renamed from: a */
        public void mo1181a(int i, long j) {
            if (i == 0) {
                synchronized (C10164e.this) {
                    C10164e.this.f37544m += j;
                    C10164e.this.notifyAll();
                }
                return;
            }
            C10182g a = C10164e.this.m1233a(i);
            if (a != null) {
                synchronized (a) {
                    a.m1173a(j);
                }
            }
        }

        @Override // p599h.p600d0.p605i.C10179f.AbstractC10181b
        /* renamed from: a */
        public void mo1180a(int i, ErrorCode errorCode) {
            if (C10164e.this.m1219b(i)) {
                C10164e.this.m1229a(i, errorCode);
                return;
            }
            C10182g c = C10164e.this.m1212c(i);
            if (c != null) {
                c.m1162d(errorCode);
            }
        }

        @Override // p599h.p600d0.p605i.C10179f.AbstractC10181b
        /* renamed from: a */
        public void mo1179a(int i, ErrorCode errorCode, ByteString byteString) {
            C10182g[] gVarArr;
            byteString.size();
            synchronized (C10164e.this) {
                try {
                    gVarArr = (C10182g[]) C10164e.this.f37534c.values().toArray(new C10182g[C10164e.this.f37534c.size()]);
                    C10164e.this.f37538g = true;
                } catch (Throwable th) {
                    throw th;
                }
            }
            for (C10182g gVar : gVarArr) {
                if (gVar.m1165c() > i && gVar.m1160f()) {
                    gVar.m1162d(ErrorCode.REFUSED_STREAM);
                    C10164e.this.m1212c(gVar.m1165c());
                }
            }
        }

        /* renamed from: a */
        public final void m1201a(C10191k kVar) {
            try {
                C10164e.this.f37539h.execute(new C10178c("OkHttp %s ACK Settings", new Object[]{C10164e.this.f37535d}, kVar));
            } catch (RejectedExecutionException e) {
            }
        }

        @Override // p599h.p600d0.p605i.C10179f.AbstractC10181b
        /* renamed from: a */
        public void mo1178a(boolean z, int i, int i2) {
            if (z) {
                synchronized (C10164e.this) {
                    C10164e.this.f37542k = false;
                    C10164e.this.notifyAll();
                }
                return;
            }
            try {
                C10164e.this.f37539h.execute(new C10174i(true, i, i2));
            } catch (RejectedExecutionException e) {
            }
        }

        @Override // p599h.p600d0.p605i.C10179f.AbstractC10181b
        /* renamed from: a */
        public void mo1177a(boolean z, int i, int i2, List<C10156a> list) {
            if (C10164e.this.m1219b(i)) {
                C10164e.this.m1217b(i, list, z);
                return;
            }
            synchronized (C10164e.this) {
                C10182g a = C10164e.this.m1233a(i);
                if (a != null) {
                    a.m1170a(list);
                    if (z) {
                        a.m1157i();
                    }
                } else if (!C10164e.this.f37538g) {
                    if (i > C10164e.this.f37536e) {
                        if (i % 2 != C10164e.this.f37537f % 2) {
                            C10182g gVar = new C10182g(i, C10164e.this, false, z, C10109c.m1438b(list));
                            C10164e.this.f37536e = i;
                            C10164e.this.f37534c.put(Integer.valueOf(i), gVar);
                            C10164e.f37531u.execute(new C10176a("OkHttp %s stream %d", new Object[]{C10164e.this.f37535d, Integer.valueOf(i)}, gVar));
                        }
                    }
                }
            }
        }

        @Override // p599h.p600d0.p605i.C10179f.AbstractC10181b
        /* renamed from: a */
        public void mo1176a(boolean z, int i, AbstractC10264e eVar, int i2) throws IOException {
            if (C10164e.this.m1219b(i)) {
                C10164e.this.m1232a(i, eVar, i2, z);
                return;
            }
            C10182g a = C10164e.this.m1233a(i);
            if (a == null) {
                C10164e.this.m1211c(i, ErrorCode.PROTOCOL_ERROR);
                long j = i2;
                C10164e.this.m1209d(j);
                eVar.skip(j);
                return;
            }
            a.m1171a(eVar, i2);
            if (z) {
                a.m1157i();
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v46, types: [long] */
        /* JADX WARN: Type inference failed for: r16v1 */
        /* JADX WARN: Type inference failed for: r16v2 */
        /* JADX WARN: Type inference failed for: r16v3 */
        /* JADX WARN: Unknown variable types count: 1 */
        @Override // p599h.p600d0.p605i.C10179f.AbstractC10181b
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void mo1175a(boolean r9, p599h.p600d0.p605i.C10191k r10) {
            /*
                Method dump skipped, instructions count: 277
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p599h.p600d0.p605i.C10164e.C10175j.mo1175a(boolean, h.d0.i.k):void");
        }

        @Override // p599h.p600d0.AbstractRunnableC10108b
        /* renamed from: b */
        public void mo824b() {
            ErrorCode errorCode;
            Throwable th;
            ErrorCode errorCode2;
            ErrorCode errorCode3;
            C10164e eVar;
            ErrorCode errorCode4 = ErrorCode.INTERNAL_ERROR;
            try {
                try {
                    this.f37586b.m1198a(this);
                    while (this.f37586b.m1194a(false, (C10179f.AbstractC10181b) this)) {
                    }
                    errorCode3 = ErrorCode.NO_ERROR;
                    errorCode = errorCode3;
                    try {
                        try {
                            errorCode2 = ErrorCode.CANCEL;
                            eVar = C10164e.this;
                        } catch (IOException e) {
                            errorCode3 = ErrorCode.PROTOCOL_ERROR;
                            errorCode = errorCode3;
                            errorCode2 = ErrorCode.PROTOCOL_ERROR;
                            eVar = C10164e.this;
                            eVar.m1222a(errorCode3, errorCode2);
                            C10109c.m1463a(this.f37586b);
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        try {
                            C10164e.this.m1222a(errorCode, errorCode4);
                        } catch (IOException e2) {
                        }
                        C10109c.m1463a(this.f37586b);
                        throw th;
                    }
                } catch (IOException e3) {
                }
            } catch (IOException e4) {
            } catch (Throwable th3) {
                th = th3;
                errorCode = errorCode4;
                C10164e.this.m1222a(errorCode, errorCode4);
                C10109c.m1463a(this.f37586b);
                throw th;
            }
            eVar.m1222a(errorCode3, errorCode2);
            C10109c.m1463a(this.f37586b);
        }
    }

    public C10164e(C10171g gVar) {
        this.f37541j = gVar.f37578f;
        boolean z = gVar.f37579g;
        this.f37532a = z;
        this.f37533b = gVar.f37577e;
        int i = z ? 1 : 2;
        this.f37537f = i;
        if (gVar.f37579g) {
            this.f37537f = i + 2;
        }
        if (gVar.f37579g) {
            this.f37545n.m1121a(7, 16777216);
        }
        this.f37535d = gVar.f37574b;
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = new ScheduledThreadPoolExecutor(1, C10109c.m1453a(C10109c.m1452a("OkHttp %s Writer", this.f37535d), false));
        this.f37539h = scheduledThreadPoolExecutor;
        if (gVar.f37580h != 0) {
            C10174i iVar = new C10174i(false, 0, 0);
            int i2 = gVar.f37580h;
            scheduledThreadPoolExecutor.scheduleAtFixedRate(iVar, i2, i2, TimeUnit.MILLISECONDS);
        }
        this.f37540i = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), C10109c.m1453a(C10109c.m1452a("OkHttp %s Push Observer", this.f37535d), true));
        this.f37546o.m1121a(7, RegularImmutableMap.SHORT_MASK);
        this.f37546o.m1121a(5, 16384);
        this.f37544m = this.f37546o.m1117c();
        this.f37548q = gVar.f37573a;
        this.f37549r = new C10186h(gVar.f37576d, this.f37532a);
        this.f37550s = new C10175j(new C10179f(gVar.f37575c, this.f37532a));
    }

    /* renamed from: a */
    public C10182g m1233a(int i) {
        C10182g gVar;
        synchronized (this) {
            gVar = this.f37534c.get(Integer.valueOf(i));
        }
        return gVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0073 A[Catch: all -> 0x00d5, TryCatch #1 {, blocks: (B:5:0x000f, B:29:0x008a, B:30:0x009a, B:32:0x00a1, B:34:0x00ae, B:40:0x00be, B:41:0x00ca, B:42:0x00cb, B:7:0x0011, B:9:0x0019, B:11:0x0021, B:13:0x0027, B:15:0x004c, B:17:0x0055, B:22:0x006b, B:24:0x0073, B:26:0x0085, B:43:0x00ce, B:44:0x00d4), top: B:50:0x000f }] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final p599h.p600d0.p605i.C10182g m1230a(int r8, java.util.List<p599h.p600d0.p605i.C10156a> r9, boolean r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 224
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p599h.p600d0.p605i.C10164e.m1230a(int, java.util.List, boolean):h.d0.i.g");
    }

    /* renamed from: a */
    public C10182g m1224a(List<C10156a> list, boolean z) throws IOException {
        return m1230a(0, list, z);
    }

    /* renamed from: a */
    public final void m1234a() {
        try {
            m1222a(ErrorCode.PROTOCOL_ERROR, ErrorCode.PROTOCOL_ERROR);
        } catch (IOException e) {
        }
    }

    /* renamed from: a */
    public void m1232a(int i, AbstractC10264e eVar, int i2, boolean z) throws IOException {
        C10260c cVar = new C10260c();
        long j = i2;
        eVar.mo715g(j);
        eVar.mo704b(cVar, j);
        if (cVar.size() == j) {
            m1227a(new C10169e("OkHttp %s Push Data[%s]", new Object[]{this.f37535d, Integer.valueOf(i)}, i, cVar, i2, z));
            return;
        }
        throw new IOException(cVar.size() + " != " + i2);
    }

    /* renamed from: a */
    public void m1231a(int i, List<C10156a> list) {
        synchronized (this) {
            if (this.f37551t.contains(Integer.valueOf(i))) {
                m1211c(i, ErrorCode.PROTOCOL_ERROR);
                return;
            }
            this.f37551t.add(Integer.valueOf(i));
            try {
                m1227a(new C10167c("OkHttp %s Push Request[%s]", new Object[]{this.f37535d, Integer.valueOf(i)}, i, list));
            } catch (RejectedExecutionException e) {
            }
        }
    }

    /* renamed from: a */
    public void m1229a(int i, ErrorCode errorCode) {
        m1227a(new C10170f("OkHttp %s Push Reset[%s]", new Object[]{this.f37535d, Integer.valueOf(i)}, i, errorCode));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [long] */
    /* JADX WARN: Type inference failed for: r12v0 */
    /* JADX WARN: Type inference failed for: r12v1, types: [long] */
    /* JADX WARN: Type inference failed for: r12v3 */
    /* JADX WARN: Unknown variable types count: 1 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m1228a(int r7, boolean r8, p610i.C10260c r9, long r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 194
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p599h.p600d0.p605i.C10164e.m1228a(int, boolean, i.c, long):void");
    }

    /* renamed from: a */
    public final void m1227a(AbstractRunnableC10108b bVar) {
        synchronized (this) {
            if (!m1220b()) {
                this.f37540i.execute(bVar);
            }
        }
    }

    /* renamed from: a */
    public void m1223a(ErrorCode errorCode) throws IOException {
        synchronized (this.f37549r) {
            synchronized (this) {
                if (!this.f37538g) {
                    this.f37538g = true;
                    this.f37549r.m1143a(this.f37536e, errorCode, C10109c.f37314a);
                }
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(15:2|(3:54|3|4)|6|e|13|14|(8:16|(2:17|(6:19|52|20|21|57|26)(0))|27|28|48|33|35|(1:37)(2:38|39))(0)|50|27|28|48|33|35|(0)(0)|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0091, code lost:
        r4 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0092, code lost:
        r4 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0097, code lost:
        if (r7 == null) goto L_0x009a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x00a6, code lost:
        r4 = e;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00bd A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:38:0x00be  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m1222a(okhttp3.internal.http2.ErrorCode r4, okhttp3.internal.http2.ErrorCode r5) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 203
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p599h.p600d0.p605i.C10164e.m1222a(okhttp3.internal.http2.ErrorCode, okhttp3.internal.http2.ErrorCode):void");
    }

    /* renamed from: a */
    public void m1221a(boolean z) throws IOException {
        if (z) {
            this.f37549r.m1149P0();
            this.f37549r.m1134b(this.f37545n);
            int c = this.f37545n.m1117c();
            if (c != 65535) {
                this.f37549r.m1145a(0, c - RegularImmutableMap.SHORT_MASK);
            }
        }
        new Thread(this.f37550s).start();
    }

    /* renamed from: b */
    public void m1218b(int i, long j) {
        try {
            this.f37539h.execute(new C10166b("OkHttp Window Update %s stream %d", new Object[]{this.f37535d, Integer.valueOf(i)}, i, j));
        } catch (RejectedExecutionException e) {
        }
    }

    /* renamed from: b */
    public void m1217b(int i, List<C10156a> list, boolean z) {
        try {
            m1227a(new C10168d("OkHttp %s Push Headers[%s]", new Object[]{this.f37535d, Integer.valueOf(i)}, i, list, z));
        } catch (RejectedExecutionException e) {
        }
    }

    /* renamed from: b */
    public void m1216b(int i, ErrorCode errorCode) throws IOException {
        this.f37549r.m1144a(i, errorCode);
    }

    /* renamed from: b */
    public void m1214b(boolean z, int i, int i2) {
        boolean z2;
        if (!z) {
            synchronized (this) {
                z2 = this.f37542k;
                this.f37542k = true;
            }
            if (z2) {
                m1234a();
                return;
            }
        }
        try {
            this.f37549r.m1140a(z, i, i2);
        } catch (IOException e) {
            m1234a();
        }
    }

    /* renamed from: b */
    public boolean m1220b() {
        boolean z;
        synchronized (this) {
            z = this.f37538g;
        }
        return z;
    }

    /* renamed from: b */
    public boolean m1219b(int i) {
        boolean z = true;
        if (i == 0 || (i & 1) != 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: c */
    public int m1213c() {
        int b;
        synchronized (this) {
            b = this.f37546o.m1118b(MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT);
        }
        return b;
    }

    /* renamed from: c */
    public C10182g m1212c(int i) {
        C10182g remove;
        synchronized (this) {
            remove = this.f37534c.remove(Integer.valueOf(i));
            notifyAll();
        }
        return remove;
    }

    /* renamed from: c */
    public void m1211c(int i, ErrorCode errorCode) {
        try {
            this.f37539h.execute(new C10165a("OkHttp %s stream %d", new Object[]{this.f37535d, Integer.valueOf(i)}, i, errorCode));
        } catch (RejectedExecutionException e) {
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        m1222a(ErrorCode.NO_ERROR, ErrorCode.CANCEL);
    }

    /* renamed from: d */
    public void m1210d() throws IOException {
        m1221a(true);
    }

    /* renamed from: d */
    public void m1209d(long j) {
        synchronized (this) {
            long j2 = this.f37543l + j;
            this.f37543l = j2;
            if (j2 >= this.f37545n.m1117c() / 2) {
                m1218b(0, this.f37543l);
                this.f37543l = 0L;
            }
        }
    }

    public void flush() throws IOException {
        this.f37549r.flush();
    }
}
