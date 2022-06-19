package net.pubnative.lite.sdk.mraid;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/mraid/MRAIDViewListener.class */
public interface MRAIDViewListener {
    void mraidShowCloseButton();

    void mraidViewClose(MRAIDView mRAIDView);

    void mraidViewExpand(MRAIDView mRAIDView);

    void mraidViewLoaded(MRAIDView mRAIDView);

    boolean mraidViewResize(MRAIDView mRAIDView, int i, int i2, int i3, int i4);
}
