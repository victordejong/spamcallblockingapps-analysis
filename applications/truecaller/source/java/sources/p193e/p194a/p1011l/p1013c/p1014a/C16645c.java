package p193e.p194a.p1011l.p1013c.p1014a;

import android.view.View;
import android.widget.TextView;
import androidx.appcompat.widget.SwitchCompat;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.g;
import s1.z.c.l;
/* renamed from: e.a.l.c.a.c */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/c.class */
public final class C16645c extends AbstractC16668g implements AbstractC16642b1 {

    /* renamed from: d */
    public final g f46758d;

    /* renamed from: e */
    public final g f46759e;

    /* renamed from: e.a.l.c.a.c$a */
    /* loaded from: classes3-dex2jar.jar:e/a/l/c/a/c$a.class */
    public static final class View$OnClickListenerC16646a implements View.OnClickListener {

        /* renamed from: a */
        public final /* synthetic */ int f46760a;

        /* renamed from: b */
        public final /* synthetic */ Object f46761b;

        /* renamed from: c */
        public final /* synthetic */ Object f46762c;

        public View$OnClickListenerC16646a(int i, Object obj, Object obj2) {
            this.f46760a = i;
            this.f46761b = obj;
            this.f46762c = obj2;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            int i = this.f46760a;
            if (i == 0) {
                AbstractC18905m abstractC18905m = (AbstractC18905m) this.f46762c;
                C16645c c16645c = (C16645c) this.f46761b;
                TextView textView = (TextView) c16645c.f46759e.getValue();
                l.d(textView, "openMoreSettings");
                abstractC18905m.mo14327t(new C18900h("ItemEvent.ANNOUNCE_CALLER_ID_OPEN_MORE_SETTINGS_ACTION", c16645c, textView, Integer.valueOf(((C16645c) this.f46761b).getAdapterPosition())));
            } else if (i != 1) {
                throw null;
            } else {
                AbstractC18905m abstractC18905m2 = (AbstractC18905m) this.f46762c;
                C16645c c16645c2 = (C16645c) this.f46761b;
                SwitchCompat m17159O4 = c16645c2.m17159O4();
                l.d(m17159O4, "announceCallerIdSwitch");
                abstractC18905m2.mo14327t(new C18900h("ItemEvent.ANNOUNCE_CALLER_ID_SWITCH_ACTION", c16645c2, m17159O4, Integer.valueOf(((C16645c) this.f46761b).getAdapterPosition())));
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C16645c(View view, AbstractC18905m abstractC18905m) {
        super(view, abstractC18905m);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC18905m, "itemEventReceiver");
        this.f46758d = C19286f.m13660s(view, C2752R.C2754id.announceCallerIdSwitch);
        g m13660s = C19286f.m13660s(view, C2752R.C2754id.openAnnounceCallerIdMoreSettings);
        this.f46759e = m13660s;
        ((TextView) m13660s.getValue()).setOnClickListener(new View$OnClickListenerC16646a(0, this, abstractC18905m));
        m17159O4().setOnClickListener(new View$OnClickListenerC16646a(1, this, abstractC18905m));
    }

    /* renamed from: O4 */
    public final SwitchCompat m17159O4() {
        return (SwitchCompat) this.f46758d.getValue();
    }

    @Override // p193e.p194a.p1011l.p1013c.p1014a.AbstractC16642b1
    /* renamed from: e2 */
    public void mo17158e2(boolean z) {
        SwitchCompat m17159O4 = m17159O4();
        l.d(m17159O4, "announceCallerIdSwitch");
        m17159O4.setChecked(z);
    }
}
