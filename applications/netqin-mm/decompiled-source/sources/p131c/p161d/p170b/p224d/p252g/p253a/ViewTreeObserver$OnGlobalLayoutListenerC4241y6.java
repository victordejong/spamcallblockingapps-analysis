package p131c.p161d.p170b.p224d.p252g.p253a;

import android.view.View;
import android.view.ViewTreeObserver;
import com.google.android.gms.ads.internal.zzp;
import java.lang.ref.WeakReference;
/* renamed from: c.d.b.d.g.a.y6 */
/* loaded from: classes-dex2jar.jar:c/d/b/d/g/a/y6.class */
public final class ViewTreeObserver$OnGlobalLayoutListenerC4241y6 extends AbstractC4279z6 implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: b */
    public final WeakReference<ViewTreeObserver.OnGlobalLayoutListener> f16094b;

    public ViewTreeObserver$OnGlobalLayoutListenerC4241y6(View view, ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener) {
        super(view);
        this.f16094b = new WeakReference<>(onGlobalLayoutListener);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.AbstractC4279z6
    /* renamed from: a */
    public final void mo26102a(ViewTreeObserver viewTreeObserver) {
        viewTreeObserver.addOnGlobalLayoutListener(this);
    }

    @Override // p131c.p161d.p170b.p224d.p252g.p253a.AbstractC4279z6
    /* renamed from: b */
    public final void mo26100b(ViewTreeObserver viewTreeObserver) {
        zzp.m17967e();
        viewTreeObserver.removeOnGlobalLayoutListener(this);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        ViewTreeObserver.OnGlobalLayoutListener onGlobalLayoutListener = this.f16094b.get();
        if (onGlobalLayoutListener != null) {
            onGlobalLayoutListener.onGlobalLayout();
        } else {
            m26101b();
        }
    }
}
