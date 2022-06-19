package p193e.p194a.p1349x.p1353i0;

import android.view.ViewTreeObserver;
import com.truecaller.ghost_call.callergradient.GhostCallerGradientView;
import s1.z.b.a;
/* renamed from: e.a.x.i0.i */
/* loaded from: classes9-dex2jar.jar:e/a/x/i0/i.class */
public final class ViewTreeObserver$OnPreDrawListenerC21355i implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: a */
    public final /* synthetic */ GhostCallerGradientView f59773a;

    /* renamed from: b */
    public final /* synthetic */ a f59774b;

    public ViewTreeObserver$OnPreDrawListenerC21355i(GhostCallerGradientView ghostCallerGradientView, a aVar) {
        this.f59773a = ghostCallerGradientView;
        this.f59774b = aVar;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        this.f59773a.getViewTreeObserver().removeOnPreDrawListener(this);
        this.f59774b.invoke();
        return true;
    }
}
