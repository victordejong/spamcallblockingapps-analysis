package p193e.p194a.p294b.p295a.p296a.p297a.p300k0;

import android.view.View;
import android.widget.ImageView;
import androidx.recyclerview.widget.RecyclerView;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.p1137x0.C19351b;
import p193e.p194a.p294b.p355m.C8049a1;
import s1.a.l;
import s1.z.c.m;
/* renamed from: e.a.b.a.a.a.k0.c */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/k0/c.class */
public final class C7566c extends RecyclerView.AbstractC0313c0 {

    /* renamed from: b */
    public static final /* synthetic */ l[] f23887b = {C22128a.m8621g0(C7566c.class, "binding", "getBinding()Lcom/truecaller/bizmon/databinding/LayoutBizImageBinding;", 0)};

    /* renamed from: a */
    public final C19351b f23888a = new C19351b(new C7567a());

    /* renamed from: e.a.b.a.a.a.k0.c$a */
    /* loaded from: classes6-dex2jar.jar:e/a/b/a/a/a/k0/c$a.class */
    public static final class C7567a extends m implements s1.z.b.l<C7566c, C8049a1> {
        public C7567a() {
            super(1);
        }

        /* renamed from: d */
        public Object m29512d(Object obj) {
            RecyclerView.AbstractC0313c0 abstractC0313c0 = (RecyclerView.AbstractC0313c0) obj;
            s1.z.c.l.e(abstractC0313c0, "viewHolder");
            View view = abstractC0313c0.itemView;
            s1.z.c.l.d(view, "viewHolder.itemView");
            ImageView imageView = (ImageView) view;
            return new C8049a1(imageView, imageView);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C7566c(View view) {
        super(view);
        s1.z.c.l.e(view, "itemView");
    }
}
