package p193e.p1485h.p1486a.p1493c.p1501q0;

import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.clevertap.android.sdk.customviews.CloseImageView;
/* renamed from: e.h.a.c.q0.x$b */
/* loaded from: classes-dex2jar.jar:e/h/a/c/q0/x$b.class */
public class x$b implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    public final /* synthetic */ FrameLayout f63234a;

    /* renamed from: b */
    public final /* synthetic */ CloseImageView f63235b;

    /* renamed from: c */
    public final /* synthetic */ x f63236c;

    public x$b(x xVar, FrameLayout frameLayout, CloseImageView closeImageView) {
        this.f63236c = xVar;
        this.f63234a = frameLayout;
        this.f63235b = closeImageView;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f63236c.h.getLayoutParams();
        x xVar = this.f63236c;
        if (((a) xVar).e.f2348u && xVar.VA()) {
            x xVar2 = this.f63236c;
            xVar2.cB(xVar2.h, layoutParams, this.f63234a, this.f63235b);
        } else if (this.f63236c.VA()) {
            x xVar3 = this.f63236c;
            xVar3.bB(xVar3.h, layoutParams, this.f63234a, this.f63235b);
        } else {
            x xVar4 = this.f63236c;
            xVar4.aB(xVar4.h, layoutParams, this.f63235b);
        }
        this.f63236c.h.getViewTreeObserver().removeOnGlobalLayoutListener(this);
    }
}
