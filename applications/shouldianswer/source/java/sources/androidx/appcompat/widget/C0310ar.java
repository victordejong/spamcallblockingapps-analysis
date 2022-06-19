package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.lang.ref.WeakReference;
/* renamed from: androidx.appcompat.widget.ar */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ar.class */
class C0310ar extends C0297aj {

    /* renamed from: a */
    private final WeakReference<Context> f1280a;

    public C0310ar(Context context, Resources resources) {
        super(resources);
        this.f1280a = new WeakReference<>(context);
    }

    @Override // androidx.appcompat.widget.C0297aj, android.content.res.Resources
    public Drawable getDrawable(int i) {
        Drawable drawable = super.getDrawable(i);
        Context context = this.f1280a.get();
        if (drawable != null && context != null) {
            C0290ai.m7236a().m7230a(context, i, drawable);
        }
        return drawable;
    }
}
