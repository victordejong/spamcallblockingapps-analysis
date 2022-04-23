package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Build;
import java.lang.ref.WeakReference;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ag.class */
public final class ag extends Resources {

    /* renamed from: a  reason: collision with root package name */
    private static boolean f1066a = false;

    /* renamed from: b  reason: collision with root package name */
    private final WeakReference<Context> f1067b;

    public ag(Context context, Resources resources) {
        super(resources.getAssets(), resources.getDisplayMetrics(), resources.getConfiguration());
        this.f1067b = new WeakReference<>(context);
    }

    public static boolean a() {
        return f1066a && Build.VERSION.SDK_INT <= 20;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Drawable a(int i) {
        return super.getDrawable(i);
    }

    @Override // android.content.res.Resources
    public final Drawable getDrawable(int i) throws Resources.NotFoundException {
        Context context = this.f1067b.get();
        return context != null ? t.a().a(context, this, i) : super.getDrawable(i);
    }
}
