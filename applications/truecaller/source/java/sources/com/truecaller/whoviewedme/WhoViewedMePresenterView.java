package com.truecaller.whoviewedme;

import com.truecaller.data.entity.Contact;
import com.truecaller.details_view.analytics.SourceType;
import kotlin.Metadata;
import p193e.p194a.p1011l.p1013c.p1014a.C16723q;
import p193e.p194a.p1193r5.C19979s;
/* loaded from: classes8-dex2jar.jar:com/truecaller/whoviewedme/WhoViewedMePresenterView.class */
public interface WhoViewedMePresenterView {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\t\b\u0086\u0001\u0018��2\b\u0012\u0004\u0012\u00020��0\u0001B\t\b\u0002¢\u0006\u0004\b\u0002\u0010\u0003j\u0002\b\u0004j\u0002\b\u0005j\u0002\b\u0006j\u0002\b\u0007j\u0002\b\bj\u0002\b\t¨\u0006\n"}, d2 = {"Lcom/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType;", "", "<init>", "(Ljava/lang/String;I)V", "PREMIUM_WITH_PROFILE_VIEWS", "PREMIUM_ZERO_PROFILE_VIEWS", "REGULAR_WITH_PROFILE_VIEWS", "REGULAR_ZERO_PROFILE_VIEWS", "REGULAR_REVEALED_PROFILE_VIEW", "NONE", "truecaller_googlePlayRelease"}, k = 1, mv = {1, 4, 1})
    /* loaded from: classes8-dex2jar.jar:com/truecaller/whoviewedme/WhoViewedMePresenterView$ViewType.class */
    public enum ViewType {
        PREMIUM_WITH_PROFILE_VIEWS,
        PREMIUM_ZERO_PROFILE_VIEWS,
        REGULAR_WITH_PROFILE_VIEWS,
        REGULAR_ZERO_PROFILE_VIEWS,
        REGULAR_REVEALED_PROFILE_VIEW,
        NONE
    }

    /* renamed from: Ge */
    void mo11709Ge(boolean z);

    /* renamed from: L1 */
    void mo11708L1(Contact contact, SourceType sourceType, boolean z, boolean z2, int i);

    /* renamed from: Rj */
    void mo11705Rj();

    /* renamed from: Vn */
    void mo11701Vn(C19979s c19979s, C16723q c16723q, C16723q c16723q2, String str, boolean z);

    /* renamed from: Zr */
    void mo11700Zr(int i, String str, Integer num, boolean z);

    /* renamed from: a6 */
    void mo11698a6(boolean z);

    /* renamed from: bs */
    void mo11697bs();

    /* renamed from: dz */
    void mo11696dz();

    /* renamed from: e */
    void mo11695e();

    /* renamed from: em */
    void mo11694em();

    /* renamed from: f */
    void mo11693f(boolean z);

    /* renamed from: g */
    void mo11692g();

    /* renamed from: g0 */
    void mo11691g0();

    /* renamed from: ov */
    void mo11689ov();
}
