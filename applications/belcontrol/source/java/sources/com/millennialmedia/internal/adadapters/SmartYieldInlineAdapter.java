package com.millennialmedia.internal.adadapters;

import android.content.Context;
import android.view.View;
import android.widget.RelativeLayout;
import com.millennialmedia.InlineAd;
import com.millennialmedia.internal.AdPlacement;
import com.millennialmedia.internal.Handshake;
import com.millennialmedia.internal.adadapters.InlineAdapter;
import com.millennialmedia.internal.utils.ViewUtils;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adadapters/SmartYieldInlineAdapter.class */
public class SmartYieldInlineAdapter extends InlineAdapter {
    private Context context;
    private InlineAdapter downstreamMediatedAdAdapter;
    private InlineAdapter inlineAdapter;
    private InlineAdapter.InlineAdapterListener mediatedAdapterListener;
    private SmartYieldInlineAdapterListener upstreamMediatedAdAdapter;

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adadapters/SmartYieldInlineAdapter$SmartYieldInlineAdapterListener.class */
    public interface SmartYieldInlineAdapterListener {
        void attachView(View view);
    }

    public SmartYieldInlineAdapter(InlineAdapter inlineAdapter, SmartYieldInlineAdapterListener smartYieldInlineAdapterListener, InlineAdapter inlineAdapter2, InlineAdapter.InlineAdapterListener inlineAdapterListener) {
        this.mediatedAdapterListener = inlineAdapterListener;
        this.inlineAdapter = inlineAdapter;
        this.upstreamMediatedAdAdapter = smartYieldInlineAdapterListener;
        this.downstreamMediatedAdAdapter = inlineAdapter2;
    }

    @Override // com.millennialmedia.internal.adadapters.InlineAdapter
    public void display(RelativeLayout relativeLayout, InlineAd.AdSize adSize) {
        new RelativeLayout.LayoutParams(ViewUtils.convertDipsToPixels(adSize.width), ViewUtils.convertDipsToPixels(adSize.height)).addRule(13);
        RelativeLayout relativeLayout2 = new RelativeLayout(this.context);
        this.inlineAdapter.display(relativeLayout2, adSize);
        this.upstreamMediatedAdAdapter.attachView(relativeLayout2);
        this.downstreamMediatedAdAdapter.display(relativeLayout, adSize);
    }

    @Override // com.millennialmedia.internal.adadapters.AdAdapter
    public long getImpressionDelay() {
        InlineAdapter inlineAdapter = this.inlineAdapter;
        return inlineAdapter != null ? inlineAdapter.getImpressionDelay() : Handshake.getMinImpressionDuration();
    }

    @Override // com.millennialmedia.internal.adadapters.AdAdapter
    public int getMinImpressionViewabilityPercentage() {
        InlineAdapter inlineAdapter = this.inlineAdapter;
        return inlineAdapter != null ? inlineAdapter.getMinImpressionViewabilityPercentage() : Handshake.getMinImpressionViewabilityPercent();
    }

    @Override // com.millennialmedia.internal.adadapters.InlineAdapter
    public void init(Context context, InlineAdapter.InlineAdapterListener inlineAdapterListener, AdPlacement.DisplayOptions displayOptions) {
        this.context = context;
        this.inlineAdapter.init(context, this.mediatedAdapterListener, displayOptions);
        this.downstreamMediatedAdAdapter.init(context, inlineAdapterListener, displayOptions);
    }

    @Override // com.millennialmedia.internal.adadapters.AdAdapter
    public void release() {
        InlineAdapter inlineAdapter = this.inlineAdapter;
        if (inlineAdapter != null) {
            inlineAdapter.release();
        }
    }
}
