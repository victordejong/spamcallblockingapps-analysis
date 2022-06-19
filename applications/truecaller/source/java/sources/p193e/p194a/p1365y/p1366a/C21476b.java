package p193e.p194a.p1365y.p1366a;

import android.widget.PopupWindow;
/* renamed from: e.a.y.a.b */
/* loaded from: classes9-dex2jar.jar:e/a/y/a/b.class */
public final class C21476b implements PopupWindow.OnDismissListener {

    /* renamed from: a */
    public final /* synthetic */ ViewTreeObserver$OnGlobalLayoutListenerC21477c f59976a;

    public C21476b(ViewTreeObserver$OnGlobalLayoutListenerC21477c viewTreeObserver$OnGlobalLayoutListenerC21477c) {
        this.f59976a = viewTreeObserver$OnGlobalLayoutListenerC21477c;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        this.f59976a.f59979c.getViewTreeObserver().removeOnGlobalLayoutListener(this.f59976a);
    }
}
