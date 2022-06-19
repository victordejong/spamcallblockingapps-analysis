package com.pubmatic.sdk.common.p019ui;

import android.view.View;
import com.pubmatic.sdk.common.POBError;
/* renamed from: com.pubmatic.sdk.common.ui.POBHtmlRendererListener */
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/ui/POBHtmlRendererListener.class */
public interface POBHtmlRendererListener {
    void onViewClicked(String str);

    void onViewRendered(View view);

    void onViewRenderingFailed(POBError pOBError);
}
