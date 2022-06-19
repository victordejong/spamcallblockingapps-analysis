package p193e.p1485h.p1486a.p1493c.p1501q0;

import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.clevertap.android.sdk.customviews.CloseImageView;
/* renamed from: e.h.a.c.q0.x$a */
/* loaded from: classes-dex2jar.jar:e/h/a/c/q0/x$a.class */
public class x$a implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    public final /* synthetic */ FrameLayout f63231a;

    /* renamed from: b */
    public final /* synthetic */ CloseImageView f63232b;

    /* renamed from: c */
    public final /* synthetic */ x f63233c;

    public x$a(x xVar, FrameLayout frameLayout, CloseImageView closeImageView) {
        this.f63233c = xVar;
        this.f63231a = frameLayout;
        this.f63232b = closeImageView;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f63233c.h.getLayoutParams();
        x xVar = this.f63233c;
        if (((a) xVar).e.f2348u && xVar.VA()) {
            x xVar2 = this.f63233c;
            xVar2.ZA(xVar2.h, layoutParams, this.f63231a, this.f63232b);
        } else if (this.f63233c.VA()) {
            x xVar3 = this.f63233c;
            xVar3.YA(xVar3.h, layoutParams, this.f63231a, this.f63232b);
        } else {
            x xVar4 = this.f63233c;
            RelativeLayout relativeLayout = xVar4.h;
            CloseImageView closeImageView = this.f63232b;
            layoutParams.height = (int) (relativeLayout.getMeasuredWidth() * 1.78f);
            relativeLayout.setLayoutParams(layoutParams);
            xVar4.UA(relativeLayout, closeImageView);
        }
        this.f63233c.h.getViewTreeObserver().removeOnGlobalLayoutListener(this);
    }
}
