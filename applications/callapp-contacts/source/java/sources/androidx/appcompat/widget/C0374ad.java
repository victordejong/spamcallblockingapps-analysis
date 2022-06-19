package androidx.appcompat.widget;

import android.os.Build;
import android.view.View;
/* renamed from: androidx.appcompat.widget.ad */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ad.class */
public final class C0374ad {
    private C0374ad() {
    }

    /* renamed from: a */
    public static void m45785a(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setTooltipText(charSequence);
        } else {
            View$OnAttachStateChangeListenerC0375ae.m45783a(view, charSequence);
        }
    }
}
