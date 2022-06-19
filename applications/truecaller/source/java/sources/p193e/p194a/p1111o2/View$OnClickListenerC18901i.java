package p193e.p194a.p1111o2;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
/* renamed from: e.a.o2.i */
/* loaded from: classes4-dex2jar.jar:e/a/o2/i.class */
public final class View$OnClickListenerC18901i implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ View f53006a;

    /* renamed from: b */
    public final /* synthetic */ AbstractC18905m f53007b;

    /* renamed from: c */
    public final /* synthetic */ String f53008c;

    /* renamed from: d */
    public final /* synthetic */ RecyclerView.AbstractC0313c0 f53009d;

    /* renamed from: e */
    public final /* synthetic */ Object f53010e;

    public View$OnClickListenerC18901i(View view, AbstractC18905m abstractC18905m, String str, RecyclerView.AbstractC0313c0 abstractC0313c0, Object obj) {
        this.f53006a = view;
        this.f53007b = abstractC18905m;
        this.f53008c = str;
        this.f53009d = abstractC0313c0;
        this.f53010e = obj;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f53007b.mo14327t(new C18900h(this.f53008c, this.f53009d, this.f53006a, this.f53010e));
    }
}
