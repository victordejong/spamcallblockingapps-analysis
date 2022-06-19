package com.verizon.ads.verizonnativecontroller;

import android.net.Uri;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonnativecontroller/NativeImageComponent.class */
public interface NativeImageComponent extends NativeMediaComponent, NativeViewComponent {
    float getOpacity();

    Uri getUri();

    void setBackgroundColor(int i);

    void setColorFilter(int i);

    void setOpacity(float f);
}
