package p020b.p041h.p050l;

import android.content.Context;
import android.os.Build;
import android.view.PointerIcon;
/* renamed from: b.h.l.u */
/* loaded from: classes-dex2jar.jar:b/h/l/u.class */
public final class C1677u {

    /* renamed from: a */
    private Object f6338a;

    private C1677u(Object obj) {
        this.f6338a = obj;
    }

    /* renamed from: b */
    public static C1677u m29351b(Context context, int i) {
        return Build.VERSION.SDK_INT >= 24 ? new C1677u(PointerIcon.getSystemIcon(context, i)) : new C1677u(null);
    }

    /* renamed from: a */
    public Object m29352a() {
        return this.f6338a;
    }
}
