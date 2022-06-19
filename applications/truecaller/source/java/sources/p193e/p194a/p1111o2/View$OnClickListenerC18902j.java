package p193e.p194a.p1111o2;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import s1.z.b.a;
/* renamed from: e.a.o2.j */
/* loaded from: classes4-dex2jar.jar:e/a/o2/j.class */
public final class View$OnClickListenerC18902j implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ View f53011a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC18905m f53012b;

    /* renamed from: c */
    public final /* synthetic */ String f53013c;

    /* renamed from: d */
    public final /* synthetic */ RecyclerView.AbstractC0313c0 f53014d;

    /* renamed from: e */
    public final /* synthetic */ a f53015e;

    public View$OnClickListenerC18902j(View view, AbstractC18905m abstractC18905m, String str, RecyclerView.AbstractC0313c0 abstractC0313c0, a aVar) {
        this.f53011a = view;
        this.f53012b = abstractC18905m;
        this.f53013c = str;
        this.f53014d = abstractC0313c0;
        this.f53015e = aVar;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f53012b.mo14327t(new C18900h(this.f53013c, this.f53014d, this.f53011a, this.f53015e.invoke()));
    }
}
