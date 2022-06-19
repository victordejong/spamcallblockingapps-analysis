package p193e.p194a.p195a.p200c;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.messaging.conversation.QuickAction;
import java.util.ArrayList;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p194a.p1111o2.AbstractC18894c;
import p193e.p194a.p1111o2.AbstractC18904l;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p1334w.p1339c.C21185a;
import s1.z.c.l;
/* renamed from: e.a.a.c.s7 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/s7.class */
public final class C5723s7 extends AbstractC18894c<AbstractC5681q7> implements Object, AbstractC18904l {

    /* renamed from: b */
    public List<QuickAction> f19176b = new ArrayList();

    /* renamed from: c */
    public final AbstractC5276f4 f19177c;

    /* renamed from: d */
    public final AbstractC5179c5 f19178d;

    /* renamed from: e */
    public final AbstractC5583n4 f19179e;

    /* renamed from: f */
    public final AbstractC5687r3 f19180f;

    /* renamed from: g */
    public final boolean f19181g;

    /* renamed from: h */
    public int f19182h;

    /* renamed from: i */
    public final AbstractC5108b4 f19183i;

    /* renamed from: j */
    public final AbstractC5585n5 f19184j;

    /* renamed from: k */
    public final C21185a f19185k;

    @Inject
    public C5723s7(AbstractC5276f4 abstractC5276f4, AbstractC5179c5 abstractC5179c5, AbstractC5583n4 abstractC5583n4, AbstractC5687r3 abstractC5687r3, @Named("IsHiddenNumberIntent") boolean z, @Named("Filter") int i, C20592g c20592g, AbstractC5108b4 abstractC5108b4, AbstractC5585n5 abstractC5585n5, C21185a c21185a) {
        l.e(abstractC5276f4, "inputPresenter");
        l.e(abstractC5179c5, "conversationPresenter");
        l.e(abstractC5583n4, "menuPresenter");
        l.e(abstractC5687r3, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(c20592g, "featuresRegistry");
        l.e(abstractC5108b4, "headerPresenter");
        l.e(abstractC5585n5, "conversationState");
        l.e(c21185a, "referralTargetResolver");
        this.f19177c = abstractC5276f4;
        this.f19178d = abstractC5179c5;
        this.f19179e = abstractC5583n4;
        this.f19180f = abstractC5687r3;
        this.f19181g = z;
        this.f19182h = i;
        this.f19183i = abstractC5108b4;
        this.f19184j = abstractC5585n5;
        this.f19185k = c21185a;
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    /* renamed from: G */
    public void mo11464G(Object obj, int i) {
        AbstractC5681q7 abstractC5681q7 = (AbstractC5681q7) obj;
        l.e(abstractC5681q7, "itemView");
        QuickAction quickAction = this.f19176b.get(i);
        abstractC5681q7.setIcon(quickAction.getIcon());
        abstractC5681q7.mo32786y0(quickAction.getText());
        abstractC5681q7.setOnClickListener(new C5693r7(this, i, quickAction));
    }

    @Override // p193e.p194a.p1111o2.AbstractC18894c, p193e.p194a.p1111o2.AbstractC18893b
    public int getItemCount() {
        return this.f19176b.size();
    }

    @Override // p193e.p194a.p1111o2.AbstractC18893b
    public long getItemId(int i) {
        return this.f19176b.get(i).name().hashCode();
    }

    @Override // p193e.p194a.p1111o2.AbstractC18904l
    /* renamed from: v */
    public boolean mo10026v(C18900h c18900h) {
        l.e(c18900h, "event");
        return false;
    }
}
