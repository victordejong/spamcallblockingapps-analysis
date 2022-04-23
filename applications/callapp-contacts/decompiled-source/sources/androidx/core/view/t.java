package androidx.core.view;

import android.content.Context;
import android.os.Build;
import android.view.PointerIcon;
import com.facebook.ads.AdError;
/* loaded from: classes-dex2jar.jar:androidx/core/view/t.class */
public final class t {

    /* renamed from: a  reason: collision with root package name */
    Object f2013a;

    private t(Object obj) {
        this.f2013a = obj;
    }

    public static t a(Context context) {
        return Build.VERSION.SDK_INT >= 24 ? new t(PointerIcon.getSystemIcon(context, AdError.LOAD_TOO_FREQUENTLY_ERROR_CODE)) : new t(null);
    }
}
