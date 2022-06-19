package p193e.p194a.p1129p5.p1132s0;

import android.view.View;
import android.view.ViewGroup;
import android.widget.PopupWindow;
import android.widget.Space;
import s1.z.b.a;
/* renamed from: e.a.p5.s0.i0 */
/* loaded from: classes15-dex2jar.jar:e/a/p5/s0/i0.class */
public final class C19296i0 implements PopupWindow.OnDismissListener {

    /* renamed from: a */
    public final /* synthetic */ View f53712a;

    /* renamed from: b */
    public final /* synthetic */ ViewGroup f53713b;

    /* renamed from: c */
    public final /* synthetic */ ViewGroup.LayoutParams f53714c;

    /* renamed from: d */
    public final /* synthetic */ int f53715d;

    /* renamed from: e */
    public final /* synthetic */ int f53716e;

    /* renamed from: f */
    public final /* synthetic */ Space f53717f;

    /* renamed from: g */
    public final /* synthetic */ a f53718g;

    public C19296i0(View view, ViewGroup viewGroup, ViewGroup.LayoutParams layoutParams, int i, int i2, Space space, a aVar) {
        this.f53712a = view;
        this.f53713b = viewGroup;
        this.f53714c = layoutParams;
        this.f53715d = i;
        this.f53716e = i2;
        this.f53717f = space;
        this.f53718g = aVar;
    }

    @Override // android.widget.PopupWindow.OnDismissListener
    public final void onDismiss() {
        if (!this.f53713b.isAttachedToWindow()) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = this.f53714c;
        layoutParams.width = this.f53715d;
        layoutParams.height = this.f53716e;
        this.f53712a.setLayoutParams(layoutParams);
        this.f53713b.removeView(this.f53717f);
        this.f53713b.addView(this.f53712a);
        this.f53718g.invoke();
    }
}
