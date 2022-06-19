package androidx.appcompat.widget;

import android.os.Build;
import android.view.View;
/* renamed from: androidx.appcompat.widget.ar */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ar.class */
public class C0321ar {
    /* renamed from: a */
    public static void m21406a(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setTooltipText(charSequence);
        } else {
            View$OnAttachStateChangeListenerC0322as.m21403a(view, charSequence);
        }
    }
}
