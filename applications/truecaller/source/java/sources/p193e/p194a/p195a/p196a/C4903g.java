package p193e.p194a.p195a.p196a;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.os.Handler;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.messaging.data.types.ImGroupInfo;
import java.util.LinkedHashMap;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p244k.p245a.p246a.AbstractC6448d;
import p193e.p194a.p372b0.p430q.C8582g0;
import q3.a.j0;
import s1.a.a.a.v0.f.d;
import s1.w.f;
import s1.z.c.l;
/* renamed from: e.a.a.a.g */
/* loaded from: classes7-dex2jar.jar:e/a/a/a/g.class */
public final class C4903g extends AbstractC4899d {

    /* renamed from: d */
    public String f16634d;

    /* renamed from: e */
    public final ContentObserver f16635e;

    /* renamed from: f */
    public final f f16636f;

    /* renamed from: g */
    public final f f16637g;

    /* renamed from: h */
    public final ImGroupInfo f16638h;

    /* renamed from: i */
    public final AbstractC6448d f16639i;

    /* renamed from: j */
    public final AbstractC6392i0 f16640j;

    /* renamed from: k */
    public final AbstractC19233h0 f16641k;

    /* renamed from: l */
    public final ContentResolver f16642l;

    /* renamed from: m */
    public final Handler f16643m;

    /* renamed from: n */
    public final AbstractC19462a f16644n;

    /* renamed from: e.a.a.a.g$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/a/g$a.class */
    public static final class C4904a extends ContentObserver {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C4904a(Handler handler) {
            super(handler);
            C4903g.this = r4;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            super.onChange(z);
            C4903g c4903g = C4903g.this;
            Objects.requireNonNull(c4903g);
            d.w2(c4903g, (f) null, (j0) null, new C4901f(c4903g, null), 3, (Object) null);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C4903g(@Named("IO") f fVar, @Named("UI") f fVar2, @Named("name_group_info") ImGroupInfo imGroupInfo, AbstractC6448d abstractC6448d, AbstractC6392i0 abstractC6392i0, AbstractC19233h0 abstractC19233h0, ContentResolver contentResolver, Handler handler, AbstractC19462a abstractC19462a) {
        super(fVar2);
        l.e(fVar, "ioContext");
        l.e(fVar2, "uiContext");
        l.e(imGroupInfo, "groupInfo");
        l.e(abstractC6448d, "imGroupHelper");
        l.e(abstractC6392i0, "settings");
        l.e(abstractC19233h0, "resourceProvider");
        l.e(contentResolver, "contentResolver");
        l.e(handler, "handler");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        this.f16636f = fVar;
        this.f16637g = fVar2;
        this.f16638h = imGroupInfo;
        this.f16639i = abstractC6448d;
        this.f16640j = abstractC6392i0;
        this.f16641k = abstractC19233h0;
        this.f16642l = contentResolver;
        this.f16643m = handler;
        this.f16644n = abstractC19462a;
        this.f16635e = new C4904a(handler);
    }

    /* renamed from: Ij */
    public final String m34256Ij() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f16641k.mo13768b(C2752R.string.ImGroupLinkInviteShareText, new Object[0]));
        sb.append('\n');
        sb.append(this.f16640j.mo31116Y1() + this.f16634d);
        return sb.toString();
    }

    /* renamed from: Jj */
    public final void m34255Jj(String str) {
        AbstractC19462a abstractC19462a = this.f16644n;
        LinkedHashMap m8655X = C22128a.m8655X("GroupLinkShare", "type");
        C22128a.m8684N0("GroupLinkShare", C22128a.m8652Y("action", AnalyticsConstants.NAME, str, "value", m8655X, "action", str), m8655X, "GenericAnalyticsEvent.ne…rties(properties).build()", abstractC19462a);
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [PV, java.lang.Object, e.a.a.a.e] */
    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: Y0 */
    public void mo9029Y0(Object obj) {
        ?? r0 = (AbstractC4900e) obj;
        l.e((Object) r0, "presenterView");
        this.f57683a = r0;
        this.f16642l.registerContentObserver(C8582g0.m28338C(), false, this.f16635e);
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        this.f16642l.unregisterContentObserver(this.f16635e);
        super.mo9806c();
    }
}
