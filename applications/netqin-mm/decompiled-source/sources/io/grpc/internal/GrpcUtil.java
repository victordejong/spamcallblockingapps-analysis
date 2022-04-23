package io.grpc.internal;

import io.grpc.MethodDescriptor;
import io.grpc.ProxiedSocketAddress;
import io.grpc.Status;
import io.grpc.internal.ClientStreamListener;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.logging.Level;
import java.util.logging.Logger;
import p131c.p161d.p266c.p267a.AbstractC4941s;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p267a.C4935p;
import p131c.p161d.p266c.p267a.C4938q;
import p131c.p161d.p266c.p275i.p276a.C5116r;
import p530d.p531a.AbstractC9229f0;
import p530d.p531a.AbstractC9252j;
import p530d.p531a.AbstractC9301q0;
import p530d.p531a.C9214a0;
import p530d.p531a.C9222d;
import p530d.p531a.C9260k0;
import p530d.p531a.C9625z;
import p530d.p531a.p532v0.AbstractC9448o;
import p530d.p531a.p532v0.AbstractC9451p;
import p530d.p531a.p532v0.AbstractC9521w1;
import p530d.p531a.p532v0.AbstractC9557z1;
import p530d.p531a.p532v0.C9330b0;
import p530d.p531a.p532v0.C9370h1;
import p530d.p531a.p532v0.C9495s1;
/* loaded from: classes2-dex2jar.jar:io/grpc/internal/GrpcUtil.class */
public final class GrpcUtil {

    /* renamed from: a */
    public static final Logger f38058a = Logger.getLogger(GrpcUtil.class.getName());

    /* renamed from: b */
    public static final C9260k0.AbstractC9266f<Long> f38059b = C9260k0.AbstractC9266f.m3047a("grpc-timeout", new C10328g());

    /* renamed from: c */
    public static final C9260k0.AbstractC9266f<String> f38060c = C9260k0.AbstractC9266f.m3047a("grpc-encoding", C9260k0.f35813c);

    /* renamed from: d */
    public static final C9260k0.AbstractC9266f<byte[]> f38061d = C9214a0.m3146a("grpc-accept-encoding", new C10327f(null));

    /* renamed from: e */
    public static final C9260k0.AbstractC9266f<String> f38062e = C9260k0.AbstractC9266f.m3047a("content-encoding", C9260k0.f35813c);

    /* renamed from: f */
    public static final C9260k0.AbstractC9266f<byte[]> f38063f = C9214a0.m3146a("accept-encoding", new C10327f(null));

    /* renamed from: g */
    public static final C9260k0.AbstractC9266f<String> f38064g = C9260k0.AbstractC9266f.m3047a("content-type", C9260k0.f35813c);

    /* renamed from: h */
    public static final C9260k0.AbstractC9266f<String> f38065h = C9260k0.AbstractC9266f.m3047a("te", C9260k0.f35813c);

    /* renamed from: i */
    public static final C9260k0.AbstractC9266f<String> f38066i = C9260k0.AbstractC9266f.m3047a("user-agent", C9260k0.f35813c);

    /* renamed from: j */
    public static final long f38067j = TimeUnit.SECONDS.toNanos(20);

    /* renamed from: k */
    public static final AbstractC9301q0 f38068k = new C9370h1();

    /* renamed from: l */
    public static final C9222d.C9223a<Boolean> f38069l = C9222d.C9223a.m3120a("io.grpc.internal.CALL_OPTIONS_RPC_OWNED_BY_BALANCER");

    /* renamed from: m */
    public static final C9495s1.AbstractC9499d<Executor> f38070m = new C10323b();

    /* renamed from: n */
    public static final C9495s1.AbstractC9499d<ScheduledExecutorService> f38071n = new C10324c();

    /* renamed from: o */
    public static final AbstractC4941s<C4938q> f38072o = new C10325d();

    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/GrpcUtil$Http2Error.class */
    public enum Http2Error {
        NO_ERROR(0, Status.f37996n),
        PROTOCOL_ERROR(1, Status.f37995m),
        INTERNAL_ERROR(2, Status.f37995m),
        FLOW_CONTROL_ERROR(3, Status.f37995m),
        SETTINGS_TIMEOUT(4, Status.f37995m),
        STREAM_CLOSED(5, Status.f37995m),
        FRAME_SIZE_ERROR(6, Status.f37995m),
        REFUSED_STREAM(7, Status.f37996n),
        CANCEL(8, Status.f37989g),
        COMPRESSION_ERROR(9, Status.f37995m),
        CONNECT_ERROR(10, Status.f37995m),
        ENHANCE_YOUR_CALM(11, Status.f37994l.m609b("Bandwidth exhausted")),
        INADEQUATE_SECURITY(12, Status.f37992j.m609b("Permission denied as protocol is not secure enough to call")),
        HTTP_1_1_REQUIRED(13, Status.f37990h);
        
        public static final Http2Error[] codeMap = buildHttp2CodeMap();
        public final int code;
        public final Status status;

        Http2Error(int i, Status status) {
            this.code = i;
            this.status = status.m613a("HTTP/2 error code: " + name());
        }

        public static Http2Error[] buildHttp2CodeMap() {
            Http2Error[] values = values();
            Http2Error[] http2ErrorArr = new Http2Error[((int) values[values.length - 1].code()) + 1];
            for (Http2Error http2Error : values) {
                http2ErrorArr[(int) http2Error.code()] = http2Error;
            }
            return http2ErrorArr;
        }

        public static Http2Error forCode(long j) {
            Http2Error[] http2ErrorArr = codeMap;
            if (j >= http2ErrorArr.length || j < 0) {
                return null;
            }
            return http2ErrorArr[(int) j];
        }

        public static Status statusForCode(long j) {
            Http2Error forCode = forCode(j);
            if (forCode != null) {
                return forCode.status();
            }
            Status a = Status.m616a(INTERNAL_ERROR.status().m604d().value());
            return a.m609b("Unrecognized HTTP/2 error code: " + j);
        }

        public long code() {
            return this.code;
        }

        public Status status() {
            return this.status;
        }
    }

    /* renamed from: io.grpc.internal.GrpcUtil$a */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/GrpcUtil$a.class */
    public class C10322a implements AbstractC9301q0 {
        @Override // p530d.p531a.AbstractC9301q0
        /* renamed from: a */
        public ProxiedSocketAddress mo524a(SocketAddress socketAddress) {
            return null;
        }
    }

    /* renamed from: io.grpc.internal.GrpcUtil$b */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/GrpcUtil$b.class */
    public class C10323b implements C9495s1.AbstractC9499d<Executor> {
        @Override // p530d.p531a.p532v0.C9495s1.AbstractC9499d
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public Executor mo314a() {
            return Executors.newCachedThreadPool(GrpcUtil.m528a("grpc-default-executor-%d", true));
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public void mo313a(Executor executor) {
            ((ExecutorService) executor).shutdown();
        }

        public String toString() {
            return "grpc-default-executor";
        }
    }

    /* renamed from: io.grpc.internal.GrpcUtil$c */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/GrpcUtil$c.class */
    public class C10324c implements C9495s1.AbstractC9499d<ScheduledExecutorService> {
        @Override // p530d.p531a.p532v0.C9495s1.AbstractC9499d
        /* renamed from: a  reason: avoid collision after fix types in other method */
        public ScheduledExecutorService mo314a() {
            ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1, GrpcUtil.m528a("grpc-timer-%d", true));
            try {
                newScheduledThreadPool.getClass().getMethod("setRemoveOnCancelPolicy", Boolean.TYPE).invoke(newScheduledThreadPool, true);
            } catch (NoSuchMethodException e) {
            } catch (RuntimeException e2) {
                throw e2;
            } catch (Exception e3) {
                throw new RuntimeException(e3);
            }
            return Executors.unconfigurableScheduledExecutorService(newScheduledThreadPool);
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public void mo313a(ScheduledExecutorService scheduledExecutorService) {
            scheduledExecutorService.shutdown();
        }
    }

    /* renamed from: io.grpc.internal.GrpcUtil$d */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/GrpcUtil$d.class */
    public class C10325d implements AbstractC4941s<C4938q> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p131c.p161d.p266c.p267a.AbstractC4941s
        public C4938q get() {
            return C4938q.m24757f();
        }
    }

    /* renamed from: io.grpc.internal.GrpcUtil$e */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/GrpcUtil$e.class */
    public class C10326e implements AbstractC9451p {

        /* renamed from: a */
        public final /* synthetic */ AbstractC9451p f38073a;

        /* renamed from: b */
        public final /* synthetic */ AbstractC9252j.AbstractC9253a f38074b;

        public C10326e(AbstractC9451p pVar, AbstractC9252j.AbstractC9253a aVar) {
            this.f38073a = pVar;
            this.f38074b = aVar;
        }

        @Override // p530d.p531a.p532v0.AbstractC9451p
        /* renamed from: a */
        public AbstractC9448o mo520a(MethodDescriptor<?, ?> methodDescriptor, C9260k0 k0Var, C9222d dVar) {
            return this.f38073a.mo520a(methodDescriptor, k0Var, dVar.m3135a(this.f38074b));
        }

        @Override // p530d.p531a.p532v0.AbstractC9451p
        /* renamed from: a */
        public void mo521a(AbstractC9451p.AbstractC9452a aVar, Executor executor) {
            this.f38073a.mo521a(aVar, executor);
        }

        @Override // p530d.p531a.AbstractC9224d0
        /* renamed from: b */
        public C9625z mo424b() {
            return this.f38073a.mo424b();
        }
    }

    /* renamed from: io.grpc.internal.GrpcUtil$f */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/GrpcUtil$f.class */
    public static final class C10327f implements C9214a0.AbstractC9215a<byte[]> {
        public C10327f() {
        }

        public /* synthetic */ C10327f(C10322a aVar) {
            this();
        }

        @Override // p530d.p531a.C9260k0.AbstractC9269i
        /* renamed from: a */
        public /* bridge */ /* synthetic */ byte[] mo519a(Object obj) {
            byte[] bArr = (byte[]) obj;
            m517b(bArr);
            return bArr;
        }

        @Override // p530d.p531a.C9260k0.AbstractC9269i
        /* renamed from: a */
        public byte[] mo518a(byte[] bArr) {
            return bArr;
        }

        /* renamed from: b */
        public byte[] m517b(byte[] bArr) {
            return bArr;
        }
    }

    /* renamed from: io.grpc.internal.GrpcUtil$g */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/GrpcUtil$g.class */
    public static class C10328g implements C9260k0.AbstractC9264d<Long> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // p530d.p531a.C9260k0.AbstractC9264d
        /* renamed from: a */
        public Long mo514a(String str) {
            C4933n.m24790a(str.length() > 0, "empty timeout");
            C4933n.m24790a(str.length() <= 9, "bad timeout format");
            long parseLong = Long.parseLong(str.substring(0, str.length() - 1));
            char charAt = str.charAt(str.length() - 1);
            if (charAt == 'H') {
                return Long.valueOf(TimeUnit.HOURS.toNanos(parseLong));
            }
            if (charAt == 'M') {
                return Long.valueOf(TimeUnit.MINUTES.toNanos(parseLong));
            }
            if (charAt == 'S') {
                return Long.valueOf(TimeUnit.SECONDS.toNanos(parseLong));
            }
            if (charAt == 'u') {
                return Long.valueOf(TimeUnit.MICROSECONDS.toNanos(parseLong));
            }
            if (charAt == 'm') {
                return Long.valueOf(TimeUnit.MILLISECONDS.toNanos(parseLong));
            }
            if (charAt == 'n') {
                return Long.valueOf(parseLong);
            }
            throw new IllegalArgumentException(String.format("Invalid timeout unit: %s", Character.valueOf(charAt)));
        }

        /* renamed from: a  reason: avoid collision after fix types in other method */
        public String mo515a(Long l) {
            TimeUnit timeUnit = TimeUnit.NANOSECONDS;
            if (l.longValue() < 0) {
                throw new IllegalArgumentException("Timeout too small");
            } else if (l.longValue() < 100000000) {
                return l + "n";
            } else if (l.longValue() < 100000000000L) {
                return timeUnit.toMicros(l.longValue()) + "u";
            } else if (l.longValue() < 100000000000000L) {
                return timeUnit.toMillis(l.longValue()) + "m";
            } else if (l.longValue() < 100000000000000000L) {
                return timeUnit.toSeconds(l.longValue()) + "S";
            } else if (l.longValue() < 6000000000000000000L) {
                return timeUnit.toMinutes(l.longValue()) + "M";
            } else {
                return timeUnit.toHours(l.longValue()) + "H";
            }
        }
    }

    static {
        Charset.forName("US-ASCII");
        C4935p.m24768a(',').m24769a();
        TimeUnit.HOURS.toNanos(2L);
        TimeUnit.SECONDS.toNanos(20L);
        new C10322a();
    }

    /* renamed from: a */
    public static AbstractC9451p m533a(AbstractC9229f0.C9235e eVar, boolean z) {
        AbstractC9229f0.AbstractC9239h c = eVar.m3104c();
        AbstractC9451p a = c != null ? ((AbstractC9557z1) c.mo351d()).mo2485a() : null;
        if (a != null) {
            AbstractC9252j.AbstractC9253a b = eVar.m3106b();
            return b == null ? a : new C10326e(a, b);
        } else if (eVar.m3110a().m602f()) {
            return null;
        } else {
            if (eVar.m3103d()) {
                return new C9330b0(eVar.m3110a(), ClientStreamListener.RpcProgress.DROPPED);
            }
            if (!z) {
                return new C9330b0(eVar.m3110a(), ClientStreamListener.RpcProgress.PROCESSED);
            }
            return null;
        }
    }

    /* renamed from: a */
    public static Status.Code m535a(int i) {
        if (i >= 100 && i < 200) {
            return Status.Code.INTERNAL;
        }
        if (i != 400) {
            if (i == 401) {
                return Status.Code.UNAUTHENTICATED;
            }
            if (i == 403) {
                return Status.Code.PERMISSION_DENIED;
            }
            if (i == 404) {
                return Status.Code.UNIMPLEMENTED;
            }
            if (i != 429) {
                if (i != 431) {
                    switch (i) {
                        case 502:
                        case 503:
                        case 504:
                            break;
                        default:
                            return Status.Code.UNKNOWN;
                    }
                }
            }
            return Status.Code.UNAVAILABLE;
        }
        return Status.Code.INTERNAL;
    }

    /* renamed from: a */
    public static String m529a(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        if (str2 != null) {
            sb.append(str2);
            sb.append(' ');
        }
        sb.append("grpc-java-");
        sb.append(str);
        sb.append('/');
        sb.append("1.28.0");
        return sb.toString();
    }

    /* renamed from: a */
    public static String m527a(InetSocketAddress inetSocketAddress) {
        try {
            return (String) InetSocketAddress.class.getMethod("getHostString", new Class[0]).invoke(inetSocketAddress, new Object[0]);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException e) {
            return inetSocketAddress.getHostName();
        }
    }

    /* renamed from: a */
    public static URI m530a(String str) {
        C4933n.m24794a(str, "authority");
        try {
            return new URI(null, str, null, null, null);
        } catch (URISyntaxException e) {
            throw new IllegalArgumentException("Invalid authority: " + str, e);
        }
    }

    /* renamed from: a */
    public static ThreadFactory m528a(String str, boolean z) {
        C5116r rVar = new C5116r();
        rVar.m24497a(z);
        rVar.m24499a(str);
        return rVar.m24501a();
    }

    /* renamed from: a */
    public static void m532a(AbstractC9521w1.AbstractC9522a aVar) {
        while (true) {
            InputStream next = aVar.next();
            if (next != null) {
                m531a(next);
            } else {
                return;
            }
        }
    }

    /* renamed from: a */
    public static void m531a(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException e) {
                f38058a.log(Level.WARNING, "exception caught in closeQuietly", (Throwable) e);
            }
        }
    }

    /* renamed from: a */
    public static boolean m534a(C9222d dVar) {
        return !Boolean.TRUE.equals(dVar.m3137a(f38069l));
    }

    /* renamed from: b */
    public static Status m526b(int i) {
        Status status = m535a(i).toStatus();
        return status.m609b("HTTP status code " + i);
    }

    /* renamed from: b */
    public static boolean m525b(String str) {
        boolean z = false;
        if (str == null || 16 > str.length()) {
            return false;
        }
        String lowerCase = str.toLowerCase();
        if (!lowerCase.startsWith("application/grpc")) {
            return false;
        }
        if (lowerCase.length() == 16) {
            return true;
        }
        char charAt = lowerCase.charAt(16);
        if (charAt == '+' || charAt == ';') {
            z = true;
        }
        return z;
    }
}
