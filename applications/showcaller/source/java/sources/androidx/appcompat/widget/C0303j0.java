package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import java.lang.ref.WeakReference;
/* renamed from: androidx.appcompat.widget.j0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/j0.class */
public class C0303j0 extends Resources {

    /* renamed from: a */
    private static boolean f1315a = false;

    /* renamed from: b */
    private final WeakReference<Context> f1316b;

    public C0303j0(Context context, Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.f1316b = new WeakReference<>(context);
    }

    /* renamed from: a */
    public static boolean m34879a() {
        return f1315a;
    }

    /* renamed from: b */
    public static boolean m34878b() {
        return m34879a() && Build.VERSION.SDK_INT <= 20;
    }

    /* renamed from: c */
    public final Drawable m34877c(int i) {
        return super.getDrawable(i);
    }

    @Override // android.content.res.Resources
    public Drawable getDrawable(int i) {
        Context context = this.f1316b.get();
        return context != null ? C0327v.m34738h().m34726t(context, this, i) : super.getDrawable(i);
    }
}
