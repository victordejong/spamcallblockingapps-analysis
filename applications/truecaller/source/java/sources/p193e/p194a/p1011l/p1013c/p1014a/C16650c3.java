package p193e.p194a.p1011l.p1013c.p1014a;

import android.view.View;
import androidx.appcompat.widget.SwitchCompat;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.g;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.c3 */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/c3.class */
public final class C16650c3 extends AbstractC16668g implements AbstractC16649c2 {

    /* renamed from: d */
    public final g f46765d;

    /* renamed from: e.a.l.c.a.c3$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/a/c3$a.class */
    public static final class View$OnClickListenerC16651a implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ AbstractC18905m f46767b;

        public View$OnClickListenerC16651a(AbstractC18905m abstractC18905m) {
            C16650c3.this = r4;
            this.f46767b = abstractC18905m;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            AbstractC18905m abstractC18905m = this.f46767b;
            C16650c3 c16650c3 = C16650c3.this;
            SwitchCompat m17156O4 = c16650c3.m17156O4();
            l.d(m17156O4, "whatsAppCallerIdSwitch");
            abstractC18905m.mo14327t(new C18900h("ItemEvent.WHATSAPP_CALLER_ID_SWITCH_ACTION", c16650c3, m17156O4, Integer.valueOf(C16650c3.this.getAdapterPosition())));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16650c3(View view, AbstractC18905m abstractC18905m) {
        super(view, abstractC18905m);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC18905m, "itemEventReceiver");
        this.f46765d = C19286f.m13660s(view, C2752R.C2754id.whatsAppCallerIdSwitch);
        m17156O4().setOnClickListener(new View$OnClickListenerC16651a(abstractC18905m));
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16649c2
    /* renamed from: M0 */
    public void mo17157M0(boolean z) {
        SwitchCompat m17156O4 = m17156O4();
        l.d(m17156O4, "whatsAppCallerIdSwitch");
        m17156O4.setChecked(z);
    }

    /* renamed from: O4 */
    public final SwitchCompat m17156O4() {
        return (SwitchCompat) this.f46765d.getValue();
    }
}
