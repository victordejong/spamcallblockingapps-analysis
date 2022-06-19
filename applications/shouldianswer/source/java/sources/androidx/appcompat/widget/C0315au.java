package androidx.appcompat.widget;

import android.os.Build;
import android.view.View;
/* renamed from: androidx.appcompat.widget.au */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/au.class */
public class C0315au {
    /* renamed from: a */
    public static void m7132a(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setTooltipText(charSequence);
        } else {
            View$OnAttachStateChangeListenerC0316av.m7129a(view, charSequence);
        }
    }
}
