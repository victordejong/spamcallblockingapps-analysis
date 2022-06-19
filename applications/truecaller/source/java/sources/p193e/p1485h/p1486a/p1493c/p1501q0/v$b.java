package p193e.p1485h.p1486a.p1493c.p1501q0;

import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.clevertap.android.sdk.customviews.CloseImageView;
/* renamed from: e.h.a.c.q0.v$b */
/* loaded from: classes-dex2jar.jar:e/h/a/c/q0/v$b.class */
public class v$b implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    public final /* synthetic */ FrameLayout f63225a;

    /* renamed from: b */
    public final /* synthetic */ CloseImageView f63226b;

    /* renamed from: c */
    public final /* synthetic */ v f63227c;

    public v$b(v vVar, FrameLayout frameLayout, CloseImageView closeImageView) {
        this.f63227c = vVar;
        this.f63225a = frameLayout;
        this.f63226b = closeImageView;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f63227c.n.getLayoutParams();
        v vVar = this.f63227c;
        if (((a) vVar).e.f2348u && vVar.VA()) {
            v vVar2 = this.f63227c;
            vVar2.cB(vVar2.n, layoutParams, this.f63225a, this.f63226b);
        } else if (this.f63227c.VA()) {
            v vVar3 = this.f63227c;
            vVar3.bB(vVar3.n, layoutParams, this.f63225a, this.f63226b);
        } else {
            v vVar4 = this.f63227c;
            vVar4.aB(vVar4.n, layoutParams, this.f63226b);
        }
        this.f63227c.n.getViewTreeObserver().removeOnGlobalLayoutListener(this);
    }
}
