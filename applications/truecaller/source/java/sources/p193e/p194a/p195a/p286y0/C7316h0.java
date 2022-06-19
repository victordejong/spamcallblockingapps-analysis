package p193e.p194a.p195a.p286y0;

import android.content.Context;
import com.razorpay.AnalyticsConstants;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.urgent.service.UrgentMessageService;
import java.util.LinkedHashSet;
import java.util.Set;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1128p4.AbstractC19215b;
import p193e.p194a.p1129p5.AbstractC19219a0;
import p193e.p194a.p1129p5.AbstractC19222c;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.AbstractC6392i0;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import q3.a.i0;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
import w3.b.a.b;
/* renamed from: e.a.a.y0.h0 */
/* loaded from: classes7-dex2jar.jar:e/a/a/y0/h0.class */
public final class C7316h0 implements AbstractC7314g0 {

    /* renamed from: a */
    public final Set<Long> f23345a = new LinkedHashSet();

    /* renamed from: b */
    public long f23346b = -1;

    /* renamed from: c */
    public final Context f23347c;

    /* renamed from: d */
    public final AbstractC19215b f23348d;

    /* renamed from: e */
    public final C20592g f23349e;

    /* renamed from: f */
    public final AbstractC19222c f23350f;

    /* renamed from: g */
    public final AbstractC6248w f23351g;

    /* renamed from: h */
    public final AbstractC19219a0 f23352h;

    /* renamed from: i */
    public final AbstractC6392i0 f23353i;

    /* renamed from: j */
    public final AbstractC7323l f23354j;

    @e(c = "com.truecaller.messaging.notifications.UrgentMessageNotificationHelperImpl$maybeNotifyUrgentIm$conversation$1", f = "UrgentMessageNotificationHelper.kt", l = {66}, m = "invokeSuspend")
    /* renamed from: e.a.a.y0.h0$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/y0/h0$a.class */
    public static final class C7317a extends i implements p<i0, d<? super Conversation>, Object> {

        /* renamed from: e */
        public int f23355e;

        /* renamed from: g */
        public final /* synthetic */ long f23357g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C7317a(long j, d dVar) {
            super(2, dVar);
            C7316h0.this = r5;
            this.f23357g = j;
        }

        /* renamed from: i */
        public final d<s> m29785i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C7317a(this.f23357g, dVar);
        }

        /* renamed from: k */
        public final Object m29784k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C7317a(this.f23357g, dVar).m29783s(s.a);
        }

        /* renamed from: s */
        public final Object m29783s(Object obj) {
            a aVar = a.a;
            int i = this.f23355e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC6248w abstractC6248w = C7316h0.this.f23351g;
                long j = this.f23357g;
                this.f23355e = 1;
                Object mo31566j = abstractC6248w.mo31566j(j, this);
                obj = mo31566j;
                if (mo31566j == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return obj;
        }
    }

    @Inject
    public C7316h0(Context context, AbstractC19215b abstractC19215b, C20592g c20592g, AbstractC19222c abstractC19222c, AbstractC6248w abstractC6248w, AbstractC19219a0 abstractC19219a0, AbstractC6392i0 abstractC6392i0, AbstractC7323l abstractC7323l) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(abstractC19215b, "qaMenuSettings");
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC19222c, "clock");
        l.e(abstractC6248w, "readMessageStorage");
        l.e(abstractC19219a0, "permissionUtil");
        l.e(abstractC6392i0, "settings");
        l.e(abstractC7323l, "searchHelper");
        this.f23347c = context;
        this.f23348d = abstractC19215b;
        this.f23349e = c20592g;
        this.f23350f = abstractC19222c;
        this.f23351g = abstractC6248w;
        this.f23352h = abstractC19219a0;
        this.f23353i = abstractC6392i0;
        this.f23354j = abstractC7323l;
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7314g0
    /* renamed from: a */
    public void mo29791a(long j) {
        if (j != this.f23346b) {
            return;
        }
        this.f23346b = -1L;
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7314g0
    /* renamed from: b */
    public void mo29790b(long j) {
        this.f23346b = j;
        UrgentMessageService.m34870e(this.f23347c, j);
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7314g0
    /* renamed from: c */
    public void mo29789c(Message message, long j) {
        Conversation conversation;
        l.e(message, "message");
        if (m29787e(j) && (conversation = (Conversation) s1.a.a.a.v0.f.d.c3((f) null, new C7317a(j, null), 1, (Object) null)) != null) {
            UrgentMessageService.m34869f(this.f23347c, m29786f(conversation, message));
        }
    }

    @Override // p193e.p194a.p195a.p286y0.AbstractC7314g0
    /* renamed from: d */
    public void mo29788d(Message message, Conversation conversation) {
        l.e(message, "message");
        l.e(conversation, "conversation");
        if (!m29787e(conversation.f13199a) || message.f13390k != 0) {
            return;
        }
        b bVar = message.f13384e;
        l.d(bVar, "date");
        if (!(Math.abs(((w3.b.a.e0.e) bVar).a - this.f23350f.mo13819c()) < C7319i0.f23360a) || !this.f23348d.mo13840p0() || this.f23345a.contains(Long.valueOf(message.f13380a)) || !this.f23352h.mo13822k()) {
            return;
        }
        this.f23345a.add(Long.valueOf(message.f13380a));
        UrgentMessageService.m34869f(this.f23347c, m29786f(conversation, message));
    }

    /* renamed from: e */
    public final boolean m29787e(long j) {
        return this.f23349e.m10982W().isEnabled() && this.f23352h.mo13822k() && this.f23353i.mo31159P3() && j != this.f23346b;
    }

    /* renamed from: f */
    public final Conversation m29786f(Conversation conversation, Message message) {
        return (Conversation) s1.u.i.A(this.f23354j.mo29781a(C25225a.m3938Z1(new k(conversation, C25225a.m3962T1(message)))).keySet());
    }
}
