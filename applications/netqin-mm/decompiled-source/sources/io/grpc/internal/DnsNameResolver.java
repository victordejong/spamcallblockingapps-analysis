package io.grpc.internal;

import com.google.common.base.VerifyException;
import io.grpc.ProxiedSocketAddress;
import io.grpc.Status;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.URI;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;
import java.util.logging.Logger;
import p131c.p161d.p266c.p267a.C4924j;
import p131c.p161d.p266c.p267a.C4933n;
import p131c.p161d.p266c.p267a.C4938q;
import p131c.p161d.p266c.p267a.C4942t;
import p131c.p161d.p266c.p267a.C4945v;
import p530d.p531a.AbstractC9271l0;
import p530d.p531a.AbstractC9301q0;
import p530d.p531a.C9210a;
import p530d.p531a.C9314u;
import p530d.p531a.ExecutorC9310t0;
import p530d.p531a.p532v0.C9379j0;
import p530d.p531a.p532v0.C9479q0;
import p530d.p531a.p532v0.C9490r0;
import p530d.p531a.p532v0.C9495s1;
/* loaded from: classes2-dex2jar.jar:io/grpc/internal/DnsNameResolver.class */
public final class DnsNameResolver extends AbstractC9271l0 {

    /* renamed from: C */
    public static String f38023C;

    /* renamed from: a */
    public final AbstractC9301q0 f38031a;

    /* renamed from: b */
    public final Random f38032b = new Random();

    /* renamed from: c */
    public volatile AbstractC10315a f38033c = JdkAddressResolver.INSTANCE;

    /* renamed from: d */
    public final AtomicReference<AbstractC10320d> f38034d = new AtomicReference<>();

    /* renamed from: e */
    public final String f38035e;

    /* renamed from: f */
    public final String f38036f;

    /* renamed from: g */
    public final int f38037g;

    /* renamed from: h */
    public final C9495s1.AbstractC9499d<Executor> f38038h;

    /* renamed from: i */
    public final long f38039i;

    /* renamed from: j */
    public final ExecutorC9310t0 f38040j;

    /* renamed from: k */
    public final C4938q f38041k;

    /* renamed from: l */
    public C10316b f38042l;

    /* renamed from: m */
    public boolean f38043m;

    /* renamed from: n */
    public Executor f38044n;

    /* renamed from: o */
    public final boolean f38045o;

    /* renamed from: p */
    public final boolean f38046p;

    /* renamed from: q */
    public final AbstractC9271l0.AbstractC9284i f38047q;

    /* renamed from: r */
    public boolean f38048r;

    /* renamed from: s */
    public AbstractC9271l0.AbstractC9280f f38049s;

    /* renamed from: t */
    public static final Logger f38024t = Logger.getLogger(DnsNameResolver.class.getName());

    /* renamed from: u */
    public static final Set<String> f38025u = Collections.unmodifiableSet(new HashSet(Arrays.asList("clientLanguage", "percentage", "clientHostname", "serviceConfig")));

    /* renamed from: v */
    public static final String f38026v = System.getProperty("io.grpc.internal.DnsNameResolverProvider.enable_jndi", "true");

    /* renamed from: w */
    public static final String f38027w = System.getProperty("io.grpc.internal.DnsNameResolverProvider.enable_jndi_localhost", "false");

    /* renamed from: x */
    public static final String f38028x = System.getProperty("io.grpc.internal.DnsNameResolverProvider.enable_service_config", "false");

    /* renamed from: y */
    public static boolean f38029y = Boolean.parseBoolean(f38026v);

    /* renamed from: z */
    public static boolean f38030z = Boolean.parseBoolean(f38027w);

    /* renamed from: A */
    public static boolean f38021A = Boolean.parseBoolean(f38028x);

    /* renamed from: B */
    public static final AbstractC10321e f38022B = m566a(DnsNameResolver.class.getClassLoader());

    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/DnsNameResolver$JdkAddressResolver.class */
    public enum JdkAddressResolver implements AbstractC10315a {
        INSTANCE;

        @Override // io.grpc.internal.DnsNameResolver.AbstractC10315a
        public List<InetAddress> resolveAddress(String str) throws UnknownHostException {
            return Collections.unmodifiableList(Arrays.asList(InetAddress.getAllByName(str)));
        }
    }

    /* renamed from: io.grpc.internal.DnsNameResolver$a */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/DnsNameResolver$a.class */
    public interface AbstractC10315a {
        List<InetAddress> resolveAddress(String str) throws Exception;
    }

    /* renamed from: io.grpc.internal.DnsNameResolver$b */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/DnsNameResolver$b.class */
    public static final class C10316b {

        /* renamed from: a */
        public final List<? extends InetAddress> f38050a;

        /* renamed from: b */
        public final List<String> f38051b;

        /* renamed from: c */
        public final List<C9314u> f38052c;

        public C10316b(List<? extends InetAddress> list, List<String> list2, List<C9314u> list3) {
            C4933n.m24794a(list, "addresses");
            this.f38050a = Collections.unmodifiableList(list);
            C4933n.m24794a(list2, "txtRecords");
            this.f38051b = Collections.unmodifiableList(list2);
            C4933n.m24794a(list3, "balancerAddresses");
            this.f38052c = Collections.unmodifiableList(list3);
        }

        public String toString() {
            C4924j.C4926b a = C4924j.m24820a(this);
            a.m24813a("addresses", this.f38050a);
            a.m24813a("txtRecords", this.f38051b);
            a.m24813a("balancerAddresses", this.f38052c);
            return a.toString();
        }
    }

    /* renamed from: io.grpc.internal.DnsNameResolver$c */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/DnsNameResolver$c.class */
    public final class RunnableC10317c implements Runnable {

        /* renamed from: a */
        public final AbstractC9271l0.AbstractC9280f f38053a;

        /* renamed from: io.grpc.internal.DnsNameResolver$c$a */
        /* loaded from: classes2-dex2jar.jar:io/grpc/internal/DnsNameResolver$c$a.class */
        public class RunnableC10318a implements Runnable {
            public RunnableC10318a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                DnsNameResolver.this.f38048r = false;
            }
        }

        /* renamed from: io.grpc.internal.DnsNameResolver$c$b */
        /* loaded from: classes2-dex2jar.jar:io/grpc/internal/DnsNameResolver$c$b.class */
        public class RunnableC10319b implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ C10316b f38056a;

            public RunnableC10319b(C10316b bVar) {
                this.f38056a = bVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                DnsNameResolver.this.f38042l = this.f38056a;
                if (DnsNameResolver.this.f38039i > 0) {
                    C4938q qVar = DnsNameResolver.this.f38041k;
                    qVar.m24762b();
                    qVar.m24760c();
                }
            }
        }

        public RunnableC10317c(AbstractC9271l0.AbstractC9280f fVar) {
            C4933n.m24794a(fVar, "savedListener");
            this.f38053a = fVar;
        }

        /* renamed from: a */
        public void m540a() {
            try {
                ProxiedSocketAddress a = DnsNameResolver.this.f38031a.mo524a(InetSocketAddress.createUnresolved(DnsNameResolver.this.f38036f, DnsNameResolver.this.f38037g));
                if (a != null) {
                    if (DnsNameResolver.f38024t.isLoggable(Level.FINER)) {
                        Logger logger = DnsNameResolver.f38024t;
                        logger.finer("Using proxy address " + a);
                    }
                    C9314u uVar = new C9314u(a);
                    AbstractC9271l0.C9282h.C9283a d = AbstractC9271l0.C9282h.m3004d();
                    d.m3000a(Collections.singletonList(uVar));
                    d.m3002a(C9210a.f35760b);
                    this.f38053a.mo365a(d.m3003a());
                    return;
                }
                AbstractC10320d dVar = null;
                try {
                    if (DnsNameResolver.m560a(DnsNameResolver.f38029y, DnsNameResolver.f38030z, DnsNameResolver.this.f38036f)) {
                        dVar = DnsNameResolver.this.m551e();
                    }
                    C10316b a2 = DnsNameResolver.m570a(DnsNameResolver.this.f38033c, dVar, DnsNameResolver.this.f38046p, DnsNameResolver.f38021A, DnsNameResolver.this.f38036f);
                    DnsNameResolver.this.f38040j.execute(new RunnableC10319b(a2));
                    if (DnsNameResolver.f38024t.isLoggable(Level.FINER)) {
                        Logger logger2 = DnsNameResolver.f38024t;
                        logger2.finer("Found DNS results " + a2 + " for " + DnsNameResolver.this.f38036f);
                    }
                    ArrayList arrayList = new ArrayList();
                    for (InetAddress inetAddress : a2.f38050a) {
                        arrayList.add(new C9314u(new InetSocketAddress(inetAddress, DnsNameResolver.this.f38037g)));
                    }
                    AbstractC9271l0.C9282h.C9283a d2 = AbstractC9271l0.C9282h.m3004d();
                    d2.m3000a(arrayList);
                    C9210a.C9212b b = C9210a.m3153b();
                    if (!a2.f38052c.isEmpty()) {
                        b.m3149a(C9379j0.f36042b, a2.f38052c);
                    }
                    if (!a2.f38051b.isEmpty()) {
                        AbstractC9271l0.C9275c a3 = DnsNameResolver.m564a(a2.f38051b, DnsNameResolver.this.f38032b, DnsNameResolver.m543i());
                        if (a3 != null) {
                            if (a3.m3015b() != null) {
                                this.f38053a.mo364a(a3.m3015b());
                                return;
                            }
                            Map<String, ?> map = (Map) a3.m3018a();
                            d2.m3001a(DnsNameResolver.this.f38047q.mo358a(map));
                            b.m3149a(C9379j0.f36041a, map);
                        }
                    } else {
                        DnsNameResolver.f38024t.log(Level.FINE, "No TXT records found for {0}", new Object[]{DnsNameResolver.this.f38036f});
                    }
                    AbstractC9271l0.AbstractC9280f fVar = this.f38053a;
                    d2.m3002a(b.m3152a());
                    fVar.mo365a(d2.m3003a());
                } catch (Exception e) {
                    AbstractC9271l0.AbstractC9280f fVar2 = this.f38053a;
                    Status status = Status.f37996n;
                    fVar2.mo364a(status.m609b("Unable to resolve host " + DnsNameResolver.this.f38036f).m612a(e));
                }
            } catch (IOException e2) {
                AbstractC9271l0.AbstractC9280f fVar3 = this.f38053a;
                Status status2 = Status.f37996n;
                fVar3.mo364a(status2.m609b("Unable to resolve host " + DnsNameResolver.this.f38036f).m612a(e2));
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (DnsNameResolver.f38024t.isLoggable(Level.FINER)) {
                Logger logger = DnsNameResolver.f38024t;
                logger.finer("Attempting DNS resolution of " + DnsNameResolver.this.f38036f);
            }
            try {
                m540a();
            } finally {
                DnsNameResolver.this.f38040j.execute(new RunnableC10318a());
            }
        }
    }

    /* renamed from: io.grpc.internal.DnsNameResolver$d */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/DnsNameResolver$d.class */
    public interface AbstractC10320d {
        /* renamed from: a */
        List<C9314u> m539a(AbstractC10315a aVar, String str) throws Exception;

        /* renamed from: a */
        List<String> m538a(String str) throws Exception;
    }

    /* renamed from: io.grpc.internal.DnsNameResolver$e */
    /* loaded from: classes2-dex2jar.jar:io/grpc/internal/DnsNameResolver$e.class */
    public interface AbstractC10321e {
        /* renamed from: a */
        AbstractC10320d m537a();

        /* renamed from: b */
        Throwable m536b();
    }

    public DnsNameResolver(String str, String str2, AbstractC9271l0.C9273b bVar, C9495s1.AbstractC9499d<Executor> dVar, C4938q qVar, boolean z, boolean z2) {
        C4933n.m24794a(bVar, "args");
        this.f38038h = dVar;
        StringBuilder sb = new StringBuilder();
        sb.append("//");
        C4933n.m24794a(str2, "name");
        sb.append(str2);
        URI create = URI.create(sb.toString());
        boolean z3 = true;
        C4933n.m24782a(create.getHost() != null, "Invalid DNS name: %s", str2);
        String authority = create.getAuthority();
        C4933n.m24793a(authority, "nameUri (%s) doesn't have an authority", create);
        this.f38035e = authority;
        this.f38036f = create.getHost();
        if (create.getPort() == -1) {
            this.f38037g = bVar.m3032a();
        } else {
            this.f38037g = create.getPort();
        }
        AbstractC9301q0 c = bVar.m3030c();
        C4933n.m24794a(c, "proxyDetector");
        this.f38031a = c;
        this.f38039i = m561a(z);
        C4933n.m24794a(qVar, "stopwatch");
        this.f38041k = qVar;
        ExecutorC9310t0 e = bVar.m3028e();
        C4933n.m24794a(e, "syncContext");
        this.f38040j = e;
        Executor b = bVar.m3031b();
        this.f38044n = b;
        if (b != null) {
            z3 = false;
        }
        this.f38045o = z3;
        this.f38046p = z2;
        AbstractC9271l0.AbstractC9284i d = bVar.m3029d();
        C4933n.m24794a(d, "serviceConfigParser");
        this.f38047q = d;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [java.util.concurrent.TimeUnit] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2, types: [long] */
    /* JADX WARN: Type inference failed for: r11v4 */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1 */
    /* JADX WARN: Type inference failed for: r13v3, types: [long] */
    /* JADX WARN: Type inference failed for: r13v4 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long m561a(boolean r9) {
        /*
            r0 = r9
            if (r0 == 0) goto L_0x0006
            r0 = 0
            return r0
        L_0x0006:
            java.lang.String r0 = "networkaddress.cache.ttl"
            java.lang.String r0 = java.lang.System.getProperty(r0)
            r10 = r0
            r0 = 30
            r11 = r0
            r0 = r11
            r13 = r0
            r0 = r10
            if (r0 == 0) goto L_0x0049
            r0 = r10
            long r0 = java.lang.Long.parseLong(r0)     // Catch: NumberFormatException -> 0x0021
            r13 = r0
            goto L_0x0049
        L_0x0021:
            r15 = move-exception
            java.util.logging.Logger r0 = io.grpc.internal.DnsNameResolver.f38024t
            java.util.logging.Level r1 = java.util.logging.Level.WARNING
            java.lang.String r2 = "Property({0}) valid is not valid number format({1}), fall back to default({2})"
            r3 = 3
            java.lang.Object[] r3 = new java.lang.Object[r3]
            r4 = r3
            r5 = 0
            java.lang.String r6 = "networkaddress.cache.ttl"
            r4[r5] = r6
            r4 = r3
            r5 = 1
            r6 = r10
            r4[r5] = r6
            r4 = r3
            r5 = 2
            r6 = 30
            java.lang.Long r6 = java.lang.Long.valueOf(r6)
            r4[r5] = r6
            r0.log(r1, r2, r3)
            r0 = r11
            r13 = r0
        L_0x0049:
            r0 = r13
            r11 = r0
            r0 = r13
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x005c
            java.util.concurrent.TimeUnit r0 = java.util.concurrent.TimeUnit.SECONDS
            r1 = r13
            long r0 = r0.toNanos(r1)
            r11 = r0
        L_0x005c:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: io.grpc.internal.DnsNameResolver.m561a(boolean):long");
    }

    /* renamed from: a */
    public static AbstractC9271l0.C9275c m564a(List<String> list, Random random, String str) {
        try {
            Iterator<Map<String, ?>> it = m565a(list).iterator();
            Map<String, ?> map = null;
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                try {
                    Map<String, ?> a = m562a(it.next(), random, str);
                    map = a;
                    if (a != null) {
                        map = a;
                        break;
                    }
                } catch (RuntimeException e) {
                    return AbstractC9271l0.C9275c.m3017a(Status.f37990h.m609b("failed to pick service config choice").m612a(e));
                }
            }
            if (map == null) {
                return null;
            }
            return AbstractC9271l0.C9275c.m3016a(map);
        } catch (IOException | RuntimeException e2) {
            return AbstractC9271l0.C9275c.m3017a(Status.f37990h.m609b("failed to parse TXT records").m612a(e2));
        }
    }

    /* renamed from: a */
    public static C10316b m570a(AbstractC10315a aVar, AbstractC10320d dVar, boolean z, boolean z2, String str) {
        Exception e;
        List<String> list;
        Exception e2;
        List<InetAddress> emptyList = Collections.emptyList();
        List<C9314u> emptyList2 = Collections.emptyList();
        List<String> emptyList3 = Collections.emptyList();
        Exception exc = null;
        try {
            emptyList = aVar.resolveAddress(str);
            e = null;
        } catch (Exception e3) {
            e = e3;
        }
        if (dVar != null) {
            emptyList2 = emptyList2;
            if (z) {
                try {
                    emptyList2 = dVar.m539a(aVar, "_grpclb._tcp." + str);
                } catch (Exception e4) {
                    e = e4;
                }
            }
            e = null;
            list = emptyList3;
            e2 = null;
            if (z2) {
                boolean z3 = !z || e != null;
                boolean z4 = false;
                if (e != null) {
                    z4 = false;
                    if (z3) {
                        z4 = true;
                    }
                }
                list = emptyList3;
                e2 = null;
                if (!z4) {
                    try {
                        list = dVar.m538a("_grpc_config." + str);
                        e2 = null;
                    } catch (Exception e5) {
                        e2 = e5;
                        list = emptyList3;
                    }
                }
            }
            exc = e;
        } else {
            e2 = null;
            list = emptyList3;
        }
        if (e != null) {
            if (exc == null) {
                try {
                    if (!emptyList2.isEmpty()) {
                    }
                } catch (Throwable th) {
                    if (e != null) {
                        f38024t.log(Level.FINE, "Address resolution failure", (Throwable) e);
                    }
                    if (exc != null) {
                        f38024t.log(Level.FINE, "Balancer resolution failure", (Throwable) exc);
                    }
                    if (e2 != null) {
                        f38024t.log(Level.FINE, "ServiceConfig resolution failure", (Throwable) e2);
                    }
                    throw th;
                }
            }
            C4942t.m24749b(e);
            throw new RuntimeException(e);
        }
        if (e != null) {
            f38024t.log(Level.FINE, "Address resolution failure", (Throwable) e);
        }
        if (exc != null) {
            f38024t.log(Level.FINE, "Balancer resolution failure", (Throwable) exc);
        }
        if (e2 != null) {
            f38024t.log(Level.FINE, "ServiceConfig resolution failure", (Throwable) e2);
        }
        return new C10316b(emptyList, list, emptyList2);
    }

    /* renamed from: a */
    public static AbstractC10321e m566a(ClassLoader classLoader) {
        try {
            try {
                try {
                    AbstractC10321e eVar = (AbstractC10321e) Class.forName("io.grpc.internal.JndiResourceResolverFactory", true, classLoader).asSubclass(AbstractC10321e.class).getConstructor(new Class[0]).newInstance(new Object[0]);
                    if (eVar.m536b() == null) {
                        return eVar;
                    }
                    f38024t.log(Level.FINE, "JndiResourceResolverFactory not available, skipping.", eVar.m536b());
                    return null;
                } catch (Exception e) {
                    f38024t.log(Level.FINE, "Can't construct JndiResourceResolverFactory, skipping.", (Throwable) e);
                    return null;
                }
            } catch (Exception e2) {
                f38024t.log(Level.FINE, "Can't find JndiResourceResolverFactory ctor, skipping.", (Throwable) e2);
                return null;
            }
        } catch (ClassCastException e3) {
            f38024t.log(Level.FINE, "Unable to cast JndiResourceResolverFactory, skipping.", (Throwable) e3);
            return null;
        } catch (ClassNotFoundException e4) {
            f38024t.log(Level.FINE, "Unable to find JndiResourceResolverFactory, skipping.", (Throwable) e4);
            return null;
        }
    }

    /* renamed from: a */
    public static List<Map<String, ?>> m565a(List<String> list) throws IOException {
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (!str.startsWith("grpc_config=")) {
                f38024t.log(Level.FINE, "Ignoring non service config {0}", new Object[]{str});
            } else {
                Object a = C9479q0.m2651a(str.substring(12));
                if (a instanceof List) {
                    List list2 = (List) a;
                    C9490r0.m2633a(list2);
                    arrayList.addAll(list2);
                } else {
                    throw new ClassCastException("wrong type " + a);
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public static final List<String> m563a(Map<String, ?> map) {
        return C9490r0.m2626d(map, "clientLanguage");
    }

    /* renamed from: a */
    public static Map<String, ?> m562a(Map<String, ?> map, Random random, String str) {
        boolean z;
        boolean z2;
        for (Map.Entry<String, ?> entry : map.entrySet()) {
            C4945v.m24746a(f38025u.contains(entry.getKey()), "Bad key: %s", entry);
        }
        List<String> a = m563a(map);
        if (a != null && !a.isEmpty()) {
            Iterator<String> it = a.iterator();
            while (true) {
                if (it.hasNext()) {
                    if ("java".equalsIgnoreCase(it.next())) {
                        z2 = true;
                        break;
                    }
                } else {
                    z2 = false;
                    break;
                }
            }
            if (!z2) {
                return null;
            }
        }
        Double c = m554c(map);
        if (c != null) {
            int intValue = c.intValue();
            C4945v.m24746a(intValue >= 0 && intValue <= 100, "Bad percentage: %s", c);
            if (random.nextInt(100) >= intValue) {
                return null;
            }
        }
        List<String> b = m557b(map);
        if (b != null && !b.isEmpty()) {
            Iterator<String> it2 = b.iterator();
            while (true) {
                if (it2.hasNext()) {
                    if (it2.next().equals(str)) {
                        z = true;
                        break;
                    }
                } else {
                    z = false;
                    break;
                }
            }
            if (!z) {
                return null;
            }
        }
        Map<String, ?> g = C9490r0.m2623g(map, "serviceConfig");
        if (g != null) {
            return g;
        }
        throw new VerifyException(String.format("key '%s' missing in '%s'", map, "serviceConfig"));
    }

    /* renamed from: a */
    public static boolean m560a(boolean z, boolean z2, String str) {
        if (!z) {
            return false;
        }
        if ("localhost".equalsIgnoreCase(str)) {
            return z2;
        }
        if (str.contains(":")) {
            return false;
        }
        boolean z3 = true;
        for (int i = 0; i < str.length(); i++) {
            char charAt = str.charAt(i);
            z3 = z3;
            if (charAt != '.') {
                z3 &= charAt >= '0' && charAt <= '9';
            }
        }
        return true ^ z3;
    }

    /* renamed from: b */
    public static final List<String> m557b(Map<String, ?> map) {
        return C9490r0.m2626d(map, "clientHostname");
    }

    /* renamed from: c */
    public static final Double m554c(Map<String, ?> map) {
        return C9490r0.m2625e(map, "percentage");
    }

    /* renamed from: i */
    public static String m543i() {
        if (f38023C == null) {
            try {
                f38023C = InetAddress.getLocalHost().getHostName();
            } catch (UnknownHostException e) {
                throw new RuntimeException(e);
            }
        }
        return f38023C;
    }

    @Override // p530d.p531a.AbstractC9271l0
    /* renamed from: a */
    public String mo572a() {
        return this.f38035e;
    }

    @Override // p530d.p531a.AbstractC9271l0
    /* renamed from: a */
    public void mo571a(AbstractC9271l0.AbstractC9280f fVar) {
        C4933n.m24775b(this.f38049s == null, "already started");
        if (this.f38045o) {
            this.f38044n = (Executor) C9495s1.m2590b(this.f38038h);
        }
        C4933n.m24794a(fVar, "listener");
        this.f38049s = fVar;
        m549f();
    }

    @Override // p530d.p531a.AbstractC9271l0
    /* renamed from: b */
    public void mo559b() {
        C4933n.m24775b(this.f38049s != null, "not started");
        m549f();
    }

    @Override // p530d.p531a.AbstractC9271l0
    /* renamed from: c */
    public void mo556c() {
        if (!this.f38043m) {
            this.f38043m = true;
            Executor executor = this.f38044n;
            if (executor != null && this.f38045o) {
                this.f38044n = (Executor) C9495s1.m2589b(this.f38038h, executor);
            }
        }
    }

    /* renamed from: d */
    public final boolean m553d() {
        boolean z;
        if (this.f38042l != null) {
            long j = this.f38039i;
            if (j != 0 && (j <= 0 || this.f38041k.m24763a(TimeUnit.NANOSECONDS) <= this.f38039i)) {
                z = false;
                return z;
            }
        }
        z = true;
        return z;
    }

    /* renamed from: e */
    public final AbstractC10320d m551e() {
        AbstractC10320d dVar = this.f38034d.get();
        AbstractC10320d dVar2 = dVar;
        if (dVar == null) {
            AbstractC10321e eVar = f38022B;
            dVar2 = dVar;
            if (eVar != null) {
                dVar2 = eVar.m537a();
            }
        }
        return dVar2;
    }

    /* renamed from: f */
    public final void m549f() {
        if (!this.f38048r && !this.f38043m && m553d()) {
            this.f38048r = true;
            this.f38044n.execute(new RunnableC10317c(this.f38049s));
        }
    }
}
