package com.bytedance.sdk.openadsdk.core.video.renderview;

import android.view.SurfaceHolder;
import android.view.View;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/renderview/b.class */
public interface b {

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/renderview/b$a.class */
    public interface a {
        void a(int i);
    }

    void a(int i, int i2);

    void a(com.bytedance.sdk.openadsdk.core.video.renderview.a aVar);

    SurfaceHolder getHolder();

    View getView();

    void setVisibility(int i);
}
