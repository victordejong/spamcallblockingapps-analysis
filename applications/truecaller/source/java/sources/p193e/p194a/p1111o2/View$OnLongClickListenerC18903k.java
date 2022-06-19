package p193e.p194a.p1111o2;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: e.a.o2.k */
/* loaded from: classes4-dex2jar.jar:e/a/o2/k.class */
public final class View$OnLongClickListenerC18903k implements View.OnLongClickListener {

    /* renamed from: a */
    public final /* synthetic */ View f53016a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC18905m f53017b;

    /* renamed from: c */
    public final /* synthetic */ String f53018c;

    /* renamed from: d */
    public final /* synthetic */ RecyclerView.AbstractC0313c0 f53019d;

    /* renamed from: e */
    public final /* synthetic */ Object f53020e;

    public View$OnLongClickListenerC18903k(View view, AbstractC18905m abstractC18905m, String str, RecyclerView.AbstractC0313c0 abstractC0313c0, Object obj) {
        this.f53016a = view;
        this.f53017b = abstractC18905m;
        this.f53018c = str;
        this.f53019d = abstractC0313c0;
        this.f53020e = obj;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        return this.f53017b.mo14327t(new C18900h(this.f53018c, this.f53019d, this.f53016a, this.f53020e));
    }
}
