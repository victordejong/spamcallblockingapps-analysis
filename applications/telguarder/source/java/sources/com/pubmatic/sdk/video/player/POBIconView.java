package com.pubmatic.sdk.video.player;

import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.pubmatic.sdk.common.POBCommonConstants;
import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.network.PMNetworkMonitor;
import com.pubmatic.sdk.common.p019ui.POBHtmlRendererListener;
import com.pubmatic.sdk.video.POBLogConstants;
import com.pubmatic.sdk.video.POBVastError;
import com.pubmatic.sdk.video.player.POBVastHTMLView;
import com.pubmatic.sdk.video.vastmodels.POBIcon;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/player/POBIconView.class */
public class POBIconView extends POBVastHTMLView<POBIcon> implements POBHtmlRendererListener {

    /* renamed from: b */
    private POBVastHTMLView.AbstractC1975b f888b;

    public POBIconView(Context context) {
        super(context);
    }

    /* renamed from: a */
    public void m701a(POBIcon pOBIcon) {
        POBVastHTMLView.AbstractC1975b abstractC1975b;
        if (pOBIcon != null) {
            if (!PMNetworkMonitor.isNetworkAvailable(getContext())) {
                PMLog.debug("POBIconView", POBLogConstants.MSG_RENDERING_ICON_FAILURE_NO_NETWORK, new Object[0]);
            } else if (renderVastHTMLView(pOBIcon) || (abstractC1975b = this.f888b) == null) {
            } else {
                abstractC1975b.mo654a(new POBVastError(POBVastError.UNDEFINED_ERROR, POBLogConstants.MSG_ICON_RENDERING_FAILURE));
            }
        }
    }

    @Override // com.pubmatic.sdk.common.p019ui.POBHtmlRendererListener
    public void onViewClicked(String str) {
        if (this.f888b == null || str == null) {
            return;
        }
        if (POBCommonConstants.PLACEHOLDER_CLICK_THROUGH.contentEquals(str)) {
            this.f888b.mo653a((String) null);
        } else {
            this.f888b.mo653a(str);
        }
    }

    @Override // com.pubmatic.sdk.common.p019ui.POBHtmlRendererListener
    public void onViewRendered(View view) {
        if (getChildCount() == 0) {
            POBVastHTMLView.AbstractC1975b abstractC1975b = this.f888b;
            if (abstractC1975b != null) {
                abstractC1975b.mo652b();
            }
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            layoutParams.gravity = 17;
            addView(view, layoutParams);
        }
    }

    @Override // com.pubmatic.sdk.common.p019ui.POBHtmlRendererListener
    public void onViewRenderingFailed(POBError pOBError) {
        POBVastHTMLView.AbstractC1975b abstractC1975b = this.f888b;
        if (abstractC1975b != null) {
            abstractC1975b.mo654a(new POBVastError(POBVastError.UNDEFINED_ERROR, POBLogConstants.MSG_RENDERING_ICON_FAILURE));
        }
    }

    public void setListener(POBVastHTMLView.AbstractC1975b abstractC1975b) {
        this.f888b = abstractC1975b;
    }
}
