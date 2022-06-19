package p193e.p194a.p1011l.p1013c.p1014a;

import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import e.m.d.y.n;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.g;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.h3 */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/h3.class */
public final class C16678h3 extends AbstractC16668g implements AbstractC16666f2 {

    /* renamed from: d */
    public final g f46818d;

    /* renamed from: e */
    public final g f46819e;

    /* renamed from: f */
    public final g f46820f;

    /* renamed from: e.a.l.c.a.h3$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/a/h3$a.class */
    public static final class View$OnClickListenerC16679a implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ AbstractC18905m f46822b;

        public View$OnClickListenerC16679a(AbstractC18905m abstractC18905m) {
            C16678h3.this = r4;
            this.f46822b = abstractC18905m;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC18905m abstractC18905m = this.f46822b;
            C16678h3 c16678h3 = C16678h3.this;
            SwitchCompat m17128O4 = c16678h3.m17128O4();
            l.d(m17128O4, "incognitoSwitch");
            abstractC18905m.mo14327t(new C18900h("ItemEvent.INCOGNITO_SWITCH_ACTION", c16678h3, m17128O4, (Object) null, 8));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16678h3(View view, AbstractC18905m abstractC18905m) {
        super(view, null);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC18905m, "itemEventReceiver");
        this.f46818d = C19286f.m13660s(view, C2752R.C2754id.incognitoSwitch);
        this.f46819e = C19286f.m13660s(view, C2752R.C2754id.viewsLabel);
        g m13660s = C19286f.m13660s(view, C2752R.C2754id.openWvmButton);
        this.f46820f = m13660s;
        TextView textView = (TextView) m13660s.getValue();
        l.d(textView, "openWvmButton");
        n.d1(textView, abstractC18905m, this, (String) null, (Object) null, 12);
        m17128O4().setOnClickListener(new View$OnClickListenerC16679a(abstractC18905m));
    }

    /* renamed from: O4 */
    public final SwitchCompat m17128O4() {
        return (SwitchCompat) this.f46818d.getValue();
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16666f2
    /* renamed from: c0 */
    public void mo17127c0(String str) {
        l.e(str, "cta");
        TextView textView = (TextView) this.f46820f.getValue();
        l.d(textView, "openWvmButton");
        textView.setText(str);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16666f2
    /* renamed from: n0 */
    public void mo17126n0(boolean z) {
        SwitchCompat m17128O4 = m17128O4();
        l.d(m17128O4, "incognitoSwitch");
        m17128O4.setChecked(z);
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16666f2
    public void setLabel(String str) {
        l.e(str, "text");
        TextView textView = (TextView) this.f46819e.getValue();
        l.d(textView, "viewsLabel");
        textView.setText(str);
    }
}
