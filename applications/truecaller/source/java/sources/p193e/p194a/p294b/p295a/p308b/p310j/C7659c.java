package p193e.p194a.p294b.p295a.p308b.p310j;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.truecaller.bizmon.C3478R;
import p1727n3.p1744b0.p1745a.C25570b;
import p1727n3.p1744b0.p1745a.C25586h;
import p193e.p1451f.p1452a.ComponentCallbacks2C22236i;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p294b.p355m.C8061e1;
import p193e.p194a.p294b.p355m.C8109w0;
import s1.s;
import s1.z.b.l;
/* renamed from: e.a.b.a.b.j.c */
/* loaded from: classes6-dex2jar.jar:e/a/b/a/b/j/c.class */
public final class C7659c extends RecyclerView.AbstractC0317g<AbstractC7665i> {

    /* renamed from: a */
    public Integer f24035a;

    /* renamed from: b */
    public String[] f24036b;

    /* renamed from: c */
    public final ComponentCallbacks2C22236i f24037c;

    /* renamed from: d */
    public final l<String, s> f24038d;

    /* renamed from: e */
    public final l<Integer, s> f24039e;

    /* JADX WARN: Multi-variable type inference failed */
    public C7659c(String[] strArr, ComponentCallbacks2C22236i componentCallbacks2C22236i, l<? super String, s> lVar, l<? super Integer, s> lVar2) {
        s1.z.c.l.e(strArr, "imageUrls");
        s1.z.c.l.e(componentCallbacks2C22236i, "requestManager");
        s1.z.c.l.e(lVar, "onClickListener");
        s1.z.c.l.e(lVar2, "onAddListener");
        this.f24036b = strArr;
        this.f24037c = componentCallbacks2C22236i;
        this.f24038d = lVar;
        this.f24039e = lVar2;
    }

    /* renamed from: e */
    public final void m29457e(Integer num) {
        Integer num2 = this.f24035a;
        this.f24035a = num;
        if (!s1.z.c.l.a(num2, num)) {
            if (num != null) {
                num.intValue();
                notifyItemChanged(num.intValue());
            }
            if (num2 == null) {
                return;
            }
            num2.intValue();
            notifyItemChanged(num2.intValue());
        }
    }

    /* renamed from: g */
    public final void m29456g(String[] strArr) {
        s1.z.c.l.e(strArr, "images");
        C25586h.C25590d m3181a = C25586h.m3181a(new C7664h(this.f24036b, strArr), true);
        s1.z.c.l.d(m3181a, "DiffUtil.calculateDiff(I…lback(imageUrls, images))");
        this.f24036b = strArr;
        m3181a.m3179b(new C25570b(this));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemCount() {
        return this.f24036b.length;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public int getItemViewType(int i) {
        return this.f24036b[i] != null ? 1 : 2;
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public void onBindViewHolder(AbstractC7665i abstractC7665i, int i) {
        AbstractC7665i abstractC7665i2 = abstractC7665i;
        s1.z.c.l.e(abstractC7665i2, "holder");
        if (!(abstractC7665i2 instanceof C7663g)) {
            if (!(abstractC7665i2 instanceof C7658b)) {
                return;
            }
            C7658b c7658b = (C7658b) abstractC7665i2;
            l<Integer, s> lVar = this.f24039e;
            s1.z.c.l.e(lVar, "onAddListener");
            c7658b.f24034a.f25154b.setOnClickListener(new View$OnClickListenerC7657a(lVar, i));
            return;
        }
        String str = this.f24036b[i];
        if (str == null) {
            return;
        }
        C7663g c7663g = (C7663g) abstractC7665i2;
        l<String, s> lVar2 = this.f24038d;
        ComponentCallbacks2C22236i componentCallbacks2C22236i = this.f24037c;
        Integer num = this.f24035a;
        int intValue = num != null ? num.intValue() : -1;
        s1.z.c.l.e(str, "imageUrl");
        s1.z.c.l.e(lVar2, "onClickListener");
        s1.z.c.l.e(componentCallbacks2C22236i, "requestManager");
        C8061e1 c8061e1 = c7663g.f24044a;
        componentCallbacks2C22236i.mo8407r(str).m8427O(c8061e1.f24854b);
        ImageView imageView = c8061e1.f24854b;
        s1.z.c.l.d(imageView, "image");
        imageView.setTag(str);
        c8061e1.f24854b.setOnClickListener(new View$OnClickListenerC7662f(c8061e1, componentCallbacks2C22236i, str, lVar2, intValue, i));
        if (intValue == i) {
            View view = c8061e1.f24855c;
            s1.z.c.l.d(view, "selectionView");
            C19286f.m13684T(view);
            return;
        }
        View view2 = c8061e1.f24855c;
        s1.z.c.l.d(view2, "selectionView");
        C19286f.m13689O(view2);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0317g
    public AbstractC7665i onCreateViewHolder(ViewGroup viewGroup, int i) {
        C7658b c7658b;
        s1.z.c.l.e(viewGroup, "parent");
        if (i == 1) {
            View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(C3478R.layout.layout_image_box, viewGroup, false);
            int i2 = C3478R.C3480id.image;
            ImageView imageView = (ImageView) inflate.findViewById(i2);
            if (imageView != null) {
                i2 = C3478R.C3480id.selectionView;
                View findViewById = inflate.findViewById(i2);
                if (findViewById != null) {
                    C8061e1 c8061e1 = new C8061e1((CardView) inflate, imageView, findViewById);
                    s1.z.c.l.d(c8061e1, "LayoutImageBoxBinding.in….context), parent, false)");
                    c7658b = new C7663g(c8061e1);
                }
            }
            throw new NullPointerException("Missing required view with ID: ".concat(inflate.getResources().getResourceName(i2)));
        }
        View inflate2 = LayoutInflater.from(viewGroup.getContext()).inflate(C3478R.layout.layout_add_image_box, viewGroup, false);
        int i3 = C3478R.C3480id.btnAdd;
        Button button = (Button) inflate2.findViewById(i3);
        if (button == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(inflate2.getResources().getResourceName(i3)));
        }
        C8109w0 c8109w0 = new C8109w0((ConstraintLayout) inflate2, button);
        s1.z.c.l.d(c8109w0, "LayoutAddImageBoxBinding….context), parent, false)");
        c7658b = new C7658b(c8109w0);
        return c7658b;
    }
}
