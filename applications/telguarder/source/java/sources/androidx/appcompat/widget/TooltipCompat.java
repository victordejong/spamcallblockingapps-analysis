package androidx.appcompat.widget;

import android.os.Build;
import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/TooltipCompat.class */
public class TooltipCompat {
    private TooltipCompat() {
    }

    public static void setTooltipText(View view, CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setTooltipText(charSequence);
        } else {
            TooltipCompatHandler.setTooltipText(view, charSequence);
        }
    }
}
