package android.support.p004v7.widget;

import android.os.Build;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
/* renamed from: android.support.v7.widget.TooltipCompat */
/* loaded from: classes-dex2jar.jar:android/support/v7/widget/TooltipCompat.class */
public class TooltipCompat {
    private TooltipCompat() {
    }

    public static void setTooltipText(@NonNull View view, @Nullable CharSequence charSequence) {
        if (Build.VERSION.SDK_INT >= 26) {
            view.setTooltipText(charSequence);
        } else {
            TooltipCompatHandler.setTooltipText(view, charSequence);
        }
    }
}
