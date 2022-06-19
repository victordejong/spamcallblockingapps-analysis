package p193e.p194a.p195a.p200c.p213l8;

import android.content.Context;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1059m3.C18179p0;
import p193e.p194a.p1129p5.p1137x0.C19351b;
import s1.a.l;
import s1.z.c.m;
/* renamed from: e.a.a.c.l8.o */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/l8/o.class */
public final class C5506o extends RecyclerView.AbstractC0313c0 {

    /* renamed from: c */
    public static final /* synthetic */ l[] f18665c = {C22128a.m8621g0(C5506o.class, "binding", "getBinding()Lcom/truecaller/databinding/GalleryTextItemBinding;", 0)};

    /* renamed from: a */
    public final Context f18666a;

    /* renamed from: b */
    public final C19351b f18667b = new C19351b(new C5507a());

    /* renamed from: e.a.a.c.l8.o$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/l8/o$a.class */
    public static final class C5507a extends m implements s1.z.b.l<C5506o, C18179p0> {
        public C5507a() {
            super(1);
        }

        /* renamed from: d */
        public Object m33005d(Object obj) {
            RecyclerView.AbstractC0313c0 abstractC0313c0 = (RecyclerView.AbstractC0313c0) obj;
            s1.z.c.l.e(abstractC0313c0, "viewHolder");
            View view = abstractC0313c0.itemView;
            s1.z.c.l.d(view, "viewHolder.itemView");
            AppCompatTextView appCompatTextView = (AppCompatTextView) view;
            return new C18179p0(appCompatTextView, appCompatTextView);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5506o(View view) {
        super(view);
        s1.z.c.l.e(view, ViewAction.VIEW);
        Context context = view.getContext();
        s1.z.c.l.d(context, "view.context");
        this.f18666a = context;
    }
}
