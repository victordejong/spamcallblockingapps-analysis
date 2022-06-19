package carbon.widget;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;
/* loaded from: classes-dex2jar.jar:carbon/widget/RecyclerView$a.class */
public class RecyclerView$a extends ViewOutlineProvider {

    /* renamed from: a */
    public final /* synthetic */ RecyclerView f2320a;

    public RecyclerView$a(RecyclerView recyclerView) {
        this.f2320a = recyclerView;
    }

    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        if (d80.m2750v(RecyclerView.a(this.f2320a))) {
            outline.setRect(0, 0, this.f2320a.getWidth(), this.f2320a.getHeight());
            return;
        }
        RecyclerView.b(this.f2320a).setBounds(0, 0, this.f2320a.getWidth(), this.f2320a.getHeight());
        RecyclerView.b(this.f2320a).getOutline(outline);
    }
}
