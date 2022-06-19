package p193e.p194a.p195a.p200c.p208k.p210c;

import com.truecaller.messaging.conversation.ConversationAction;
import java.util.Objects;
import p193e.p194a.p195a.p200c.AbstractC5179c5;
import p193e.p194a.p195a.p200c.AbstractC5794w3;
import p193e.p194a.p195a.p200c.AbstractC5814y2;
import p193e.p194a.p195a.p200c.p208k.AbstractC5431b;
import p193e.p194a.p195a.p231g.p234l0.AbstractC6225a;
import s1.z.c.l;
/* renamed from: e.a.a.c.k.c.d */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/k/c/d.class */
public final class C5435d extends AbstractC5431b<AbstractC5814y2> {

    /* renamed from: c */
    public boolean f18537c = true;

    /* renamed from: d */
    public final AbstractC5179c5 f18538d;

    /* renamed from: e */
    public final AbstractC5794w3 f18539e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5435d(AbstractC5179c5 abstractC5179c5, AbstractC5794w3 abstractC5794w3) {
        super(abstractC5794w3);
        l.e(abstractC5179c5, "actionClickListener");
        l.e(abstractC5794w3, "items");
        this.f18538d = abstractC5179c5;
        this.f18539e = abstractC5794w3;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        AbstractC5814y2 abstractC5814y2 = (AbstractC5814y2) obj;
        l.e(abstractC5814y2, "itemView");
        AbstractC6225a item = this.f18539e.getItem(i);
        Objects.requireNonNull(item, "null cannot be cast to non-null type com.truecaller.messaging.conversation.adapter.action.ActionsItem");
        abstractC5814y2.mo32378N0();
        for (ConversationAction conversationAction : ((C5432a) item).f18534b) {
            abstractC5814y2.mo32380I1(conversationAction.menuId);
            String str = conversationAction.dynamicTitle;
            if (str != null) {
                int i2 = conversationAction.textViewId;
                l.d(str, "it");
                abstractC5814y2.mo32375t1(i2, str);
            }
        }
        abstractC5814y2.mo32379J3();
        abstractC5814y2.mo32374u4(new C5433b(this));
        abstractC5814y2.mo32376s0(new C5434c(this));
        if (this.f18537c) {
            abstractC5814y2.mo32377P0();
        } else {
            abstractC5814y2.mo32381F3();
        }
    }

    @Override // p193e.p194a.p1111o2.AbstractC18908p
    /* renamed from: m */
    public boolean mo14344m(int i) {
        return this.f18539e.getItem(i) instanceof C5432a;
    }
}
