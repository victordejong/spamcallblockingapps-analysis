package com.verizon.ads.verizonnativecontroller;

import android.view.View;
import android.view.ViewGroup;
import com.verizon.ads.ErrorInfo;
import com.verizon.ads.ViewComponent;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/verizonnativecontroller/NativeViewComponent.class */
public interface NativeViewComponent extends ViewComponent, NativeComponent {
    boolean isDescendantOf(ViewGroup viewGroup);

    ErrorInfo prepareView(View view);
}
