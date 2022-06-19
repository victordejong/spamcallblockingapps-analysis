package p193e.p194a.p1080o.p1097b.p1098a.p1099a;

import android.content.Context;
import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.contextcall.C3771R;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p372b0.p417k.C8502h;
import s1.g;
import s1.h;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.o.b.a.a.a */
/* loaded from: classes8-dex2jar.jar:e/a/o/b/a/a/a.class */
public final class C18665a extends RecyclerView.AbstractC0328n {

    /* renamed from: a */
    public final g f52501a;

    /* renamed from: b */
    public final g f52502b;

    /* renamed from: c */
    public final Context f52503c;

    /* renamed from: e.a.o.b.a.a.a$a */
    /* loaded from: classes6-dex2jar.jar:e/a/o/b/a/a/a$a.class */
    public static final class C18666a extends m implements a<Integer> {

        /* renamed from: b */
        public final /* synthetic */ int f52504b;

        /* renamed from: c */
        public final /* synthetic */ Object f52505c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C18666a(int i, Object obj) {
            super(0);
            this.f52504b = i;
            this.f52505c = obj;
        }

        public final Object invoke() {
            int i = this.f52504b;
            if (i != 0) {
                if (i != 1) {
                    throw null;
                }
                return Integer.valueOf(((C18665a) this.f52505c).f52503c.getResources().getDimensionPixelSize(C3771R.dimen.context_call_double_spacing));
            }
            return Integer.valueOf(((C18665a) this.f52505c).f52503c.getResources().getDimensionPixelSize(C3771R.dimen.context_call_one_spacing));
        }
    }

    public C18665a(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f52503c = context;
        h hVar = h.c;
        this.f52501a = C25225a.m3982O1(hVar, new C18666a(0, this));
        this.f52502b = C25225a.m3982O1(hVar, new C18666a(1, this));
    }

    /* renamed from: d */
    public final int m14650d() {
        return ((Number) this.f52501a.getValue()).intValue();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0328n
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, RecyclerView.C0347z c0347z) {
        l.e(rect, "outRect");
        l.e(view, ViewAction.VIEW);
        l.e(recyclerView, "parent");
        l.e(c0347z, "state");
        super.getItemOffsets(rect, view, recyclerView, c0347z);
        if (c0347z.m42710b() <= 0) {
            return;
        }
        if (recyclerView.getChildAdapterPosition(view) != 0) {
            if (C8502h.m28437a()) {
                rect.left = m14650d();
            } else {
                rect.right = m14650d();
            }
        } else if (C8502h.m28437a()) {
            rect.right = ((Number) this.f52502b.getValue()).intValue();
            rect.left = m14650d();
        } else {
            rect.left = ((Number) this.f52502b.getValue()).intValue();
            rect.right = m14650d();
        }
    }
}
