package p193e.p194a.p294b.p331b.p334c;

import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.bizmon.C3478R;
import java.util.ArrayList;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1451f.p1452a.C22234h;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.p1137x0.C19351b;
import p193e.p194a.p1406z3.C21852d;
import p193e.p194a.p294b.p355m.C8054c0;
import s1.a.l;
import s1.z.c.m;
/* renamed from: e.a.b.b.c.c */
/* loaded from: classes6-dex2jar.jar:e/a/b/b/c/c.class */
public final class C7874c extends RecyclerView.AbstractC0317g<View$OnClickListenerC7875a> {

    /* renamed from: a */
    public final List<String> f24450a = new ArrayList();

    /* renamed from: b */
    public final AbstractC7902t f24451b;

    /* renamed from: e.a.b.b.c.c$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/b/c/c$a.class */
    public final class View$OnClickListenerC7875a extends RecyclerView.AbstractC0313c0 implements View.OnClickListener {

        /* renamed from: c */
        public static final /* synthetic */ l[] f24452c = {C22128a.m8621g0(View$OnClickListenerC7875a.class, "binding", "getBinding()Lcom/truecaller/bizmon/databinding/BusinessProfileRowPictureBinding;", 0)};

        /* renamed from: a */
        public final C19351b f24453a = new C19351b(new C7876a());

        /* renamed from: b */
        public final /* synthetic */ C7874c f24454b;

        /* renamed from: e.a.b.b.c.c$a$a */
        /* loaded from: classes6-dex2jar.jar:e/a/b/b/c/c$a$a.class */
        public static final class C7876a extends m implements s1.z.b.l<View$OnClickListenerC7875a, C8054c0> {
            public C7876a() {
                super(1);
            }

            /* renamed from: d */
            public Object m29197d(Object obj) {
                RecyclerView.AbstractC0313c0 abstractC0313c0 = (RecyclerView.AbstractC0313c0) obj;
                s1.z.c.l.e(abstractC0313c0, "viewHolder");
                View view = abstractC0313c0.itemView;
                s1.z.c.l.d(view, "viewHolder.itemView");
                int i = C3478R.C3480id.pictureImageView;
                ImageView imageView = (ImageView) view.findViewById(i);
                if (imageView != null) {
                    CardView cardView = (CardView) view;
                    return new C8054c0(cardView, imageView, cardView);
                }
                throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public View$OnClickListenerC7875a(C7874c c7874c, View view) {
            super(view);
            s1.z.c.l.e(view, "itemView");
            this.f24454b = c7874c;
            m29198N4().f24827b.setOnClickListener(this);
        }

        /* renamed from: N4 */
        public final C8054c0 m29198N4() {
            return (C8054c0) this.f24453a.m13418a(this, f24452c[0]);
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            s1.z.c.l.e(view, ViewAction.VIEW);
            if (this.f24454b.f24450a.get(getAdapterPosition()).length() == 0) {
                this.f24454b.f24451b.mo29134h9(getAdapterPosition());
                return;
            }
            C7874c c7874c = this.f24454b;
            c7874c.f24451b.mo29135S(c7874c.f24450a.get(getAdapterPosition()));
        }
    }

    public C7874c(AbstractC7902t abstractC7902t) {
        s1.z.c.l.e(abstractC7902t, "pictureListener");
        this.f24451b = abstractC7902t;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return 3;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(View$OnClickListenerC7875a view$OnClickListenerC7875a, int i) {
        View$OnClickListenerC7875a view$OnClickListenerC7875a2 = view$OnClickListenerC7875a;
        s1.z.c.l.e(view$OnClickListenerC7875a2, "holder");
        String str = this.f24450a.get(i);
        s1.z.c.l.e(str, "picture");
        if (!(str.length() > 0)) {
            view$OnClickListenerC7875a2.m29198N4().f24826a.setImageResource(C3478R.C3479drawable.business_profile_ic_add_picture_gray);
            return;
        }
        ImageView imageView = view$OnClickListenerC7875a2.m29198N4().f24826a;
        s1.z.c.l.d(imageView, "binding.pictureImageView");
        C22234h mo8414k = C17891a1.C17902k.m15664K1(imageView.getContext()).mo8414k();
        mo8414k.mo8420V(str);
        s1.z.c.l.d(((C21852d) mo8414k).mo8104c().m8427O(view$OnClickListenerC7875a2.m29198N4().f24826a), "GlideApp.with(binding.pi…binding.pictureImageView)");
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public View$OnClickListenerC7875a onCreateViewHolder(ViewGroup viewGroup, int i) {
        View inflate = C22128a.m8628e1(viewGroup, "parent").inflate(C3478R.layout.business_profile_row_picture, viewGroup, false);
        s1.z.c.l.d(inflate, ViewAction.VIEW);
        return new View$OnClickListenerC7875a(this, inflate);
    }
}
