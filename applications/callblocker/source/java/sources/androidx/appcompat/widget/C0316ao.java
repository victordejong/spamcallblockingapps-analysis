package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.lang.ref.WeakReference;
/* renamed from: androidx.appcompat.widget.ao */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ao.class */
class C0316ao extends C0303ag {

    /* renamed from: a */
    private final WeakReference<Context> f1337a;

    public C0316ao(Context context, Resources resources) {
        super(resources);
        this.f1337a = new WeakReference<>(context);
    }

    @Override // androidx.appcompat.widget.C0303ag, android.content.res.Resources
    public Drawable getDrawable(int i) {
        Drawable drawable = super.getDrawable(i);
        Context context = this.f1337a.get();
        if (drawable != null && context != null) {
            C0296af.m21513a().m21507a(context, i, drawable);
        }
        return drawable;
    }
}
