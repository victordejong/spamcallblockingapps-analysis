package p193e.p194a.p195a.p200c;

import com.truecaller.messaging.data.types.Message;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p195a.p231g.p232j0.AbstractC6149q;
import p193e.p194a.p682e.C12864a2;
import q3.a.h1;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
/* renamed from: e.a.a.c.i8 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/i8.class */
public final class C5387i8 implements AbstractC5342h8 {

    /* renamed from: a */
    public AbstractC5443k4 f18440a;

    /* renamed from: c */
    public Long f18442c;

    /* renamed from: f */
    public p1 f18445f;

    /* renamed from: g */
    public final boolean f18446g;

    /* renamed from: h */
    public final f f18447h;

    /* renamed from: i */
    public final f f18448i;

    /* renamed from: j */
    public final AbstractC5810x7 f18449j;

    /* renamed from: k */
    public final AbstractC5794w3 f18450k;

    /* renamed from: b */
    public final List<String> f18441b = new ArrayList();

    /* renamed from: d */
    public boolean f18443d = true;

    /* renamed from: e */
    public boolean f18444e = true;

    @e(c = "com.truecaller.messaging.conversation.UrgentMessageConversationHelperImpl$onMessagesChange$1$1", f = "UrgentMessageConversationHelper.kt", l = {102}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.i8$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/i8$a.class */
    public static final class C5388a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public final /* synthetic */ List f18451e;

        /* renamed from: f */
        public final /* synthetic */ C5387i8 f18452f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5388a(List list, d dVar, C5387i8 c5387i8) {
            super(2, dVar);
            this.f18451e = list;
            this.f18452f = c5387i8;
        }

        /* renamed from: i */
        public final d<s> m33188i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5388a(this.f18451e, dVar, this.f18452f);
        }

        /* renamed from: k */
        public final Object m33187k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            List list = this.f18451e;
            C5387i8 c5387i8 = this.f18452f;
            dVar.getContext();
            s1.u.s sVar2 = s1.u.s.a;
            C25225a.m3932a3(sVar);
            Message message = (Message) s1.u.i.D(list);
            c5387i8.f18442c = message != null ? new Long(message.f13380a) : null;
            Objects.requireNonNull(c5387i8);
            Objects.requireNonNull(c5387i8);
            if (sVar2.isEmpty()) {
                c5387i8.m33190d();
            } else if (!l.a(sVar2, c5387i8.f18441b)) {
                c5387i8.f18441b.clear();
                c5387i8.f18441b.addAll(sVar2);
                c5387i8.m33189e(Boolean.FALSE);
                AbstractC5443k4 abstractC5443k4 = c5387i8.f18440a;
                if (abstractC5443k4 != null) {
                    abstractC5443k4.mo32437n6(c5387i8.f18441b);
                }
            }
            return sVar;
        }

        /* renamed from: s */
        public final Object m33186s(Object obj) {
            s1.u.s sVar = s1.u.s.a;
            C25225a.m3932a3(obj);
            C5387i8 c5387i8 = this.f18452f;
            Message message = (Message) s1.u.i.D(this.f18451e);
            c5387i8.f18442c = message != null ? new Long(message.f13380a) : null;
            Objects.requireNonNull(this.f18452f);
            C5387i8 c5387i82 = this.f18452f;
            Objects.requireNonNull(c5387i82);
            if (sVar.isEmpty()) {
                c5387i82.m33190d();
            } else if (!l.a(sVar, c5387i82.f18441b)) {
                c5387i82.f18441b.clear();
                c5387i82.f18441b.addAll(sVar);
                c5387i82.m33189e(Boolean.FALSE);
                AbstractC5443k4 abstractC5443k4 = c5387i82.f18440a;
                if (abstractC5443k4 != null) {
                    abstractC5443k4.mo32437n6(c5387i82.f18441b);
                }
            }
            return s.a;
        }
    }

    @Inject
    public C5387i8(@Named("IsUrgentIntent") boolean z, @Named("IO") f fVar, @Named("UI") f fVar2, AbstractC5810x7 abstractC5810x7, AbstractC5794w3 abstractC5794w3) {
        l.e(fVar, "ioContext");
        l.e(fVar2, "uiContext");
        l.e(abstractC5810x7, "smartRepliesGenerator");
        l.e(abstractC5794w3, "conversationDataSource");
        this.f18446g = z;
        this.f18447h = fVar;
        this.f18448i = fVar2;
        this.f18449j = abstractC5810x7;
        this.f18450k = abstractC5794w3;
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5342h8
    /* renamed from: I2 */
    public void mo33194I2() {
        AbstractC5443k4 abstractC5443k4;
        boolean z = !this.f18443d;
        this.f18443d = z;
        m33189e(Boolean.valueOf(z));
        if (!(!this.f18441b.isEmpty()) || this.f18443d || (abstractC5443k4 = this.f18440a) == null) {
            return;
        }
        abstractC5443k4.mo32437n6(this.f18441b);
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5342h8
    /* renamed from: a */
    public void mo33193a() {
        AbstractC6149q mo32578f;
        p1 p1Var;
        if (this.f18446g && (mo32578f = this.f18450k.mo32578f()) != null) {
            if (!mo32578f.moveToFirst()) {
                m33189e(Boolean.TRUE);
                return;
            }
            Long l = this.f18442c;
            long mo31736u = mo32578f.mo31736u();
            if (l != null && l.longValue() == mo31736u) {
                return;
            }
            p1 p1Var2 = this.f18445f;
            if (C12864a2.m22540r(p1Var2 != null ? Boolean.valueOf(p1Var2.b()) : null) && (p1Var = this.f18445f) != null) {
                s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
            }
            if (!((mo32578f.getStatus() & 1) == 0 && mo32578f.mo31738R0() != 5)) {
                m33190d();
                return;
            }
            Message message = mo32578f.getMessage();
            l.d(message, "this.message");
            String m35025a = message.m35025a();
            l.d(m35025a, "currentMessage.buildMessageText()");
            if (m35025a.length() == 0) {
                return;
            }
            List d0 = s1.u.i.d0(new Message[]{message});
            while (mo32578f.moveToNext() && mo32578f.getPosition() < 1) {
                Message message2 = mo32578f.getMessage();
                l.d(message2, "this.message");
                if (mo32578f.mo31738R0() != 5) {
                    String m35025a2 = message2.m35025a();
                    l.d(m35025a2, "currentMessage.buildMessageText()");
                    if (m35025a2.length() > 0) {
                        d0.add(message2);
                    }
                }
            }
            this.f18445f = s1.a.a.a.v0.f.d.w2(h1.a, this.f18448i, (j0) null, new C5388a(d0, null, this), 2, (Object) null);
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5342h8
    /* renamed from: b */
    public void mo33192b(AbstractC5443k4 abstractC5443k4) {
        l.e(abstractC5443k4, "presenterView");
        this.f18440a = abstractC5443k4;
        if (this.f18446g) {
            abstractC5443k4.mo32476Zy();
        }
    }

    @Override // p193e.p194a.p195a.p200c.AbstractC5342h8
    /* renamed from: c */
    public void mo33191c() {
        this.f18440a = null;
        p1 p1Var = this.f18445f;
        if (p1Var != null) {
            s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
    }

    /* renamed from: d */
    public final void m33190d() {
        if (!(!this.f18441b.isEmpty())) {
            m33189e(null);
            return;
        }
        this.f18441b.clear();
        if (this.f18443d) {
            return;
        }
        m33189e(Boolean.TRUE);
    }

    /* renamed from: e */
    public final void m33189e(Boolean bool) {
        if (bool != null || this.f18444e) {
            this.f18444e = false;
            boolean booleanValue = bool != null ? bool.booleanValue() : this.f18443d;
            this.f18443d = booleanValue;
            AbstractC5443k4 abstractC5443k4 = this.f18440a;
            if (abstractC5443k4 != null) {
                abstractC5443k4.mo32416tk(booleanValue);
            }
            AbstractC5443k4 abstractC5443k42 = this.f18440a;
            if (abstractC5443k42 == null) {
                return;
            }
            abstractC5443k42.mo32463gd(!this.f18443d);
        }
    }
}
