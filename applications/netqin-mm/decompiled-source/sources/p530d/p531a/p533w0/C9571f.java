package p530d.p531a.p533w0;

import com.google.common.collect.RegularImmutableMap;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import com.squareup.okhttp.HttpUrl;
import io.grpc.HttpConnectProxiedSocketAddress;
import io.grpc.InternalChannelz;
import io.grpc.MethodDescriptor;
import io.grpc.SecurityLevel;
import io.grpc.Status;
import io.grpc.StatusException;
import io.grpc.internal.ClientStreamListener;
import io.grpc.internal.GrpcUtil;
import io.grpc.internal.KeepAliveManager;
import io.grpc.okhttp.OkHttpFrameLogger;
import io.grpc.okhttp.internal.framed.ErrorCode;
import io.grpc.okhttp.internal.framed.HeadersMode;
import java.io.EOFException;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.URI;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import okio.ByteString;
import p131c.p161d.p266c.p267a.AbstractC4941s;
import p131c.p161d.p266c.p267a.C4924j;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p267a.C4938q;
import p131c.p161d.p266c.p275i.p276a.C5115q;
import p131c.p479m.p480a.C6872a;
import p131c.p479m.p480a.C6876c;
import p131c.p479m.p480a.p481e.p482a.C6880a;
import p530d.p531a.C9210a;
import p530d.p531a.C9222d;
import p530d.p531a.C9260k0;
import p530d.p531a.C9558w;
import p530d.p531a.C9625z;
import p530d.p531a.p532v0.AbstractC9445n0;
import p530d.p531a.p532v0.AbstractC9451p;
import p530d.p531a.p532v0.AbstractC9493s;
import p530d.p531a.p532v0.AbstractC9543x0;
import p530d.p531a.p532v0.C9325a2;
import p530d.p531a.p532v0.C9379j0;
import p530d.p531a.p532v0.C9401m0;
import p530d.p531a.p532v0.C9495s1;
import p530d.p531a.p532v0.C9507u1;
import p530d.p531a.p532v0.ExecutorC9472p1;
import p530d.p531a.p533w0.C9564b;
import p530d.p531a.p533w0.C9568e;
import p530d.p531a.p533w0.p534o.C9591a;
import p530d.p531a.p533w0.p534o.p535f.AbstractC9598a;
import p530d.p531a.p533w0.p534o.p535f.AbstractC9600b;
import p530d.p531a.p533w0.p534o.p535f.AbstractC9613h;
import p530d.p531a.p533w0.p534o.p535f.C9601c;
import p530d.p531a.p533w0.p534o.p535f.C9605e;
import p530d.p531a.p533w0.p534o.p535f.C9612g;
import p530d.p540b.C9635c;
import p610i.AbstractC10263d;
import p610i.AbstractC10264e;
import p610i.AbstractC10281q;
import p610i.C10260c;
import p610i.C10270k;
import p610i.C10282r;
/* renamed from: d.a.w0.f */
/* loaded from: classes2-dex2jar.jar:d/a/w0/f.class */
public class C9571f implements AbstractC9493s, C9564b.AbstractC9565a {

    /* renamed from: X */
    public static final Map<ErrorCode, Status> f36516X = m2375n();

    /* renamed from: Y */
    public static final Logger f36517Y = Logger.getLogger(C9571f.class.getName());

    /* renamed from: Z */
    public static final C9568e[] f36518Z = new C9568e[0];

    /* renamed from: A */
    public final SocketFactory f36519A;

    /* renamed from: B */
    public SSLSocketFactory f36520B;

    /* renamed from: C */
    public HostnameVerifier f36521C;

    /* renamed from: D */
    public Socket f36522D;

    /* renamed from: G */
    public final C9591a f36525G;

    /* renamed from: H */
    public AbstractC9600b f36526H;

    /* renamed from: I */
    public ScheduledExecutorService f36527I;

    /* renamed from: J */
    public KeepAliveManager f36528J;

    /* renamed from: K */
    public boolean f36529K;

    /* renamed from: L */
    public long f36530L;

    /* renamed from: M */
    public long f36531M;

    /* renamed from: N */
    public boolean f36532N;

    /* renamed from: O */
    public final Runnable f36533O;

    /* renamed from: P */
    public final int f36534P;

    /* renamed from: Q */
    public final boolean f36535Q;

    /* renamed from: R */
    public final C9325a2 f36536R;

    /* renamed from: T */
    public InternalChannelz.C10294b f36538T;

    /* renamed from: U */
    public final HttpConnectProxiedSocketAddress f36539U;

    /* renamed from: V */
    public Runnable f36540V;

    /* renamed from: W */
    public C5115q<Void> f36541W;

    /* renamed from: a */
    public final InetSocketAddress f36542a;

    /* renamed from: b */
    public final String f36543b;

    /* renamed from: c */
    public final String f36544c;

    /* renamed from: e */
    public final AbstractC4941s<C4938q> f36546e;

    /* renamed from: f */
    public final int f36547f;

    /* renamed from: g */
    public AbstractC9543x0.AbstractC9544a f36548g;

    /* renamed from: h */
    public AbstractC9598a f36549h;

    /* renamed from: i */
    public OkHttpFrameLogger f36550i;

    /* renamed from: j */
    public C9564b f36551j;

    /* renamed from: k */
    public C9586m f36552k;

    /* renamed from: m */
    public final C9625z f36554m;

    /* renamed from: p */
    public final Executor f36557p;

    /* renamed from: q */
    public final ExecutorC9472p1 f36558q;

    /* renamed from: r */
    public final int f36559r;

    /* renamed from: s */
    public int f36560s;

    /* renamed from: t */
    public RunnableC9578f f36561t;

    /* renamed from: u */
    public C9210a f36562u;

    /* renamed from: v */
    public Status f36563v;

    /* renamed from: w */
    public boolean f36564w;

    /* renamed from: x */
    public C9401m0 f36565x;

    /* renamed from: y */
    public boolean f36566y;

    /* renamed from: z */
    public boolean f36567z;

    /* renamed from: d */
    public final Random f36545d = new Random();

    /* renamed from: l */
    public final Object f36553l = new Object();

    /* renamed from: o */
    public final Map<Integer, C9568e> f36556o = new HashMap();

    /* renamed from: E */
    public int f36523E = 0;

    /* renamed from: F */
    public final LinkedList<C9568e> f36524F = new LinkedList<>();

    /* renamed from: S */
    public final AbstractC9445n0<C9568e> f36537S = new C9572a();

    /* renamed from: n */
    public int f36555n = 3;

    /* renamed from: d.a.w0.f$a */
    /* loaded from: classes2-dex2jar.jar:d/a/w0/f$a.class */
    public class C9572a extends AbstractC9445n0<C9568e> {
        public C9572a() {
        }

        @Override // p530d.p531a.p532v0.AbstractC9445n0
        /* renamed from: a */
        public void mo373a() {
            C9571f.this.f36548g.mo377a(true);
        }

        @Override // p530d.p531a.p532v0.AbstractC9445n0
        /* renamed from: b */
        public void mo372b() {
            C9571f.this.f36548g.mo377a(false);
        }
    }

    /* renamed from: d.a.w0.f$b */
    /* loaded from: classes2-dex2jar.jar:d/a/w0/f$b.class */
    public class C9573b implements C9325a2.AbstractC9328c {
        public C9573b(C9571f fVar) {
        }
    }

    /* renamed from: d.a.w0.f$c */
    /* loaded from: classes2-dex2jar.jar:d/a/w0/f$c.class */
    public class RunnableC9574c implements Runnable {
        public RunnableC9574c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Runnable runnable = C9571f.this.f36540V;
            if (runnable != null) {
                runnable.run();
            }
            C9571f fVar = C9571f.this;
            fVar.f36561t = new RunnableC9578f(fVar.f36549h, C9571f.this.f36550i);
            C9571f.this.f36557p.execute(C9571f.this.f36561t);
            synchronized (C9571f.this.f36553l) {
                C9571f.this.f36523E = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
                C9571f.this.m2381k();
            }
            C9571f.this.f36541W.mo275b((C5115q<Void>) null);
        }
    }

    /* renamed from: d.a.w0.f$d */
    /* loaded from: classes2-dex2jar.jar:d/a/w0/f$d.class */
    public class RunnableC9575d implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ CountDownLatch f36570a;

        /* renamed from: b */
        public final /* synthetic */ C9559a f36571b;

        /* renamed from: c */
        public final /* synthetic */ AbstractC9613h f36572c;

        /* renamed from: d.a.w0.f$d$a */
        /* loaded from: classes2-dex2jar.jar:d/a/w0/f$d$a.class */
        public class C9576a implements AbstractC10281q {
            public C9576a(RunnableC9575d dVar) {
            }

            @Override // p610i.AbstractC10281q
            /* renamed from: b */
            public long mo704b(C10260c cVar, long j) {
                return -1L;
            }

            @Override // p610i.AbstractC10281q, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // p610i.AbstractC10281q
            /* renamed from: f0 */
            public C10282r mo703f0() {
                return C10282r.f37926d;
            }
        }

        public RunnableC9575d(CountDownLatch countDownLatch, C9559a aVar, AbstractC9613h hVar) {
            this.f36570a = countDownLatch;
            this.f36571b = aVar;
            this.f36572c = hVar;
        }

        /* JADX WARN: Finally extract failed */
        @Override // java.lang.Runnable
        public void run() {
            C9571f fVar;
            RunnableC9578f fVar2;
            Socket a;
            try {
                this.f36570a.await();
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
            }
            AbstractC10264e a2 = C10270k.m753a(new C9576a(this));
            SSLSession sSLSession = null;
            try {
                try {
                    try {
                        if (C9571f.this.f36539U == null) {
                            a = C9571f.this.f36519A.createSocket(C9571f.this.f36542a.getAddress(), C9571f.this.f36542a.getPort());
                        } else if (C9571f.this.f36539U.getProxyAddress() instanceof InetSocketAddress) {
                            a = C9571f.this.m2408a(C9571f.this.f36539U.getTargetAddress(), (InetSocketAddress) C9571f.this.f36539U.getProxyAddress(), C9571f.this.f36539U.getUsername(), C9571f.this.f36539U.getPassword());
                        } else {
                            Status status = Status.f37995m;
                            StringBuilder sb = new StringBuilder();
                            sb.append("Unsupported SocketAddress implementation ");
                            sb.append(C9571f.this.f36539U.getProxyAddress().getClass());
                            throw status.m609b(sb.toString()).m617a();
                        }
                        SSLSocket sSLSocket = a;
                        if (C9571f.this.f36520B != null) {
                            SSLSocket a3 = C9583j.m2351a(C9571f.this.f36520B, C9571f.this.f36521C, a, C9571f.this.m2397d(), C9571f.this.m2394e(), C9571f.this.f36525G);
                            sSLSession = a3.getSession();
                            sSLSocket = a3;
                        }
                        sSLSocket.setTcpNoDelay(true);
                        AbstractC10264e a4 = C10270k.m753a(C10270k.m744b(sSLSocket));
                        this.f36571b.m2481a(C10270k.m746a(sSLSocket), sSLSocket);
                        C9571f fVar3 = C9571f.this;
                        C9210a.C9212b a5 = C9571f.this.f36562u.m3156a();
                        a5.m3149a(C9558w.f36461a, sSLSocket.getRemoteSocketAddress());
                        a5.m3149a(C9558w.f36462b, sSLSocket.getLocalSocketAddress());
                        a5.m3149a(C9558w.f36463c, sSLSession);
                        a5.m3149a(C9379j0.f36043c, sSLSession == null ? SecurityLevel.NONE : SecurityLevel.PRIVACY_AND_INTEGRITY);
                        fVar3.f36562u = a5.m3152a();
                        C9571f fVar4 = C9571f.this;
                        fVar4.f36561t = new RunnableC9578f(fVar4, this.f36572c.mo2181a(a4, true));
                        synchronized (C9571f.this.f36553l) {
                            C9571f fVar5 = C9571f.this;
                            C4933n.m24794a(sSLSocket, "socket");
                            fVar5.f36522D = sSLSocket;
                            if (sSLSession != null) {
                                C9571f.this.f36538T = new InternalChannelz.C10294b(new InternalChannelz.C10295c(sSLSession));
                            }
                        }
                    } catch (StatusException e2) {
                        C9571f.this.m2427a(0, ErrorCode.INTERNAL_ERROR, e2.getStatus());
                        fVar = C9571f.this;
                        fVar2 = new RunnableC9578f(fVar, this.f36572c.mo2181a(a2, true));
                        fVar.f36561t = fVar2;
                    }
                } catch (Exception e3) {
                    C9571f.this.mo2410a(e3);
                    fVar = C9571f.this;
                    fVar2 = new RunnableC9578f(fVar, this.f36572c.mo2181a(a2, true));
                    fVar.f36561t = fVar2;
                }
            } catch (Throwable th) {
                C9571f fVar6 = C9571f.this;
                fVar6.f36561t = new RunnableC9578f(fVar6, this.f36572c.mo2181a(a2, true));
                throw th;
            }
        }
    }

    /* renamed from: d.a.w0.f$e */
    /* loaded from: classes2-dex2jar.jar:d/a/w0/f$e.class */
    public class RunnableC9577e implements Runnable {
        public RunnableC9577e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            C9571f.this.f36557p.execute(C9571f.this.f36561t);
            synchronized (C9571f.this.f36553l) {
                C9571f.this.f36523E = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
                C9571f.this.m2381k();
            }
        }
    }

    /* renamed from: d.a.w0.f$f */
    /* loaded from: classes2-dex2jar.jar:d/a/w0/f$f.class */
    public class RunnableC9578f implements AbstractC9598a.AbstractC9599a, Runnable {

        /* renamed from: a */
        public final OkHttpFrameLogger f36575a;

        /* renamed from: b */
        public AbstractC9598a f36576b;

        /* renamed from: c */
        public boolean f36577c;

        public RunnableC9578f(C9571f fVar, AbstractC9598a aVar) {
            this(aVar, new OkHttpFrameLogger(Level.FINE, C9571f.class));
        }

        public RunnableC9578f(AbstractC9598a aVar, OkHttpFrameLogger okHttpFrameLogger) {
            this.f36577c = true;
            this.f36576b = aVar;
            this.f36575a = okHttpFrameLogger;
        }

        /* renamed from: a */
        public final int m2365a(List<C9601c> list) {
            long j = 0;
            for (int i = 0; i < list.size(); i++) {
                C9601c cVar = list.get(i);
                j += cVar.f36635a.size() + 32 + cVar.f36636b.size();
            }
            return (int) Math.min(j, 2147483647L);
        }

        @Override // p530d.p531a.p533w0.p534o.p535f.AbstractC9598a.AbstractC9599a
        /* renamed from: a */
        public void mo2278a() {
        }

        @Override // p530d.p531a.p533w0.p534o.p535f.AbstractC9598a.AbstractC9599a
        /* renamed from: a */
        public void mo2277a(int i, int i2, int i3, boolean z) {
        }

        @Override // p530d.p531a.p533w0.p534o.p535f.AbstractC9598a.AbstractC9599a
        /* renamed from: a */
        public void mo2276a(int i, int i2, List<C9601c> list) throws IOException {
            this.f36575a.m305a(OkHttpFrameLogger.Direction.INBOUND, i, i2, list);
            synchronized (C9571f.this.f36553l) {
                C9571f.this.f36551j.mo2207a(i, ErrorCode.PROTOCOL_ERROR);
            }
        }

        @Override // p530d.p531a.p533w0.p534o.p535f.AbstractC9598a.AbstractC9599a
        /* renamed from: a */
        public void mo2275a(int i, long j) {
            this.f36575a.m304a(OkHttpFrameLogger.Direction.INBOUND, i, j);
            if (j != 0) {
                boolean z = false;
                synchronized (C9571f.this.f36553l) {
                    if (i == 0) {
                        C9571f.this.f36552k.m2341a(null, (int) j);
                        return;
                    }
                    C9568e eVar = (C9568e) C9571f.this.f36556o.get(Integer.valueOf(i));
                    if (eVar != null) {
                        C9571f.this.f36552k.m2341a(eVar, (int) j);
                    } else if (!C9571f.this.m2406b(i)) {
                        z = true;
                    }
                    if (z) {
                        C9571f fVar = C9571f.this;
                        ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
                        fVar.m2411a(errorCode, "Received window_update for unknown stream: " + i);
                    }
                }
            } else if (i == 0) {
                C9571f.this.m2411a(ErrorCode.PROTOCOL_ERROR, "Received 0 flow control window increment.");
            } else {
                C9571f.this.m2428a(i, Status.f37995m.m609b("Received 0 flow control window increment."), ClientStreamListener.RpcProgress.PROCESSED, false, ErrorCode.PROTOCOL_ERROR, null);
            }
        }

        @Override // p530d.p531a.p533w0.p534o.p535f.AbstractC9598a.AbstractC9599a
        /* renamed from: a */
        public void mo2274a(int i, ErrorCode errorCode) {
            this.f36575a.m302a(OkHttpFrameLogger.Direction.INBOUND, i, errorCode);
            Status a = C9571f.m2412a(errorCode).m613a("Rst Stream");
            boolean z = a.m604d() == Status.Code.CANCELLED || a.m604d() == Status.Code.DEADLINE_EXCEEDED;
            synchronized (C9571f.this.f36553l) {
                C9568e eVar = (C9568e) C9571f.this.f36556o.get(Integer.valueOf(i));
                if (eVar != null) {
                    C9635c.m2123a("OkHttpClientTransport$ClientFrameHandler.rstStream", eVar.mo2461e().m2431j());
                    C9571f.this.m2428a(i, a, errorCode == ErrorCode.REFUSED_STREAM ? ClientStreamListener.RpcProgress.REFUSED : ClientStreamListener.RpcProgress.PROCESSED, z, null, null);
                }
            }
        }

        @Override // p530d.p531a.p533w0.p534o.p535f.AbstractC9598a.AbstractC9599a
        /* renamed from: a */
        public void mo2273a(int i, ErrorCode errorCode, ByteString byteString) {
            this.f36575a.m301a(OkHttpFrameLogger.Direction.INBOUND, i, errorCode, byteString);
            if (errorCode == ErrorCode.ENHANCE_YOUR_CALM) {
                String utf8 = byteString.utf8();
                C9571f.f36517Y.log(Level.WARNING, String.format("%s: Received GOAWAY with ENHANCE_YOUR_CALM. Debug data: %s", this, utf8));
                if ("too_many_pings".equals(utf8)) {
                    C9571f.this.f36533O.run();
                }
            }
            Status a = GrpcUtil.Http2Error.statusForCode(errorCode.httpCode).m613a("Received Goaway");
            Status status = a;
            if (byteString.size() > 0) {
                status = a.m613a(byteString.utf8());
            }
            C9571f.this.m2427a(i, (ErrorCode) null, status);
        }

        @Override // p530d.p531a.p533w0.p534o.p535f.AbstractC9598a.AbstractC9599a
        /* renamed from: a */
        public void mo2272a(boolean z, int i, int i2) {
            C9401m0 m0Var;
            long j = (i << 32) | (i2 & 4294967295L);
            this.f36575a.m299a(OkHttpFrameLogger.Direction.INBOUND, j);
            if (!z) {
                synchronized (C9571f.this.f36553l) {
                    C9571f.this.f36551j.mo2204a(true, i, i2);
                }
                return;
            }
            synchronized (C9571f.this.f36553l) {
                m0Var = null;
                if (C9571f.this.f36565x == null) {
                    C9571f.f36517Y.warning("Received unexpected ping ack. No ping outstanding");
                } else if (C9571f.this.f36565x.m2826b() == j) {
                    m0Var = C9571f.this.f36565x;
                    C9571f.this.f36565x = null;
                } else {
                    C9571f.f36517Y.log(Level.WARNING, String.format("Received unexpected ping ack. Expecting %d, got %d", Long.valueOf(C9571f.this.f36565x.m2826b()), Long.valueOf(j)));
                }
            }
            if (m0Var != null) {
                m0Var.m2833a();
            }
        }

        @Override // p530d.p531a.p533w0.p534o.p535f.AbstractC9598a.AbstractC9599a
        /* renamed from: a */
        public void mo2271a(boolean z, int i, AbstractC10264e eVar, int i2) throws IOException {
            this.f36575a.m303a(OkHttpFrameLogger.Direction.INBOUND, i, eVar.mo728W(), i2, z);
            C9568e a = C9571f.this.m2429a(i);
            if (a != null) {
                long j = i2;
                eVar.mo715g(j);
                C10260c cVar = new C10260c();
                cVar.mo706a(eVar.mo728W(), j);
                C9635c.m2123a("OkHttpClientTransport$ClientFrameHandler.data", a.mo2461e().m2431j());
                synchronized (C9571f.this.f36553l) {
                    a.mo2461e().m2440a(cVar, z);
                }
            } else if (C9571f.this.m2406b(i)) {
                synchronized (C9571f.this.f36553l) {
                    C9571f.this.f36551j.mo2207a(i, ErrorCode.INVALID_STREAM);
                }
                eVar.skip(i2);
            } else {
                C9571f.this.m2411a(ErrorCode.PROTOCOL_ERROR, "Received data for unknown stream: " + i);
                return;
            }
            C9571f.m2403b(C9571f.this, i2);
            if (C9571f.this.f36560s >= C9571f.this.f36547f * 0.5f) {
                synchronized (C9571f.this.f36553l) {
                    C9571f.this.f36551j.mo2208a(0, C9571f.this.f36560s);
                }
                C9571f.this.f36560s = 0;
            }
        }

        @Override // p530d.p531a.p533w0.p534o.p535f.AbstractC9598a.AbstractC9599a
        /* renamed from: a */
        public void mo2270a(boolean z, C9612g gVar) {
            boolean z2;
            this.f36575a.m298a(OkHttpFrameLogger.Direction.INBOUND, gVar);
            synchronized (C9571f.this.f36553l) {
                if (C9582i.m2353b(gVar, 4)) {
                    C9571f.this.f36523E = C9582i.m2355a(gVar, 4);
                }
                if (C9582i.m2353b(gVar, 7)) {
                    z2 = C9571f.this.f36552k.m2343a(C9582i.m2355a(gVar, 7));
                } else {
                    z2 = false;
                }
                if (this.f36577c) {
                    C9571f.this.f36548g.mo379a();
                    this.f36577c = false;
                }
                C9571f.this.f36551j.mo2205a(gVar);
                if (z2) {
                    C9571f.this.f36552k.m2338b();
                }
                C9571f.this.m2381k();
            }
        }

        @Override // p530d.p531a.p533w0.p534o.p535f.AbstractC9598a.AbstractC9599a
        /* renamed from: a */
        public void mo2269a(boolean z, boolean z2, int i, int i2, List<C9601c> list, HeadersMode headersMode) {
            Status status;
            int a;
            this.f36575a.m300a(OkHttpFrameLogger.Direction.INBOUND, i, list, z2);
            boolean z3 = true;
            if (C9571f.this.f36534P == Integer.MAX_VALUE || (a = m2365a(list)) <= C9571f.this.f36534P) {
                status = null;
            } else {
                status = Status.f37994l.m609b(String.format("Response %s metadata larger than %d: %d", z2 ? "trailer" : "header", Integer.valueOf(C9571f.this.f36534P), Integer.valueOf(a)));
            }
            synchronized (C9571f.this.f36553l) {
                C9568e eVar = (C9568e) C9571f.this.f36556o.get(Integer.valueOf(i));
                if (eVar == null) {
                    if (C9571f.this.m2406b(i)) {
                        C9571f.this.f36551j.mo2207a(i, ErrorCode.INVALID_STREAM);
                    }
                } else if (status == null) {
                    C9635c.m2123a("OkHttpClientTransport$ClientFrameHandler.headers", eVar.mo2461e().m2431j());
                    eVar.mo2461e().m2437a(list, z2);
                } else {
                    if (!z2) {
                        C9571f.this.f36551j.mo2207a(i, ErrorCode.CANCEL);
                    }
                    eVar.mo2461e().m2930a(status, false, new C9260k0());
                }
                z3 = false;
            }
            if (z3) {
                C9571f fVar = C9571f.this;
                ErrorCode errorCode = ErrorCode.PROTOCOL_ERROR;
                fVar.m2411a(errorCode, "Received header for unknown stream: " + i);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            IOException e;
            String name = Thread.currentThread().getName();
            Thread.currentThread().setName("OkHttpClientTransport");
            while (this.f36576b.mo2222a(this)) {
                try {
                    if (C9571f.this.f36528J != null) {
                        C9571f.this.f36528J.m478a();
                    }
                } catch (Throwable th) {
                    try {
                        C9571f.this.m2427a(0, ErrorCode.PROTOCOL_ERROR, Status.f37995m.m609b("error in frame handler").m612a(th));
                        try {
                            this.f36576b.close();
                        } catch (IOException e2) {
                            e = e2;
                            C9571f.f36517Y.log(Level.INFO, "Exception closing frame reader", (Throwable) e);
                            C9571f.this.f36548g.mo376b();
                            Thread.currentThread().setName(name);
                        }
                    } catch (Throwable th2) {
                        try {
                            this.f36576b.close();
                        } catch (IOException e3) {
                            C9571f.f36517Y.log(Level.INFO, "Exception closing frame reader", (Throwable) e3);
                        }
                        C9571f.this.f36548g.mo376b();
                        Thread.currentThread().setName(name);
                        throw th2;
                    }
                }
            }
            C9571f.this.m2427a(0, ErrorCode.INTERNAL_ERROR, Status.f37996n.m609b("End of stream or IOException"));
            try {
                this.f36576b.close();
            } catch (IOException e4) {
                e = e4;
                C9571f.f36517Y.log(Level.INFO, "Exception closing frame reader", (Throwable) e);
                C9571f.this.f36548g.mo376b();
                Thread.currentThread().setName(name);
            }
            C9571f.this.f36548g.mo376b();
            Thread.currentThread().setName(name);
        }
    }

    public C9571f(InetSocketAddress inetSocketAddress, String str, String str2, C9210a aVar, Executor executor, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, C9591a aVar2, int i, int i2, HttpConnectProxiedSocketAddress httpConnectProxiedSocketAddress, Runnable runnable, int i3, C9325a2 a2Var, boolean z) {
        C4933n.m24794a(inetSocketAddress, "address");
        this.f36542a = inetSocketAddress;
        this.f36543b = str;
        this.f36559r = i;
        this.f36547f = i2;
        C4933n.m24794a(executor, "executor");
        this.f36557p = executor;
        this.f36558q = new ExecutorC9472p1(executor);
        this.f36519A = socketFactory == null ? SocketFactory.getDefault() : socketFactory;
        this.f36520B = sSLSocketFactory;
        this.f36521C = hostnameVerifier;
        C4933n.m24794a(aVar2, "connectionSpec");
        this.f36525G = aVar2;
        this.f36546e = GrpcUtil.f38072o;
        this.f36544c = GrpcUtil.m529a("okhttp", str2);
        this.f36539U = httpConnectProxiedSocketAddress;
        C4933n.m24794a(runnable, "tooManyPingsRunnable");
        this.f36533O = runnable;
        this.f36534P = i3;
        C4933n.m24795a(a2Var);
        this.f36536R = a2Var;
        this.f36554m = C9625z.m2159a(C9571f.class, inetSocketAddress.toString());
        C9210a.C9212b b = C9210a.m3153b();
        b.m3149a(C9379j0.f36044d, aVar);
        this.f36562u = b.m3152a();
        this.f36535Q = z;
        m2389g();
    }

    /* renamed from: a */
    public static Status m2412a(ErrorCode errorCode) {
        Status status;
        Status status2 = f36516X.get(errorCode);
        if (status2 != null) {
            status = status2;
        } else {
            Status status3 = Status.f37990h;
            status = status3.m609b("Unknown http2 error code: " + errorCode.httpCode);
        }
        return status;
    }

    /* renamed from: a */
    public static String m2414a(AbstractC10281q qVar) throws IOException {
        C10260c cVar = new C10260c();
        while (qVar.mo704b(cVar, 1L) != -1) {
            if (cVar.m772d(cVar.size() - 1) == 10) {
                return cVar.mo732I1();
            }
        }
        throw new EOFException("\\n not found: " + cVar.m769h().hex());
    }

    /* renamed from: b */
    public static /* synthetic */ int m2403b(C9571f fVar, int i) {
        int i2 = fVar.f36560s + i;
        fVar.f36560s = i2;
        return i2;
    }

    /* renamed from: n */
    public static Map<ErrorCode, Status> m2375n() {
        EnumMap enumMap = new EnumMap(ErrorCode.class);
        enumMap.put((EnumMap) ErrorCode.NO_ERROR, (ErrorCode) Status.f37995m.m609b("No error: A GRPC status of OK should have been sent"));
        enumMap.put((EnumMap) ErrorCode.PROTOCOL_ERROR, (ErrorCode) Status.f37995m.m609b("Protocol error"));
        enumMap.put((EnumMap) ErrorCode.INTERNAL_ERROR, (ErrorCode) Status.f37995m.m609b("Internal error"));
        enumMap.put((EnumMap) ErrorCode.FLOW_CONTROL_ERROR, (ErrorCode) Status.f37995m.m609b("Flow control error"));
        enumMap.put((EnumMap) ErrorCode.STREAM_CLOSED, (ErrorCode) Status.f37995m.m609b("Stream closed"));
        enumMap.put((EnumMap) ErrorCode.FRAME_TOO_LARGE, (ErrorCode) Status.f37995m.m609b("Frame too large"));
        enumMap.put((EnumMap) ErrorCode.REFUSED_STREAM, (ErrorCode) Status.f37996n.m609b("Refused stream"));
        enumMap.put((EnumMap) ErrorCode.CANCEL, (ErrorCode) Status.f37989g.m609b("Cancelled"));
        enumMap.put((EnumMap) ErrorCode.COMPRESSION_ERROR, (ErrorCode) Status.f37995m.m609b("Compression error"));
        enumMap.put((EnumMap) ErrorCode.CONNECT_ERROR, (ErrorCode) Status.f37995m.m609b("Connect error"));
        enumMap.put((EnumMap) ErrorCode.ENHANCE_YOUR_CALM, (ErrorCode) Status.f37994l.m609b("Enhance your calm"));
        enumMap.put((EnumMap) ErrorCode.INADEQUATE_SECURITY, (ErrorCode) Status.f37992j.m609b("Inadequate security"));
        return Collections.unmodifiableMap(enumMap);
    }

    /* renamed from: a */
    public final C6876c m2409a(InetSocketAddress inetSocketAddress, String str, String str2) {
        HttpUrl.Builder builder = new HttpUrl.Builder();
        builder.m3160b("https");
        builder.m3165a(inetSocketAddress.getHostName());
        builder.m3166a(inetSocketAddress.getPort());
        HttpUrl a = builder.m3167a();
        C6876c.C6878b bVar = new C6876c.C6878b();
        bVar.m19490a(a);
        bVar.m19489a("Host", a.m3177a() + ":" + a.m3169b());
        bVar.m19489a("User-Agent", this.f36544c);
        if (!(str == null || str2 == null)) {
            bVar.m19489a("Proxy-Authorization", C6872a.m19504a(str, str2));
        }
        return bVar.m19492a();
    }

    /* renamed from: a */
    public C9568e m2429a(int i) {
        C9568e eVar;
        synchronized (this.f36553l) {
            eVar = this.f36556o.get(Integer.valueOf(i));
        }
        return eVar;
    }

    @Override // p530d.p531a.p532v0.AbstractC9451p
    /* renamed from: a */
    public C9568e mo520a(MethodDescriptor<?, ?> methodDescriptor, C9260k0 k0Var, C9222d dVar) {
        Object obj;
        C9568e eVar;
        C4933n.m24794a(methodDescriptor, "method");
        C4933n.m24794a(k0Var, "headers");
        C9507u1 a = C9507u1.m2575a(dVar, this.f36562u, k0Var);
        Object obj2 = this.f36553l;
        synchronized (obj2) {
            try {
                try {
                    eVar = new C9568e(methodDescriptor, k0Var, this.f36551j, this, this.f36552k, this.f36553l, this.f36559r, this.f36547f, this.f36543b, this.f36544c, a, this.f36536R, dVar, this.f36535Q);
                } catch (Throwable th) {
                    th = th;
                    obj = obj2;
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
                obj = obj2;
                throw th;
            }
        }
        return eVar;
    }

    /* JADX WARN: Finally extract failed */
    @Override // p530d.p531a.p532v0.AbstractC9543x0
    /* renamed from: a */
    public Runnable mo2426a(AbstractC9543x0.AbstractC9544a aVar) {
        C4933n.m24794a(aVar, "listener");
        this.f36548g = aVar;
        if (this.f36529K) {
            this.f36527I = (ScheduledExecutorService) C9495s1.m2590b(GrpcUtil.f38071n);
            KeepAliveManager keepAliveManager = new KeepAliveManager(new KeepAliveManager.C10333c(this), this.f36527I, this.f36530L, this.f36531M, this.f36532N);
            this.f36528J = keepAliveManager;
            keepAliveManager.m469d();
        }
        if (m2387h()) {
            synchronized (this.f36553l) {
                C9564b bVar = new C9564b(this, this.f36526H, this.f36550i);
                this.f36551j = bVar;
                this.f36552k = new C9586m(this, bVar);
            }
            this.f36558q.execute(new RunnableC9574c());
            return null;
        }
        C9559a a = C9559a.m2484a(this.f36558q, this);
        C9605e eVar = new C9605e();
        AbstractC9600b a2 = eVar.mo2182a(C10270k.m754a(a), true);
        synchronized (this.f36553l) {
            C9564b bVar2 = new C9564b(this, a2);
            this.f36551j = bVar2;
            this.f36552k = new C9586m(this, bVar2);
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        this.f36558q.execute(new RunnableC9575d(countDownLatch, a, eVar));
        try {
            m2383j();
            countDownLatch.countDown();
            this.f36558q.execute(new RunnableC9577e());
            return null;
        } catch (Throwable th) {
            countDownLatch.countDown();
            throw th;
        }
    }

    /* renamed from: a */
    public final Socket m2408a(InetSocketAddress inetSocketAddress, InetSocketAddress inetSocketAddress2, String str, String str2) throws StatusException {
        try {
            Socket createSocket = inetSocketAddress2.getAddress() != null ? this.f36519A.createSocket(inetSocketAddress2.getAddress(), inetSocketAddress2.getPort()) : this.f36519A.createSocket(inetSocketAddress2.getHostName(), inetSocketAddress2.getPort());
            createSocket.setTcpNoDelay(true);
            AbstractC10281q b = C10270k.m744b(createSocket);
            AbstractC10263d a = C10270k.m754a(C10270k.m746a(createSocket));
            C6876c a2 = m2409a(inetSocketAddress, str, str2);
            HttpUrl b2 = a2.m19493b();
            a.mo734k(String.format("CONNECT %s:%d HTTP/1.1", b2.m3177a(), Integer.valueOf(b2.m3169b()))).mo734k("\r\n");
            int a3 = a2.m19494a().m19503a();
            for (int i = 0; i < a3; i++) {
                a.mo734k(a2.m19494a().m19502a(i)).mo734k(": ").mo734k(a2.m19494a().m19501b(i)).mo734k("\r\n");
            }
            a.mo734k("\r\n");
            a.flush();
            C6880a a4 = C6880a.m19484a(m2414a(b));
            while (!m2414a(b).equals("")) {
            }
            if (a4.f21075b >= 200 && a4.f21075b < 300) {
                return createSocket;
            }
            C10260c cVar = new C10260c();
            try {
                createSocket.shutdownOutput();
                b.mo704b(cVar, 1024L);
            } catch (IOException e) {
                cVar.mo734k("Unable to read body: " + e.toString());
            }
            try {
                createSocket.close();
            } catch (IOException e2) {
            }
            throw Status.f37996n.m609b(String.format("Response returned from proxy was not successful (expected 2xx, got %d %s). Response body:\n%s", Integer.valueOf(a4.f21075b), a4.f21076c, cVar.m767j())).m617a();
        } catch (IOException e3) {
            throw Status.f37996n.m609b("Failed trying to connect with proxy").m612a(e3).m617a();
        }
    }

    /* renamed from: a */
    public void m2428a(int i, Status status, ClientStreamListener.RpcProgress rpcProgress, boolean z, ErrorCode errorCode, C9260k0 k0Var) {
        synchronized (this.f36553l) {
            C9568e remove = this.f36556o.remove(Integer.valueOf(i));
            if (remove != null) {
                if (errorCode != null) {
                    this.f36551j.mo2207a(i, ErrorCode.CANCEL);
                }
                if (status != null) {
                    C9568e.C9570b e = remove.mo2461e();
                    if (k0Var == null) {
                        k0Var = new C9260k0();
                    }
                    e.m2931a(status, rpcProgress, z, k0Var);
                }
                if (!m2381k()) {
                    m2379l();
                    m2425a(remove);
                }
            }
        }
    }

    /* renamed from: a */
    public final void m2427a(int i, ErrorCode errorCode, Status status) {
        synchronized (this.f36553l) {
            try {
                if (this.f36563v == null) {
                    this.f36563v = status;
                    this.f36548g.mo378a(status);
                }
                if (errorCode != null && !this.f36564w) {
                    this.f36564w = true;
                    this.f36551j.mo2206a(0, errorCode, new byte[0]);
                }
                Iterator<Map.Entry<Integer, C9568e>> it = this.f36556o.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry<Integer, C9568e> next = it.next();
                    if (next.getKey().intValue() > i) {
                        it.remove();
                        next.getValue().mo2461e().m2931a(status, ClientStreamListener.RpcProgress.REFUSED, false, new C9260k0());
                        m2425a(next.getValue());
                    }
                }
                Iterator<C9568e> it2 = this.f36524F.iterator();
                while (it2.hasNext()) {
                    C9568e next2 = it2.next();
                    next2.mo2461e().m2931a(status, ClientStreamListener.RpcProgress.REFUSED, true, new C9260k0());
                    m2425a(next2);
                }
                this.f36524F.clear();
                m2379l();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // p530d.p531a.p532v0.AbstractC9451p
    /* renamed from: a */
    public void mo521a(AbstractC9451p.AbstractC9452a aVar, Executor executor) {
        long j;
        C9401m0 m0Var;
        synchronized (this.f36553l) {
            boolean z = true;
            C4933n.m24776b(this.f36551j != null);
            if (this.f36566y) {
                C9401m0.m2829a(aVar, executor, m2391f());
                return;
            }
            if (this.f36565x != null) {
                m0Var = this.f36565x;
                j = 0;
                z = false;
            } else {
                j = this.f36545d.nextLong();
                C4938q qVar = this.f36546e.get();
                qVar.m24760c();
                m0Var = new C9401m0(j, qVar);
                this.f36565x = m0Var;
                this.f36536R.m2924a();
            }
            if (z) {
                this.f36551j.mo2204a(false, (int) (j >>> 32), (int) j);
            }
            m0Var.m2830a(aVar, executor);
        }
    }

    /* renamed from: a */
    public final void m2425a(C9568e eVar) {
        if (this.f36567z && this.f36524F.isEmpty() && this.f36556o.isEmpty()) {
            this.f36567z = false;
            KeepAliveManager keepAliveManager = this.f36528J;
            if (keepAliveManager != null) {
                keepAliveManager.m471c();
            }
        }
        if (eVar.m2941h()) {
            this.f36537S.m2721a(eVar, false);
        }
    }

    @Override // p530d.p531a.p532v0.AbstractC9543x0
    /* renamed from: a */
    public void mo2413a(Status status) {
        synchronized (this.f36553l) {
            if (this.f36563v == null) {
                this.f36563v = status;
                this.f36548g.mo378a(status);
                m2379l();
            }
        }
    }

    /* renamed from: a */
    public final void m2411a(ErrorCode errorCode, String str) {
        m2427a(0, errorCode, m2412a(errorCode).m613a(str));
    }

    @Override // p530d.p531a.p533w0.C9564b.AbstractC9565a
    /* renamed from: a */
    public void mo2410a(Throwable th) {
        C4933n.m24794a(th, "failureCause");
        m2427a(0, ErrorCode.INTERNAL_ERROR, Status.f37996n.m612a(th));
    }

    /* renamed from: a */
    public void m2407a(boolean z, long j, long j2, boolean z2) {
        this.f36529K = z;
        this.f36530L = j;
        this.f36531M = j2;
        this.f36532N = z2;
    }

    /* renamed from: a */
    public C9568e[] m2430a() {
        C9568e[] eVarArr;
        synchronized (this.f36553l) {
            eVarArr = (C9568e[]) this.f36556o.values().toArray(f36518Z);
        }
        return eVarArr;
    }

    @Override // p530d.p531a.AbstractC9224d0
    /* renamed from: b */
    public C9625z mo424b() {
        return this.f36554m;
    }

    /* renamed from: b */
    public void m2405b(C9568e eVar) {
        this.f36524F.remove(eVar);
        m2425a(eVar);
    }

    @Override // p530d.p531a.p532v0.AbstractC9543x0
    /* renamed from: b */
    public void mo2402b(Status status) {
        mo2413a(status);
        synchronized (this.f36553l) {
            try {
                Iterator<Map.Entry<Integer, C9568e>> it = this.f36556o.entrySet().iterator();
                while (it.hasNext()) {
                    Map.Entry<Integer, C9568e> next = it.next();
                    it.remove();
                    next.getValue().mo2461e().m2930a(status, false, new C9260k0());
                    m2425a(next.getValue());
                }
                Iterator<C9568e> it2 = this.f36524F.iterator();
                while (it2.hasNext()) {
                    C9568e next2 = it2.next();
                    next2.mo2461e().m2930a(status, true, new C9260k0());
                    m2425a(next2);
                }
                this.f36524F.clear();
                m2379l();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: b */
    public boolean m2406b(int i) {
        boolean z;
        synchronized (this.f36553l) {
            z = true;
            if (i >= this.f36555n || (i & 1) != 1) {
                z = false;
            }
        }
        return z;
    }

    /* renamed from: c */
    public C9210a m2401c() {
        return this.f36562u;
    }

    /* renamed from: c */
    public final void m2400c(C9568e eVar) {
        if (!this.f36567z) {
            this.f36567z = true;
            KeepAliveManager keepAliveManager = this.f36528J;
            if (keepAliveManager != null) {
                keepAliveManager.m474b();
            }
        }
        if (eVar.m2941h()) {
            this.f36537S.m2721a(eVar, true);
        }
    }

    /* renamed from: d */
    public String m2397d() {
        URI a = GrpcUtil.m530a(this.f36543b);
        return a.getHost() != null ? a.getHost() : this.f36543b;
    }

    /* renamed from: d */
    public final void m2396d(C9568e eVar) {
        C4933n.m24775b(eVar.m2452l() == -1, "StreamId already assigned");
        this.f36556o.put(Integer.valueOf(this.f36555n), eVar);
        m2400c(eVar);
        eVar.mo2461e().m2433f(this.f36555n);
        if (!(eVar.m2453k() == MethodDescriptor.MethodType.UNARY || eVar.m2453k() == MethodDescriptor.MethodType.SERVER_STREAMING) || eVar.m2451m()) {
            this.f36551j.flush();
        }
        int i = this.f36555n;
        if (i >= 2147483645) {
            this.f36555n = MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT;
            m2427a(MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT, ErrorCode.NO_ERROR, Status.f37996n.m609b("Stream ids exhausted"));
            return;
        }
        this.f36555n = i + 2;
    }

    /* renamed from: e */
    public int m2394e() {
        URI a = GrpcUtil.m530a(this.f36543b);
        return a.getPort() != -1 ? a.getPort() : this.f36542a.getPort();
    }

    /* renamed from: e */
    public void m2393e(C9568e eVar) {
        if (this.f36563v != null) {
            eVar.mo2461e().m2931a(this.f36563v, ClientStreamListener.RpcProgress.REFUSED, true, new C9260k0());
        } else if (this.f36556o.size() >= this.f36523E) {
            this.f36524F.add(eVar);
            m2400c(eVar);
        } else {
            m2396d(eVar);
        }
    }

    /* renamed from: f */
    public final Throwable m2391f() {
        synchronized (this.f36553l) {
            if (this.f36563v != null) {
                return this.f36563v.m617a();
            }
            return Status.f37996n.m609b("Connection closed").m617a();
        }
    }

    /* renamed from: g */
    public final void m2389g() {
        synchronized (this.f36553l) {
            this.f36536R.m2922a(new C9573b(this));
        }
    }

    /* renamed from: h */
    public final boolean m2387h() {
        return this.f36542a == null;
    }

    /* renamed from: i */
    public boolean m2385i() {
        return this.f36520B == null;
    }

    /* renamed from: j */
    public void m2383j() {
        synchronized (this.f36553l) {
            this.f36551j.mo2211P0();
            C9612g gVar = new C9612g();
            C9582i.m2354a(gVar, 7, this.f36547f);
            this.f36551j.mo2198b(gVar);
            if (this.f36547f > 65535) {
                this.f36551j.mo2208a(0, this.f36547f - RegularImmutableMap.SHORT_MASK);
            }
        }
    }

    /* renamed from: k */
    public final boolean m2381k() {
        boolean z = false;
        while (!this.f36524F.isEmpty() && this.f36556o.size() < this.f36523E) {
            m2396d(this.f36524F.poll());
            z = true;
        }
        return z;
    }

    /* renamed from: l */
    public final void m2379l() {
        if (this.f36563v != null && this.f36556o.isEmpty() && this.f36524F.isEmpty() && !this.f36566y) {
            this.f36566y = true;
            KeepAliveManager keepAliveManager = this.f36528J;
            if (keepAliveManager != null) {
                keepAliveManager.m467e();
                this.f36527I = (ScheduledExecutorService) C9495s1.m2589b(GrpcUtil.f38071n, this.f36527I);
            }
            C9401m0 m0Var = this.f36565x;
            if (m0Var != null) {
                m0Var.m2828a(m2391f());
                this.f36565x = null;
            }
            if (!this.f36564w) {
                this.f36564w = true;
                this.f36551j.mo2206a(0, ErrorCode.NO_ERROR, new byte[0]);
            }
            this.f36551j.close();
        }
    }

    public String toString() {
        C4924j.C4926b a = C4924j.m24820a(this);
        a.m24814a("logId", this.f36554m.m2161a());
        a.m24813a("address", this.f36542a);
        return a.toString();
    }
}
