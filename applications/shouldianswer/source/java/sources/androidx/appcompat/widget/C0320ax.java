package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import java.lang.ref.WeakReference;
/* renamed from: androidx.appcompat.widget.ax */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ax.class */
public class C0320ax extends Resources {

    /* renamed from: a */
    private static boolean f1326a = false;

    /* renamed from: b */
    private final WeakReference<Context> f1327b;

    public C0320ax(Context context, Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.f1327b = new WeakReference<>(context);
    }

    /* renamed from: a */
    public static boolean m7118a() {
        return m7116b() && Build.VERSION.SDK_INT <= 20;
    }

    /* renamed from: b */
    public static boolean m7116b() {
        return f1326a;
    }

    /* renamed from: a */
    public final Drawable m7117a(int i) {
        return super.getDrawable(i);
    }

    @Override // android.content.res.Resources
    public Drawable getDrawable(int i) {
        Context context = this.f1327b.get();
        return context != null ? C0290ai.m7236a().m7225a(context, this, i) : super.getDrawable(i);
    }
}
