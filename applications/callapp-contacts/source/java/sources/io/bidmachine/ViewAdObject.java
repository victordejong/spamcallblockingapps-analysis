package io.bidmachine;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import io.bidmachine.AdObjectImpl;
import io.bidmachine.AdRequest;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.core.VisibilityTracker;
import io.bidmachine.models.AdObjectParams;
import io.bidmachine.unified.UnifiedAd;
import io.bidmachine.unified.UnifiedAdRequestParams;
import io.bidmachine.unified.UnifiedBannerAdCallback;
import io.bidmachine.utils.BMError;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/ViewAdObject.class */
public final class ViewAdObject<AdRequestType extends AdRequest<AdRequestType, UnifiedAdRequestParamsType>, UnifiedAdType extends UnifiedAd<UnifiedBannerAdCallback, UnifiedAdRequestParamsType>, UnifiedAdRequestParamsType extends UnifiedAdRequestParams> extends AdObjectImpl<AdRequestType, AdObjectParams, UnifiedAdType, UnifiedBannerAdCallback, UnifiedAdRequestParamsType> {
    private View adView;
    private int height;
    private int width;
    private MeasureMode widthMeasureMode = MeasureMode.Direct;
    private MeasureMode heightMeasureMode = MeasureMode.Direct;

    /* renamed from: io.bidmachine.ViewAdObject$2 */
    /* loaded from: classes5-dex2jar.jar:io/bidmachine/ViewAdObject$2.class */
    public static final /* synthetic */ class C178002 {
        static final /* synthetic */ int[] $SwitchMap$io$bidmachine$ViewAdObject$MeasureMode;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:7:0x0020 -> B:9:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[MeasureMode.values().length];
            $SwitchMap$io$bidmachine$ViewAdObject$MeasureMode = iArr;
            try {
                iArr[MeasureMode.Direct.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$io$bidmachine$ViewAdObject$MeasureMode[MeasureMode.Wrap.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
        }
    }

    /* loaded from: classes5-dex2jar.jar:io/bidmachine/ViewAdObject$MeasureMode.class */
    public enum MeasureMode {
        Match,
        Wrap,
        Direct;

        final int getSize(Context context, int i) {
            int i2 = C178002.$SwitchMap$io$bidmachine$ViewAdObject$MeasureMode[ordinal()];
            return i2 != 1 ? i2 != 2 ? -1 : -2 : Math.round(i * Utils.getScreenDensity(context));
        }
    }

    /* renamed from: io.bidmachine.ViewAdObject$a */
    /* loaded from: classes5-dex2jar.jar:io/bidmachine/ViewAdObject$a.class */
    public final class C17801a extends AdObjectImpl.BaseUnifiedAdCallback implements UnifiedBannerAdCallback {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C17801a(AdProcessCallback adProcessCallback) {
            super(adProcessCallback);
            ViewAdObject.this = r4;
        }

        @Override // io.bidmachine.unified.UnifiedBannerAdCallback
        public final void onAdLoaded(View view) {
            if (ViewAdObject.this.adView != null) {
                VisibilityTracker.stopTracking(ViewAdObject.this.adView);
            }
            ViewAdObject.this.adView = view;
            this.processCallback.processLoadSuccess();
        }
    }

    public ViewAdObject(ContextProvider contextProvider, AdProcessCallback adProcessCallback, AdRequestType adrequesttype, AdObjectParams adObjectParams, UnifiedAdType unifiedadtype) {
        super(contextProvider, adProcessCallback, adrequesttype, adObjectParams, unifiedadtype);
    }

    private int getHeight() {
        return this.height;
    }

    private int getScaledHeight(Context context) {
        return this.heightMeasureMode.getSize(context, getHeight());
    }

    private int getScaledWidth(Context context) {
        return this.widthMeasureMode.getSize(context, getWidth());
    }

    private int getWidth() {
        return this.width;
    }

    @Override // io.bidmachine.models.AdObject
    public final UnifiedBannerAdCallback createUnifiedCallback(AdProcessCallback adProcessCallback) {
        return new C17801a(adProcessCallback);
    }

    @Override // io.bidmachine.AdObjectImpl, io.bidmachine.models.AdObject
    public final void onDestroy() {
        View view = this.adView;
        if (view != null) {
            if (view.getParent() instanceof ViewGroup) {
                ((ViewGroup) this.adView.getParent()).removeView(this.adView);
            }
            VisibilityTracker.stopTracking(this.adView);
        }
        super.onDestroy();
    }

    @Override // io.bidmachine.AdObjectImpl, io.bidmachine.models.AdObject
    public final void onImpression() {
        super.onImpression();
        VisibilityTracker.stopTracking(this.adView);
    }

    public final void setHeight(int i) {
        this.height = i;
    }

    public final void setWidth(int i) {
        this.width = i;
    }

    public final void show(ViewGroup viewGroup) {
        if (viewGroup == null) {
            Logger.log("Target container is null");
            getUnifiedAdCallback().onAdShowFailed(BMError.Internal);
        } else if (getWidth() == 0 || getHeight() == 0) {
            Logger.log("Width or height are not provided");
            getUnifiedAdCallback().onAdShowFailed(BMError.Internal);
        } else {
            Context context = viewGroup.getContext();
            View view = this.adView;
            if (view != null) {
                VisibilityTracker.stopTracking(view);
            }
            viewGroup.removeAllViews();
            viewGroup.addView(this.adView, viewGroup instanceof FrameLayout ? new FrameLayout.LayoutParams(getScaledWidth(context), getScaledHeight(context), 17) : new ViewGroup.LayoutParams(getScaledWidth(context), getScaledHeight(context)));
            VisibilityTracker.startTracking(this.adView, getParams().getViewabilityTimeThresholdMs(), getParams().getViewabilityPixelThreshold(), getParams().isViewabilityIgnoreWindowFocus(), new VisibilityTracker.VisibilityChangeCallback() { // from class: io.bidmachine.ViewAdObject.1
                @Override // io.bidmachine.core.VisibilityTracker.VisibilityChangeCallback
                public final void onViewShown() {
                    ViewAdObject.this.getProcessCallback().processShown();
                }

                @Override // io.bidmachine.core.VisibilityTracker.VisibilityChangeCallback
                public final void onViewTrackingFinished() {
                    ViewAdObject.this.getProcessCallback().processImpression();
                }
            });
        }
    }
}
