package p193e.p194a.p195a.p200c;

import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import p193e.p194a.p1111o2.AbstractC18894c;
import p193e.p194a.p1111o2.AbstractC18904l;
import p193e.p194a.p1111o2.C18900h;
import s1.z.c.l;
/* renamed from: e.a.a.c.b8 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/b8.class */
public final class C5113b8 extends AbstractC18894c<AbstractC5838z7> implements Object, AbstractC18904l {

    /* renamed from: b */
    public List<String> f17491b = new ArrayList();

    /* renamed from: c */
    public final AbstractC5276f4 f17492c;

    @Inject
    public C5113b8(AbstractC5276f4 abstractC5276f4) {
        l.e(abstractC5276f4, "inputPresenter");
        this.f17492c = abstractC5276f4;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        AbstractC5838z7 abstractC5838z7 = (AbstractC5838z7) obj;
        l.e(abstractC5838z7, "itemView");
        String str = this.f17491b.get(i);
        abstractC5838z7.setText(str);
        abstractC5838z7.setOnClickListener(new C5063a8(this, i, str));
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    public int getItemCount() {
        return this.f17491b.size();
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        return this.f17491b.get(i).hashCode();
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        l.e(c18900h, "event");
        return false;
    }
}
