package it.gmariotti.cardslib.library.view.p515b;

import android.content.Context;
import android.os.Build;
/* renamed from: it.gmariotti.cardslib.library.view.b.f */
/* loaded from: classes5-dex2jar.jar:it/gmariotti/cardslib/library/view/b/f.class */
public final class C18159f {
    /* renamed from: a */
    public static AbstractC18154a m4373a(Context context) {
        return Build.VERSION.SDK_INT > 19 ? new C18158e(context) : Build.VERSION.SDK_INT == 19 ? new C18157d(context) : Build.VERSION.SDK_INT >= 16 ? new C18156c(context) : new C18155b(context);
    }
}
