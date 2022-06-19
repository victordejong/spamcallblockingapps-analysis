package com.verizon.ads.inlineplacement;

import android.content.Context;
import android.view.View;
import com.verizon.ads.AdAdapter;
import com.verizon.ads.ErrorInfo;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/inlineplacement/InlineAdAdapter.class */
public interface InlineAdAdapter extends AdAdapter {

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/inlineplacement/InlineAdAdapter$InlineAdAdapterListener.class */
    public interface InlineAdAdapterListener {
        void onAdLeftApplication();

        void onClicked();

        void onCollapsed();

        void onError(ErrorInfo errorInfo);

        void onExpanded();

        void onResized();
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/inlineplacement/InlineAdAdapter$LoadViewListener.class */
    public interface LoadViewListener {
        void onComplete(ErrorInfo errorInfo);
    }

    void abortLoad();

    void fireImpression();

    AdSize getAdSize();

    View getView();

    boolean isExpanded();

    boolean isImmersiveEnabled();

    boolean isResized();

    void loadView(Context context, int i, LoadViewListener loadViewListener);

    void release();

    void setImmersiveEnabled(boolean z);

    void setListener(InlineAdAdapterListener inlineAdAdapterListener);
}
