package com.verizon.ads.verizonnativecontroller;

import android.graphics.Typeface;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonnativecontroller/NativeTextComponent.class */
public interface NativeTextComponent extends NativeViewComponent {
    String getText();

    void setBackgroundColor(int i);

    void setTextColor(int i);

    void setTextSize(int i, float f);

    void setTypeface(Typeface typeface);
}
