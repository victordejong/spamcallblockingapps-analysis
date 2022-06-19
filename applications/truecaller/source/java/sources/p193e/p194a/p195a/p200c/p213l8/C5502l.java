package p193e.p194a.p195a.p200c.p213l8;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1059m3.C18177o0;
import p193e.p194a.p1129p5.p1137x0.C19351b;
import s1.a.l;
import s1.z.c.m;
/* renamed from: e.a.a.c.l8.l */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/l8/l.class */
public final class C5502l extends RecyclerView.AbstractC0313c0 {

    /* renamed from: f */
    public static final /* synthetic */ l[] f18657f = {C22128a.m8621g0(C5502l.class, "binding", "getBinding()Lcom/truecaller/databinding/GalleryPreviewRequestPermissionBinding;", 0)};

    /* renamed from: a */
    public final C19351b f18658a = new C19351b(new C5503a());

    /* renamed from: b */
    public final Context f18659b;

    /* renamed from: c */
    public final int f18660c;

    /* renamed from: d */
    public final int f18661d;

    /* renamed from: e */
    public final int f18662e;

    /* renamed from: e.a.a.c.l8.l$a */
    /* loaded from: classes5-dex2jar.jar:e/a/a/c/l8/l$a.class */
    public static final class C5503a extends m implements s1.z.b.l<C5502l, C18177o0> {
        public C5503a() {
            super(1);
        }

        /* renamed from: d */
        public Object m33006d(Object obj) {
            RecyclerView.AbstractC0313c0 abstractC0313c0 = (RecyclerView.AbstractC0313c0) obj;
            s1.z.c.l.e(abstractC0313c0, "viewHolder");
            View view = abstractC0313c0.itemView;
            s1.z.c.l.d(view, "viewHolder.itemView");
            AppCompatTextView appCompatTextView = (AppCompatTextView) view;
            return new C18177o0(appCompatTextView, appCompatTextView);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C5502l(View view, boolean z) {
        super(view);
        s1.z.c.l.e(view, ViewAction.VIEW);
        Context context = view.getContext();
        s1.z.c.l.d(context, "view.context");
        this.f18659b = context;
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(2131166432);
        this.f18660c = dimensionPixelSize;
        int dimensionPixelSize2 = context.getResources().getDimensionPixelSize(C2752R.dimen.attachment_option_preview_width) + dimensionPixelSize;
        this.f18661d = dimensionPixelSize2;
        Resources system = Resources.getSystem();
        s1.z.c.l.d(system, "Resources.getSystem()");
        this.f18662e = (system.getDisplayMetrics().widthPixels - (dimensionPixelSize * 2)) - (!z ? 0 : dimensionPixelSize2);
    }

    /* renamed from: N4 */
    public final C18177o0 m33007N4() {
        return (C18177o0) this.f18658a.m13418a(this, f18657f[0]);
    }
}
