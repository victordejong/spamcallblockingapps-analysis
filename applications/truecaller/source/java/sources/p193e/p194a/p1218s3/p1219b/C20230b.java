package p193e.p194a.p1218s3.p1219b;

import com.truecaller.exception.filters.RemoteFilterRule;
import javax.inject.Provider;
import p193e.p194a.p1146q2.p1151d1.AbstractC19490a;
import s1.f0.r;
import s1.z.c.l;
/* renamed from: e.a.s3.b.b */
/* loaded from: classes9-dex2jar.jar:e/a/s3/b/b.class */
public final class C20230b extends AbstractC20234e {

    /* renamed from: a */
    public final Provider<AbstractC19490a> f56980a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C20230b(Provider<AbstractC19490a> provider) {
        super(null);
        l.e(provider, "analyticsRepository");
        this.f56980a = provider;
    }

    @Override // p193e.p194a.p1218s3.p1219b.AbstractC20234e
    /* renamed from: a */
    public boolean mo11314a(RemoteFilterRule remoteFilterRule, Throwable th) {
        l.e(remoteFilterRule, "rule");
        l.e(th, "e");
        String value = remoteFilterRule.getValue();
        if (value == null || r.p(value)) {
            return false;
        }
        return r.n(remoteFilterRule.getValue(), ((AbstractC19490a) this.f56980a.get()).mo13286a(), true);
    }
}
