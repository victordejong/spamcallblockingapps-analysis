package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import java.lang.ref.WeakReference;
/* renamed from: androidx.appcompat.widget.ag */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ag.class */
public final class C0379ag extends Resources {

    /* renamed from: a */
    private static boolean f1536a = false;

    /* renamed from: b */
    private final WeakReference<Context> f1537b;

    public C0379ag(Context context, Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.f1537b = new WeakReference<>(context);
    }

    /* renamed from: a */
    public static boolean m45772a() {
        return f1536a && Build.VERSION.SDK_INT <= 20;
    }

    /* renamed from: a */
    public final Drawable m45771a(int i) {
        return super.getDrawable(i);
    }

    @Override // android.content.res.Resources
    public final Drawable getDrawable(int i) throws Resources.NotFoundException {
        Context context = this.f1537b.get();
        return context != null ? C0414t.m45610a().m45600a(context, this, i) : super.getDrawable(i);
    }
}
