package io.bidmachine.nativead;

import android.view.View;
import android.widget.ImageView;
import io.bidmachine.nativead.view.NativeMediaView;
import java.util.Set;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/nativead/NativeNetworkAdapter.class */
public abstract class NativeNetworkAdapter implements NativeData {
    public boolean configureMediaView(NativeMediaView nativeMediaView) {
        return false;
    }

    public View configureProviderView() {
        return null;
    }

    public void destroy() {
    }

    @Override // io.bidmachine.nativead.NativeData
    public String getClickUrl() {
        return null;
    }

    @Override // io.bidmachine.nativead.NativePublicData
    public String getDescription() {
        return null;
    }

    @Override // io.bidmachine.nativead.NativeData
    public String getIconUrl() {
        return null;
    }

    @Override // io.bidmachine.nativead.NativeData
    public String getImageUrl() {
        return null;
    }

    @Override // io.bidmachine.nativead.NativePublicData
    public float getRating() {
        return -1.0f;
    }

    @Override // io.bidmachine.nativead.NativeData
    public String getVideoAdm() {
        return null;
    }

    @Override // io.bidmachine.nativead.NativeData
    public String getVideoUrl() {
        return null;
    }

    @Override // io.bidmachine.nativead.NativePublicData
    public boolean hasVideo() {
        return false;
    }

    public void registerNative(View view, ImageView imageView, NativeMediaView nativeMediaView, Set<View> set) {
    }

    public void unregisterNative() {
    }
}
