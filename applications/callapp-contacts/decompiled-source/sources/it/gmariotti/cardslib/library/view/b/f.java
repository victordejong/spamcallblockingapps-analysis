package it.gmariotti.cardslib.library.view.b;

import android.content.Context;
import android.os.Build;
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/b/f.class */
public final class f {
    public static a a(Context context) {
        return Build.VERSION.SDK_INT > 19 ? new e(context) : Build.VERSION.SDK_INT == 19 ? new d(context) : Build.VERSION.SDK_INT >= 16 ? new c(context) : new b(context);
    }
}
