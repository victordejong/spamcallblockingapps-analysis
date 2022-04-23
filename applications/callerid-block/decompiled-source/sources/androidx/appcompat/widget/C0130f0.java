package androidx.appcompat.widget;

import android.os.Build;
import android.view.View;
/* renamed from: androidx.appcompat.widget.f0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/f0.class */
public class C0130f0 {
    /* renamed from: a */
    public static void m14599a(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setTooltipText(charSequence);
        } else {
            View$OnLongClickListenerC0132g0.m14592f(view, charSequence);
        }
    }
}
