package p530d.p531a.p532v0;

import io.grpc.InternalChannelz;
import io.grpc.internal.GrpcUtil;
import io.grpc.internal.ManagedChannelImpl;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.logging.Logger;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.AbstractC9216b;
import p530d.p531a.AbstractC9242g;
import p530d.p531a.AbstractC9251i0;
import p530d.p531a.AbstractC9256j0;
import p530d.p531a.AbstractC9271l0;
import p530d.p531a.AbstractC9301q0;
import p530d.p531a.C9285m;
import p530d.p531a.C9288n0;
import p530d.p531a.C9306s;
import p530d.p531a.p532v0.AbstractC9329b;
import p530d.p531a.p532v0.C9325a2;
import p530d.p531a.p532v0.C9495s1;
import p530d.p531a.p532v0.C9554z;
/* renamed from: d.a.v0.b */
/* loaded from: classes2-dex2jar.jar:d/a/v0/b.class */
public abstract class AbstractC9329b<T extends AbstractC9329b<T>> extends AbstractC9256j0<T> {

    /* renamed from: G */
    public static final Logger f35936G = Logger.getLogger(AbstractC9329b.class.getName());

    /* renamed from: H */
    public static final long f35937H = TimeUnit.MINUTES.toMillis(30);

    /* renamed from: I */
    public static final long f35938I = TimeUnit.SECONDS.toMillis(1);

    /* renamed from: J */
    public static final AbstractC9332b1<? extends Executor> f35939J = C9504t1.m2583a((C9495s1.AbstractC9499d) GrpcUtil.f38070m);

    /* renamed from: K */
    public static final C9306s f35940K = C9306s.m2960d();

    /* renamed from: L */
    public static final C9285m f35941L = C9285m.m2999a();

    /* renamed from: A */
    public AbstractC9301q0 f35942A;

    /* renamed from: a */
    public AbstractC9332b1<? extends Executor> f35948a;

    /* renamed from: b */
    public AbstractC9332b1<? extends Executor> f35949b;

    /* renamed from: d */
    public final C9288n0 f35951d;

    /* renamed from: e */
    public AbstractC9271l0.AbstractC9276d f35952e;

    /* renamed from: f */
    public final String f35953f;

    /* renamed from: g */
    public String f35954g;

    /* renamed from: h */
    public String f35955h;

    /* renamed from: j */
    public boolean f35957j;

    /* renamed from: s */
    public boolean f35966s;

    /* renamed from: u */
    public int f35968u;

    /* renamed from: v */
    public Map<String, ?> f35969v;

    /* renamed from: z */
    public AbstractC9216b f35973z;

    /* renamed from: c */
    public final List<AbstractC9242g> f35950c = new ArrayList();

    /* renamed from: i */
    public String f35956i = "pick_first";

    /* renamed from: k */
    public C9306s f35958k = f35940K;

    /* renamed from: l */
    public C9285m f35959l = f35941L;

    /* renamed from: m */
    public long f35960m = f35937H;

    /* renamed from: n */
    public int f35961n = 5;

    /* renamed from: o */
    public int f35962o = 5;

    /* renamed from: p */
    public long f35963p = 16777216;

    /* renamed from: q */
    public long f35964q = 1048576;

    /* renamed from: r */
    public boolean f35965r = false;

    /* renamed from: t */
    public InternalChannelz f35967t = InternalChannelz.m655b();

    /* renamed from: w */
    public boolean f35970w = true;

    /* renamed from: x */
    public C9325a2.C9327b f35971x = C9325a2.m2918d();

    /* renamed from: y */
    public int f35972y = 4194304;

    /* renamed from: B */
    public boolean f35943B = true;

    /* renamed from: C */
    public boolean f35944C = true;

    /* renamed from: D */
    public boolean f35945D = true;

    /* renamed from: E */
    public boolean f35946E = false;

    /* renamed from: F */
    public boolean f35947F = true;

    public AbstractC9329b(String str) {
        AbstractC9332b1<? extends Executor> b1Var = f35939J;
        this.f35948a = b1Var;
        this.f35949b = b1Var;
        C9288n0 d = C9288n0.m2989d();
        this.f35951d = d;
        this.f35952e = d.m2993a();
        C4933n.m24794a(str, "target");
        this.f35953f = str;
    }

    @Override // p530d.p531a.AbstractC9256j0
    /* renamed from: a */
    public AbstractC9251i0 mo2916a() {
        return new C9509v0(new ManagedChannelImpl(this, mo318b(), new C9554z.C9555a(), C9504t1.m2583a((C9495s1.AbstractC9499d) GrpcUtil.f38070m), GrpcUtil.f38072o, m2915d(), AbstractC9545x1.f36430a));
    }

    /* renamed from: b */
    public abstract AbstractC9477q mo318b();

    /* renamed from: c */
    public int mo317c() {
        return 443;
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x00c1  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00d1  */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<p530d.p531a.AbstractC9242g> m2915d() {
        /*
            Method dump skipped, instructions count: 347
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p530d.p531a.p532v0.AbstractC9329b.m2915d():java.util.List");
    }

    /* renamed from: e */
    public AbstractC9271l0.AbstractC9276d m2914e() {
        return this.f35955h == null ? this.f35952e : new C9341d1(this.f35952e, this.f35955h);
    }

    /* renamed from: f */
    public final int m2913f() {
        return this.f35972y;
    }
}
