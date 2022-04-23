package androidx.appcompat.widget;

import android.os.Build;
import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ad.class */
public final class ad {
    private ad() {
    }

    public static void a(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setTooltipText(charSequence);
        } else {
            ae.a(view, charSequence);
        }
    }
}
