package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import java.lang.ref.WeakReference;
/* renamed from: androidx.appcompat.widget.i0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/i0.class */
public class C0138i0 extends Resources {

    /* renamed from: b */
    private static boolean f634b = false;

    /* renamed from: a */
    private final WeakReference<Context> f635a;

    public C0138i0(Context context, Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.f635a = new WeakReference<>(context);
    }

    /* renamed from: a */
    public static boolean m14569a() {
        return f634b;
    }

    /* renamed from: b */
    public static boolean m14568b() {
        return m14569a() && Build.VERSION.SDK_INT <= 20;
    }

    /* renamed from: c */
    public final Drawable m14567c(int i) {
        return super.getDrawable(i);
    }

    @Override // android.content.res.Resources
    public Drawable getDrawable(int i) {
        Context context = this.f635a.get();
        return context != null ? C0156u.m14436h().m14424t(context, this, i) : super.getDrawable(i);
    }
}
