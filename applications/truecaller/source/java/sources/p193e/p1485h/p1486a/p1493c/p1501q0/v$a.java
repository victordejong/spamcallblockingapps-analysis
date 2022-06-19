package p193e.p1485h.p1486a.p1493c.p1501q0;

import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.clevertap.android.sdk.C0868R;
import com.clevertap.android.sdk.customviews.CloseImageView;
import java.util.Objects;
/* renamed from: e.h.a.c.q0.v$a */
/* loaded from: classes-dex2jar.jar:e/h/a/c/q0/v$a.class */
public class v$a implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    public final /* synthetic */ FrameLayout f63222a;

    /* renamed from: b */
    public final /* synthetic */ CloseImageView f63223b;

    /* renamed from: c */
    public final /* synthetic */ v f63224c;

    public v$a(v vVar, FrameLayout frameLayout, CloseImageView closeImageView) {
        this.f63224c = vVar;
        this.f63222a = frameLayout;
        this.f63223b = closeImageView;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        RelativeLayout relativeLayout = (RelativeLayout) this.f63222a.findViewById(C0868R.C0870id.interstitial_relative_layout);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) relativeLayout.getLayoutParams();
        v vVar = this.f63224c;
        if (((a) vVar).e.f2348u && vVar.VA()) {
            v vVar2 = this.f63224c;
            vVar2.ZA(vVar2.n, layoutParams, this.f63222a, this.f63223b);
        } else if (this.f63224c.VA()) {
            v vVar3 = this.f63224c;
            vVar3.YA(vVar3.n, layoutParams, this.f63222a, this.f63223b);
        } else {
            v vVar4 = this.f63224c;
            CloseImageView closeImageView = this.f63223b;
            Objects.requireNonNull(vVar4);
            layoutParams.height = (int) (relativeLayout.getMeasuredWidth() * 1.78f);
            relativeLayout.setLayoutParams(layoutParams);
            vVar4.UA(relativeLayout, closeImageView);
        }
        this.f63224c.n.getViewTreeObserver().removeOnGlobalLayoutListener(this);
    }
}
