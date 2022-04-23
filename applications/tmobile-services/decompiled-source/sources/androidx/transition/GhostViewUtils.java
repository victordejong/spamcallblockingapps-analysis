package androidx.transition;

import android.graphics.Matrix;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
/* loaded from: classes-dex2jar.jar:androidx/transition/GhostViewUtils.class */
class GhostViewUtils {
    private GhostViewUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    /* renamed from: a */
    public static GhostView m16812a(@NonNull View view, @NonNull ViewGroup viewGroup, @Nullable Matrix matrix) {
        return Build.VERSION.SDK_INT == 28 ? GhostViewPlatform.m16825b(view, viewGroup, matrix) : GhostViewPort.m16819b(view, viewGroup, matrix);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public static void m16811b(View view) {
        if (Build.VERSION.SDK_INT == 28) {
            GhostViewPlatform.m16821f(view);
        } else {
            GhostViewPort.m16815f(view);
        }
    }
}
