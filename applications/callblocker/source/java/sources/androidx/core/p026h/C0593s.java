package androidx.core.p026h;

import android.content.Context;
import android.os.Build;
import android.view.PointerIcon;
/* renamed from: androidx.core.h.s */
/* loaded from: classes-dex2jar.jar:androidx/core/h/s.class */
public final class C0593s {

    /* renamed from: a */
    private Object f2089a;

    private C0593s(Object obj) {
        this.f2089a = obj;
    }

    /* renamed from: a */
    public static C0593s m20372a(Context context, int i) {
        return Build.VERSION.SDK_INT >= 24 ? new C0593s(PointerIcon.getSystemIcon(context, i)) : new C0593s(null);
    }

    /* renamed from: a */
    public Object m20373a() {
        return this.f2089a;
    }
}
