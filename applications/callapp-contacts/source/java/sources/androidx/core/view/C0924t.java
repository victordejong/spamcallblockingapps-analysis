package androidx.core.view;

import android.content.Context;
import android.os.Build;
import android.view.PointerIcon;
import com.facebook.ads.AdError;
/* renamed from: androidx.core.view.t */
/* loaded from: classes-dex2jar.jar:androidx/core/view/t.class */
public final class C0924t {

    /* renamed from: a */
    Object f3759a;

    private C0924t(Object obj) {
        this.f3759a = obj;
    }

    /* renamed from: a */
    public static C0924t m44159a(Context context) {
        return Build.VERSION.SDK_INT >= 24 ? new C0924t(PointerIcon.getSystemIcon(context, AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE)) : new C0924t(null);
    }
}
