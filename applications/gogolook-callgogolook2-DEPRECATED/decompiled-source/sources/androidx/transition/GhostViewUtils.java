package androidx.transition;

import android.graphics.Matrix;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
/* loaded from: classes-dex2jar.jar:androidx/transition/GhostViewUtils.class */
public class GhostViewUtils {
    public static GhostViewImpl addGhost(View view, ViewGroup viewGroup, Matrix matrix) {
        return Build.VERSION.SDK_INT >= 21 ? GhostViewApi21.addGhost(view, viewGroup, matrix) : GhostViewApi14.addGhost(view, viewGroup);
    }

    public static void removeGhost(View view) {
        if (Build.VERSION.SDK_INT >= 21) {
            GhostViewApi21.removeGhost(view);
        } else {
            GhostViewApi14.removeGhost(view);
        }
    }
}
