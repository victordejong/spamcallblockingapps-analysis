package androidx.core.p023g;

import android.content.Context;
import android.os.Build;
import android.view.PointerIcon;
/* renamed from: androidx.core.g.s */
/* loaded from: classes-dex2jar.jar:androidx/core/g/s.class */
public final class C0550s {

    /* renamed from: a */
    private Object f1880a;

    private C0550s(Object obj) {
        this.f1880a = obj;
    }

    /* renamed from: a */
    public static C0550s m6296a(Context context, int i) {
        return Build.VERSION.SDK_INT >= 24 ? new C0550s(PointerIcon.getSystemIcon(context, i)) : new C0550s(null);
    }

    /* renamed from: a */
    public Object m6297a() {
        return this.f1880a;
    }
}
