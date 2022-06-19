package p193e.p194a.p294b.p295a.p312c.p313a.p315c0;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.bizmon.C3478R;
import java.util.List;
import p193e.p194a.p294b.p355m.C8055c1;
import p193e.p194a.p372b0.p426p.C8551c;
import s1.s;
import s1.z.b.l;
/* renamed from: e.a.b.a.c.a.c0.e */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/c0/e.class */
public final class C7702e extends RecyclerView.AbstractC0317g<C7704g> {

    /* renamed from: a */
    public List<C8551c> f24100a;

    /* renamed from: b */
    public final l<Long, s> f24101b;

    /* JADX WARN: Multi-variable type inference failed */
    public C7702e(List<C8551c> list, l<? super Long, s> lVar) {
        s1.z.c.l.e(list, "categories");
        s1.z.c.l.e(lVar, "listener");
        this.f24100a = list;
        this.f24101b = lVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f24100a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(C7704g c7704g, int i) {
        C7704g c7704g2 = c7704g;
        s1.z.c.l.e(c7704g2, "holder");
        C8551c c8551c = this.f24100a.get(i);
        l<Long, s> lVar = this.f24101b;
        s1.z.c.l.e(c8551c, "category");
        s1.z.c.l.e(lVar, "listener");
        C8055c1 c8055c1 = c7704g2.f24104a;
        TextView textView = c8055c1.f24829b;
        s1.z.c.l.d(textView, "categoryText");
        textView.setText(c8551c.f26351b);
        c8055c1.f24828a.setOnClickListener(new View$OnClickListenerC7703f(c8551c, lVar));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public C7704g onCreateViewHolder(ViewGroup viewGroup, int i) {
        s1.z.c.l.e(viewGroup, "parent");
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(C3478R.layout.layout_biz_subcategory, viewGroup, false);
        int i2 = C3478R.C3480id.categoryText;
        TextView textView = (TextView) inflate.findViewById(i2);
        if (textView != null) {
            C8055c1 c8055c1 = new C8055c1((ConstraintLayout) inflate, textView);
            s1.z.c.l.d(c8055c1, "LayoutBizSubcategoryBind….context), parent, false)");
            return new C7704g(c8055c1);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
    }
}
