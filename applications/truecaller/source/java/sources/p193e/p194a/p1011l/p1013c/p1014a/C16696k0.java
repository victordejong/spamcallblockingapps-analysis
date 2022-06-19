package p193e.p194a.p1011l.p1013c.p1014a;

import com.truecaller.C2752R;
import javax.inject.Inject;
import p193e.p194a.p1011l.p1013c.p1014a.AbstractC16736t;
import p193e.p194a.p1111o2.C18900h;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.k0 */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/k0.class */
public final class C16696k0 extends AbstractC16663f<Object> implements AbstractC16693j1 {

    /* renamed from: d */
    public final AbstractC16694j2 f46838d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C16696k0(AbstractC16694j2 abstractC16694j2, AbstractC16701l1 abstractC16701l1) {
        super(abstractC16701l1);
        l.e(abstractC16694j2, "router");
        l.e(abstractC16701l1, "model");
        this.f46838d = abstractC16694j2;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        return (long) C2752R.C2754id.view_premium_user_tab_list_gold_gift_reminder;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18908p
    /* renamed from: m */
    public boolean mo14344m(int i) {
        return m17148A().get(i).f46880b instanceof AbstractC16736t.C16742f;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        l.e(c18900h, "event");
        this.f46838d.mo17007J4();
        return true;
    }
}
