package com.bytedance.sdk.openadsdk.core.video.renderview;

import android.content.Context;
import android.view.SurfaceView;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/renderview/SSSurfaceView.class */
public class SSSurfaceView extends SurfaceView {
    public SSSurfaceView(Context context) {
        super(context);
    }

    @Override // android.view.SurfaceView, android.view.View
    public void onWindowVisibilityChanged(int i) {
        if (i == 0) {
            super.onWindowVisibilityChanged(i);
        }
    }
}
