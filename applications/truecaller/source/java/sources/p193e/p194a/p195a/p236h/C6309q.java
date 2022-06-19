package p193e.p194a.p195a.p236h;

import android.content.Context;
import android.view.MenuItem;
import android.view.View;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import p1727n3.p1734b.p1741e.p1742i.C25469g;
import p1727n3.p1734b.p1743f.C25508g0;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p1111o2.C18900h;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import s1.f0.r;
import s1.z.c.l;
/* renamed from: e.a.a.h.q */
/* loaded from: classes7-dex2jar.jar:e/a/a/h/q.class */
public final class C6309q extends RecyclerView.AbstractC0313c0 implements AbstractC6307o {

    /* renamed from: a */
    public final AvatarXView f21117a;

    /* renamed from: b */
    public final TextView f21118b;

    /* renamed from: c */
    public final TextView f21119c;

    /* renamed from: d */
    public final View f21120d;

    /* renamed from: e */
    public final View f21121e;

    /* renamed from: f */
    public final C8243a f21122f;

    /* renamed from: g */
    public final AbstractC18905m f21123g;

    /* renamed from: e.a.a.h.q$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/h/q$a.class */
    public static final class View$OnClickListenerC6310a implements View.OnClickListener {
        public View$OnClickListenerC6310a() {
            C6309q.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C6309q c6309q = C6309q.this;
            c6309q.f21123g.mo14327t(new C18900h("ItemEvent.ImGroupParticipantItemMvp.MESSAGE", c6309q, c6309q.f21120d, (Object) null, 8));
        }
    }

    /* renamed from: e.a.a.h.q$b */
    /* loaded from: classes7-dex2jar.jar:e/a/a/h/q$b.class */
    public static final class View$OnClickListenerC6311b implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ boolean f21126b;

        /* renamed from: c */
        public final /* synthetic */ boolean f21127c;

        /* renamed from: d */
        public final /* synthetic */ boolean f21128d;

        /* renamed from: e */
        public final /* synthetic */ boolean f21129e;

        /* renamed from: e.a.a.h.q$b$a */
        /* loaded from: classes7-dex2jar.jar:e/a/a/h/q$b$a.class */
        public static final class C6312a implements C25508g0.AbstractC25510b {
            public C6312a() {
                View$OnClickListenerC6311b.this = r4;
            }

            @Override // p1727n3.p1734b.p1743f.C25508g0.AbstractC25510b
            public final boolean onMenuItemClick(MenuItem menuItem) {
                String str;
                l.d(menuItem, "item");
                switch (menuItem.getItemId()) {
                    case C2752R.C2754id.action_dismiss_admin /* 2131361966 */:
                        str = "ItemEvent.ImGroupParticipantItemMvp.DISMISS_ADMIN";
                        break;
                    case C2752R.C2754id.action_make_admin /* 2131361983 */:
                        str = "ItemEvent.ImGroupParticipantItemMvp.MAKE_ADMIN";
                        break;
                    case C2752R.C2754id.action_remove /* 2131362010 */:
                        str = "ItemEvent.ImGroupParticipantItemMvp.REMOVE";
                        break;
                    case 2131362036:
                        str = "ItemEvent.ImGroupParticipantItemMvp.VIEW_PROFILE";
                        break;
                    default:
                        return false;
                }
                C6309q c6309q = C6309q.this;
                return c6309q.f21123g.mo14327t(new C18900h(str, c6309q, c6309q.f21121e, (Object) null, 8));
            }
        }

        public View$OnClickListenerC6311b(boolean z, boolean z2, boolean z3, boolean z4) {
            C6309q.this = r4;
            this.f21126b = z;
            this.f21127c = z2;
            this.f21128d = z3;
            this.f21129e = z4;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            C25508g0 c25508g0 = new C25508g0(C6309q.this.f21121e.getContext(), C6309q.this.f21121e, 8388613);
            c25508g0.m3362a(C2752R.C2756menu.im_group_participant);
            c25508g0.f71383e = new C6312a();
            C25469g c25469g = c25508g0.f71380b;
            MenuItem findItem = c25469g.findItem(C2752R.C2754id.action_remove);
            l.d(findItem, "findItem(R.id.action_remove)");
            findItem.setVisible(this.f21126b);
            MenuItem findItem2 = c25469g.findItem(C2752R.C2754id.action_make_admin);
            l.d(findItem2, "findItem(R.id.action_make_admin)");
            findItem2.setVisible(this.f21127c);
            MenuItem findItem3 = c25469g.findItem(C2752R.C2754id.action_dismiss_admin);
            l.d(findItem3, "findItem(R.id.action_dismiss_admin)");
            findItem3.setVisible(this.f21128d);
            MenuItem findItem4 = c25469g.findItem(2131362036);
            l.d(findItem4, "findItem(R.id.action_view_profile)");
            findItem4.setVisible(this.f21129e);
            c25508g0.f71382d.m3426f();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6309q(View view, AbstractC18905m abstractC18905m) {
        super(view);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC18905m, "eventReceiver");
        this.f21123g = abstractC18905m;
        View findViewById = view.findViewById(C2752R.C2754id.contact_photo);
        l.d(findViewById, "view.findViewById(R.id.contact_photo)");
        AvatarXView avatarXView = (AvatarXView) findViewById;
        this.f21117a = avatarXView;
        View findViewById2 = view.findViewById(2131364884);
        l.d(findViewById2, "view.findViewById(R.id.name_text)");
        this.f21118b = (TextView) findViewById2;
        View findViewById3 = view.findViewById(C2752R.C2754id.roles_text);
        l.d(findViewById3, "view.findViewById(R.id.roles_text)");
        this.f21119c = (TextView) findViewById3;
        View findViewById4 = view.findViewById(2131364795);
        l.d(findViewById4, "view.findViewById(R.id.message_button)");
        this.f21120d = findViewById4;
        View findViewById5 = view.findViewById(C2752R.C2754id.menu_button);
        l.d(findViewById5, "view.findViewById(R.id.menu_button)");
        this.f21121e = findViewById5;
        Context context = view.getContext();
        l.d(context, "view.context");
        C8243a c8243a = new C8243a(new C19235i0(context));
        avatarXView.setPresenter(c8243a);
        this.f21122f = c8243a;
        findViewById4.setOnClickListener(new View$OnClickListenerC6310a());
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6307o
    /* renamed from: L0 */
    public void mo31465L0(String str) {
        l.e(str, "roles");
        this.f21119c.setText(r.l(str));
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6307o
    /* renamed from: a */
    public void mo31464a(AvatarXConfig avatarXConfig) {
        l.e(avatarXConfig, DTBMetricsConfiguration.CONFIG_DIR);
        C8243a.m28739ok(this.f21122f, avatarXConfig, false, 2, null);
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6307o
    /* renamed from: s2 */
    public void mo31463s2(boolean z) {
        C19286f.m13683U(this.f21119c, z);
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6307o
    public void setName(String str) {
        l.e(str, AnalyticsConstants.NAME);
        this.f21118b.setText(str);
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6307o
    /* renamed from: y1 */
    public void mo31462y1(boolean z, boolean z2, boolean z3, boolean z4) {
        C19286f.m13683U(this.f21121e, z || z2 || z3 || z4);
        this.f21121e.setOnClickListener(new View$OnClickListenerC6311b(z, z2, z3, z4));
    }

    @Override // p193e.p194a.p195a.p236h.AbstractC6307o
    /* renamed from: y2 */
    public void mo31461y2(boolean z) {
        C19286f.m13683U(this.f21120d, z);
    }
}
