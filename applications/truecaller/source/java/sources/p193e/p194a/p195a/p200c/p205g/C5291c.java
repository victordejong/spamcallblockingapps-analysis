package p193e.p194a.p195a.p200c.p205g;

import android.content.Context;
import android.net.Uri;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.razorpay.AnalyticsConstants;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.avatar.AvatarXConfig;
import com.truecaller.messaging.data.types.ImInviteUserInfo;
import e.m.d.y.n;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1059m3.C18183r0;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p1129p5.p1137x0.C19351b;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import s1.a.l;
import s1.z.c.m;
/* renamed from: e.a.a.c.g.c */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/g/c.class */
public final class C5291c extends RecyclerView.AbstractC0317g<C5292a> {

    /* renamed from: a */
    public final List<ImInviteUserInfo> f18117a;

    /* renamed from: b */
    public final int f18118b;

    /* renamed from: c */
    public final String f18119c;

    /* renamed from: e.a.a.c.g.c$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/g/c$a.class */
    public static final class C5292a extends RecyclerView.AbstractC0313c0 {

        /* renamed from: d */
        public static final /* synthetic */ l[] f18120d = {C22128a.m8621g0(C5292a.class, "binding", "getBinding()Lcom/truecaller/databinding/ItemNewGroupParticipantXBinding;", 0)};

        /* renamed from: a */
        public final C8243a f18121a;

        /* renamed from: b */
        public final C19351b f18122b = new C19351b(new C5293a());

        /* renamed from: c */
        public final Context f18123c;

        /* renamed from: e.a.a.c.g.c$a$a */
        /* loaded from: classes5-dex2jar.jar:e/a/a/c/g/c$a$a.class */
        public static final class C5293a extends m implements s1.z.b.l<C5292a, C18183r0> {
            public C5293a() {
                super(1);
            }

            /* renamed from: d */
            public Object m33437d(Object obj) {
                RecyclerView.AbstractC0313c0 abstractC0313c0 = (RecyclerView.AbstractC0313c0) obj;
                s1.z.c.l.e(abstractC0313c0, "viewHolder");
                View view = abstractC0313c0.itemView;
                s1.z.c.l.d(view, "viewHolder.itemView");
                return C18183r0.m15458a(view);
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C5292a(View view) {
            super(view);
            s1.z.c.l.e(view, "itemView");
            Context context = view.getContext();
            s1.z.c.l.d(context, "itemView.context");
            C8243a c8243a = new C8243a(new C19235i0(context));
            this.f18121a = c8243a;
            Context context2 = view.getContext();
            s1.z.c.l.d(context2, "itemView.context");
            this.f18123c = context2;
            ImageView imageView = m33438N4().f51405c;
            s1.z.c.l.d(imageView, "binding.removeButton");
            C19286f.m13683U(imageView, false);
            m33438N4().f51403a.setPresenter(c8243a);
            m33438N4().f51404b.setTextAppearance(2131952178);
        }

        /* renamed from: N4 */
        public final C18183r0 m33438N4() {
            return (C18183r0) this.f18122b.m13418a(this, f18120d[0]);
        }
    }

    public C5291c(List<ImInviteUserInfo> list, int i, String str) {
        s1.z.c.l.e(list, "list");
        s1.z.c.l.e(str, "inviteKey");
        this.f18117a = list;
        this.f18118b = i;
        this.f18119c = str;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f18117a.size() == this.f18118b ? this.f18117a.size() : this.f18117a.size() + 1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(C5292a c5292a, int i) {
        C5292a c5292a2 = c5292a;
        s1.z.c.l.e(c5292a2, "holder");
        if (i == this.f18117a.size()) {
            AvatarXConfig avatarXConfig = new AvatarXConfig(null, null, this.f18119c, null, false, true, false, false, false, false, false, false, false, false, null, false, 65499);
            s1.z.c.l.e(avatarXConfig, DTBMetricsConfiguration.CONFIG_DIR);
            C8243a.m28739ok(c5292a2.f18121a, avatarXConfig, false, 2, null);
            int i2 = this.f18118b;
            int size = this.f18117a.size();
            TextView textView = c5292a2.m33438N4().f51404b;
            s1.z.c.l.d(textView, "binding.nameText");
            textView.setText(c5292a2.f18123c.getString(C2752R.string.StrMore, Integer.valueOf(i2 - size)));
            return;
        }
        ImInviteUserInfo imInviteUserInfo = this.f18117a.get(i);
        String str = imInviteUserInfo.f13346b;
        AvatarXConfig avatarXConfig2 = new AvatarXConfig(str != null ? Uri.parse(str) : null, null, null, n.t1(imInviteUserInfo.f13345a, false, 1), false, false, false, false, false, false, false, false, false, false, null, false, 65526);
        s1.z.c.l.e(avatarXConfig2, DTBMetricsConfiguration.CONFIG_DIR);
        C8243a.m28739ok(c5292a2.f18121a, avatarXConfig2, false, 2, null);
        String str2 = imInviteUserInfo.f13345a;
        s1.z.c.l.e(str2, AnalyticsConstants.NAME);
        TextView textView2 = c5292a2.m33438N4().f51404b;
        s1.z.c.l.d(textView2, "binding.nameText");
        textView2.setText(str2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public C5292a onCreateViewHolder(ViewGroup viewGroup, int i) {
        s1.z.c.l.e(viewGroup, "parent");
        LayoutInflater from = LayoutInflater.from(viewGroup.getContext());
        s1.z.c.l.d(from, "LayoutInflater.from(parent.context)");
        View inflate = C17422k.m16050u0(from, true).inflate(C2752R.layout.item_new_group_participant_x, viewGroup, false);
        s1.z.c.l.d(inflate, "inflater.inflate(R.layou…icipant_x, parent, false)");
        return new C5292a(inflate);
    }
}
