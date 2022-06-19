package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.lang.ref.WeakReference;
/* renamed from: androidx.appcompat.widget.d0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/d0.class */
class C0284d0 extends C0335w {

    /* renamed from: b */
    private final WeakReference<Context> f1246b;

    public C0284d0(Context context, Resources resources) {
        super(resources);
        this.f1246b = new WeakReference<>(context);
    }

    @Override // androidx.appcompat.widget.C0335w, android.content.res.Resources
    public Drawable getDrawable(int i) {
        Drawable drawable = super.getDrawable(i);
        Context context = this.f1246b.get();
        if (drawable != null && context != null) {
            C0327v.m34738h().m34722x(context, i, drawable);
        }
        return drawable;
    }
}
