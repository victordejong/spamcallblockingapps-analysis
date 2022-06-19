package p193e.p194a.p195a.p224d;

import com.truecaller.C2752R;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.Number;
import com.truecaller.messaging.newconversation.NewConversationPresenter;
import java.util.List;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
import s1.z.c.y;
@e(c = "com.truecaller.messaging.newconversation.NewConversationPresenter$scheduleBackendSearch$1", f = "NewConversationPresenter.kt", l = {445}, m = "invokeSuspend")
/* renamed from: e.a.a.d.a0 */
/* loaded from: classes7-dex2jar.jar:e/a/a/d/a0.class */
public final class C5901a0 extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f19704e;

    /* renamed from: f */
    public Object f19705f;

    /* renamed from: g */
    public Object f19706g;

    /* renamed from: h */
    public int f19707h;

    /* renamed from: i */
    public final /* synthetic */ NewConversationPresenter f19708i;

    /* renamed from: j */
    public final /* synthetic */ String f19709j;

    @e(c = "com.truecaller.messaging.newconversation.NewConversationPresenter$scheduleBackendSearch$1$1", f = "NewConversationPresenter.kt", l = {446}, m = "invokeSuspend")
    /* renamed from: e.a.a.d.a0$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/d/a0$a.class */
    public static final class C5902a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f19710e;

        /* renamed from: g */
        public final /* synthetic */ c0 f19712g;

        /* renamed from: h */
        public final /* synthetic */ c0 f19713h;

        /* renamed from: i */
        public final /* synthetic */ y f19714i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5902a(c0 c0Var, c0 c0Var2, y yVar, d dVar) {
            super(2, dVar);
            C5901a0.this = r5;
            this.f19712g = c0Var;
            this.f19713h = c0Var2;
            this.f19714i = yVar;
        }

        /* renamed from: i */
        public final d<s> m32240i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5902a(this.f19712g, this.f19713h, this.f19714i, dVar);
        }

        /* renamed from: k */
        public final Object m32239k(Object obj, Object obj2) {
            return m32240i(obj, (d) obj2).m32238s(s.a);
        }

        /* renamed from: s */
        public final Object m32238s(Object obj) {
            a aVar = a.a;
            int i = this.f19710e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                long j = C5901a0.this.f19708i.f13602m;
                this.f19710e = 1;
                if (s1.a.a.a.v0.f.d.D0(j, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            C5901a0 c5901a0 = C5901a0.this;
            NewConversationPresenter newConversationPresenter = c5901a0.f19708i;
            k<Contact, Integer> mo32220c = newConversationPresenter.f13610u.mo32220c(c5901a0.f19709j, !l.a(newConversationPresenter.f13614y.mo32196Ij(), "im_group_type"));
            c0 c0Var = this.f19712g;
            c0Var.a = (Contact) mo32220c.a;
            this.f19713h.a = (Integer) mo32220c.b;
            this.f19714i.a = C5901a0.this.f19708i.f13610u.mo32221b((Contact) c0Var.a);
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5901a0(NewConversationPresenter newConversationPresenter, String str, d dVar) {
        super(2, dVar);
        this.f19708i = newConversationPresenter;
        this.f19709j = str;
    }

    /* renamed from: i */
    public final d<s> m32243i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C5901a0(this.f19708i, this.f19709j, dVar);
    }

    /* renamed from: k */
    public final Object m32242k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C5901a0(this.f19708i, this.f19709j, dVar).m32241s(s.a);
    }

    /* renamed from: s */
    public final Object m32241s(Object obj) {
        c0 c0Var;
        y yVar;
        c0 c0Var2;
        AbstractC5938v abstractC5938v;
        a aVar = a.a;
        int i = this.f19707h;
        if (i == 0) {
            c0Var = C22128a.m8633d0(obj);
            yVar = new y();
            c0Var2 = new c0();
            f fVar = this.f19708i.f13601l;
            C5902a c5902a = new C5902a(c0Var, c0Var2, yVar, null);
            this.f19704e = c0Var;
            this.f19705f = yVar;
            this.f19706g = c0Var2;
            this.f19707h = 1;
            if (s1.a.a.a.v0.f.d.a4(fVar, c5902a, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            c0 c0Var3 = (c0) this.f19706g;
            yVar = (y) this.f19705f;
            c0Var = (c0) this.f19704e;
            C25225a.m3932a3(obj);
            c0Var2 = c0Var3;
        }
        NewConversationPresenter newConversationPresenter = this.f19708i;
        Contact contact = (Contact) c0Var.a;
        boolean z = yVar.a;
        String str = this.f19709j;
        String str2 = null;
        newConversationPresenter.f13596g = null;
        newConversationPresenter.f13613x.mo32200M(false);
        if (l.a(newConversationPresenter.f13614y.mo32196Ij(), "im_group_type")) {
            if (contact != null) {
                String m35575A = contact.m35575A();
                if (!(m35575A == null || m35575A.length() == 0)) {
                    List<Number> m35557M = contact.m35557M();
                    l.d(m35557M, "contact.numbers");
                    Number number = (Number) s1.u.i.D(m35557M);
                    if (number != null) {
                        str2 = number.m35479e();
                    }
                    if ((true ^ l.a(str2, newConversationPresenter.f13585E.getString("profileNumber"))) && !z) {
                        newConversationPresenter.f13613x.mo32204H(contact);
                    }
                }
            }
            newConversationPresenter.f13613x.mo32203I(str);
        } else if (contact != null) {
            if (z) {
                newConversationPresenter.f13613x.mo32203I(str);
            } else {
                List<Number> m35557M2 = contact.m35557M();
                l.d(m35557M2, "contact.numbers");
                if (((Number) s1.u.i.D(m35557M2)) != null) {
                    newConversationPresenter.f13613x.mo32204H(contact);
                }
            }
        }
        AbstractC5938v abstractC5938v2 = (AbstractC5938v) newConversationPresenter.f57683a;
        if (abstractC5938v2 != null) {
            abstractC5938v2.mo32146l2();
        }
        if (((Contact) c0Var.a) == null) {
            NewConversationPresenter newConversationPresenter2 = this.f19708i;
            Integer num = (Integer) c0Var2.a;
            Objects.requireNonNull(newConversationPresenter2);
            if (num == null || num.intValue() != 429) {
                int i2 = 0;
                if (num != null) {
                    i2 = num.intValue();
                }
                if (i2 > 0) {
                    if (num != null) {
                        num.intValue();
                        AbstractC5938v abstractC5938v3 = (AbstractC5938v) newConversationPresenter2.f57683a;
                        if (abstractC5938v3 != null) {
                            abstractC5938v3.mo32164J1(C2752R.string.ErrorConnectionGeneralWithStatusCode, num.intValue());
                        }
                    }
                } else if (num == null && (abstractC5938v = (AbstractC5938v) newConversationPresenter2.f57683a) != null) {
                    abstractC5938v.mo32138w2(2131886717);
                }
            }
        }
        return s.a;
    }
}
