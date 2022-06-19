package p1727n3.p1807k.p1821i;

import android.os.Build;
import android.view.View;
import android.view.WindowInsets;
import androidx.core.C0122R;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: n3.k.i.x */
/* loaded from: classes-dex2jar.jar:n3/k/i/x.class */
public class View$OnApplyWindowInsetsListenerC26623x implements View.OnApplyWindowInsetsListener {

    /* renamed from: a */
    public C26568d0 f74519a = null;

    /* renamed from: b */
    public final /* synthetic */ View f74520b;

    /* renamed from: c */
    public final /* synthetic */ AbstractC26609n f74521c;

    public View$OnApplyWindowInsetsListenerC26623x(View view, AbstractC26609n abstractC26609n) {
        this.f74520b = view;
        this.f74521c = abstractC26609n;
    }

    @Override // android.view.View.OnApplyWindowInsetsListener
    public WindowInsets onApplyWindowInsets(View view, WindowInsets windowInsets) {
        C26568d0 m1655l = C26568d0.m1655l(windowInsets, view);
        int i = Build.VERSION.SDK_INT;
        if (i < 30) {
            View view2 = this.f74520b;
            View.OnApplyWindowInsetsListener onApplyWindowInsetsListener = (View.OnApplyWindowInsetsListener) view2.getTag(C0122R.C0124id.tag_window_insets_animation_callback);
            if (onApplyWindowInsetsListener != null) {
                onApplyWindowInsetsListener.onApplyWindowInsets(view2, windowInsets);
            }
            if (m1655l.equals(this.f74519a)) {
                return this.f74521c.mo1532b(view, m1655l).m1657j();
            }
        }
        this.f74519a = m1655l;
        C26568d0 mo1532b = this.f74521c.mo1532b(view, m1655l);
        if (i >= 30) {
            return mo1532b.m1657j();
        }
        AtomicInteger atomicInteger = C26614s.f74505a;
        view.requestApplyInsets();
        return mo1532b.m1657j();
    }
}
