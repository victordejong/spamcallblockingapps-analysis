package androidx.media2.widget;

import android.view.View;
import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/VideoViewInterface.class */
public interface VideoViewInterface {

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/VideoViewInterface$SurfaceListener.class */
    public interface SurfaceListener {
        void onSurfaceChanged(@NonNull View view, int i, int i2);

        void onSurfaceCreated(@NonNull View view, int i, int i2);

        void onSurfaceDestroyed(@NonNull View view);

        void onSurfaceTakeOverDone(@NonNull VideoViewInterface videoViewInterface);
    }

    boolean assignSurfaceToPlayerWrapper(PlayerWrapper playerWrapper);

    int getViewType();

    boolean hasAvailableSurface();

    void setSurfaceListener(SurfaceListener surfaceListener);
}
