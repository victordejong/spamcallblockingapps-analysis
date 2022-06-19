package p193e.p194a.p294b.p295a.p312c.p313a.p315c0;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.bizmon.C3478R;
import java.util.List;
import p193e.p194a.p1066n.C18334g0;
import p193e.p194a.p294b.p355m.C8115z0;
import p193e.p194a.p372b0.p426p.C8551c;
import s1.s;
import s1.z.b.l;
/* renamed from: e.a.b.a.c.a.c0.b */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/c/a/c0/b.class */
public final class C7699b extends RecyclerView.AbstractC0317g<C7701d> {

    /* renamed from: a */
    public long f24094a;

    /* renamed from: b */
    public List<C8551c> f24095b;

    /* renamed from: c */
    public l<? super C8551c, s> f24096c;

    public C7699b(List<C8551c> list, l<? super C8551c, s> lVar) {
        s1.z.c.l.e(list, "categories");
        s1.z.c.l.e(lVar, "listener");
        this.f24095b = list;
        this.f24096c = lVar;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f24095b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(C7701d c7701d, int i) {
        C7701d c7701d2 = c7701d;
        s1.z.c.l.e(c7701d2, "holder");
        C8551c c8551c = this.f24095b.get(i);
        C7698a c7698a = new C7698a(this);
        s1.z.c.l.e(c8551c, RemoteMessageConst.Notification.TAG);
        s1.z.c.l.e(c7698a, "listener");
        C8115z0 c8115z0 = c7701d2.f24099a;
        ImageView imageView = c8115z0.f25180b;
        s1.z.c.l.d(imageView, "categoryIcon");
        C18334g0.m15230f0(c8551c, imageView);
        TextView textView = c8115z0.f25181c;
        s1.z.c.l.d(textView, "categoryText");
        textView.setText(c8551c.f26351b);
        c8115z0.f25179a.setOnClickListener(new View$OnClickListenerC7700c(c8551c, c7698a));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public C7701d onCreateViewHolder(ViewGroup viewGroup, int i) {
        s1.z.c.l.e(viewGroup, "parent");
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(C3478R.layout.layout_biz_category, viewGroup, false);
        int i2 = C3478R.C3480id.categoryIcon;
        ImageView imageView = (ImageView) inflate.findViewById(i2);
        if (imageView != null) {
            i2 = C3478R.C3480id.categoryText;
            TextView textView = (TextView) inflate.findViewById(i2);
            if (textView != null) {
                i2 = C3478R.C3480id.iconLayout;
                FrameLayout frameLayout = (FrameLayout) inflate.findViewById(i2);
                if (frameLayout != null) {
                    C8115z0 c8115z0 = new C8115z0((ConstraintLayout) inflate, imageView, textView, frameLayout);
                    s1.z.c.l.d(c8115z0, "LayoutBizCategoryBinding….context), parent, false)");
                    return new C7701d(c8115z0);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
    }
}
