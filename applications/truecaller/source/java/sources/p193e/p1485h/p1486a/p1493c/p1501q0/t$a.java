package p193e.p1485h.p1486a.p1493c.p1501q0;

import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.clevertap.android.sdk.customviews.CloseImageView;
/* renamed from: e.h.a.c.q0.t$a */
/* loaded from: classes-dex2jar.jar:e/h/a/c/q0/t$a.class */
public class t$a implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    public final /* synthetic */ CloseImageView f63213a;

    /* renamed from: b */
    public final /* synthetic */ t f63214b;

    public t$a(t tVar, CloseImageView closeImageView) {
        this.f63214b = tVar;
        this.f63213a = closeImageView;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f63214b.h.getLayoutParams();
        t tVar = this.f63214b;
        if (((a) tVar).e.f2348u && tVar.VA()) {
            t tVar2 = this.f63214b;
            tVar2.WA(tVar2.h, layoutParams, this.f63213a);
        } else if (this.f63214b.VA()) {
            t tVar3 = this.f63214b;
            tVar3.XA(tVar3.h, layoutParams, this.f63213a);
        } else {
            t tVar4 = this.f63214b;
            tVar4.WA(tVar4.h, layoutParams, this.f63213a);
        }
        this.f63214b.h.getViewTreeObserver().removeOnGlobalLayoutListener(this);
    }
}
