package androidx.appcompat.widget;

import android.view.View;
import android.view.Window;
import p151l.C3414a;
/* renamed from: androidx.appcompat.widget.b1 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/b1.class */
public class View$OnClickListenerC0201b1 implements View.OnClickListener {

    /* renamed from: a */
    public final C3414a f841a;

    /* renamed from: b */
    public final /* synthetic */ C0213c1 f842b;

    public View$OnClickListenerC0201b1(C0213c1 c0213c1) {
        this.f842b = c0213c1;
        this.f841a = new C3414a(c0213c1.f874a.getContext(), 0, 16908332, 0, c0213c1.f882i);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        C0213c1 c0213c1 = this.f842b;
        Window.Callback callback = c0213c1.f885l;
        if (callback == null || !c0213c1.f886m) {
            return;
        }
        callback.onMenuItemSelected(0, this.f841a);
    }
}
