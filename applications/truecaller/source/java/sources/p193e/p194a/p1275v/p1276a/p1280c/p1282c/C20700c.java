package p193e.p194a.p1275v.p1276a.p1280c.p1282c;

import com.truecaller.contactfeedback.presentation.model.CommentFeedbackModel;
import com.truecaller.contactfeedback.repo.SortType;
import com.truecaller.data.entity.Contact;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19233h0;
import p193e.p194a.p1129p5.AbstractC19321u;
import p193e.p194a.p1138q.p1144h.AbstractC19444c;
import p193e.p194a.p1138q.p1144h.C19443b;
import p193e.p194a.p1270u2.p1271a.AbstractC20574a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1275v.p1276a.p1280c.C20697b;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.v.a.c.c.c */
/* loaded from: classes8-dex2jar.jar:e/a/v/a/c/c/c.class */
public final class C20700c extends AbstractC20574a<AbstractC20699b> implements AbstractC20698a {

    /* renamed from: d */
    public List<String> f58287d;

    /* renamed from: e */
    public List<? extends SortType> f58288e;

    /* renamed from: f */
    public C19443b f58289f;

    /* renamed from: g */
    public final f f58290g;

    /* renamed from: h */
    public final AbstractC19233h0 f58291h;

    /* renamed from: i */
    public final AbstractC19444c f58292i;

    /* renamed from: j */
    public final C20697b f58293j;

    /* renamed from: k */
    public final C20592g f58294k;

    /* renamed from: l */
    public final AbstractC19321u f58295l;

    @e(c = "com.truecaller.details_view.ui.comments.all.AllCommentsPresenter$observeComments$2$1", f = "AllCommentsPresenter.kt", l = {102}, m = "invokeSuspend")
    /* renamed from: e.a.v.a.c.c.c$a */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/c/c/c$a.class */
    public static final class C20701a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f58296e;

        /* renamed from: f */
        public final /* synthetic */ C19443b f58297f;

        /* renamed from: g */
        public final /* synthetic */ C20700c f58298g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20701a(C19443b c19443b, d dVar, C20700c c20700c) {
            super(2, dVar);
            this.f58297f = c19443b;
            this.f58298g = c20700c;
        }

        /* renamed from: i */
        public final d<s> m10817i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C20701a(this.f58297f, dVar, this.f58298g);
        }

        /* renamed from: k */
        public final Object m10816k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C20701a(this.f58297f, dVar, this.f58298g).m10815s(s.a);
        }

        /* renamed from: s */
        public final Object m10815s(Object obj) {
            a aVar = a.a;
            int i = this.f58296e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC19444c abstractC19444c = this.f58298g.f58292i;
                C19443b c19443b = this.f58297f;
                this.f58296e = 1;
                if (abstractC19444c.mo13324c(c19443b, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    /* renamed from: e.a.v.a.c.c.c$b */
    /* loaded from: classes8-dex2jar.jar:e/a/v/a/c/c/c$b.class */
    public static final class C20702b extends m implements s1.z.b.l<List<? extends CommentFeedbackModel>, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C20702b() {
            super(1);
            C20700c.this = r4;
        }

        /* renamed from: d */
        public Object m10814d(Object obj) {
            List<CommentFeedbackModel> list = (List) obj;
            l.e(list, "it");
            C20700c c20700c = C20700c.this;
            ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
            for (CommentFeedbackModel commentFeedbackModel : list) {
                arrayList.add(C20700c.this.f58293j.m10832a(commentFeedbackModel));
            }
            AbstractC20699b abstractC20699b = (AbstractC20699b) c20700c.f57683a;
            if (abstractC20699b != null) {
                abstractC20699b.mo10824b0();
            }
            AbstractC20699b abstractC20699b2 = (AbstractC20699b) c20700c.f57683a;
            if (abstractC20699b2 != null) {
                abstractC20699b2.mo10822e4();
            }
            AbstractC20699b abstractC20699b3 = (AbstractC20699b) c20700c.f57683a;
            if (abstractC20699b3 != null) {
                abstractC20699b3.mo10830E1(arrayList.size());
            }
            AbstractC20699b abstractC20699b4 = (AbstractC20699b) c20700c.f57683a;
            if (abstractC20699b4 != null) {
                abstractC20699b4.mo10825a9(arrayList);
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C20700c(@Named("UI") f fVar, AbstractC19233h0 abstractC19233h0, AbstractC19444c abstractC19444c, C20697b c20697b, C20592g c20592g, AbstractC19321u abstractC19321u) {
        super(fVar);
        l.e(fVar, "uiContext");
        l.e(abstractC19233h0, "themedResourceProvider");
        l.e(abstractC19444c, "commentsRepository");
        l.e(c20697b, "commentViewModelMapper");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC19321u, "networkUtil");
        this.f58290g = fVar;
        this.f58291h = abstractC19233h0;
        this.f58292i = abstractC19444c;
        this.f58293j = c20697b;
        this.f58294k = c20592g;
        this.f58295l = abstractC19321u;
        s1.u.s sVar = s1.u.s.a;
        this.f58287d = sVar;
        this.f58288e = sVar;
    }

    /* renamed from: Ij */
    public final void m10818Ij(SortType sortType, Contact contact) {
        C19443b mo13323d = this.f58292i.mo13323d(contact, sortType, new C20702b());
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C20701a(mo13323d, null, this), 3, (Object) null);
        this.f58289f = mo13323d;
    }

    @Override // p193e.p194a.p1270u2.p1271a.AbstractC20574a, p193e.p194a.p1270u2.p1271a.AbstractC20576b, p193e.p194a.p1270u2.p1271a.AbstractC20580e
    /* renamed from: c */
    public void mo9806c() {
        super.mo9806c();
        C19443b c19443b = this.f58289f;
        if (c19443b != null) {
            this.f58292i.mo13325b(c19443b);
        }
    }
}
