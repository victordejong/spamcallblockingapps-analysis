package androidx.fragment.app;

import android.graphics.Rect;
import android.transition.Transition;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/r$a.class */
class r$a extends Transition.EpicenterCallback {

    /* renamed from: a */
    final /* synthetic */ Rect f2003a;

    r$a(r rVar, Rect rect) {
        this.f2003a = rect;
    }

    @Override // android.transition.Transition.EpicenterCallback
    public Rect onGetEpicenter(Transition transition) {
        return this.f2003a;
    }
}
