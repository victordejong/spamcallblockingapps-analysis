package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import androidx.annotation.NonNull;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/TintResources.class */
class TintResources extends ResourcesWrapper {

    /* renamed from: b */
    private final WeakReference<Context> f1355b;

    public TintResources(@NonNull Context context, @NonNull Resources resources) {
        super(resources);
        this.f1355b = new WeakReference<>(context);
    }

    @Override // androidx.appcompat.widget.ResourcesWrapper, android.content.res.Resources
    public Drawable getDrawable(int i) throws Resources.NotFoundException {
        Drawable drawable = super.getDrawable(i);
        Context context = this.f1355b.get();
        if (!(drawable == null || context == null)) {
            ResourceManagerInternal.m21400h().m21384x(context, i, drawable);
        }
        return drawable;
    }
}
