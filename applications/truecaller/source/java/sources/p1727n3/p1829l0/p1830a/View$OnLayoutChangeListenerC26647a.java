package p1727n3.p1829l0.p1830a;

import android.view.View;
import android.widget.FrameLayout;
import androidx.viewpager2.adapter.FragmentStateAdapter;
/* renamed from: n3.l0.a.a */
/* loaded from: classes-dex2jar.jar:n3/l0/a/a.class */
public class View$OnLayoutChangeListenerC26647a implements View.OnLayoutChangeListener {

    /* renamed from: a */
    public final /* synthetic */ FrameLayout f74585a;

    /* renamed from: b */
    public final /* synthetic */ C26651f f74586b;

    /* renamed from: c */
    public final /* synthetic */ FragmentStateAdapter f74587c;

    public View$OnLayoutChangeListenerC26647a(FragmentStateAdapter fragmentStateAdapter, FrameLayout frameLayout, C26651f c26651f) {
        this.f74587c = fragmentStateAdapter;
        this.f74585a = frameLayout;
        this.f74586b = c26651f;
    }

    @Override // android.view.View.OnLayoutChangeListener
    public void onLayoutChange(View view, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8) {
        if (this.f74585a.getParent() != null) {
            this.f74585a.removeOnLayoutChangeListener(this);
            this.f74587c.m42628m(this.f74586b);
        }
    }
}
