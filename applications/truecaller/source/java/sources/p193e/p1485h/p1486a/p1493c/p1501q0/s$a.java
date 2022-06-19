package p193e.p1485h.p1486a.p1493c.p1501q0;

import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.clevertap.android.sdk.customviews.CloseImageView;
/* renamed from: e.h.a.c.q0.s$a */
/* loaded from: classes-dex2jar.jar:e/h/a/c/q0/s$a.class */
public class s$a implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    public final /* synthetic */ CloseImageView f63204a;

    /* renamed from: b */
    public final /* synthetic */ s f63205b;

    public s$a(s sVar, CloseImageView closeImageView) {
        this.f63205b = sVar;
        this.f63204a = closeImageView;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f63205b.h.getLayoutParams();
        s sVar = this.f63205b;
        if (((a) sVar).e.f2348u && sVar.VA()) {
            s sVar2 = this.f63205b;
            sVar2.WA(sVar2.h, layoutParams, this.f63204a);
        } else if (this.f63205b.VA()) {
            s sVar3 = this.f63205b;
            sVar3.XA(sVar3.h, layoutParams, this.f63204a);
        } else {
            s sVar4 = this.f63205b;
            sVar4.WA(sVar4.h, layoutParams, this.f63204a);
        }
        this.f63205b.h.getViewTreeObserver().removeOnGlobalLayoutListener(this);
    }
}
