package p262v3;

import android.view.View;
import java.util.WeakHashMap;
import p163m0.C3589v;
import p163m0.C3611y;
/* renamed from: v3.s */
/* loaded from: classes-dex2jar.jar:v3/s.class */
public final class View$OnAttachStateChangeListenerC4637s implements View.OnAttachStateChangeListener {
    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
        view.removeOnAttachStateChangeListener(this);
        WeakHashMap<View, C3611y> weakHashMap = C3589v.f11780a;
        C3589v.C3597h.m2051c(view);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
    }
}
