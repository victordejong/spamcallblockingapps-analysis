package net.pubnative.lite.sdk.vpaid;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
/* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/VideoAdView.class */
public class VideoAdView extends FrameLayout {
    private VisibilityListener mVisibilityListener;

    /* loaded from: classes5-dex2jar.jar:net/pubnative/lite/sdk/vpaid/VideoAdView$VisibilityListener.class */
    public interface VisibilityListener {
        void onVisibilityChanged(int i);
    }

    public VideoAdView(Context context) {
        super(context);
    }

    public VideoAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public VideoAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        VisibilityListener visibilityListener = this.mVisibilityListener;
        if (visibilityListener != null) {
            visibilityListener.onVisibilityChanged(4);
        }
    }

    @Override // android.view.View
    protected void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        VisibilityListener visibilityListener = this.mVisibilityListener;
        if (visibilityListener != null) {
            visibilityListener.onVisibilityChanged(i);
        }
    }

    public void setVisibilityListener(VisibilityListener visibilityListener) {
        if (visibilityListener != null) {
            this.mVisibilityListener = visibilityListener;
        }
    }
}
