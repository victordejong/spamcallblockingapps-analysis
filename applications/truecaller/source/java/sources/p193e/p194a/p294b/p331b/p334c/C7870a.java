package p193e.p194a.p294b.p331b.p334c;

import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.bizmon.C3478R;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1137x0.C19351b;
import p193e.p194a.p294b.p355m.C8048a0;
import s1.a.l;
import s1.z.c.m;
/* renamed from: e.a.b.b.c.a */
/* loaded from: classes6-dex2jar.jar:e/a/b/b/c/a.class */
public final class C7870a extends RecyclerView.AbstractC0317g<View$OnClickListenerC7871a> {

    /* renamed from: a */
    public int f24444a;

    /* renamed from: b */
    public final AbstractC7880g f24445b;

    /* renamed from: e.a.b.b.c.a$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/b/c/a$a.class */
    public final class View$OnClickListenerC7871a extends RecyclerView.AbstractC0313c0 implements View.OnClickListener {

        /* renamed from: c */
        public static final /* synthetic */ l[] f24446c = {C22128a.m8621g0(View$OnClickListenerC7871a.class, "binding", "getBinding()Lcom/truecaller/bizmon/databinding/BusinessProfileRowColorBinding;", 0)};

        /* renamed from: a */
        public final C19351b f24447a;

        /* renamed from: b */
        public final /* synthetic */ C7870a f24448b;

        /* renamed from: e.a.b.b.c.a$a$a */
        /* loaded from: classes6-dex2jar.jar:e/a/b/b/c/a$a$a.class */
        public static final class C7872a extends m implements s1.z.b.l<View$OnClickListenerC7871a, C8048a0> {
            public C7872a() {
                super(1);
            }

            /* renamed from: d */
            public Object m29199d(Object obj) {
                RecyclerView.AbstractC0313c0 abstractC0313c0 = (RecyclerView.AbstractC0313c0) obj;
                s1.z.c.l.e(abstractC0313c0, "viewHolder");
                View view = abstractC0313c0.itemView;
                s1.z.c.l.d(view, "viewHolder.itemView");
                int i = C3478R.C3480id.colorCardView;
                CardView cardView = (CardView) view.findViewById(i);
                if (cardView != null) {
                    FrameLayout frameLayout = (FrameLayout) view;
                    return new C8048a0(frameLayout, cardView, frameLayout);
                }
                throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public View$OnClickListenerC7871a(C7870a c7870a, View view) {
            super(view);
            s1.z.c.l.e(view, "itemView");
            this.f24448b = c7870a;
            C19351b c19351b = new C19351b(new C7872a());
            this.f24447a = c19351b;
            ((C8048a0) c19351b.m13418a(this, f24446c[0])).f24784c.setOnClickListener(this);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            s1.z.c.l.e(view, ViewAction.VIEW);
            this.f24448b.f24445b.mo29195f6(C7873b.f24449a.get(getAdapterPosition()));
        }
    }

    public C7870a(AbstractC7880g abstractC7880g) {
        s1.z.c.l.e(abstractC7880g, "colorListener");
        this.f24445b = abstractC7880g;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return C7873b.f24449a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(View$OnClickListenerC7871a view$OnClickListenerC7871a, int i) {
        View$OnClickListenerC7871a view$OnClickListenerC7871a2 = view$OnClickListenerC7871a;
        s1.z.c.l.e(view$OnClickListenerC7871a2, "holder");
        String str = C7873b.f24449a.get(i);
        s1.z.c.l.e(str, RemoteMessageConst.Notification.COLOR);
        boolean z = false;
        C8048a0 c8048a0 = (C8048a0) view$OnClickListenerC7871a2.f24447a.m13418a(view$OnClickListenerC7871a2, View$OnClickListenerC7871a.f24446c[0]);
        c8048a0.f24783b.setCardBackgroundColor(Color.parseColor(str));
        FrameLayout frameLayout = c8048a0.f24784c;
        s1.z.c.l.d(frameLayout, "rootView");
        if (view$OnClickListenerC7871a2.f24448b.f24444a == view$OnClickListenerC7871a2.getAdapterPosition()) {
            z = true;
        }
        frameLayout.setSelected(z);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public View$OnClickListenerC7871a onCreateViewHolder(ViewGroup viewGroup, int i) {
        s1.z.c.l.e(viewGroup, "parent");
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(C3478R.layout.business_profile_row_color, viewGroup, false);
        s1.z.c.l.d(inflate, "LayoutInflater.from(pare…row_color, parent, false)");
        return new View$OnClickListenerC7871a(this, inflate);
    }
}
