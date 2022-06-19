package p193e.p194a.p1221t.p1222a.p1223a;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;
import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import com.tenor.android.core.constant.MediaFormat;
import com.truecaller.android.truemoji.C2886R;
import com.truecaller.android.truemoji.PlaceholderImageView;
import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import s1.z.c.l;
/* renamed from: e.a.t.a.a.d */
/* loaded from: classes5-dex2jar.jar:e/a/t/a/a/d.class */
public final class C20244d extends RecyclerView.AbstractC0317g<C20263o> implements AbstractC20264p {

    /* renamed from: a */
    public final List<C20246f> f57000a = new ArrayList();

    /* renamed from: b */
    public final Map<String, Integer> f57001b = new LinkedHashMap();

    /* renamed from: c */
    public final AbstractC20245e f57002c;

    public C20244d(AbstractC20245e abstractC20245e) {
        l.e(abstractC20245e, "listener");
        this.f57002c = abstractC20245e;
    }

    @Override // p193e.p194a.p1221t.p1222a.p1223a.AbstractC20264p
    /* renamed from: c */
    public void mo11299c(String str, int i, int i2) {
        l.e(str, "id");
        this.f57001b.put(str, Integer.valueOf(i2));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f57000a.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(C20263o c20263o, int i) {
        C20263o c20263o2 = c20263o;
        l.e(c20263o2, "holder");
        C20246f c20246f = this.f57000a.get(i);
        if (this.f57001b.containsKey(c20246f.f57003a)) {
            Integer num = this.f57001b.get(c20246f.f57003a);
            if (num != null) {
                StaggeredGridLayoutManager.C0352c c0352c = new StaggeredGridLayoutManager.C0352c(-1, num.intValue());
                View view = c20263o2.itemView;
                l.d(view, "this.itemView");
                view.setLayoutParams(c0352c);
            }
        } else {
            l.e(this, "listener");
            c20263o2.f57038a = this;
            l.e(c20246f, MediaFormat.GIF);
            c20263o2.f57040c.getViewTreeObserver().addOnPreDrawListener(new ViewTreeObserver$OnPreDrawListenerC20262n(c20263o2, c20246f));
        }
        l.e(c20246f, MediaFormat.GIF);
        C17891a1.C17902k.m15664K1(c20263o2.f57040c.getContext()).m8964B(c20246f.f57004b.f56995a).m8427O((PlaceholderImageView) c20263o2.f57039b.getValue());
        ((PlaceholderImageView) c20263o2.f57039b.getValue()).setOnClickListener(new View$OnClickListenerC20261m(c20263o2, c20246f));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public C20263o onCreateViewHolder(ViewGroup viewGroup, int i) {
        l.e(viewGroup, "parent");
        return new C20263o(C19286f.m13668k(viewGroup, C2886R.layout.item_gif, false), this.f57002c);
    }
}
