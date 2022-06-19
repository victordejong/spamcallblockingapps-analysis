package p193e.p194a.p195a.p224d;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1059m3.C18183r0;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1137x0.C19351b;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import p193e.p194a.p682e.p699c2.AbstractC13209t;
import s1.a.l;
import s1.z.c.m;
/* renamed from: e.a.a.d.d */
/* loaded from: classes7-dex2jar.jar:e/a/a/d/d.class */
public final class C5913d extends AbstractC13209t<C5914a> {

    /* renamed from: b */
    public final AbstractC5928p f19763b;

    /* renamed from: e.a.a.d.d$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/d/d$a.class */
    public static final class C5914a extends AbstractC13209t.C13211b implements AbstractC5927o {

        /* renamed from: d */
        public static final /* synthetic */ l[] f19764d = {C22128a.m8621g0(C5914a.class, "binding", "getBinding()Lcom/truecaller/databinding/ItemNewGroupParticipantXBinding;", 0)};

        /* renamed from: b */
        public final C8243a f19765b;

        /* renamed from: c */
        public final C19351b f19766c = new C19351b(new C5915a());

        /* renamed from: e.a.a.d.d$a$a */
        /* loaded from: classes7-dex2jar.jar:e/a/a/d/d$a$a.class */
        public static final class C5915a extends m implements s1.z.b.l<C5914a, C18183r0> {
            public C5915a() {
                super(1);
            }

            /* renamed from: d */
            public Object m32229d(Object obj) {
                RecyclerView.AbstractC0313c0 abstractC0313c0 = (RecyclerView.AbstractC0313c0) obj;
                s1.z.c.l.e(abstractC0313c0, "viewHolder");
                View view = abstractC0313c0.itemView;
                s1.z.c.l.d(view, "viewHolder.itemView");
                return C18183r0.m15458a(view);
            }
        }

        /* renamed from: e.a.a.d.d$a$b */
        /* loaded from: classes7-dex2jar.jar:e/a/a/d/d$a$b.class */
        public static final class View$OnClickListenerC5916b implements View.OnClickListener {

            /* renamed from: b */
            public final /* synthetic */ AbstractC5928p f19768b;

            public View$OnClickListenerC5916b(AbstractC5928p abstractC5928p) {
                C5914a.this = r4;
                this.f19768b = abstractC5928p;
            }

            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                AbstractC5928p abstractC5928p = this.f19768b;
                abstractC5928p.mo32192Mj(abstractC5928p.mo32186o().get(C5914a.this.getAdapterPosition()));
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5914a(View view, AbstractC5928p abstractC5928p) {
            super(view);
            s1.z.c.l.e(view, "itemView");
            s1.z.c.l.e(abstractC5928p, "mPresenter");
            Context context = view.getContext();
            s1.z.c.l.d(context, "itemView.context");
            C8243a c8243a = new C8243a(new C19235i0(context));
            this.f19765b = c8243a;
            m32230N4().f51405c.setOnClickListener(new View$OnClickListenerC5916b(abstractC5928p));
            m32230N4().f51403a.setPresenter(c8243a);
        }

        /* renamed from: N4 */
        public final C18183r0 m32230N4() {
            return (C18183r0) this.f19766c.m13418a(this, f19764d[0]);
        }

        @Override // p193e.p194a.p195a.p224d.AbstractC5927o
        /* renamed from: a */
        public void mo32198a(AvatarXConfig avatarXConfig) {
            s1.z.c.l.e(avatarXConfig, DTBMetricsConfiguration.CONFIG_DIR);
            C8243a.m28739ok(this.f19765b, avatarXConfig, false, 2, null);
        }

        @Override // p193e.p194a.p195a.p224d.AbstractC5927o
        public void setName(String str) {
            s1.z.c.l.e(str, AnalyticsConstants.NAME);
            TextView textView = m32230N4().f51404b;
            s1.z.c.l.d(textView, "binding.nameText");
            textView.setText(str);
        }
    }

    public C5913d(AbstractC5928p abstractC5928p) {
        s1.z.c.l.e(abstractC5928p, "presenter");
        this.f19763b = abstractC5928p;
    }

    @Override // p193e.p194a.p682e.p699c2.AbstractC13209t
    /* renamed from: e */
    public void mo10012e(C5914a c5914a, int i) {
        C5914a c5914a2 = c5914a;
        s1.z.c.l.e(c5914a2, "holder");
        ((C5922j) this.f19763b).mo10095G(c5914a2, i);
    }

    @Override // p193e.p194a.p682e.p699c2.AbstractC13209t
    /* renamed from: g */
    public C5914a mo10011g(ViewGroup viewGroup, int i) {
        s1.z.c.l.e(viewGroup, "parent");
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        s1.z.c.l.d(from, "LayoutInflater.from(parent.context)");
        View inflate = C17422k.m16050u0(from, true).inflate(C2752R.layout.item_new_group_participant_x, viewGroup, false);
        s1.z.c.l.d(inflate, "inflater.inflate(R.layou…icipant_x, parent, false)");
        return new C5914a(inflate, this.f19763b);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return ((C5922j) this.f19763b).mo10091Kb();
    }
}
