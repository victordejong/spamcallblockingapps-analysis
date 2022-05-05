package com.facebook.stetho.inspector.elements.android.window;

import android.content.Context;
import android.os.Build;
import android.view.View;
import androidx.annotation.NonNull;
import com.facebook.stetho.common.Util;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/facebook/stetho/inspector/elements/android/window/WindowRootViewCompat.class */
public abstract class WindowRootViewCompat {
    private static WindowRootViewCompat sInstance;

    public static WindowRootViewCompat get(Context context) {
        WindowRootViewCompat windowRootViewCompat = sInstance;
        if (windowRootViewCompat != null) {
            return windowRootViewCompat;
        }
        Util.throwIfNull(context);
        int i = Build.VERSION.SDK_INT;
        if (i >= 19) {
            sInstance = new WindowRootViewCompactV19Impl();
        } else if (i == 17 || i == 18) {
            sInstance = new WindowRootViewCompactV18Impl();
        } else {
            sInstance = new WindowRootViewCompactV16Impl(context.getApplicationContext());
        }
        return sInstance;
    }

    @NonNull
    public abstract List<View> getRootViews();
}
