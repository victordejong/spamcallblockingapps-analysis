package p193e.p194a.p1080o.p1081a.p1085b;

import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.RecyclerView;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p194a.p1080o.p1102o.C18796i;
import p193e.p194a.p1129p5.C19235i0;
import p193e.p194a.p372b0.p373a.p376b.C8243a;
import s1.z.c.l;
/* renamed from: e.a.o.a.b.c */
/* loaded from: classes8-dex2jar.jar:e/a/o/a/b/c.class */
public final class C18530c extends RecyclerView.AbstractC0313c0 {

    /* renamed from: a */
    public final TextView f52274a;

    /* renamed from: b */
    public final TextView f52275b;

    /* renamed from: c */
    public final C8243a f52276c;

    /* renamed from: d */
    public final ImageView f52277d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C18530c(C18796i c18796i) {
        super(c18796i.f52804a);
        l.e(c18796i, "itemViewBinding");
        TextView textView = c18796i.f52806c;
        l.d(textView, "itemViewBinding.nameTextView");
        this.f52274a = textView;
        TextView textView2 = c18796i.f52807d;
        l.d(textView2, "itemViewBinding.numberTextView");
        this.f52275b = textView2;
        C8243a c8243a = new C8243a(new C19235i0(C22128a.m8700J(this.itemView, "itemView", "itemView.context")));
        this.f52276c = c8243a;
        ImageView imageView = c18796i.f52808e;
        l.d(imageView, "itemViewBinding.removeImageView");
        this.f52277d = imageView;
        c18796i.f52805b.setPresenter(c8243a);
    }
}
