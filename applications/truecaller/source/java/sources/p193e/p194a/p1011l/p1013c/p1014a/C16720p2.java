package p193e.p194a.p1011l.p1013c.p1014a;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.C2752R;
import com.truecaller.common.p156ui.avatar.AvatarXView;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import s1.a.l;
import s1.b0.b;
import s1.b0.c;
import s1.g;
import s1.u.s;
/* renamed from: e.a.l.c.a.p2 */
/* loaded from: classes12-dex2jar.jar:e/a/l/c/a/p2.class */
public final class C16720p2 extends RecyclerView.AbstractC0317g<C16722b> {

    /* renamed from: b */
    public static final /* synthetic */ l[] f46886b = {C22128a.m8629e0(C16720p2.class, "items", "getItems()Ljava/util/List;", 0)};

    /* renamed from: a */
    public final c f46887a;

    /* renamed from: e.a.l.c.a.p2$a */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/a/p2$a.class */
    public static final class C16721a extends b<List<? extends C16716o2>> {

        /* renamed from: b */
        public final /* synthetic */ C16720p2 f46888b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16721a(Object obj, Object obj2, C16720p2 c16720p2) {
            super(obj2);
            this.f46888b = c16720p2;
        }

        /* renamed from: b */
        public void m17074b(l<?> lVar, List<? extends C16716o2> list, List<? extends C16716o2> list2) {
            s1.z.c.l.e(lVar, "property");
            this.f46888b.notifyDataSetChanged();
        }
    }

    /* renamed from: e.a.l.c.a.p2$b */
    /* loaded from: classes12-dex2jar.jar:e/a/l/c/a/p2$b.class */
    public static final class C16722b extends RecyclerView.AbstractC0313c0 {

        /* renamed from: a */
        public final C8243a f46889a;

        /* renamed from: b */
        public final g f46890b;

        /* renamed from: c */
        public final g f46891c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16722b(View view) {
            super(view);
            s1.z.c.l.e(view, ViewAction.VIEW);
            Context context = view.getContext();
            s1.z.c.l.d(context, "view.context");
            C8243a c8243a = new C8243a(new C19235i0(context));
            this.f46889a = c8243a;
            this.f46890b = C19286f.m13660s(view, 2131364874);
            this.f46891c = C19286f.m13660s(view, 2131366265);
            ((AvatarXView) view.findViewById(2131362231)).setPresenter(c8243a);
        }
    }

    public C16720p2() {
        s sVar = s.a;
        this.f46887a = new C16721a(sVar, sVar, this);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return ((List) this.f46887a.A1(this, f46886b[0])).size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(C16722b c16722b, int i) {
        C16722b c16722b2 = c16722b;
        s1.z.c.l.e(c16722b2, "holder");
        C16716o2 c16716o2 = (C16716o2) ((List) this.f46887a.A1(this, f46886b[0])).get(i);
        C8243a.m28739ok(c16722b2.f46889a, c16716o2.f46876a, false, 2, null);
        ((TextView) c16722b2.f46890b.getValue()).setText(c16716o2.f46877b);
        ((TextView) c16722b2.f46891c.getValue()).setText(c16716o2.f46878c);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public C16722b onCreateViewHolder(ViewGroup viewGroup, int i) {
        s1.z.c.l.e(viewGroup, "parent");
        return new C16722b(LayoutInflater.from(viewGroup.getContext()).inflate(C2752R.layout.layout_tcx_premium_review, viewGroup, false));
    }
}
