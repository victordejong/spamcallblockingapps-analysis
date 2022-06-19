package androidx.appcompat.widget;

import android.os.Build;
import android.view.View;
/* renamed from: androidx.appcompat.widget.g0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/g0.class */
public class C0293g0 {
    /* renamed from: a */
    public static void m34913a(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setTooltipText(charSequence);
        } else {
            View$OnLongClickListenerC0295h0.m34897f(view, charSequence);
        }
    }
}
