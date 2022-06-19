package p193e.p194a.p195a.p197a1;

import com.truecaller.data.entity.messaging.Participant;
import com.truecaller.messaging.data.types.BinaryEntity;
import com.truecaller.messaging.data.types.Conversation;
import com.truecaller.messaging.data.types.Draft;
import java.util.Collection;
import java.util.List;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p195a.p223c1.AbstractC5843b;
import p193e.p194a.p195a.p223c1.AbstractC5854d;
import p193e.p194a.p195a.p231g.AbstractC6248w;
import p193e.p194a.p437c.p578p.C10480a;
import q3.a.i0;
import s1.k;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.messaging.quickreply.QuickReplyManager$onConversationLoaded$1", f = "QuickReplyManager.kt", l = {64}, m = "invokeSuspend")
/* renamed from: e.a.a.a1.c */
/* loaded from: classes7-dex2jar.jar:e/a/a/a1/c.class */
public final class C4912c extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f16669e;

    /* renamed from: f */
    public final /* synthetic */ C4914e f16670f;

    /* renamed from: g */
    public final /* synthetic */ Conversation f16671g;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C4912c(C4914e c4914e, Conversation conversation, d dVar) {
        super(2, dVar);
        this.f16670f = c4914e;
        this.f16671g = conversation;
    }

    /* renamed from: i */
    public final d<s> m34245i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C4912c(this.f16670f, this.f16671g, dVar);
    }

    /* renamed from: k */
    public final Object m34244k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C4912c(this.f16670f, this.f16671g, dVar).m34243s(s.a);
    }

    /* renamed from: s */
    public final Object m34243s(Object obj) {
        List<? extends k<Draft, ? extends Collection<? extends BinaryEntity>>> m25999Y;
        a aVar = a.a;
        int i = this.f16669e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            AbstractC6248w abstractC6248w = (AbstractC6248w) this.f16670f.f16678f.get();
            Participant[] participantArr = this.f16671g.f13211m;
            l.d(participantArr, "conversation.participants");
            int i2 = this.f16671g.f13216r;
            this.f16669e = 1;
            Object mo31555u = abstractC6248w.mo31555u(participantArr, i2, this);
            obj = mo31555u;
            if (mo31555u == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        Draft draft = (Draft) obj;
        C4914e c4914e = this.f16670f;
        Objects.requireNonNull(c4914e);
        if (draft != null) {
            Draft.C4194b m35061b = draft.m35061b();
            m35061b.f13288e = c4914e.f16673a;
            m35061b.f13294k = false;
            Draft m35055c = m35061b.m35055c();
            l.d(m35055c, "messageDraft.buildUpon()…lse)\n            .build()");
            AbstractC5854d abstractC5854d = c4914e.f16683k;
            AbstractC5843b.C5848e c5848e = null;
            m25999Y = C10480a.m25999Y(m35055c, null);
            String str = c4914e.f16681i.f23291e;
            l.d(str, "multiSimHelper.selectedSimToken");
            AbstractC5843b mo32322c = abstractC5854d.mo32322c(m25999Y, str, c4914e.f16675c == 2, false, true);
            if (mo32322c instanceof AbstractC5843b.C5848e) {
                c5848e = mo32322c;
            }
            AbstractC5843b.C5848e c5848e2 = c5848e;
            if (c5848e2 != null) {
                C10480a.m25868y2(c4914e.f16683k, c5848e2, false, "quickReply", 0L, 8, null).mo11830e(c4914e.f16679g, new C4913d(c4914e));
            }
        }
        return s.a;
    }
}
