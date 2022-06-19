package p193e.p194a.p195a.p224d;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.common.p156ui.listitem.ListItemX;
import com.truecaller.messaging.newconversation.ForwardListItemX;
import e.m.d.y.n;
import p1727n3.p1807k.p1809b.C26467a;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p372b0.p430q.C8605o;
import s1.z.c.l;
/* renamed from: e.a.a.d.l */
/* loaded from: classes7-dex2jar.jar:e/a/a/d/l.class */
public final class C5924l extends RecyclerView.AbstractC0313c0 implements AbstractC5930r {

    /* renamed from: a */
    public C8243a f19811a;

    /* renamed from: b */
    public final ForwardListItemX f19812b;

    /* renamed from: c */
    public final TextView f19813c;

    /* renamed from: d */
    public String f19814d;

    /* renamed from: e */
    public final AbstractC18905m f19815e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5924l(View view, AbstractC18905m abstractC18905m) {
        super(view);
        l.e(view, "itemView");
        l.e(abstractC18905m, "eventReceiver");
        this.f19815e = abstractC18905m;
        Context context = view.getContext();
        l.d(context, "itemView.context");
        this.f19811a = new C8243a(new C19235i0(context));
        View findViewById = view.findViewById(C2752R.C2754id.item);
        l.d(findViewById, "itemView.findViewById(R.id.item)");
        ForwardListItemX forwardListItemX = (ForwardListItemX) findViewById;
        this.f19812b = forwardListItemX;
        View findViewById2 = view.findViewById(2131363534);
        l.d(findViewById2, "itemView.findViewById(R.id.error_text)");
        this.f19813c = (TextView) findViewById2;
        n.d1(forwardListItemX, abstractC18905m, this, (String) null, (Object) null, 12);
        forwardListItemX.setAvatarPresenter(this.f19811a);
    }

    @Override // p193e.p194a.p682e.C13338z0.AbstractC13341c
    /* renamed from: A */
    public Drawable mo21901A() {
        return null;
    }

    @Override // p193e.p194a.p682e.C13338z0.AbstractC13339a
    /* renamed from: B */
    public boolean mo9976B() {
        return false;
    }

    @Override // p193e.p194a.p682e.C13338z0.AbstractC13339a
    /* renamed from: F */
    public String mo9975F() {
        return this.f19814d;
    }

    @Override // p193e.p194a.p682e.C13338z0.AbstractC13341c
    /* renamed from: H */
    public Drawable mo21900H() {
        return null;
    }

    /* renamed from: N4 */
    public void m32215N4(boolean z) {
        this.f19812b.setAlpha(z ? 0.5f : 1.0f);
    }

    /* renamed from: O4 */
    public void m32214O4(boolean z) {
        ForwardListItemX forwardListItemX = this.f19812b;
        Context context = forwardListItemX.getContext();
        Object obj = C26467a.f74235a;
        Drawable m1789b = C26467a.C26470c.m1789b(context, 2131232474);
        if (!z) {
            m1789b = null;
        }
        forwardListItemX.setTitleIcon(m1789b);
    }

    /* renamed from: P4 */
    public void m32213P4(int i) {
        ForwardListItemX forwardListItemX = this.f19812b;
        String m28239a = C8605o.m28239a(forwardListItemX.getResources().getString(i));
        l.d(m28239a, "GUIUtils.bidiFormat(item…resources.getString(res))");
        ListItemX.m35644o1(forwardListItemX, m28239a, null, null, null, null, null, 0, 0, false, null, null, 2046, null);
    }

    /* renamed from: Q4 */
    public void m32212Q4(boolean z) {
        this.f19812b.m35636y1(z);
    }

    @Override // p193e.p194a.p195a.p224d.AbstractC5930r
    /* renamed from: a */
    public void mo32178a(AvatarXConfig avatarXConfig) {
        l.e(avatarXConfig, DTBMetricsConfiguration.CONFIG_DIR);
        C8243a.m28739ok(this.f19811a, avatarXConfig, false, 2, null);
    }

    /* renamed from: h */
    public void m32211h(boolean z) {
        this.f19811a.m28738pk(z);
    }

    @Override // p193e.p194a.p682e.C13338z0.AbstractC13339a
    /* renamed from: n */
    public void mo9973n(String str) {
        this.f19814d = str;
    }

    public void setEnabled(boolean z) {
        this.f19812b.setEnabled(z);
    }

    public void setName(String str) {
        ForwardListItemX forwardListItemX = this.f19812b;
        String m28239a = C8605o.m28239a(str);
        l.d(m28239a, "GUIUtils.bidiFormat(name)");
        ListItemX.m35637x1(forwardListItemX, m28239a, false, 0, 0, 14, null);
    }

    @Override // p193e.p194a.p682e.C13338z0.AbstractC13341c
    /* renamed from: v */
    public Drawable mo21899v() {
        return null;
    }

    /* renamed from: v4 */
    public void m32210v4(String str) {
        ForwardListItemX forwardListItemX = this.f19812b;
        String m28239a = C8605o.m28239a(str);
        l.d(m28239a, "GUIUtils.bidiFormat(text)");
        ListItemX.m35644o1(forwardListItemX, m28239a, null, null, null, null, null, 0, 0, false, null, null, 2046, null);
    }

    @Override // p193e.p194a.p682e.C13338z0.AbstractC13341c
    /* renamed from: x */
    public Drawable mo21898x() {
        return null;
    }
}
