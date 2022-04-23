package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/aa.class */
final class aa extends u {

    /* renamed from: a  reason: collision with root package name */
    private final WeakReference<Context> f1043a;

    public aa(Context context, Resources resources) {
        super(resources);
        this.f1043a = new WeakReference<>(context);
    }

    @Override // androidx.appcompat.widget.u, android.content.res.Resources
    public final Drawable getDrawable(int i) throws Resources.NotFoundException {
        Drawable drawable = super.getDrawable(i);
        Context context = this.f1043a.get();
        if (!(drawable == null || context == null)) {
            t.a().a(context, i, drawable);
        }
        return drawable;
    }
}
