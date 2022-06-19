package com.pubmatic.sdk.video.player;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.pubmatic.sdk.common.POBCommonConstants;
import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.base.POBAdDescriptor;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.network.PMNetworkMonitor;
import com.pubmatic.sdk.common.p019ui.POBHtmlRendererListener;
import com.pubmatic.sdk.common.utility.POBUtils;
import com.pubmatic.sdk.video.C1968R;
import com.pubmatic.sdk.video.POBLogConstants;
import com.pubmatic.sdk.video.POBVastError;
import com.pubmatic.sdk.video.player.POBVastHTMLView;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/player/POBEndCardView.class */
public class POBEndCardView extends POBVastHTMLView<POBAdDescriptor> implements POBHtmlRendererListener {

    /* renamed from: b */
    private AbstractC1973b f884b;

    /* renamed from: c */
    private String f885c;

    /* renamed from: d */
    private POBAdDescriptor f886d;

    /* renamed from: com.pubmatic.sdk.video.player.POBEndCardView$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/player/POBEndCardView$a.class */
    public class View$OnClickListenerC1972a implements View.OnClickListener {
        View$OnClickListenerC1972a() {
            POBEndCardView.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (POBEndCardView.this.f884b != null) {
                POBEndCardView.this.f884b.mo655a();
            }
        }
    }

    /* renamed from: com.pubmatic.sdk.video.player.POBEndCardView$b */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/player/POBEndCardView$b.class */
    public interface AbstractC1973b extends POBVastHTMLView.AbstractC1975b {
        /* renamed from: a */
        void mo655a();
    }

    public POBEndCardView(Context context) {
        super(context);
        setBackgroundColor(getResources().getColor(17170444));
    }

    /* renamed from: a */
    private void m704a(POBVastError pOBVastError) {
        AbstractC1973b abstractC1973b = this.f884b;
        if (abstractC1973b != null) {
            abstractC1973b.mo654a(pOBVastError);
        }
        m702a(this.f885c);
    }

    /* renamed from: a */
    private void m702a(String str) {
        PMLog.debug("POBEndCardView", POBLogConstants.MSG_RENDERING_LEARN_MORE, new Object[0]);
        Resources resources = getResources();
        setBackgroundColor(resources.getColor(17170445));
        TextView m621a = C1993a.m621a(getContext(), C1968R.C1971id.learn_more_btn, str, resources.getColor(C1968R.C1969color.pob_controls_background_color));
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-2, resources.getDimensionPixelOffset(C1968R.dimen.pob_control_height));
        layoutParams.gravity = 81;
        layoutParams.bottomMargin = resources.getDimensionPixelOffset(C1968R.dimen.pob_end_card_learn_more__bottom_margin);
        addView(m621a, layoutParams);
        m621a.setOnClickListener(new View$OnClickListenerC1972a());
    }

    /* renamed from: a */
    public void m705a(POBAdDescriptor pOBAdDescriptor) {
        POBVastError pOBVastError;
        if (pOBAdDescriptor == null) {
            m702a(this.f885c);
            return;
        }
        PMLog.debug("POBEndCardView", POBLogConstants.MSG_END_CARD_FOUND, new Object[0]);
        if (PMNetworkMonitor.isNetworkAvailable(getContext())) {
            this.f886d = pOBAdDescriptor;
            if (renderVastHTMLView(pOBAdDescriptor)) {
                return;
            }
            pOBVastError = new POBVastError(POBVastError.NO_SUPPORTED_COMPANION_AD_RESOURCE, POBLogConstants.MSG_END_CARD_NO_SUPPORTED_RESOURCE);
        } else {
            pOBVastError = new POBVastError(POBVastError.COMPANION_AD_DISPLAY_ERROR, POBLogConstants.MSG_END_CARD_NETWORK_ERROR);
        }
        m704a(pOBVastError);
    }

    @Override // com.pubmatic.sdk.common.p019ui.POBHtmlRendererListener
    public void onViewClicked(String str) {
        if (this.f884b != null) {
            if (POBCommonConstants.PLACEHOLDER_CLICK_THROUGH.contentEquals(str)) {
                this.f884b.mo653a((String) null);
            } else {
                this.f884b.mo653a(str);
            }
        }
    }

    @Override // com.pubmatic.sdk.common.p019ui.POBHtmlRendererListener
    public void onViewRendered(View view) {
        if (getChildCount() != 0 || this.f886d == null) {
            return;
        }
        AbstractC1973b abstractC1973b = this.f884b;
        if (abstractC1973b != null) {
            abstractC1973b.mo652b();
        }
        int convertDpToPixel = POBUtils.convertDpToPixel(this.f886d.getContentWidth());
        int convertDpToPixel2 = POBUtils.convertDpToPixel(this.f886d.getContentHeight());
        int i = convertDpToPixel;
        if (convertDpToPixel > getWidth()) {
            i = getWidth();
        }
        int i2 = convertDpToPixel2;
        if (convertDpToPixel2 > getHeight()) {
            i2 = getHeight();
        }
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(i, i2);
        layoutParams.gravity = 17;
        view.setBackgroundColor(getResources().getColor(17170443));
        addView(view, layoutParams);
    }

    @Override // com.pubmatic.sdk.common.p019ui.POBHtmlRendererListener
    public void onViewRenderingFailed(POBError pOBError) {
        m704a(new POBVastError(POBVastError.COMPANION_AD_DISPLAY_ERROR, POBLogConstants.MSG_END_CARD_RENDERING_ERROR));
    }

    public void setLearnMoreTitle(String str) {
        this.f885c = str;
    }

    public void setListener(AbstractC1973b abstractC1973b) {
        this.f884b = abstractC1973b;
    }
}
