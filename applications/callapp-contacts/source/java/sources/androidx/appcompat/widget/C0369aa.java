package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.lang.ref.WeakReference;
/* renamed from: androidx.appcompat.widget.aa */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/aa.class */
final class C0369aa extends C0421u {

    /* renamed from: a */
    private final WeakReference<Context> f1490a;

    public C0369aa(Context context, Resources resources) {
        super(resources);
        this.f1490a = new WeakReference<>(context);
    }

    @Override // androidx.appcompat.widget.C0421u, android.content.res.Resources
    public final Drawable getDrawable(int i) throws Resources.NotFoundException {
        Drawable drawable = super.getDrawable(i);
        Context context = this.f1490a.get();
        if (drawable != null && context != null) {
            C0414t.m45610a().m45605a(context, i, drawable);
        }
        return drawable;
    }
}
