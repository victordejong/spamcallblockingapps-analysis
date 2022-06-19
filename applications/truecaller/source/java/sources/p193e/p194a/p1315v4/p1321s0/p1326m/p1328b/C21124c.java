package p193e.p194a.p1315v4.p1321s0.p1326m.p1328b;

import com.truecaller.sdk.oAuth.view.dialog.AdditionalPartnerInfo;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19233h0;
import s1.g;
import s1.h;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.v4.s0.m.b.c */
/* loaded from: classes12-dex2jar.jar:e/a/v4/s0/m/b/c.class */
public final class C21124c extends AbstractC21123b {

    /* renamed from: b */
    public final g f59270b;

    /* renamed from: c */
    public final AbstractC19233h0 f59271c;

    /* renamed from: e.a.v4.s0.m.b.c$a */
    /* loaded from: classes12-dex2jar.jar:e/a/v4/s0/m/b/c$a.class */
    public static final class C21125a extends m implements a<AdditionalPartnerInfo> {

        /* renamed from: b */
        public final /* synthetic */ AdditionalPartnerInfo f59272b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C21125a(AdditionalPartnerInfo additionalPartnerInfo) {
            super(0);
            this.f59272b = additionalPartnerInfo;
        }

        public Object invoke() {
            AdditionalPartnerInfo additionalPartnerInfo = this.f59272b;
            if (additionalPartnerInfo != null) {
                return additionalPartnerInfo;
            }
            throw new IllegalArgumentException("Required value was null.".toString());
        }
    }

    @Inject
    public C21124c(AdditionalPartnerInfo additionalPartnerInfo, AbstractC19233h0 abstractC19233h0) {
        l.e(abstractC19233h0, "themedResourceProvider");
        this.f59271c = abstractC19233h0;
        this.f59270b = C25225a.m3982O1(h.c, new C21125a(additionalPartnerInfo));
    }

    /* renamed from: c */
    public final AdditionalPartnerInfo m10268c() {
        return (AdditionalPartnerInfo) this.f59270b.getValue();
    }
}
