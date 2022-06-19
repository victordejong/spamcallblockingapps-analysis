package p193e.p194a.p1138q.p1139a;

import com.truecaller.contactfeedback.analytics.ContactFeedbackAnalyticsAction;
import com.truecaller.data.entity.Contact;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1138q.C19389d;
import p193e.p194a.p1138q.p1141e.C19391a;
import p193e.p194a.p997k3.p998j.C16461b;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.contactfeedback.presentation.ContactFeedbackPresenter$onSavePressed$1", f = "ContactFeedbackPresenter.kt", l = {36}, m = "invokeSuspend")
/* renamed from: e.a.q.a.g */
/* loaded from: classes4-dex2jar.jar:e/a/q/a/g.class */
public final class C19381g extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f53875e;

    /* renamed from: f */
    public final /* synthetic */ C19383h f53876f;

    /* renamed from: g */
    public final /* synthetic */ long f53877g;

    /* renamed from: h */
    public final /* synthetic */ String f53878h;

    /* renamed from: i */
    public final /* synthetic */ String f53879i;

    /* renamed from: j */
    public final /* synthetic */ int f53880j;

    @e(c = "com.truecaller.contactfeedback.presentation.ContactFeedbackPresenter$onSavePressed$1$originalContact$1", f = "ContactFeedbackPresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.q.a.g$a */
    /* loaded from: classes4-dex2jar.jar:e/a/q/a/g$a.class */
    public static final class C19382a extends i implements p<i0, d<? super Contact>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C19382a(d dVar) {
            super(2, dVar);
            C19381g.this = r5;
        }

        /* renamed from: i */
        public final d<s> m13388i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C19382a(dVar);
        }

        /* renamed from: k */
        public final Object m13387k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C19381g c19381g = C19381g.this;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            return c19381g.f53876f.f53885g.m17367e(c19381g.f53877g);
        }

        /* renamed from: s */
        public final Object m13386s(Object obj) {
            C25225a.m3932a3(obj);
            C19381g c19381g = C19381g.this;
            return c19381g.f53876f.f53885g.m17367e(c19381g.f53877g);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C19381g(C19383h c19383h, long j, String str, String str2, int i, d dVar) {
        super(2, dVar);
        this.f53876f = c19383h;
        this.f53877g = j;
        this.f53878h = str;
        this.f53879i = str2;
        this.f53880j = i;
    }

    /* renamed from: i */
    public final d<s> m13391i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C19381g(this.f53876f, this.f53877g, this.f53878h, this.f53879i, this.f53880j, dVar);
    }

    /* renamed from: k */
    public final Object m13390k(Object obj, Object obj2) {
        return m13391i(obj, (d) obj2).m13389s(s.a);
    }

    /* renamed from: s */
    public final Object m13389s(Object obj) {
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f53875e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            f fVar = this.f53876f.f53884f;
            C19382a c19382a = new C19382a(null);
            this.f53875e = 1;
            Object a4 = s1.a.a.a.v0.f.d.a4(fVar, c19382a, this);
            obj = a4;
            if (a4 == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        Contact contact = (Contact) obj;
        if (contact == null) {
            AbstractC19380f abstractC19380f = (AbstractC19380f) this.f53876f.f57683a;
            if (abstractC19380f != null) {
                abstractC19380f.mo13393Bt(null);
            }
            return sVar;
        }
        C19391a c19391a = this.f53876f.f53887i;
        String str = this.f53878h;
        Objects.requireNonNull(c19391a);
        l.e(str, "contactFeedbackContext");
        c19391a.m13378a(str, ContactFeedbackAnalyticsAction.SAVE_SUGGESTED_NAME);
        if ((this.f53879i.length() == 0) || this.f53879i.length() > 100) {
            AbstractC19380f abstractC19380f2 = (AbstractC19380f) this.f53876f.f57683a;
            if (abstractC19380f2 != null) {
                abstractC19380f2.mo13392lu();
            }
            return sVar;
        }
        C19383h c19383h = this.f53876f;
        c19383h.f53882d = true;
        ((C19389d) c19383h.f53888j).m13381a(contact, this.f53877g, false, this.f53879i, this.f53880j, contact.m35566G());
        C19383h c19383h2 = this.f53876f;
        AbstractC19380f abstractC19380f3 = (AbstractC19380f) c19383h2.f57683a;
        if (abstractC19380f3 != null) {
            String str2 = this.f53879i;
            Contact contact2 = contact;
            if (!C16461b.m17357o(contact)) {
                Contact m17358n = c19383h2.f53885g.m17358n(contact);
                contact2 = contact;
                if (m17358n != null) {
                    contact2 = m17358n;
                }
                abstractC19380f3.mo13393Bt(contact2);
            }
            Contact m17332d = c19383h2.f53886h.m17332d(contact2, str2);
            if (m17332d != null) {
                contact2 = m17332d;
            }
            abstractC19380f3.mo13393Bt(contact2);
        }
        return sVar;
    }
}
