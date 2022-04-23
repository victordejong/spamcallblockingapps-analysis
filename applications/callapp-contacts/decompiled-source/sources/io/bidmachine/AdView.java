package io.bidmachine;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import io.bidmachine.AdListener;
import io.bidmachine.AdRequest;
import io.bidmachine.AdView;
import io.bidmachine.ViewAd;
import io.bidmachine.ViewAdObject;
import io.bidmachine.models.AuctionResult;
import io.bidmachine.utils.BMError;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/AdView.class */
public abstract class AdView<SelfType extends AdView<SelfType, AdType, AdRequestType, AdObjectType, ExternalAdListenerType>, AdType extends ViewAd<AdType, AdRequestType, AdObjectType, ?, AdListener<AdType>>, AdRequestType extends AdRequest<AdRequestType, ?>, AdObjectType extends ViewAdObject<AdRequestType, ?, ?>, ExternalAdListenerType extends AdListener<SelfType>> extends FrameLayout implements IAd<SelfType, AdRequestType> {
    private final AdListener<AdType> adListener;
    private AdType currentAd;
    private ExternalAdListenerType externalListener;
    private boolean isAttachedToWindow;
    private boolean isShowPending;
    private AdType pendingAd;

    public AdView(Context context) {
        this(context, null);
    }

    public AdView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public AdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.isShowPending = false;
        this.isAttachedToWindow = false;
        this.adListener = (AdListener<AdType>) new AdListener<AdType>() { // from class: io.bidmachine.AdView.1
            /* JADX WARN: Multi-variable type inference failed */
            @Override // io.bidmachine.AdListener
            public final /* bridge */ /* synthetic */ void onAdClicked(IAd iAd) {
                onAdClicked((AnonymousClass1) ((ViewAd) iAd));
            }

            public final void onAdClicked(AdType adtype) {
                if (AdView.this.externalListener != null) {
                    AdView.this.externalListener.onAdClicked(AdView.this);
                }
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // io.bidmachine.AdListener
            public final /* bridge */ /* synthetic */ void onAdExpired(IAd iAd) {
                onAdExpired((AnonymousClass1) ((ViewAd) iAd));
            }

            public final void onAdExpired(AdType adtype) {
                if (AdView.this.externalListener != null) {
                    AdView.this.externalListener.onAdExpired(AdView.this);
                }
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // io.bidmachine.AdListener
            public final /* bridge */ /* synthetic */ void onAdImpression(IAd iAd) {
                onAdImpression((AnonymousClass1) ((ViewAd) iAd));
            }

            public final void onAdImpression(AdType adtype) {
                if (AdView.this.externalListener != null) {
                    AdView.this.externalListener.onAdImpression(AdView.this);
                }
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // io.bidmachine.AdListener
            public final /* bridge */ /* synthetic */ void onAdLoadFailed(IAd iAd, BMError bMError) {
                onAdLoadFailed((AnonymousClass1) ((ViewAd) iAd), bMError);
            }

            public final void onAdLoadFailed(AdType adtype, BMError bMError) {
                if (AdView.this.externalListener != null) {
                    AdView.this.externalListener.onAdLoadFailed(AdView.this, bMError);
                }
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // io.bidmachine.AdListener
            public final /* bridge */ /* synthetic */ void onAdLoaded(IAd iAd) {
                onAdLoaded((AnonymousClass1) ((ViewAd) iAd));
            }

            public final void onAdLoaded(AdType adtype) {
                if (AdView.this.externalListener != null) {
                    AdView.this.externalListener.onAdLoaded(AdView.this);
                }
                AdView.this.performShow();
            }

            /* JADX WARN: Multi-variable type inference failed */
            @Override // io.bidmachine.AdListener
            public final /* bridge */ /* synthetic */ void onAdShown(IAd iAd) {
                onAdShown((AnonymousClass1) ((ViewAd) iAd));
            }

            public final void onAdShown(AdType adtype) {
                if (AdView.this.externalListener != null) {
                    AdView.this.externalListener.onAdShown(AdView.this);
                }
            }
        };
    }

    private boolean canPerformShow() {
        return this.isAttachedToWindow && this.isShowPending && getVisibility() != 8;
    }

    private boolean canShow(AdType adtype) {
        return adtype != null && adtype.canShow();
    }

    private boolean isLoaded(AdType adtype) {
        return adtype != null && adtype.isLoaded();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performShow() {
        if (canPerformShow()) {
            prepareDisplayRequest();
            if (canShow()) {
                this.currentAd.show(this);
                this.isShowPending = false;
            }
        }
    }

    private void prepareDisplayRequest() {
        AdType adtype = this.pendingAd;
        if (adtype != null && adtype.isLoaded()) {
            AdType adtype2 = this.currentAd;
            if (adtype2 != null) {
                adtype2.destroy();
            }
            this.currentAd = this.pendingAd;
            this.pendingAd = null;
        }
    }

    @Override // io.bidmachine.IAd
    public boolean canShow() {
        return canShow(this.currentAd) || canShow(this.pendingAd);
    }

    protected abstract AdType createAd(Context context);

    @Override // io.bidmachine.IAd
    public void destroy() {
        AdType adtype = this.currentAd;
        if (adtype != null) {
            adtype.destroy();
            this.currentAd = null;
        }
        AdType adtype2 = this.pendingAd;
        if (adtype2 != null) {
            adtype2.destroy();
            this.pendingAd = null;
        }
    }

    @Override // io.bidmachine.IAd
    public AuctionResult getAuctionResult() {
        AdType adtype = this.currentAd;
        if (adtype != null) {
            return adtype.getAuctionResult();
        }
        AdType adtype2 = this.pendingAd;
        if (adtype2 != null) {
            return adtype2.getAuctionResult();
        }
        return null;
    }

    @Override // io.bidmachine.IAd
    public boolean isDestroyed() {
        AdType adtype = this.pendingAd;
        if (adtype != null) {
            return adtype.isDestroyed();
        }
        AdType adtype2 = this.currentAd;
        return adtype2 != null && adtype2.isDestroyed();
    }

    @Override // io.bidmachine.IAd
    public boolean isExpired() {
        AdType adtype = this.pendingAd;
        if (adtype != null) {
            return adtype.isExpired();
        }
        AdType adtype2 = this.currentAd;
        return adtype2 != null && adtype2.isExpired();
    }

    @Override // io.bidmachine.IAd
    public boolean isLoaded() {
        return isLoaded(this.currentAd) || isLoaded(this.pendingAd);
    }

    @Override // io.bidmachine.IAd
    public boolean isLoading() {
        AdType adtype = this.pendingAd;
        return adtype != null && adtype.isLoading();
    }

    @Override // io.bidmachine.IAd
    public SelfType load(AdRequestType adrequesttype) {
        this.isShowPending = true;
        AdType adtype = this.pendingAd;
        if (adtype != null) {
            adtype.destroy();
        }
        AdType createAd = createAd(getContext());
        this.pendingAd = createAd;
        createAd.setListener(this.adListener);
        this.pendingAd.load(adrequesttype);
        return this;
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        this.isAttachedToWindow = true;
        performShow();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        this.isAttachedToWindow = false;
        this.isShowPending = true;
    }

    public SelfType setListener(ExternalAdListenerType externaladlistenertype) {
        this.externalListener = externaladlistenertype;
        return this;
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (getVisibility() == 0) {
            performShow();
        }
    }
}
