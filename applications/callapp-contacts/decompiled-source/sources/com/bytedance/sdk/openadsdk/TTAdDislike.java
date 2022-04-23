package com.bytedance.sdk.openadsdk;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTAdDislike.class */
public interface TTAdDislike {

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTAdDislike$DislikeInteractionCallback.class */
    public interface DislikeInteractionCallback {
        void onCancel();

        void onRefuse();

        void onSelected(int i, String str);
    }

    void setDislikeInteractionCallback(DislikeInteractionCallback dislikeInteractionCallback);

    void showDislikeDialog();
}
