package p193e.p1512i.p1516b.p1523l2.p1524c;

import com.amazon.device.ads.DtbConstants;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1512i.p1516b.p1531s2.C23089l;
import p193e.p1512i.p1516b.p1531s2.C23091n;
/* renamed from: e.i.b.l2.c.f */
/* loaded from: classes-dex2jar.jar:e/i/b/l2/c/f.class */
public class C22983f implements AbstractC22984g {

    /* renamed from: a */
    public final C23091n f63718a;

    public C22983f(C23091n c23091n) {
        this.f63718a = c23091n;
    }

    @Override // p193e.p1512i.p1516b.p1523l2.p1524c.AbstractC22984g
    /* renamed from: a */
    public Integer mo7599a() {
        return 2;
    }

    @Override // p193e.p1512i.p1516b.p1523l2.p1524c.AbstractC22984g
    /* renamed from: b */
    public String mo7598b() {
        int i;
        C23091n c23091n = this.f63718a;
        Objects.requireNonNull(c23091n);
        try {
            i = c23091n.f63917a.getInt(DtbConstants.IABTCF_GDPR_APPLIES, -1);
        } catch (ClassCastException e) {
            C23089l.m7560a(new IllegalStateException(C22128a.m8543z2("Expect an int type when reading ", DtbConstants.IABTCF_GDPR_APPLIES), e));
            i = -1;
        }
        return i != -1 ? String.valueOf(i) : "";
    }

    @Override // p193e.p1512i.p1516b.p1523l2.p1524c.AbstractC22984g
    /* renamed from: c */
    public String mo7597c() {
        return this.f63718a.m7557a(DtbConstants.IABTCF_TC_STRING, "");
    }
}
