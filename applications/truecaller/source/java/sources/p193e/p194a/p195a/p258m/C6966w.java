package p193e.p194a.p195a.p258m;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.mopub.common.Constants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.common.p156ui.banner.BannerViewX;
import e.f.a.r.k.c;
import p193e.p1451f.p1452a.C22234h;
import p193e.p1451f.p1452a.p1476r.p1478l.AbstractC22604d;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1111o2.AbstractC18905m;
import p193e.p194a.p1406z3.C21852d;
import p193e.p194a.p437c.p578p.C10480a;
import s1.z.c.l;
/* renamed from: e.a.a.m.w */
/* loaded from: classes7-dex2jar.jar:e/a/a/m/w.class */
public final class C6966w extends RecyclerView.AbstractC0313c0 implements AbstractC6954t1 {

    /* renamed from: a */
    public final BannerViewX f22567a;

    /* renamed from: b */
    public final View f22568b;

    /* renamed from: e.a.a.m.w$a */
    /* loaded from: classes7-dex2jar.jar:e/a/a/m/w$a.class */
    public static final class C6967a extends c<Drawable> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C6967a(int i, int i2, int i3, int i4) {
            super(i3, i4);
            C6966w.this = r5;
        }

        /* renamed from: d */
        public void m30345d(Drawable drawable) {
            C6966w.this.f22567a.setImage(drawable);
        }

        /* renamed from: e */
        public void m30344e(Object obj, AbstractC22604d abstractC22604d) {
            Drawable drawable = (Drawable) obj;
            l.e(drawable, Constants.VAST_RESOURCE);
            C6966w.this.f22567a.setImage(drawable);
        }

        /* renamed from: i */
        public void m30343i(Drawable drawable) {
            C6966w.this.f22567a.setImage(drawable);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C6966w(View view, AbstractC18905m abstractC18905m) {
        super(view);
        l.e(view, ViewAction.VIEW);
        l.e(abstractC18905m, "eventReceiver");
        this.f22568b = view;
        this.f22567a = C10480a.m25911q(view, abstractC18905m, this, "ItemEvent.ACTION_OPEN_PREMIUM", "ItemEvent.ACTION_DISMISS_PREMIUM");
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6954t1
    /* renamed from: H3 */
    public void mo30348H3(int i) {
        this.f22567a.setImageResource(i);
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6954t1
    /* renamed from: I3 */
    public void mo30347I3(String str, int i) {
        if (str == null) {
            this.f22567a.setImageResource(i);
            return;
        }
        Context context = this.f22568b.getContext();
        l.d(context, "view.context");
        int dimensionPixelSize = context.getResources().getDimensionPixelSize(2131165353);
        Context context2 = this.f22568b.getContext();
        l.d(context2, "view.context");
        int dimensionPixelSize2 = context2.getResources().getDimensionPixelSize(2131165352);
        C22234h mo8414k = C17891a1.C17902k.m15661L1(this.f22568b).mo8414k();
        mo8414k.mo8420V(str);
        ((C21852d) mo8414k).mo8097k(i).mo8087u(i).mo8104c().m8429M(new C6967a(dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize, dimensionPixelSize2));
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6954t1
    /* renamed from: k */
    public void mo30346k(String str) {
        l.e(str, "text");
        this.f22567a.setSubtitle(str);
    }

    @Override // p193e.p194a.p195a.p258m.AbstractC6954t1
    public void setTitle(String str) {
        l.e(str, "text");
        this.f22567a.setTitle(str);
    }
}
