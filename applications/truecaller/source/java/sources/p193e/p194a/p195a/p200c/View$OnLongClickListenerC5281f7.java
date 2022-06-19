package p193e.p194a.p195a.p200c;

import android.view.View;
import s1.z.b.l;
/* renamed from: e.a.a.c.f7 */
/* loaded from: classes5-dex2jar.jar:e/a/a/c/f7.class */
public final class View$OnLongClickListenerC5281f7 implements View.OnLongClickListener {

    /* renamed from: a */
    public final /* synthetic */ ViewTreeObserver$OnPreDrawListenerC5184d f18094a;

    /* renamed from: b */
    public final /* synthetic */ l f18095b;

    public View$OnLongClickListenerC5281f7(ViewTreeObserver$OnPreDrawListenerC5184d viewTreeObserver$OnPreDrawListenerC5184d, l lVar) {
        this.f18094a = viewTreeObserver$OnPreDrawListenerC5184d;
        this.f18095b = lVar;
    }

    @Override // android.view.View.OnLongClickListener
    public final boolean onLongClick(View view) {
        Integer valueOf = Integer.valueOf(this.f18094a.getAdapterPosition());
        boolean z = false;
        if (valueOf.intValue() == -1) {
            valueOf = null;
        }
        if (valueOf != null) {
            z = ((Boolean) this.f18095b.d(Integer.valueOf(valueOf.intValue()))).booleanValue();
        }
        return z;
    }
}
