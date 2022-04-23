package androidx.fragment.app;

import android.graphics.Rect;
import android.transition.Transition;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/r$e.class */
class r$e extends Transition.EpicenterCallback {

    /* renamed from: a */
    final /* synthetic */ Rect f2014a;

    r$e(r rVar, Rect rect) {
        this.f2014a = rect;
    }

    @Override // android.transition.Transition.EpicenterCallback
    public Rect onGetEpicenter(Transition transition) {
        Rect rect = this.f2014a;
        if (rect == null || rect.isEmpty()) {
            return null;
        }
        return this.f2014a;
    }
}
