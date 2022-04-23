package p530d.p531a.p532v0;

import io.grpc.Status;
import io.grpc.internal.GrpcUtil;
import java.nio.charset.Charset;
import p131c.p161d.p266c.p267a.C4916c;
import p131c.p161d.p266c.p267a.C4933n;
import p530d.p531a.C9214a0;
import p530d.p531a.C9221c0;
import p530d.p531a.C9260k0;
import p530d.p531a.p532v0.AbstractC9318a;
/* renamed from: d.a.v0.l0 */
/* loaded from: classes2-dex2jar.jar:d/a/v0/l0.class */
public abstract class AbstractC9393l0 extends AbstractC9318a.AbstractC9321c {

    /* renamed from: u */
    public static final C9214a0.AbstractC9215a<Integer> f36066u;

    /* renamed from: v */
    public static final C9260k0.AbstractC9266f<Integer> f36067v;

    /* renamed from: q */
    public Status f36068q;

    /* renamed from: r */
    public C9260k0 f36069r;

    /* renamed from: s */
    public Charset f36070s = C4916c.f17556b;

    /* renamed from: t */
    public boolean f36071t;

    /* renamed from: d.a.v0.l0$a */
    /* loaded from: classes2-dex2jar.jar:d/a/v0/l0$a.class */
    public class C9394a implements C9214a0.AbstractC9215a<Integer> {
        @Override // p530d.p531a.C9260k0.AbstractC9269i
        /* renamed from: a */
        public Integer mo518a(byte[] bArr) {
            if (bArr.length >= 3) {
                return Integer.valueOf(((bArr[0] - 48) * 100) + ((bArr[1] - 48) * 10) + (bArr[2] - 48));
            }
            throw new NumberFormatException("Malformed status code " + new String(bArr, C9214a0.f35765a));
        }

        /* renamed from: a */
        public byte[] m2851a(Integer num) {
            throw new UnsupportedOperationException();
        }

        @Override // p530d.p531a.C9260k0.AbstractC9269i
        /* renamed from: a */
        public /* bridge */ /* synthetic */ byte[] mo519a(Object obj) {
            m2851a((Integer) obj);
            throw null;
        }
    }

    static {
        C9394a aVar = new C9394a();
        f36066u = aVar;
        f36067v = C9214a0.m3146a(":status", aVar);
    }

    public AbstractC9393l0(int i, C9507u1 u1Var, C9325a2 a2Var) {
        super(i, u1Var, a2Var);
    }

    /* renamed from: f */
    public static Charset m2853f(C9260k0 k0Var) {
        String str = (String) k0Var.m3060b(GrpcUtil.f38064g);
        if (str != null) {
            String[] split = str.split("charset=", 2);
            try {
                return Charset.forName(split[split.length - 1].trim());
            } catch (Exception e) {
            }
        }
        return C4916c.f17556b;
    }

    /* renamed from: g */
    public static void m2852g(C9260k0 k0Var) {
        k0Var.m3068a(f36067v);
        k0Var.m3068a(C9221c0.f35768b);
        k0Var.m3068a(C9221c0.f35767a);
    }

    /* renamed from: a */
    public void m2858a(AbstractC9377i1 i1Var, boolean z) {
        Status status = this.f36068q;
        if (status != null) {
            this.f36068q = status.m613a("DATA-----------------------------\n" + C9380j1.m2866a(i1Var, this.f36070s));
            i1Var.close();
            if (this.f36068q.m603e().length() > 1000 || z) {
                mo2436b(this.f36068q, false, this.f36069r);
            }
        } else if (!this.f36071t) {
            mo2436b(Status.f37995m.m609b("headers not received before payload"), false, new C9260k0());
        } else {
            m2928b(i1Var);
            if (z) {
                this.f36068q = Status.f37995m.m609b("Received unexpected EOS on DATA frame from server.");
                C9260k0 k0Var = new C9260k0();
                this.f36069r = k0Var;
                m2930a(this.f36068q, false, k0Var);
            }
        }
    }

    /* renamed from: b */
    public final Status m2857b(C9260k0 k0Var) {
        Status status = (Status) k0Var.m3060b(C9221c0.f35768b);
        if (status != null) {
            return status.m609b((String) k0Var.m3060b(C9221c0.f35767a));
        }
        if (this.f36071t) {
            return Status.f37990h.m609b("missing GRPC status in response");
        }
        Integer num = (Integer) k0Var.m3060b(f36067v);
        return (num != null ? GrpcUtil.m526b(num.intValue()) : Status.f37995m.m609b("missing HTTP status code")).m613a("missing GRPC status, inferred error from HTTP status code");
    }

    /* renamed from: b */
    public abstract void mo2436b(Status status, boolean z, C9260k0 k0Var);

    /* renamed from: c */
    public void m2856c(C9260k0 k0Var) {
        C4933n.m24794a(k0Var, "headers");
        Status status = this.f36068q;
        if (status != null) {
            this.f36068q = status.m613a("headers: " + k0Var);
            return;
        }
        try {
            if (this.f36071t) {
                Status b = Status.f37995m.m609b("Received headers twice");
                this.f36068q = b;
                if (b != null) {
                    this.f36068q = b.m613a("headers: " + k0Var);
                    this.f36069r = k0Var;
                    this.f36070s = m2853f(k0Var);
                    return;
                }
                return;
            }
            Integer num = (Integer) k0Var.m3060b(f36067v);
            if (num == null || num.intValue() < 100 || num.intValue() >= 200) {
                this.f36071t = true;
                Status e = m2854e(k0Var);
                this.f36068q = e;
                if (e == null) {
                    m2852g(k0Var);
                    m2939a(k0Var);
                    Status status2 = this.f36068q;
                    if (status2 != null) {
                        this.f36068q = status2.m613a("headers: " + k0Var);
                        this.f36069r = k0Var;
                        this.f36070s = m2853f(k0Var);
                    }
                } else if (e != null) {
                    this.f36068q = e.m613a("headers: " + k0Var);
                    this.f36069r = k0Var;
                    this.f36070s = m2853f(k0Var);
                }
            } else {
                Status status3 = this.f36068q;
                if (status3 != null) {
                    this.f36068q = status3.m613a("headers: " + k0Var);
                    this.f36069r = k0Var;
                    this.f36070s = m2853f(k0Var);
                }
            }
        } catch (Throwable th) {
            Status status4 = this.f36068q;
            if (status4 != null) {
                this.f36068q = status4.m613a("headers: " + k0Var);
                this.f36069r = k0Var;
                this.f36070s = m2853f(k0Var);
            }
            throw th;
        }
    }

    /* renamed from: d */
    public void m2855d(C9260k0 k0Var) {
        C4933n.m24794a(k0Var, "trailers");
        if (this.f36068q == null && !this.f36071t) {
            Status e = m2854e(k0Var);
            this.f36068q = e;
            if (e != null) {
                this.f36069r = k0Var;
            }
        }
        Status status = this.f36068q;
        if (status != null) {
            Status a = status.m613a("trailers: " + k0Var);
            this.f36068q = a;
            mo2436b(a, false, this.f36069r);
            return;
        }
        Status b = m2857b(k0Var);
        m2852g(k0Var);
        m2938a(k0Var, b);
    }

    /* renamed from: e */
    public final Status m2854e(C9260k0 k0Var) {
        Integer num = (Integer) k0Var.m3060b(f36067v);
        if (num == null) {
            return Status.f37995m.m609b("Missing HTTP status code");
        }
        String str = (String) k0Var.m3060b(GrpcUtil.f38064g);
        if (GrpcUtil.m525b(str)) {
            return null;
        }
        Status b = GrpcUtil.m526b(num.intValue());
        return b.m613a("invalid content-type: " + str);
    }
}
