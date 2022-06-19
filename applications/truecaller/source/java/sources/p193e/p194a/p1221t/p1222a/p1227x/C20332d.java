package p193e.p194a.p1221t.p1222a.p1227x;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import com.tenor.android.core.constant.ViewAction;
import com.truecaller.android.truemoji.C2886R;
import java.util.List;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1221t.p1222a.AbstractC20300o;
import p193e.p194a.p1221t.p1222a.p1224u.C20309d;
import s1.u.s;
import s1.z.c.l;
/* renamed from: e.a.t.a.x.d */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/x/d.class */
public final class C20332d extends RecyclerView.AbstractC0317g<C20341i> {

    /* renamed from: a */
    public List<C20309d> f57158a = s.a;

    /* renamed from: b */
    public final AbstractC20300o f57159b;

    public C20332d(AbstractC20300o abstractC20300o) {
        l.e(abstractC20300o, "clickListener");
        this.f57159b = abstractC20300o;
        setHasStableIds(true);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f57158a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public long getItemId(int i) {
        return this.f57158a.get(i).hashCode();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(C20341i c20341i, int i) {
        C20341i c20341i2 = c20341i;
        l.e(c20341i2, "holder");
        c20341i2.f57178a.setEmoji(this.f57158a.get(i));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public C20341i onCreateViewHolder(ViewGroup viewGroup, int i) {
        View inflate = C22128a.m8628e1(viewGroup, "parent").inflate(C2886R.layout.item_emoji_search, viewGroup, false);
        l.d(inflate, ViewAction.VIEW);
        C20341i c20341i = new C20341i(inflate);
        c20341i.f57178a.setOnClickListener(new View$OnClickListenerC20330b(this, c20341i));
        c20341i.f57178a.setOnLongClickListener(new View$OnLongClickListenerC20331c(this, c20341i));
        return c20341i;
    }
}
