package p193e.p194a.p195a.p200c;

import com.truecaller.messaging.data.types.Conversation;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
@e(c = "com.truecaller.messaging.conversation.ConversationMessagesPresenterImpl$identifyLanguages$1", f = "ConversationMessagesPresenter.kt", l = {967, 970, 972}, m = "invokeSuspend")
/* renamed from: e.a.a.c.v4 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/v4.class */
public final class C5785v4 extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f19368e;

    /* renamed from: f */
    public Object f19369f;

    /* renamed from: g */
    public int f19370g;

    /* renamed from: h */
    public final /* synthetic */ C5744t4 f19371h;

    /* renamed from: i */
    public final /* synthetic */ Conversation f19372i;

    @e(c = "com.truecaller.messaging.conversation.ConversationMessagesPresenterImpl$identifyLanguages$1$1", f = "ConversationMessagesPresenter.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.a.c.v4$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/v4$a.class */
    public static final class C5786a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ c0 f19374f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5786a(c0 c0Var, d dVar) {
            super(2, dVar);
            C5785v4.this = r5;
            this.f19374f = c0Var;
        }

        /* renamed from: i */
        public final d<s> m32602i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C5786a(this.f19374f, dVar);
        }

        /* renamed from: k */
        public final Object m32601k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C5785v4 c5785v4 = C5785v4.this;
            c0 c0Var = this.f19374f;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            c5785v4.f19371h.f19219J.mo32847t((Long) c0Var.a);
            AbstractC5835z4 abstractC5835z4 = (AbstractC5835z4) c5785v4.f19371h.f57683a;
            if (abstractC5835z4 != null) {
                abstractC5835z4.mo32373A();
            }
            return sVar;
        }

        /* renamed from: s */
        public final Object m32600s(Object obj) {
            C25225a.m3932a3(obj);
            C5785v4.this.f19371h.f19219J.mo32847t((Long) this.f19374f.a);
            AbstractC5835z4 abstractC5835z4 = (AbstractC5835z4) C5785v4.this.f19371h.f57683a;
            if (abstractC5835z4 != null) {
                abstractC5835z4.mo32373A();
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5785v4(C5744t4 c5744t4, Conversation conversation, d dVar) {
        super(2, dVar);
        this.f19371h = c5744t4;
        this.f19372i = conversation;
    }

    /* renamed from: i */
    public final d<s> m32605i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C5785v4(this.f19371h, this.f19372i, dVar);
    }

    /* renamed from: k */
    public final Object m32604k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C5785v4(this.f19371h, this.f19372i, dVar).m32603s(s.a);
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x012e  */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m32603s(java.lang.Object r9) {
        /*
            Method dump skipped, instructions count: 308
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p195a.p200c.C5785v4.m32603s(java.lang.Object):java.lang.Object");
    }
}
