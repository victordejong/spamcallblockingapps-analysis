package p193e.p194a.p294b.p295a.p308b.p309i;

import android.graphics.Color;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.cardview.widget.CardView;
import androidx.recyclerview.widget.RecyclerView;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.truecaller.bizmon.C3478R;
import java.util.ArrayList;
import java.util.List;
import p193e.p194a.p294b.p355m.C8111x0;
import p193e.p194a.p294b.p355m.C8113y0;
import s1.u.i;
import s1.z.c.l;
/* renamed from: e.a.b.a.b.i.d */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/b/i/d.class */
public final class C7652d extends RecyclerView.AbstractC0317g<AbstractC7654f> {

    /* renamed from: a */
    public int f24026a;

    /* renamed from: b */
    public final List<String> f24027b;

    /* renamed from: c */
    public final AbstractC7653e f24028c;

    /* renamed from: d */
    public final List<String> f24029d;

    public C7652d(AbstractC7653e abstractC7653e, List list, int i) {
        List<String> list2;
        if ((i & 2) != 0) {
            C7651c c7651c = C7651c.f24025b;
            list2 = C7651c.f24024a;
        } else {
            list2 = null;
        }
        l.e(abstractC7653e, "colorListener");
        l.e(list2, "colorList");
        this.f24028c = abstractC7653e;
        this.f24029d = list2;
        List<String> a1 = i.a1(list2);
        ((ArrayList) a1).add(0, "");
        this.f24027b = a1;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f24027b.size();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemViewType(int i) {
        return i != 0 ? 1 : 2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(AbstractC7654f abstractC7654f, int i) {
        AbstractC7654f abstractC7654f2 = abstractC7654f;
        l.e(abstractC7654f2, "holder");
        boolean z = true;
        if (!(abstractC7654f2 instanceof C7650b)) {
            if (!(abstractC7654f2 instanceof C7656h)) {
                return;
            }
            C7656h c7656h = (C7656h) abstractC7654f2;
            boolean z2 = this.f24026a == 0;
            AbstractC7653e abstractC7653e = this.f24028c;
            l.e(abstractC7653e, "listener");
            C8113y0 c8113y0 = c7656h.f24031a;
            c8113y0.f25174b.setCardBackgroundColor(Color.parseColor("#F2F5F7"));
            FrameLayout frameLayout = c8113y0.f25175c;
            l.d(frameLayout, "colorDeleteRootView");
            frameLayout.setSelected(z2);
            c8113y0.f25175c.setOnClickListener(new View$OnClickListenerC7655g(z2, abstractC7653e));
            return;
        }
        C7650b c7650b = (C7650b) abstractC7654f2;
        String str = this.f24027b.get(i);
        if (this.f24026a != i) {
            z = false;
        }
        AbstractC7653e abstractC7653e2 = this.f24028c;
        l.e(str, RemoteMessageConst.Notification.COLOR);
        l.e(abstractC7653e2, "listener");
        C8111x0 c8111x0 = c7650b.f24023a;
        c8111x0.f25167b.setCardBackgroundColor(Color.parseColor(str));
        FrameLayout frameLayout2 = c8111x0.f25168c;
        l.d(frameLayout2, "colorRootView");
        frameLayout2.setSelected(z);
        c8111x0.f25168c.setOnClickListener(new View$OnClickListenerC7649a(str, z, abstractC7653e2));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public AbstractC7654f onCreateViewHolder(ViewGroup viewGroup, int i) {
        C7656h c7656h;
        l.e(viewGroup, "parent");
        if (i != 1) {
            View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(C3478R.layout.layout_biz_brand_delete_color, viewGroup, false);
            int i2 = C3478R.C3480id.colorDeleteCardView;
            CardView cardView = (CardView) inflate.findViewById(i2);
            if (cardView != null) {
                FrameLayout frameLayout = (FrameLayout) inflate;
                i2 = C3478R.C3480id.deleteIcon;
                ImageView imageView = (ImageView) inflate.findViewById(i2);
                if (imageView != null) {
                    C8113y0 c8113y0 = new C8113y0(frameLayout, cardView, frameLayout, imageView);
                    l.d(c8113y0, "LayoutBizBrandDeleteColo….context), parent, false)");
                    c7656h = new C7656h(c8113y0);
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
        }
        View inflate2 = LayoutInflater.from(viewGroup.getContext()).inflate(C3478R.layout.layout_biz_brand_color, viewGroup, false);
        int i3 = C3478R.C3480id.colorCardView;
        CardView cardView2 = (CardView) inflate2.findViewById(i3);
        if (cardView2 == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(inflate2.getResources().getResourceName(i3)));
        }
        FrameLayout frameLayout2 = (FrameLayout) inflate2;
        C8111x0 c8111x0 = new C8111x0(frameLayout2, cardView2, frameLayout2);
        l.d(c8111x0, "LayoutBizBrandColorBindi….context), parent, false)");
        c7656h = new C7650b(c8111x0);
        return c7656h;
    }
}
