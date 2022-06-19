package androidx.core.app;

import android.app.Dialog;
import android.os.Build;
import android.view.View;
/* loaded from: classes-dex2jar.jar:androidx/core/app/DialogCompat.class */
public class DialogCompat {
    private DialogCompat() {
    }

    public static View requireViewById(Dialog dialog, int i) {
        if (Build.VERSION.SDK_INT >= 28) {
            return dialog.requireViewById(i);
        }
        View findViewById = dialog.findViewById(i);
        if (findViewById == null) {
            throw new IllegalArgumentException("ID does not reference a View inside this Dialog");
        }
        return findViewById;
    }
}
