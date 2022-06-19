package p193e.p194a.p1275v.p1276a.p1280c.p1281a;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.data.entity.Contact;
import com.truecaller.details_view.p162ui.comments.widget.CommentViewModel;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1138q.p1141e.C19392b;
import p193e.p194a.p1138q.p1144h.AbstractC19444c;
import p193e.p194a.p1138q.p1144h.C19443b;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1275v.p1276a.p1280c.C20697b;
import p193e.p194a.p372b0.p430q.C8615v;
import s1.s;
import s1.w.f;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.v.a.c.a.f */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/c/a/f.class */
public final class C20695f extends AbstractC20574a<AbstractC20692c> implements AbstractC20691b {

    /* renamed from: d */
    public C8615v f58276d = new C8615v(new C20696a());

    /* renamed from: e */
    public C19443b f58277e;

    /* renamed from: f */
    public final f f58278f;

    /* renamed from: g */
    public final AbstractC19444c f58279g;

    /* renamed from: h */
    public final AbstractC19462a f58280h;

    /* renamed from: i */
    public final C20697b f58281i;

    /* renamed from: j */
    public final C20592g f58282j;

    /* renamed from: e.a.v.a.c.a.f$a */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/c/a/f$a.class */
    public static final class C20696a extends m implements a<s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20696a() {
            super(0);
            C20695f.this = r4;
        }

        public Object invoke() {
            AbstractC19462a abstractC19462a = C20695f.this.f58280h;
            l.e("DetailsView", "source");
            abstractC19462a.mo13274b(new C19392b("DetailsView"));
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C20695f(@Named("UI") f fVar, AbstractC19444c abstractC19444c, AbstractC19462a abstractC19462a, C20697b c20697b, C20592g c20592g) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC19444c, "commentsRepository");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(c20697b, "commentViewModelMapper");
        l.e(c20592g, "featuresRegistry");
        this.f58278f = fVar;
        this.f58279g = abstractC19444c;
        this.f58280h = abstractC19462a;
        this.f58281i = c20697b;
        this.f58282j = c20592g;
    }

    /* renamed from: Ij */
    public void m10834Ij(CommentViewModel commentViewModel) {
        Contact contact;
        l.e(commentViewModel, "comment");
        C19443b c19443b = this.f58277e;
        if (c19443b == null || (contact = c19443b.f53994a) == null) {
            return;
        }
        this.f58279g.mo13322e(contact, commentViewModel.f11756a);
    }

    /* renamed from: Jj */
    public void m10833Jj(CommentViewModel commentViewModel) {
        Contact contact;
        l.e(commentViewModel, "comment");
        C19443b c19443b = this.f58277e;
        if (c19443b == null || (contact = c19443b.f53994a) == null) {
            return;
        }
        this.f58279g.mo13326a(contact, commentViewModel.f11756a);
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        super.mo9806c();
        C19443b c19443b = this.f58277e;
        if (c19443b != null) {
            this.f58279g.mo13325b(c19443b);
        }
    }
}
