package p000;

import android.view.View;
import carbon.widget.PagerTabStrip;
/* renamed from: bg0 */
/* loaded from: classes-dex2jar.jar:bg0.class */
public final /* synthetic */ class bg0 implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ PagerTabStrip f1929a;

    /* renamed from: b */
    public final /* synthetic */ int f1930b;

    public /* synthetic */ bg0(PagerTabStrip pagerTabStrip, int i) {
        this.f1929a = pagerTabStrip;
        this.f1930b = i;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        this.f1929a.o(this.f1930b, view);
    }
}
