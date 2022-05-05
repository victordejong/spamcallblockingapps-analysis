package androidx.core.view;

import android.content.Context;
import android.os.Build;
import android.view.PointerIcon;
import androidx.annotation.RestrictTo;
/* loaded from: classes-dex2jar.jar:androidx/core/view/PointerIconCompat.class */
public final class PointerIconCompat {

    /* renamed from: a */
    private Object f3274a;

    private PointerIconCompat(Object obj) {
        this.f3274a = obj;
    }

    /* renamed from: b */
    public static PointerIconCompat m19246b(Context context, int i) {
        return Build.VERSION.SDK_INT >= 24 ? new PointerIconCompat(PointerIcon.getSystemIcon(context, i)) : new PointerIconCompat(null);
    }

    @RestrictTo
    /* renamed from: a */
    public Object m19247a() {
        return this.f3274a;
    }
}
