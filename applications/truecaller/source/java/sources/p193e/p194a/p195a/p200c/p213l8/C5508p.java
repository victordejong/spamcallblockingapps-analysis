package p193e.p194a.p195a.p200c.p213l8;

import android.content.Context;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1059m3.C18175n0;
import p193e.p194a.p1129p5.p1137x0.C19351b;
import s1.a.l;
import s1.z.c.m;
/* renamed from: e.a.a.c.l8.p */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/l8/p.class */
public final class C5508p extends RecyclerView.AbstractC0313c0 {

    /* renamed from: d */
    public static final /* synthetic */ l[] f18668d = {C22128a.m8621g0(C5508p.class, "binding", "getBinding()Lcom/truecaller/databinding/GalleryItemBinding;", 0)};

    /* renamed from: a */
    public final C19351b f18669a = new C19351b(new C5509a());

    /* renamed from: b */
    public final Context f18670b;

    /* renamed from: c */
    public final int f18671c;

    /* renamed from: e.a.a.c.l8.p$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/l8/p$a.class */
    public static final class C5509a extends m implements s1.z.b.l<C5508p, C18175n0> {
        public C5509a() {
            super(1);
        }

        /* renamed from: d */
        public Object m33003d(Object obj) {
            RecyclerView.AbstractC0313c0 abstractC0313c0 = (RecyclerView.AbstractC0313c0) obj;
            s1.z.c.l.e(abstractC0313c0, "viewHolder");
            View view = abstractC0313c0.itemView;
            s1.z.c.l.d(view, "viewHolder.itemView");
            int i = 2131363981;
            ImageView imageView = (ImageView) view.findViewById(C2752R.C2754id.galleryImageViewItem);
            if (imageView != null) {
                i = 2131366757;
                TextView textView = (TextView) view.findViewById(C2752R.C2754id.videoDurationText);
                if (textView != null) {
                    return new C18175n0((ConstraintLayout) view, imageView, textView);
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i)));
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5508p(View view) {
        super(view);
        s1.z.c.l.e(view, ViewAction.VIEW);
        Context context = view.getContext();
        s1.z.c.l.d(context, "view.context");
        this.f18670b = context;
        this.f18671c = context.getResources().getDimensionPixelSize(C2752R.dimen.attachment_option_preview_radius);
    }

    /* renamed from: N4 */
    public final C18175n0 m33004N4() {
        return (C18175n0) this.f18669a.m13418a(this, f18668d[0]);
    }
}
