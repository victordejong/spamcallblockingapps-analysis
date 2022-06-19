package p193e.p194a.p195a.p200c.p208k.p209a;

import com.tenor.android.core.constant.ViewAction;
import com.truecaller.messaging.data.types.Entity;
import com.truecaller.messaging.data.types.Message;
import com.truecaller.messaging.data.types.TextEntity;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p195a.p200c.AbstractC5062a7;
import p193e.p194a.p195a.p200c.AbstractC5484l5;
import p193e.p194a.p195a.p200c.AbstractC5524m5;
import p193e.p194a.p195a.p200c.AbstractC5769t7;
import p193e.p194a.p195a.p200c.AbstractC5794w3;
import p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j;
import p193e.p194a.p195a.p231g.p234l0.AbstractC6225a;
import p193e.p194a.p195a.p244k.AbstractC6708t;
import s1.z.c.l;
/* renamed from: e.a.a.c.k.a.q */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/k/a/q.class */
public final class C5430q extends AbstractC5409a implements AbstractC5429p {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C5430q(AbstractC5524m5 abstractC5524m5, AbstractC5484l5 abstractC5484l5, AbstractC6708t abstractC6708t, AbstractC5769t7 abstractC5769t7, AbstractC5794w3 abstractC5794w3, AbstractC5418j.AbstractC5420b abstractC5420b, AbstractC5418j.AbstractC5419a abstractC5419a, C20592g c20592g) {
        super(abstractC5524m5, abstractC5484l5, abstractC6708t, abstractC5769t7, abstractC5794w3, abstractC5420b, abstractC5419a, c20592g);
        l.e(abstractC5524m5, "conversationState");
        l.e(abstractC5484l5, "resourceProvider");
        l.e(abstractC6708t, "transportManager");
        l.e(abstractC5769t7, "viewProvider");
        l.e(abstractC5794w3, "items");
        l.e(abstractC5420b, "listener");
        l.e(abstractC5419a, "actionModeListener");
        l.e(c20592g, "featuresRegistry");
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5409a, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        AbstractC5062a7 abstractC5062a7 = (AbstractC5062a7) obj;
        l.e(abstractC5062a7, ViewAction.VIEW);
        super.mo11464G(abstractC5062a7, i);
        AbstractC6225a item = this.f18499e.getItem(i);
        Objects.requireNonNull(item, "null cannot be cast to non-null type com.truecaller.messaging.data.types.Message");
        Entity[] entityArr = ((Message) item).f13394o;
        l.d(entityArr, "item.entities");
        Object m3845s0 = C25225a.m3845s0(entityArr);
        Objects.requireNonNull(m3845s0, "null cannot be cast to non-null type com.truecaller.messaging.data.types.TextEntity");
        abstractC5062a7.mo33621h1(((TextEntity) m3845s0).f13465i, false, false, false, null, null);
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5409a, p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j
    /* renamed from: h */
    public void mo33126h(int i) {
    }

    @Override // p193e.p194a.p1111o2.AbstractC18908p
    /* renamed from: m */
    public boolean mo14344m(int i) {
        AbstractC6225a item = this.f18499e.getItem(i);
        return (item instanceof Message) && ((Message) item).f13390k == 6;
    }

    @Override // p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5409a, p193e.p194a.p195a.p200c.p208k.p209a.AbstractC5418j
    /* renamed from: n */
    public void mo33125n(int i) {
    }
}
