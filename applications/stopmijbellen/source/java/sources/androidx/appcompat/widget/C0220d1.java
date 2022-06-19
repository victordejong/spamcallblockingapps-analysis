package androidx.appcompat.widget;

import android.os.Build;
import android.text.TextUtils;
import android.view.View;
/* renamed from: androidx.appcompat.widget.d1 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/d1.class */
public class C0220d1 {
    /* renamed from: a */
    public static void m8549a(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setTooltipText(charSequence);
            return;
        }
        View$OnLongClickListenerC0223e1 view$OnLongClickListenerC0223e1 = View$OnLongClickListenerC0223e1.f920j;
        if (view$OnLongClickListenerC0223e1 != null && view$OnLongClickListenerC0223e1.f922a == view) {
            View$OnLongClickListenerC0223e1.m8537c(null);
        }
        if (!TextUtils.isEmpty(charSequence)) {
            new View$OnLongClickListenerC0223e1(view, charSequence);
            return;
        }
        View$OnLongClickListenerC0223e1 view$OnLongClickListenerC0223e12 = View$OnLongClickListenerC0223e1.f921k;
        if (view$OnLongClickListenerC0223e12 != null && view$OnLongClickListenerC0223e12.f922a == view) {
            view$OnLongClickListenerC0223e12.m8538b();
        }
        view.setOnLongClickListener(null);
        view.setLongClickable(false);
        view.setOnHoverListener(null);
    }
}
