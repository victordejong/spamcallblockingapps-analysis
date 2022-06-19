package com.facebook.ads.internal.api;

import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.Keep;
@Keep
/* loaded from: classes2-dex2jar.jar:com/facebook/ads/internal/api/AdComponentView.class */
public interface AdComponentView {
    void addView(View view);

    void addView(View view, int i);

    void addView(View view, int i, int i2);

    void addView(View view, int i, ViewGroup.LayoutParams layoutParams);

    void addView(View view, ViewGroup.LayoutParams layoutParams);

    void onWindowFocusChanged(boolean z);

    void setLayoutParams(ViewGroup.LayoutParams layoutParams);
}
