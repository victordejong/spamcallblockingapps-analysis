package p193e.p194a.p1011l.p1013c.p1014a;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.p183ui.view.TintedImageView;
import com.truecaller.premium.premiumusertab.list.DummySwitch;
import e.m.d.y.n;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Set;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p837h0.p838a.AbstractC14811v;
import s1.g;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.v2 */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/v2.class */
public final class C16762v2 extends AbstractC16668g implements AbstractC16757u1 {

    /* renamed from: d */
    public final g f46988d;

    /* renamed from: e */
    public final LinkedHashMap<AbstractC14811v, DummySwitch> f46989e = new LinkedHashMap<>();

    /* renamed from: f */
    public final AbstractC18905m f46990f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16762v2(View view, AbstractC18905m abstractC18905m) {
        super(view, null);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC18905m, "itemEventReceiver");
        this.f46990f = abstractC18905m;
        this.f46988d = C19286f.m13660s(view, C2752R.C2754id.options);
        View findViewById = view.findViewById(2131363008);
        l.d(findViewById, "view.findViewById<View>(R.id.ctaButton)");
        n.d1(findViewById, abstractC18905m, this, (String) null, (Object) null, 12);
    }

    /* renamed from: O4 */
    public final LinearLayout m17057O4() {
        return (LinearLayout) this.f46988d.getValue();
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16757u1
    /* renamed from: P3 */
    public void mo17056P3(List<C16691j> list) {
        l.e(list, "options");
        Set<AbstractC14811v> keySet = this.f46989e.keySet();
        l.d(keySet, "switchesMap.keys");
        List S0 = i.S0(keySet);
        ArrayList arrayList = new ArrayList(C25225a.m4004J(list, 10));
        for (C16691j c16691j : list) {
            arrayList.add(c16691j.f46833a);
        }
        if (!(!l.a(S0, arrayList))) {
            for (C16691j c16691j2 : list) {
                DummySwitch dummySwitch = this.f46989e.get(c16691j2.f46833a);
                if (dummySwitch != null) {
                    dummySwitch.setChecked(c16691j2.f46834b);
                }
            }
            return;
        }
        m17057O4().removeAllViews();
        this.f46989e.clear();
        int i = 0;
        for (Object obj : list) {
            if (i < 0) {
                i.N0();
                throw null;
            }
            C16691j c16691j3 = (C16691j) obj;
            View view = this.itemView;
            l.d(view, "itemView");
            View inflate = LayoutInflater.from(view.getContext()).inflate(C2752R.layout.layout_premium_user_tab_spam_blocking_option, (ViewGroup) m17057O4(), false);
            AbstractC14811v abstractC14811v = c16691j3.f46833a;
            boolean z = c16691j3.f46834b;
            ((TextView) inflate.findViewById(C2752R.C2754id.itemSwitchLabel)).setText(abstractC14811v.f42374c);
            ((TextView) inflate.findViewById(C2752R.C2754id.itemDescription)).setText(abstractC14811v.f42375d);
            TintedImageView tintedImageView = (TintedImageView) inflate.findViewById(C2752R.C2754id.itemImage);
            if (abstractC14811v.f42373b == null) {
                l.d(tintedImageView, "iconView");
                tintedImageView.setVisibility(8);
            } else {
                l.d(tintedImageView, "iconView");
                tintedImageView.setVisibility(0);
                tintedImageView.setImageResource(abstractC14811v.f42373b.intValue());
            }
            DummySwitch dummySwitch2 = (DummySwitch) inflate.findViewById(C2752R.C2754id.itemSwitch);
            l.d(dummySwitch2, "switchView");
            dummySwitch2.setChecked(z);
            dummySwitch2.setOnClickListener(new h1(0, this, dummySwitch2, abstractC14811v));
            this.f46989e.put(abstractC14811v, dummySwitch2);
            View findViewById = inflate.findViewById(C2752R.C2754id.itemEdit);
            l.d(findViewById, "editView");
            C19286f.m13683U(findViewById, abstractC14811v.f42376e);
            if (abstractC14811v.f42376e) {
                findViewById.setOnClickListener(new h1(1, this, findViewById, abstractC14811v));
            }
            View findViewById2 = inflate.findViewById(C2752R.C2754id.itemLearnMore);
            l.d(findViewById2, "learnMoreView");
            C19286f.m13683U(findViewById2, abstractC14811v.f42377f);
            if (abstractC14811v.f42377f) {
                findViewById2.setOnClickListener(new h1(2, this, findViewById2, abstractC14811v));
            }
            l.d(inflate, "optionView");
            View findViewById3 = inflate.findViewById(C2752R.C2754id.itemDivider);
            l.d(findViewById3, "optionView.findViewById<View>(R.id.itemDivider)");
            C19286f.m13683U(findViewById3, i < list.size() - 1);
            m17057O4().addView(inflate);
            i++;
        }
    }
}
