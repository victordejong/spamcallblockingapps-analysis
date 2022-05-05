package androidx.appcompat.widget;

import android.os.Build;
import android.view.View;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/TooltipCompat.class */
public class TooltipCompat {
    private TooltipCompat() {
    }

    /* renamed from: a */
    public static void m21170a(@NonNull View view, @Nullable CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setTooltipText(charSequence);
        } else {
            TooltipCompatHandler.m21164f(view, charSequence);
        }
    }
}
