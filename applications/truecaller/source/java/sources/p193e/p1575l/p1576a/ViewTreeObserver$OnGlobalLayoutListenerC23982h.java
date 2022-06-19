package p193e.p1575l.p1576a;

import android.view.View;
import android.view.ViewTreeObserver;
/* renamed from: e.l.a.h */
/* loaded from: classes2-dex2jar.jar:e/l/a/h.class */
public final class ViewTreeObserver$OnGlobalLayoutListenerC23982h implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: a */
    public final /* synthetic */ ViewTreeObserver f66457a;

    /* renamed from: b */
    public final /* synthetic */ View f66458b;

    /* renamed from: c */
    public final /* synthetic */ Runnable f66459c;

    public ViewTreeObserver$OnGlobalLayoutListenerC23982h(ViewTreeObserver viewTreeObserver, View view, Runnable runnable) {
        this.f66457a = viewTreeObserver;
        this.f66458b = view;
        this.f66459c = runnable;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        (this.f66457a.isAlive() ? this.f66457a : this.f66458b.getViewTreeObserver()).removeOnGlobalLayoutListener(this);
        this.f66459c.run();
    }
}
