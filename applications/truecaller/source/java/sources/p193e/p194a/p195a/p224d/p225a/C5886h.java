package p193e.p194a.p195a.p224d.p225a;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
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
/* renamed from: e.a.a.d.a.h */
/* loaded from: classes7-dex2jar.jar:e/a/a/d/a/h.class */
public final class C5886h extends AbstractC13209t<C5887a> {

    /* renamed from: b */
    public final AbstractC5883e f19660b;

    /* renamed from: e.a.a.d.a.h$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/d/a/h$a.class */
    public static final class C5887a extends AbstractC13209t.C13211b implements AbstractC5882d {

        /* renamed from: d */
        public static final /* synthetic */ l[] f19661d = {C22128a.m8621g0(C5887a.class, "binding", "getBinding()Lcom/truecaller/databinding/ItemNewGroupParticipantXBinding;", 0)};

        /* renamed from: b */
        public final C19351b f19662b = new C19351b(new C5888a());

        /* renamed from: c */
        public final C8243a f19663c;

        /* renamed from: e.a.a.d.a.h$a$a */
        /* loaded from: classes7-dex2jar.jar:e/a/a/d/a/h$a$a.class */
        public static final class C5888a extends m implements s1.z.b.l<C5887a, C18183r0> {
            public C5888a() {
                super(1);
            }

            /* renamed from: d */
            public Object m32282d(Object obj) {
                RecyclerView.AbstractC0313c0 abstractC0313c0 = (RecyclerView.AbstractC0313c0) obj;
                s1.z.c.l.e(abstractC0313c0, "viewHolder");
                View view = abstractC0313c0.itemView;
                s1.z.c.l.d(view, "viewHolder.itemView");
                return C18183r0.m15458a(view);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5887a(View view) {
            super(view);
            s1.z.c.l.e(view, "itemView");
            Context context = view.getContext();
            s1.z.c.l.d(context, "itemView.context");
            C8243a c8243a = new C8243a(new C19235i0(context));
            this.f19663c = c8243a;
            ImageView imageView = m32284N4().f51405c;
            s1.z.c.l.d(imageView, "binding.removeButton");
            imageView.setVisibility(8);
            m32284N4().f51403a.setPresenter(c8243a);
        }

        /* renamed from: N4 */
        public final C18183r0 m32284N4() {
            return (C18183r0) this.f19662b.m13418a(this, f19661d[0]);
        }

        @Override // p193e.p194a.p195a.p224d.p225a.AbstractC5882d
        /* renamed from: a */
        public void mo32283a(AvatarXConfig avatarXConfig) {
            s1.z.c.l.e(avatarXConfig, DTBMetricsConfiguration.CONFIG_DIR);
            C8243a.m28739ok(this.f19663c, avatarXConfig, false, 2, null);
        }

        @Override // p193e.p194a.p195a.p224d.p225a.AbstractC5882d
        public void setName(String str) {
            s1.z.c.l.e(str, AnalyticsConstants.NAME);
            TextView textView = m32284N4().f51404b;
            s1.z.c.l.d(textView, "binding.nameText");
            textView.setText(str);
        }
    }

    public C5886h(AbstractC5883e abstractC5883e) {
        s1.z.c.l.e(abstractC5883e, "presenter");
        this.f19660b = abstractC5883e;
    }

    @Override // p193e.p194a.p682e.p699c2.AbstractC13209t
    /* renamed from: e */
    public void mo10012e(C5887a c5887a, int i) {
        C5887a c5887a2 = c5887a;
        s1.z.c.l.e(c5887a2, "holder");
        ((C5889i) this.f19660b).mo10095G(c5887a2, i);
    }

    @Override // p193e.p194a.p682e.p699c2.AbstractC13209t
    /* renamed from: g */
    public C5887a mo10011g(ViewGroup viewGroup, int i) {
        s1.z.c.l.e(viewGroup, "parent");
        return new C5887a(C17422k.m16100R(viewGroup, C2752R.layout.item_new_group_participant_x, false, true));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return ((C5889i) this.f19660b).mo10091Kb();
    }
}
