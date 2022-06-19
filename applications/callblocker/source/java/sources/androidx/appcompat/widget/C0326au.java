package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import java.lang.ref.WeakReference;
/* renamed from: androidx.appcompat.widget.au */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/au.class */
public class C0326au extends Resources {

    /* renamed from: a */
    private static boolean f1383a = false;

    /* renamed from: b */
    private final WeakReference<Context> f1384b;

    public C0326au(Context context, Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.f1384b = new WeakReference<>(context);
    }

    /* renamed from: a */
    public static boolean m21392a() {
        return m21390b() && Build.VERSION.SDK_INT <= 20;
    }

    /* renamed from: b */
    public static boolean m21390b() {
        return f1383a;
    }

    /* renamed from: a */
    public final Drawable m21391a(int i) {
        return super.getDrawable(i);
    }

    @Override // android.content.res.Resources
    public Drawable getDrawable(int i) {
        Context context = this.f1384b.get();
        return context != null ? C0296af.m21513a().m21502a(context, this, i) : super.getDrawable(i);
    }
}
