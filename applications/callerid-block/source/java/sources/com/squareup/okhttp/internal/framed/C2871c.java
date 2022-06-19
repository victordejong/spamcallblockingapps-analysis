package com.squareup.okhttp.internal.framed;

import com.squareup.okhttp.Protocol;
import com.squareup.okhttp.internal.framed.AbstractC2868a;
import com.squareup.okhttp.p089u.AbstractC2965b;
import com.squareup.okhttp.p089u.AbstractRunnableC2967d;
import com.squareup.okhttp.p089u.C2975i;
import java.io.Closeable;
import java.io.IOException;
import java.net.Socket;
import java.util.HashMap;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import okio.Buffer;
import okio.BufferedSource;
import okio.ByteString;
import okio.Okio;
/* renamed from: com.squareup.okhttp.internal.framed.c */
/* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/c.class */
public final class C2871c implements Closeable {

    /* renamed from: x */
    private static final ExecutorService f12147x = new ThreadPoolExecutor(0, Integer.MAX_VALUE, 60, TimeUnit.SECONDS, new SynchronousQueue(), C2975i.m644p("OkHttp FramedConnection", true));

    /* renamed from: b */
    final Protocol f12148b;

    /* renamed from: c */
    final boolean f12149c;

    /* renamed from: d */
    private final AbstractC2899i f12150d;

    /* renamed from: e */
    private final Map<Integer, C2883d> f12151e;

    /* renamed from: f */
    private final String f12152f;

    /* renamed from: g */
    private int f12153g;

    /* renamed from: h */
    private int f12154h;

    /* renamed from: i */
    private boolean f12155i;

    /* renamed from: j */
    private long f12156j;

    /* renamed from: k */
    private final ExecutorService f12157k;

    /* renamed from: l */
    private Map<Integer, C2904k> f12158l;

    /* renamed from: m */
    private final AbstractC2905l f12159m;

    /* renamed from: n */
    long f12160n;

    /* renamed from: o */
    long f12161o;

    /* renamed from: p */
    final C2907m f12162p;

    /* renamed from: q */
    final C2907m f12163q;

    /* renamed from: r */
    private boolean f12164r;

    /* renamed from: s */
    final AbstractC2911o f12165s;

    /* renamed from: t */
    final Socket f12166t;

    /* renamed from: u */
    final AbstractC2870b f12167u;

    /* renamed from: v */
    final C2880i f12168v;

    /* renamed from: w */
    private final Set<Integer> f12169w;

    /* renamed from: com.squareup.okhttp.internal.framed.c$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/c$a.class */
    public class C2872a extends AbstractRunnableC2967d {

        /* renamed from: c */
        final /* synthetic */ int f12170c;

        /* renamed from: d */
        final /* synthetic */ ErrorCode f12171d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2872a(String str, Object[] objArr, int i, ErrorCode errorCode) {
            super(str, objArr);
            C2871c.this = r5;
            this.f12170c = i;
            this.f12171d = errorCode;
        }

        @Override // com.squareup.okhttp.p089u.AbstractRunnableC2967d
        /* renamed from: a */
        public void mo684a() {
            try {
                C2871c.this.m1237D0(this.f12170c, this.f12171d);
            } catch (IOException e) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.squareup.okhttp.internal.framed.c$b */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/c$b.class */
    public class C2873b extends AbstractRunnableC2967d {

        /* renamed from: c */
        final /* synthetic */ int f12173c;

        /* renamed from: d */
        final /* synthetic */ long f12174d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2873b(String str, Object[] objArr, int i, long j) {
            super(str, objArr);
            C2871c.this = r5;
            this.f12173c = i;
            this.f12174d = j;
        }

        @Override // com.squareup.okhttp.p089u.AbstractRunnableC2967d
        /* renamed from: a */
        public void mo684a() {
            try {
                C2871c.this.f12167u.windowUpdate(this.f12173c, this.f12174d);
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: com.squareup.okhttp.internal.framed.c$c */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/c$c.class */
    public class C2874c extends AbstractRunnableC2967d {

        /* renamed from: c */
        final /* synthetic */ boolean f12176c;

        /* renamed from: d */
        final /* synthetic */ int f12177d;

        /* renamed from: e */
        final /* synthetic */ int f12178e;

        /* renamed from: f */
        final /* synthetic */ C2904k f12179f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2874c(String str, Object[] objArr, boolean z, int i, int i2, C2904k c2904k) {
            super(str, objArr);
            C2871c.this = r5;
            this.f12176c = z;
            this.f12177d = i;
            this.f12178e = i2;
            this.f12179f = c2904k;
        }

        @Override // com.squareup.okhttp.p089u.AbstractRunnableC2967d
        /* renamed from: a */
        public void mo684a() {
            try {
                C2871c.this.m1240B0(this.f12176c, this.f12177d, this.f12178e, this.f12179f);
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: com.squareup.okhttp.internal.framed.c$d */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/c$d.class */
    public class C2875d extends AbstractRunnableC2967d {

        /* renamed from: c */
        final /* synthetic */ int f12181c;

        /* renamed from: d */
        final /* synthetic */ List f12182d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2875d(String str, Object[] objArr, int i, List list) {
            super(str, objArr);
            C2871c.this = r5;
            this.f12181c = i;
            this.f12182d = list;
        }

        @Override // com.squareup.okhttp.p089u.AbstractRunnableC2967d
        /* renamed from: a */
        public void mo684a() {
            if (C2871c.this.f12159m.onRequest(this.f12181c, this.f12182d)) {
                try {
                    C2871c.this.f12167u.mo1047f(this.f12181c, ErrorCode.CANCEL);
                    synchronized (C2871c.this) {
                        C2871c.this.f12169w.remove(Integer.valueOf(this.f12181c));
                    }
                } catch (IOException e) {
                }
            }
        }
    }

    /* renamed from: com.squareup.okhttp.internal.framed.c$e */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/c$e.class */
    public class C2876e extends AbstractRunnableC2967d {

        /* renamed from: c */
        final /* synthetic */ int f12184c;

        /* renamed from: d */
        final /* synthetic */ List f12185d;

        /* renamed from: e */
        final /* synthetic */ boolean f12186e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2876e(String str, Object[] objArr, int i, List list, boolean z) {
            super(str, objArr);
            C2871c.this = r5;
            this.f12184c = i;
            this.f12185d = list;
            this.f12186e = z;
        }

        @Override // com.squareup.okhttp.p089u.AbstractRunnableC2967d
        /* renamed from: a */
        public void mo684a() {
            boolean onHeaders = C2871c.this.f12159m.onHeaders(this.f12184c, this.f12185d, this.f12186e);
            if (onHeaders) {
                try {
                    C2871c.this.f12167u.mo1047f(this.f12184c, ErrorCode.CANCEL);
                } catch (IOException e) {
                    return;
                }
            }
            if (onHeaders || this.f12186e) {
                synchronized (C2871c.this) {
                    C2871c.this.f12169w.remove(Integer.valueOf(this.f12184c));
                }
            }
        }
    }

    /* renamed from: com.squareup.okhttp.internal.framed.c$f */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/c$f.class */
    public class C2877f extends AbstractRunnableC2967d {

        /* renamed from: c */
        final /* synthetic */ int f12188c;

        /* renamed from: d */
        final /* synthetic */ Buffer f12189d;

        /* renamed from: e */
        final /* synthetic */ int f12190e;

        /* renamed from: f */
        final /* synthetic */ boolean f12191f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2877f(String str, Object[] objArr, int i, Buffer buffer, int i2, boolean z) {
            super(str, objArr);
            C2871c.this = r5;
            this.f12188c = i;
            this.f12189d = buffer;
            this.f12190e = i2;
            this.f12191f = z;
        }

        @Override // com.squareup.okhttp.p089u.AbstractRunnableC2967d
        /* renamed from: a */
        public void mo684a() {
            try {
                boolean onData = C2871c.this.f12159m.onData(this.f12188c, this.f12189d, this.f12190e, this.f12191f);
                if (onData) {
                    C2871c.this.f12167u.mo1047f(this.f12188c, ErrorCode.CANCEL);
                }
                if (!onData && !this.f12191f) {
                    return;
                }
                synchronized (C2871c.this) {
                    C2871c.this.f12169w.remove(Integer.valueOf(this.f12188c));
                }
            } catch (IOException e) {
            }
        }
    }

    /* renamed from: com.squareup.okhttp.internal.framed.c$g */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/c$g.class */
    public class C2878g extends AbstractRunnableC2967d {

        /* renamed from: c */
        final /* synthetic */ int f12193c;

        /* renamed from: d */
        final /* synthetic */ ErrorCode f12194d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C2878g(String str, Object[] objArr, int i, ErrorCode errorCode) {
            super(str, objArr);
            C2871c.this = r5;
            this.f12193c = i;
            this.f12194d = errorCode;
        }

        @Override // com.squareup.okhttp.p089u.AbstractRunnableC2967d
        /* renamed from: a */
        public void mo684a() {
            C2871c.this.f12159m.mo1074a(this.f12193c, this.f12194d);
            synchronized (C2871c.this) {
                C2871c.this.f12169w.remove(Integer.valueOf(this.f12193c));
            }
        }
    }

    /* renamed from: com.squareup.okhttp.internal.framed.c$h */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/c$h.class */
    public static class C2879h {

        /* renamed from: a */
        private String f12196a;

        /* renamed from: b */
        private Socket f12197b;

        /* renamed from: c */
        private AbstractC2899i f12198c = AbstractC2899i.f12279a;

        /* renamed from: d */
        private Protocol f12199d = Protocol.SPDY_3;

        /* renamed from: e */
        private AbstractC2905l f12200e = AbstractC2905l.f12287a;

        /* renamed from: f */
        private boolean f12201f;

        public C2879h(String str, boolean z, Socket socket) {
            this.f12196a = str;
            this.f12201f = z;
            this.f12197b = socket;
        }

        /* renamed from: g */
        public C2871c m1190g() {
            return new C2871c(this, null);
        }

        /* renamed from: h */
        public C2879h m1189h(Protocol protocol) {
            this.f12199d = protocol;
            return this;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.squareup.okhttp.internal.framed.c$i */
    /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/c$i.class */
    public class C2880i extends AbstractRunnableC2967d implements AbstractC2868a.AbstractC2869a {

        /* renamed from: c */
        AbstractC2868a f12202c;

        /* renamed from: com.squareup.okhttp.internal.framed.c$i$a */
        /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/c$i$a.class */
        class C2881a extends AbstractRunnableC2967d {

            /* renamed from: c */
            final /* synthetic */ C2883d f12204c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C2881a(String str, Object[] objArr, C2883d c2883d) {
                super(str, objArr);
                C2880i.this = r5;
                this.f12204c = c2883d;
            }

            @Override // com.squareup.okhttp.p089u.AbstractRunnableC2967d
            /* renamed from: a */
            public void mo684a() {
                try {
                    C2871c.this.f12150d.mo1084a(this.f12204c);
                } catch (IOException e) {
                    Logger logger = AbstractC2965b.f12497a;
                    Level level = Level.INFO;
                    logger.log(level, "StreamHandler failure for " + C2871c.this.f12152f, (Throwable) e);
                    try {
                        this.f12204c.m1172l(ErrorCode.PROTOCOL_ERROR);
                    } catch (IOException e2) {
                    }
                }
            }
        }

        /* renamed from: com.squareup.okhttp.internal.framed.c$i$b */
        /* loaded from: classes2-dex2jar.jar:com/squareup/okhttp/internal/framed/c$i$b.class */
        public class C2882b extends AbstractRunnableC2967d {

            /* renamed from: c */
            final /* synthetic */ C2907m f12206c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C2882b(String str, Object[] objArr, C2907m c2907m) {
                super(str, objArr);
                C2880i.this = r5;
                this.f12206c = c2907m;
            }

            @Override // com.squareup.okhttp.p089u.AbstractRunnableC2967d
            /* renamed from: a */
            public void mo684a() {
                try {
                    C2871c.this.f12167u.mo1046k(this.f12206c);
                } catch (IOException e) {
                }
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        private C2880i() {
            super("OkHttp %s", r8.f12152f);
            C2871c.this = r8;
        }

        /* synthetic */ C2880i(C2871c c2871c, C2872a c2872a) {
            this();
        }

        /* renamed from: b */
        private void m1188b(C2907m c2907m) {
            C2871c.f12147x.execute(new C2882b("OkHttp %s ACK Settings", new Object[]{C2871c.this.f12152f}, c2907m));
        }

        @Override // com.squareup.okhttp.p089u.AbstractRunnableC2967d
        /* renamed from: a */
        protected void mo684a() {
            ErrorCode errorCode;
            Throwable th;
            ErrorCode errorCode2;
            ErrorCode errorCode3 = ErrorCode.INTERNAL_ERROR;
            try {
                try {
                    C2871c c2871c = C2871c.this;
                    AbstractC2868a mo1043a = c2871c.f12165s.mo1043a(Okio.buffer(Okio.source(c2871c.f12166t)), C2871c.this.f12149c);
                    this.f12202c = mo1043a;
                    if (!C2871c.this.f12149c) {
                        mo1043a.mo1052q();
                    }
                    while (this.f12202c.mo1056P(this)) {
                    }
                    ErrorCode errorCode4 = ErrorCode.NO_ERROR;
                    errorCode2 = errorCode4;
                    try {
                        try {
                            C2871c.this.m1215j0(errorCode4, ErrorCode.CANCEL);
                        } catch (IOException e) {
                            errorCode2 = errorCode4;
                            ErrorCode errorCode5 = ErrorCode.PROTOCOL_ERROR;
                            C2871c.this.m1215j0(errorCode5, errorCode5);
                            C2975i.m657c(this.f12202c);
                        }
                    } catch (Throwable th2) {
                        errorCode = errorCode2;
                        th = th2;
                        try {
                            C2871c.this.m1215j0(errorCode, errorCode3);
                        } catch (IOException e2) {
                        }
                        C2975i.m657c(this.f12202c);
                        throw th;
                    }
                } catch (IOException e3) {
                }
            } catch (IOException e4) {
                errorCode2 = errorCode3;
            } catch (Throwable th3) {
                th = th3;
                errorCode = errorCode3;
                C2871c.this.m1215j0(errorCode, errorCode3);
                C2975i.m657c(this.f12202c);
                throw th;
            }
            C2975i.m657c(this.f12202c);
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2868a.AbstractC2869a
        public void ackSettings() {
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2868a.AbstractC2869a
        public void data(boolean z, int i, BufferedSource bufferedSource, int i2) {
            if (C2871c.this.m1203u0(i)) {
                C2871c.this.m1207q0(i, bufferedSource, i2, z);
                return;
            }
            C2883d m1212m0 = C2871c.this.m1212m0(i);
            if (m1212m0 == null) {
                C2871c.this.m1236E0(i, ErrorCode.INVALID_STREAM);
                bufferedSource.skip(i2);
                return;
            }
            m1212m0.m1162v(bufferedSource, i2);
            if (!z) {
                return;
            }
            m1212m0.m1161w();
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2868a.AbstractC2869a
        /* renamed from: f */
        public void mo1187f(int i, ErrorCode errorCode) {
            if (C2871c.this.m1203u0(i)) {
                C2871c.this.m1204t0(i, errorCode);
                return;
            }
            C2883d m1201w0 = C2871c.this.m1201w0(i);
            if (m1201w0 == null) {
                return;
            }
            m1201w0.m1159y(errorCode);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v41, types: [long] */
        @Override // com.squareup.okhttp.internal.framed.AbstractC2868a.AbstractC2869a
        /* renamed from: g */
        public void mo1186g(boolean z, C2907m c2907m) {
            C2883d[] c2883dArr;
            char c;
            synchronized (C2871c.this) {
                try {
                    int m1069e = C2871c.this.f12163q.m1069e(65536);
                    if (z) {
                        C2871c.this.f12163q.m1073a();
                    }
                    C2871c.this.f12163q.m1065i(c2907m);
                    if (C2871c.this.m1213l0() == Protocol.HTTP_2) {
                        m1188b(c2907m);
                    }
                    int m1069e2 = C2871c.this.f12163q.m1069e(65536);
                    c2883dArr = null;
                    if (m1069e2 == -1 || m1069e2 == m1069e) {
                        c = 0;
                    } else {
                        ?? r0 = m1069e2 - m1069e;
                        if (!C2871c.this.f12164r) {
                            C2871c.this.m1216i0(r0);
                            C2871c.this.f12164r = true;
                        }
                        c = r0;
                        if (!C2871c.this.f12151e.isEmpty()) {
                            c2883dArr = (C2883d[]) C2871c.this.f12151e.values().toArray(new C2883d[C2871c.this.f12151e.size()]);
                            c = r0;
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (c2883dArr == null || c == 0) {
                return;
            }
            for (C2883d c2883d : c2883dArr) {
                synchronized (c2883d) {
                    c2883d.m1175i(c);
                }
            }
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2868a.AbstractC2869a
        /* renamed from: h */
        public void mo1185h(boolean z, boolean z2, int i, int i2, List<C2888e> list, HeadersMode headersMode) {
            if (C2871c.this.m1203u0(i)) {
                C2871c.this.m1206r0(i, list, z2);
                return;
            }
            synchronized (C2871c.this) {
                if (C2871c.this.f12155i) {
                    return;
                }
                C2883d m1212m0 = C2871c.this.m1212m0(i);
                if (m1212m0 != null) {
                    if (headersMode.failIfStreamPresent()) {
                        m1212m0.m1170n(ErrorCode.PROTOCOL_ERROR);
                        C2871c.this.m1201w0(i);
                        return;
                    }
                    m1212m0.m1160x(list, headersMode);
                    if (!z2) {
                        return;
                    }
                    m1212m0.m1161w();
                } else if (headersMode.failIfStreamAbsent()) {
                    C2871c.this.m1236E0(i, ErrorCode.INVALID_STREAM);
                } else if (i <= C2871c.this.f12153g) {
                } else {
                    if (i % 2 == C2871c.this.f12154h % 2) {
                        return;
                    }
                    C2883d c2883d = new C2883d(i, C2871c.this, z, z2, list);
                    C2871c.this.f12153g = i;
                    C2871c.this.f12151e.put(Integer.valueOf(i), c2883d);
                    C2871c.f12147x.execute(new C2881a("OkHttp %s stream %d", new Object[]{C2871c.this.f12152f, Integer.valueOf(i)}, c2883d));
                }
            }
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2868a.AbstractC2869a
        /* renamed from: i */
        public void mo1184i(int i, ErrorCode errorCode, ByteString byteString) {
            C2883d[] c2883dArr;
            byteString.size();
            synchronized (C2871c.this) {
                try {
                    c2883dArr = (C2883d[]) C2871c.this.f12151e.values().toArray(new C2883d[C2871c.this.f12151e.size()]);
                    C2871c.this.f12155i = true;
                } catch (Throwable th) {
                    throw th;
                }
            }
            for (C2883d c2883d : c2883dArr) {
                if (c2883d.m1169o() > i && c2883d.m1165s()) {
                    c2883d.m1159y(ErrorCode.REFUSED_STREAM);
                    C2871c.this.m1201w0(c2883d.m1169o());
                }
            }
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2868a.AbstractC2869a
        public void ping(boolean z, int i, int i2) {
            if (!z) {
                C2871c.this.m1238C0(true, i, i2, null);
                return;
            }
            C2904k m1202v0 = C2871c.this.m1202v0(i);
            if (m1202v0 == null) {
                return;
            }
            m1202v0.m1076b();
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2868a.AbstractC2869a
        public void priority(int i, int i2, int i3, boolean z) {
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2868a.AbstractC2869a
        public void pushPromise(int i, int i2, List<C2888e> list) {
            C2871c.this.m1205s0(i2, list);
        }

        @Override // com.squareup.okhttp.internal.framed.AbstractC2868a.AbstractC2869a
        public void windowUpdate(int i, long j) {
            C2871c c2871c = C2871c.this;
            if (i == 0) {
                synchronized (c2871c) {
                    C2871c c2871c2 = C2871c.this;
                    c2871c2.f12161o += j;
                    c2871c2.notifyAll();
                }
                return;
            }
            C2883d m1212m0 = c2871c.m1212m0(i);
            if (m1212m0 == null) {
                return;
            }
            synchronized (m1212m0) {
                m1212m0.m1175i(j);
            }
        }
    }

    private C2871c(C2879h c2879h) {
        this.f12151e = new HashMap();
        this.f12156j = System.nanoTime();
        this.f12160n = 0L;
        C2907m c2907m = new C2907m();
        this.f12162p = c2907m;
        C2907m c2907m2 = new C2907m();
        this.f12163q = c2907m2;
        this.f12164r = false;
        this.f12169w = new LinkedHashSet();
        Protocol protocol = c2879h.f12199d;
        this.f12148b = protocol;
        this.f12159m = c2879h.f12200e;
        boolean z = c2879h.f12201f;
        this.f12149c = z;
        this.f12150d = c2879h.f12198c;
        this.f12154h = c2879h.f12201f ? 1 : 2;
        if (c2879h.f12201f && protocol == Protocol.HTTP_2) {
            this.f12154h += 2;
        }
        boolean unused = c2879h.f12201f;
        if (c2879h.f12201f) {
            c2907m.m1063k(7, 0, 16777216);
        }
        String str = c2879h.f12196a;
        this.f12152f = str;
        if (protocol == Protocol.HTTP_2) {
            this.f12165s = new C2892g();
            this.f12157k = new ThreadPoolExecutor(0, 1, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(), C2975i.m644p(String.format("OkHttp %s Push Observer", str), true));
            c2907m2.m1063k(7, 0, 65535);
            c2907m2.m1063k(5, 0, 16384);
        } else if (protocol != Protocol.SPDY_3) {
            throw new AssertionError(protocol);
        } else {
            this.f12165s = new C2908n();
            this.f12157k = null;
        }
        this.f12161o = c2907m2.m1069e(65536);
        this.f12166t = c2879h.f12197b;
        this.f12167u = this.f12165s.mo1042b(Okio.buffer(Okio.sink(c2879h.f12197b)), z);
        C2880i c2880i = new C2880i(this, null);
        this.f12168v = c2880i;
        new Thread(c2880i).start();
    }

    /* synthetic */ C2871c(C2879h c2879h, C2872a c2872a) {
        this(c2879h);
    }

    /* renamed from: B0 */
    public void m1240B0(boolean z, int i, int i2, C2904k c2904k) {
        synchronized (this.f12167u) {
            if (c2904k != null) {
                c2904k.m1075c();
            }
            this.f12167u.ping(z, i, i2);
        }
    }

    /* renamed from: C0 */
    public void m1238C0(boolean z, int i, int i2, C2904k c2904k) {
        f12147x.execute(new C2874c("OkHttp %s ping %08x%08x", new Object[]{this.f12152f, Integer.valueOf(i), Integer.valueOf(i2)}, z, i, i2, c2904k));
    }

    /* renamed from: j0 */
    public void m1215j0(ErrorCode errorCode, ErrorCode errorCode2) {
        IOException e;
        C2883d[] c2883dArr;
        IOException e2;
        IOException iOException;
        C2904k[] c2904kArr = null;
        try {
            m1197z0(errorCode);
            e = null;
        } catch (IOException e3) {
            e = e3;
        }
        synchronized (this) {
            try {
                if (!this.f12151e.isEmpty()) {
                    c2883dArr = (C2883d[]) this.f12151e.values().toArray(new C2883d[this.f12151e.size()]);
                    this.f12151e.clear();
                    m1198y0(false);
                } else {
                    c2883dArr = null;
                }
                Map<Integer, C2904k> map = this.f12158l;
                if (map != null) {
                    c2904kArr = (C2904k[]) map.values().toArray(new C2904k[this.f12158l.size()]);
                    this.f12158l = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        IOException iOException2 = e;
        if (c2883dArr != null) {
            int length = c2883dArr.length;
            int i = 0;
            while (true) {
                iOException2 = e;
                if (i >= length) {
                    break;
                }
                try {
                    c2883dArr[i].m1172l(errorCode2);
                    iOException = e;
                } catch (IOException e4) {
                    iOException = e;
                    if (e != null) {
                        iOException = e4;
                    }
                }
                i++;
                e = iOException;
            }
        }
        if (c2904kArr != null) {
            for (C2904k c2904k : c2904kArr) {
                c2904k.m1077a();
            }
        }
        try {
            this.f12167u.close();
            e2 = iOException2;
        } catch (IOException e5) {
            e2 = iOException2;
            if (iOException2 == null) {
                e2 = e5;
            }
        }
        try {
            this.f12166t.close();
        } catch (IOException e6) {
            e2 = e6;
        }
        if (e2 == null) {
            return;
        }
        throw e2;
    }

    /* renamed from: o0 */
    private C2883d m1210o0(int i, List<C2888e> list, boolean z, boolean z2) {
        int i2;
        C2883d c2883d;
        boolean z3 = !z;
        boolean z4 = !z2;
        synchronized (this.f12167u) {
            synchronized (this) {
                if (this.f12155i) {
                    throw new IOException("shutdown");
                }
                i2 = this.f12154h;
                this.f12154h = i2 + 2;
                c2883d = new C2883d(i2, this, z3, z4, list);
                if (c2883d.m1164t()) {
                    this.f12151e.put(Integer.valueOf(i2), c2883d);
                    m1198y0(false);
                }
            }
            if (i == 0) {
                this.f12167u.mo1050Q(z3, z4, i2, i, list);
            } else if (this.f12149c) {
                throw new IllegalArgumentException("client streams shouldn't have associated stream IDs");
            } else {
                this.f12167u.pushPromise(i, i2, list);
            }
        }
        if (!z) {
            this.f12167u.flush();
        }
        return c2883d;
    }

    /* renamed from: q0 */
    public void m1207q0(int i, BufferedSource bufferedSource, int i2, boolean z) {
        Buffer buffer = new Buffer();
        long j = i2;
        bufferedSource.require(j);
        bufferedSource.read(buffer, j);
        if (buffer.size() == j) {
            this.f12157k.execute(new C2877f("OkHttp %s Push Data[%s]", new Object[]{this.f12152f, Integer.valueOf(i)}, i, buffer, i2, z));
            return;
        }
        throw new IOException(buffer.size() + " != " + i2);
    }

    /* renamed from: r0 */
    public void m1206r0(int i, List<C2888e> list, boolean z) {
        this.f12157k.execute(new C2876e("OkHttp %s Push Headers[%s]", new Object[]{this.f12152f, Integer.valueOf(i)}, i, list, z));
    }

    /* renamed from: s0 */
    public void m1205s0(int i, List<C2888e> list) {
        synchronized (this) {
            if (this.f12169w.contains(Integer.valueOf(i))) {
                m1236E0(i, ErrorCode.PROTOCOL_ERROR);
                return;
            }
            this.f12169w.add(Integer.valueOf(i));
            this.f12157k.execute(new C2875d("OkHttp %s Push Request[%s]", new Object[]{this.f12152f, Integer.valueOf(i)}, i, list));
        }
    }

    /* renamed from: t0 */
    public void m1204t0(int i, ErrorCode errorCode) {
        this.f12157k.execute(new C2878g("OkHttp %s Push Reset[%s]", new Object[]{this.f12152f, Integer.valueOf(i)}, i, errorCode));
    }

    /* renamed from: u0 */
    public boolean m1203u0(int i) {
        boolean z = true;
        if (this.f12148b != Protocol.HTTP_2 || i == 0 || (i & 1) != 0) {
            z = false;
        }
        return z;
    }

    /* renamed from: v0 */
    public C2904k m1202v0(int i) {
        C2904k remove;
        synchronized (this) {
            Map<Integer, C2904k> map = this.f12158l;
            remove = map != null ? map.remove(Integer.valueOf(i)) : null;
        }
        return remove;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* renamed from: y0 */
    private void m1198y0(boolean z) {
        synchronized (this) {
            this.f12156j = z ? System.nanoTime() : (char) 65535;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0052, code lost:
        throw new java.io.IOException("stream closed");
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0055, code lost:
        r0 = java.lang.Math.min((int) java.lang.Math.min((long) r12, r0), r6.f12167u.maxDataLength());
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0071, code lost:
        r0 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0074, code lost:
        r6.f12161o -= r0;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v26, types: [long] */
    /* renamed from: A0 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m1242A0(int r7, boolean r8, okio.Buffer r9, long r10) {
        /*
            Method dump skipped, instructions count: 196
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.squareup.okhttp.internal.framed.C2871c.m1242A0(int, boolean, okio.Buffer, long):void");
    }

    /* renamed from: D0 */
    public void m1237D0(int i, ErrorCode errorCode) {
        this.f12167u.mo1047f(i, errorCode);
    }

    /* renamed from: E0 */
    public void m1236E0(int i, ErrorCode errorCode) {
        f12147x.submit(new C2872a("OkHttp %s stream %d", new Object[]{this.f12152f, Integer.valueOf(i)}, i, errorCode));
    }

    /* renamed from: F0 */
    public void m1234F0(int i, long j) {
        f12147x.execute(new C2873b("OkHttp Window Update %s stream %d", new Object[]{this.f12152f, Integer.valueOf(i)}, i, j));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        m1215j0(ErrorCode.NO_ERROR, ErrorCode.CANCEL);
    }

    public void flush() {
        this.f12167u.flush();
    }

    /* renamed from: i0 */
    void m1216i0(long j) {
        this.f12161o += j;
        if (j > 0) {
            notifyAll();
        }
    }

    /* renamed from: k0 */
    public long m1214k0() {
        long j;
        synchronized (this) {
            j = this.f12156j;
        }
        return j;
    }

    /* renamed from: l0 */
    public Protocol m1213l0() {
        return this.f12148b;
    }

    /* renamed from: m0 */
    C2883d m1212m0(int i) {
        C2883d c2883d;
        synchronized (this) {
            c2883d = this.f12151e.get(Integer.valueOf(i));
        }
        return c2883d;
    }

    /* renamed from: n0 */
    public boolean m1211n0() {
        boolean z;
        synchronized (this) {
            z = this.f12156j != Long.MAX_VALUE;
        }
        return z;
    }

    /* renamed from: p0 */
    public C2883d m1208p0(List<C2888e> list, boolean z, boolean z2) {
        return m1210o0(0, list, z, z2);
    }

    /* renamed from: w0 */
    public C2883d m1201w0(int i) {
        C2883d remove;
        synchronized (this) {
            remove = this.f12151e.remove(Integer.valueOf(i));
            if (remove != null && this.f12151e.isEmpty()) {
                m1198y0(true);
            }
            notifyAll();
        }
        return remove;
    }

    /* renamed from: x0 */
    public void m1199x0() {
        this.f12167u.connectionPreface();
        this.f12167u.mo1049S(this.f12162p);
        int m1069e = this.f12162p.m1069e(65536);
        if (m1069e != 65536) {
            this.f12167u.windowUpdate(0, m1069e - 65536);
        }
    }

    /* renamed from: z0 */
    public void m1197z0(ErrorCode errorCode) {
        synchronized (this.f12167u) {
            synchronized (this) {
                if (this.f12155i) {
                    return;
                }
                this.f12155i = true;
                this.f12167u.mo1044t(this.f12153g, errorCode, C2975i.f12519a);
            }
        }
    }
}
