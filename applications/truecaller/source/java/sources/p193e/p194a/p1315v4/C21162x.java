package p193e.p194a.p1315v4;

import com.truecaller.android.sdk.PartnerInformation;
import com.truecaller.android.sdk.TrueResponse;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1187r2.AbstractC19889v;
import p193e.p194a.p1187r2.AbstractC19890w;
import p193e.p194a.p1187r2.AbstractC19891x;
import p193e.p194a.p1187r2.C19852e;
import p193e.p194a.p1187r2.C19895z;
/* renamed from: e.a.v4.x */
/* loaded from: classes12-dex2jar.jar:e/a/v4/x.class */
public final class C21162x implements AbstractC21165y {

    /* renamed from: a */
    public final AbstractC19890w f59332a;

    /* renamed from: e.a.v4.x$b */
    /* loaded from: classes12-dex2jar.jar:e/a/v4/x$b.class */
    public static class C21164b extends AbstractC19889v<AbstractC21165y, TrueResponse> {

        /* renamed from: b */
        public final PartnerInformation f59333b;

        public C21164b(C19852e c19852e, PartnerInformation partnerInformation, C21163a c21163a) {
            super(c19852e);
            this.f59333b = partnerInformation;
        }

        @Override // p193e.p194a.p1187r2.AbstractC19888u
        /* renamed from: d */
        public AbstractC19891x mo10183d(Object obj) {
            AbstractC19891x<TrueResponse> mo10182a = ((AbstractC21165y) obj).mo10182a(this.f59333b);
            m11836c(mo10182a);
            return mo10182a;
        }

        public String toString() {
            StringBuilder m8728C = C22128a.m8728C(".getTrueProfile(");
            m8728C.append(AbstractC19889v.m11837b(this.f59333b, 1));
            m8728C.append(")");
            return m8728C.toString();
        }
    }

    public C21162x(AbstractC19890w abstractC19890w) {
        this.f59332a = abstractC19890w;
    }

    @Override // p193e.p194a.p1315v4.AbstractC21165y
    /* renamed from: a */
    public AbstractC19891x<TrueResponse> mo10182a(PartnerInformation partnerInformation) {
        return new C19895z(this.f59332a, new C21164b(new C19852e(), partnerInformation, null));
    }
}
