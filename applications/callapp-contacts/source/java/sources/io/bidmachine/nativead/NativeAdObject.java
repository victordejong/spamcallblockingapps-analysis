package io.bidmachine.nativead;

import android.app.Activity;
import android.app.ProgressDialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.explorestack.iab.vast.VastRequest;
import io.bidmachine.AdObjectImpl;
import io.bidmachine.AdProcessCallback;
import io.bidmachine.ContextProvider;
import io.bidmachine.MediaAssetType;
import io.bidmachine.core.Logger;
import io.bidmachine.core.Utils;
import io.bidmachine.core.VisibilityTracker;
import io.bidmachine.models.AdObjectParams;
import io.bidmachine.nativead.utils.ImageHelper;
import io.bidmachine.nativead.utils.NativeNetworkExecutor;
import io.bidmachine.nativead.view.MediaView;
import io.bidmachine.nativead.view.NativeMediaView;
import io.bidmachine.unified.UnifiedNativeAd;
import io.bidmachine.unified.UnifiedNativeAdCallback;
import io.bidmachine.unified.UnifiedNativeAdRequestParams;
import io.bidmachine.utils.BMError;
import io.bidmachine.utils.ViewHelper;
import java.io.File;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/nativead/NativeAdObject.class */
public final class NativeAdObject extends AdObjectImpl<NativeRequest, AdObjectParams, UnifiedNativeAd, UnifiedNativeAdCallback, UnifiedNativeAdRequestParams> implements View.OnClickListener, NativeContainer, NativeData, NativeInteractor, NativeMediaPrivateData {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    static final float DEFAULT_RATING = -1.0f;
    private static final int ICON_VIEW_ID = 100;
    private static final String INSTALL = "Install";
    private static final int MEDIA_VIEW_ID = 200;
    private static final WeakHashMap<ViewGroup, WeakHashMap<View, View.OnClickListener>> clickStorage = new WeakHashMap<>(3);
    private ViewGroup container;
    private Bitmap iconBitmap;
    private Uri iconUri;
    private Bitmap imageBitmap;
    private Uri imageUri;
    private boolean isImpressionTracked;
    private MediaView mediaView;
    private NativeNetworkAdapter nativeNetworkAdapter;
    private ProgressDialog progressDialog;
    private Handler progressDialogCanceller;
    private Runnable progressRunnable;
    private VastRequest vastRequest;
    private Uri videoUri;
    private boolean viewRegistered;

    /* renamed from: io.bidmachine.nativead.NativeAdObject$a */
    /* loaded from: classes5-dex2jar.jar:io/bidmachine/nativead/NativeAdObject$a.class */
    public final class C17887a extends AdObjectImpl.BaseUnifiedAdCallback implements UnifiedNativeAdCallback {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C17887a(AdProcessCallback adProcessCallback) {
            super(adProcessCallback);
            NativeAdObject.this = r4;
        }

        @Override // io.bidmachine.unified.UnifiedNativeAdCallback
        public final void onAdLoaded(NativeNetworkAdapter nativeNetworkAdapter) {
            NativeAdObject.this.nativeNetworkAdapter = nativeNetworkAdapter;
            try {
                NativeAdObject nativeAdObject = NativeAdObject.this;
                nativeAdObject.loadAsset(nativeAdObject.getContext(), nativeNetworkAdapter);
            } catch (Exception e) {
                Logger.log(e);
                this.processCallback.processLoadFail(BMError.Internal);
            }
        }
    }

    public NativeAdObject(ContextProvider contextProvider, AdProcessCallback adProcessCallback, NativeRequest nativeRequest, AdObjectParams adObjectParams, UnifiedNativeAd unifiedNativeAd) {
        super(contextProvider, adProcessCallback, nativeRequest, adObjectParams, unifiedNativeAd);
    }

    private void configureClickableView(ViewGroup viewGroup, Set<View> set) {
        deConfigureClickableView(viewGroup);
        if (set == null || set.size() == 0) {
            return;
        }
        WeakHashMap<View, View.OnClickListener> weakHashMap = new WeakHashMap<>();
        clickStorage.put(viewGroup, weakHashMap);
        for (View view : set) {
            if (view != null) {
                view.setOnClickListener(this);
                weakHashMap.put(view, this);
            }
        }
    }

    private ImageView configureIconView(View view) {
        ImageView imageView;
        if (view instanceof ImageView) {
            imageView = (ImageView) view;
        } else if (view instanceof ViewGroup) {
            ImageView imageView2 = new ImageView(view.getContext());
            imageView2.setId(100);
            imageView2.setScaleType(ImageView.ScaleType.FIT_CENTER);
            ViewGroup viewGroup = (ViewGroup) view;
            viewGroup.removeAllViews();
            viewGroup.addView(imageView2, new ViewGroup.LayoutParams(-1, -1));
            imageView = imageView2;
        } else {
            imageView = null;
        }
        if (imageView != null) {
            ImageHelper.fillImageView(imageView.getContext(), imageView, this.iconUri, this.iconBitmap);
        }
        return imageView;
    }

    private void configureMediaView(NativeMediaView nativeMediaView) {
        if (nativeMediaView != null) {
            nativeMediaView.removeAllViews();
            NativeNetworkAdapter nativeNetworkAdapter = this.nativeNetworkAdapter;
            if (nativeNetworkAdapter == null || nativeNetworkAdapter.configureMediaView(nativeMediaView)) {
                return;
            }
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(13, -1);
            MediaView mediaView = new MediaView(nativeMediaView.getContext());
            this.mediaView = mediaView;
            mediaView.setId(200);
            NativeRequest adRequest = getAdRequest();
            if (adRequest.containsAssetType(MediaAssetType.Image) || adRequest.containsAssetType(MediaAssetType.Video)) {
                this.mediaView.setNativeAdObject(this);
            }
            nativeMediaView.addView(this.mediaView, layoutParams);
        }
    }

    private void deConfigureClickableView(ViewGroup viewGroup) {
        WeakHashMap<View, View.OnClickListener> weakHashMap = clickStorage.get(viewGroup);
        if (weakHashMap != null) {
            for (Map.Entry<View, View.OnClickListener> entry : weakHashMap.entrySet()) {
                if (entry != null && entry.getKey() != null) {
                    entry.getKey().setOnClickListener(null);
                }
            }
            clickStorage.remove(viewGroup);
        }
    }

    public void hideProgressDialog() {
        Handler handler;
        ProgressDialog progressDialog = this.progressDialog;
        if (progressDialog != null && progressDialog.isShowing()) {
            this.progressDialog.dismiss();
            this.progressDialog = null;
        }
        Runnable runnable = this.progressRunnable;
        if (runnable == null || (handler = this.progressDialogCanceller) == null) {
            return;
        }
        handler.removeCallbacks(runnable);
        this.progressDialogCanceller = null;
        this.progressRunnable = null;
    }

    public void loadAsset(Context context, NativeData nativeData) {
        new C17890a(getAdRequest(), getProcessCallback(), nativeData, this).downloadNativeAdsImages(context);
    }

    private boolean mayShowProgressDialog() {
        ProgressDialog progressDialog = this.progressDialog;
        return progressDialog == null || !progressDialog.isShowing();
    }

    private void showProgressDialog(Context context) {
        if (this.container == null || !(context instanceof Activity) || !mayShowProgressDialog()) {
            return;
        }
        Activity activity = (Activity) context;
        if (!Utils.canAddWindowToActivity(activity)) {
            return;
        }
        this.container.addOnAttachStateChangeListener(new View.OnAttachStateChangeListener() { // from class: io.bidmachine.nativead.NativeAdObject.2
            @Override // android.view.View.OnAttachStateChangeListener
            public final void onViewAttachedToWindow(View view) {
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public final void onViewDetachedFromWindow(View view) {
                view.removeOnAttachStateChangeListener(this);
                NativeAdObject.this.hideProgressDialog();
            }
        });
        ProgressDialog show = ProgressDialog.show(activity, "", "Loading...");
        this.progressDialog = show;
        show.setProgressStyle(0);
        this.progressDialog.setCancelable(false);
        this.progressRunnable = new Runnable() { // from class: io.bidmachine.nativead.NativeAdObject.3
            @Override // java.lang.Runnable
            public final void run() {
                NativeAdObject.this.hideProgressDialog();
            }
        };
        Handler handler = new Handler(Looper.getMainLooper());
        this.progressDialogCanceller = handler;
        handler.postDelayed(this.progressRunnable, 5000L);
    }

    @Override // io.bidmachine.models.AdObject
    public final UnifiedNativeAdCallback createUnifiedCallback(AdProcessCallback adProcessCallback) {
        return new C17887a(adProcessCallback);
    }

    @Override // io.bidmachine.nativead.NativeInteractor
    public final void dispatchClick() {
        getProcessCallback().processClicked();
    }

    @Override // io.bidmachine.nativead.NativeInteractor
    public final void dispatchImpression() {
        getProcessCallback().processImpression();
    }

    @Override // io.bidmachine.nativead.NativeInteractor
    public final void dispatchShown() {
        getProcessCallback().processShown();
    }

    @Override // io.bidmachine.nativead.NativeInteractor
    public final void dispatchVideoPlayFinished() {
    }

    @Override // io.bidmachine.nativead.NativePublicData
    public final String getCallToAction() {
        NativeNetworkAdapter nativeNetworkAdapter = this.nativeNetworkAdapter;
        String callToAction = nativeNetworkAdapter != null ? nativeNetworkAdapter.getCallToAction() : null;
        String str = callToAction;
        if (TextUtils.isEmpty(callToAction)) {
            str = INSTALL;
        }
        return str;
    }

    @Override // io.bidmachine.nativead.NativeData
    public final String getClickUrl() {
        NativeNetworkAdapter nativeNetworkAdapter = this.nativeNetworkAdapter;
        if (nativeNetworkAdapter != null) {
            return nativeNetworkAdapter.getClickUrl();
        }
        return null;
    }

    @Override // io.bidmachine.nativead.NativePublicData
    public final String getDescription() {
        NativeNetworkAdapter nativeNetworkAdapter = this.nativeNetworkAdapter;
        if (nativeNetworkAdapter != null) {
            return nativeNetworkAdapter.getDescription();
        }
        return null;
    }

    @Override // io.bidmachine.nativead.NativeMediaPublicData
    public final Bitmap getIconBitmap() {
        return this.iconBitmap;
    }

    @Override // io.bidmachine.nativead.NativeMediaPublicData
    public final Uri getIconUri() {
        return this.iconUri;
    }

    @Override // io.bidmachine.nativead.NativeData
    public final String getIconUrl() {
        NativeNetworkAdapter nativeNetworkAdapter = this.nativeNetworkAdapter;
        if (nativeNetworkAdapter != null) {
            return nativeNetworkAdapter.getIconUrl();
        }
        return null;
    }

    @Override // io.bidmachine.nativead.NativeMediaPublicData
    public final Bitmap getImageBitmap() {
        return this.imageBitmap;
    }

    @Override // io.bidmachine.nativead.NativeMediaPublicData
    public final Uri getImageUri() {
        return this.imageUri;
    }

    @Override // io.bidmachine.nativead.NativeData
    public final String getImageUrl() {
        NativeNetworkAdapter nativeNetworkAdapter = this.nativeNetworkAdapter;
        if (nativeNetworkAdapter != null) {
            return nativeNetworkAdapter.getImageUrl();
        }
        return null;
    }

    @Override // io.bidmachine.nativead.NativeContainer
    public final View getProviderView(Context context) {
        NativeNetworkAdapter nativeNetworkAdapter = this.nativeNetworkAdapter;
        if (nativeNetworkAdapter != null) {
            return nativeNetworkAdapter.configureProviderView();
        }
        return null;
    }

    @Override // io.bidmachine.nativead.NativePublicData
    public final float getRating() {
        NativeNetworkAdapter nativeNetworkAdapter = this.nativeNetworkAdapter;
        if (nativeNetworkAdapter != null) {
            return nativeNetworkAdapter.getRating();
        }
        return -1.0f;
    }

    @Override // io.bidmachine.nativead.NativePublicData
    public final String getTitle() {
        NativeNetworkAdapter nativeNetworkAdapter = this.nativeNetworkAdapter;
        if (nativeNetworkAdapter != null) {
            return nativeNetworkAdapter.getTitle();
        }
        return null;
    }

    @Override // io.bidmachine.nativead.NativeMediaPrivateData
    public final VastRequest getVastRequest() {
        return this.vastRequest;
    }

    @Override // io.bidmachine.nativead.NativeData
    public final String getVideoAdm() {
        NativeNetworkAdapter nativeNetworkAdapter = this.nativeNetworkAdapter;
        if (nativeNetworkAdapter != null) {
            return nativeNetworkAdapter.getVideoAdm();
        }
        return null;
    }

    @Override // io.bidmachine.nativead.NativeMediaPublicData
    public final Uri getVideoUri() {
        return this.videoUri;
    }

    @Override // io.bidmachine.nativead.NativeData
    public final String getVideoUrl() {
        NativeNetworkAdapter nativeNetworkAdapter = this.nativeNetworkAdapter;
        if (nativeNetworkAdapter != null) {
            return nativeNetworkAdapter.getVideoUrl();
        }
        return null;
    }

    @Override // io.bidmachine.nativead.NativePublicData
    public final boolean hasVideo() {
        if (this.videoUri == null) {
            NativeNetworkAdapter nativeNetworkAdapter = this.nativeNetworkAdapter;
            return nativeNetworkAdapter != null && nativeNetworkAdapter.hasVideo();
        }
        return true;
    }

    final boolean isNativeAdViewValid(ViewGroup viewGroup, View view, NativeMediaView nativeMediaView, Set<View> set) {
        if (viewGroup == null) {
            Logger.log("NativeAdView cannot be null. NativeAd is NOT registered");
            return false;
        } else if (view == null && nativeMediaView == null) {
            Logger.log("ImageView or NativeMediaView cannot be null. NativeAd is NOT registered");
            return false;
        } else if (view != null && !ViewHelper.belongTo(viewGroup, view)) {
            Logger.log("ImageView should belong to NativeAdView. NativeAd is NOT registered");
            return false;
        } else if (nativeMediaView != null && !ViewHelper.belongTo(viewGroup, nativeMediaView)) {
            Logger.log("NativeMediaView should belong to NativeAdView. NativeAd is NOT registered");
            return false;
        } else if (set == null) {
            return true;
        } else {
            for (View view2 : set) {
                if (view2 != null && !ViewHelper.belongTo(viewGroup, view2)) {
                    Logger.log("All clickable views should belong to NativeAdView. NativeAd is NOT registered");
                    return false;
                }
            }
            return true;
        }
    }

    @Override // io.bidmachine.nativead.NativeContainer
    public final boolean isViewRegistered() {
        return this.viewRegistered;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        dispatchClick();
    }

    @Override // io.bidmachine.AdObjectImpl, io.bidmachine.models.AdObject
    public final void onClicked() {
        super.onClicked();
        String clickUrl = getClickUrl();
        if (TextUtils.isEmpty(clickUrl)) {
            return;
        }
        showProgressDialog(getContext());
        Utils.openBrowser(getContext(), clickUrl, NativeNetworkExecutor.getInstance(), new Runnable() { // from class: io.bidmachine.nativead.NativeAdObject.4
            @Override // java.lang.Runnable
            public final void run() {
                NativeAdObject.this.hideProgressDialog();
            }
        });
    }

    @Override // io.bidmachine.AdObjectImpl, io.bidmachine.models.AdObject
    public final void onDestroy() {
        try {
            super.onDestroy();
            unregisterView();
            Bitmap bitmap = this.iconBitmap;
            if (bitmap != null) {
                if (!bitmap.isRecycled()) {
                    this.iconBitmap.recycle();
                }
                this.iconBitmap = null;
            }
            Bitmap bitmap2 = this.imageBitmap;
            if (bitmap2 != null) {
                if (!bitmap2.isRecycled()) {
                    this.imageBitmap.recycle();
                }
                this.imageBitmap = null;
            }
            Uri uri = this.videoUri;
            if (uri != null && uri.getPath() != null) {
                File file = new File(this.videoUri.getPath());
                if (file.exists()) {
                    file.delete();
                }
                this.videoUri = null;
            }
            NativeNetworkAdapter nativeNetworkAdapter = this.nativeNetworkAdapter;
            if (nativeNetworkAdapter == null) {
                return;
            }
            nativeNetworkAdapter.destroy();
        } catch (Throwable th) {
            Logger.log(th);
        }
    }

    @Override // io.bidmachine.nativead.NativeContainer
    public final void registerView(ViewGroup viewGroup, View view, NativeMediaView nativeMediaView, Set<View> set) {
        try {
            if (!isNativeAdViewValid(viewGroup, view, nativeMediaView, set)) {
                getProcessCallback().processShowFail(BMError.NoContent);
                return;
            }
            configureClickableView(viewGroup, set);
            ImageView configureIconView = configureIconView(view);
            configureMediaView(nativeMediaView);
            this.container = viewGroup;
            if (!this.isImpressionTracked) {
                VisibilityTracker.startTracking(viewGroup, getParams().getViewabilityTimeThresholdMs(), getParams().getViewabilityPixelThreshold(), getParams().isViewabilityIgnoreWindowFocus(), new VisibilityTracker.VisibilityChangeCallback() { // from class: io.bidmachine.nativead.NativeAdObject.1
                    @Override // io.bidmachine.core.VisibilityTracker.VisibilityChangeCallback
                    public final void onViewShown() {
                        NativeAdObject.this.dispatchShown();
                    }

                    @Override // io.bidmachine.core.VisibilityTracker.VisibilityChangeCallback
                    public final void onViewTrackingFinished() {
                        NativeAdObject.this.isImpressionTracked = true;
                        NativeAdObject.this.dispatchImpression();
                    }
                });
            }
            MediaView mediaView = this.mediaView;
            if (mediaView != null) {
                mediaView.onViewAppearOnScreen();
                this.mediaView.startVideoVisibilityCheckerTimer();
            }
            NativeNetworkAdapter nativeNetworkAdapter = this.nativeNetworkAdapter;
            if (nativeNetworkAdapter != null) {
                nativeNetworkAdapter.registerNative(viewGroup, configureIconView, nativeMediaView, set);
            }
            this.viewRegistered = true;
        } catch (Throwable th) {
            unregisterView();
            getProcessCallback().processShowFail(BMError.catchError("Error during registerView"));
            Logger.log(th);
        }
    }

    @Override // io.bidmachine.nativead.NativeMediaPrivateData
    public final void setIconBitmap(Bitmap bitmap) {
        this.iconBitmap = bitmap;
    }

    @Override // io.bidmachine.nativead.NativeMediaPrivateData
    public final void setIconUri(Uri uri) {
        this.iconUri = uri;
    }

    @Override // io.bidmachine.nativead.NativeMediaPrivateData
    public final void setImageBitmap(Bitmap bitmap) {
        this.imageBitmap = bitmap;
    }

    @Override // io.bidmachine.nativead.NativeMediaPrivateData
    public final void setImageUri(Uri uri) {
        this.imageUri = uri;
    }

    @Override // io.bidmachine.nativead.NativeMediaPrivateData
    public final void setVastRequest(VastRequest vastRequest) {
        this.vastRequest = vastRequest;
    }

    @Override // io.bidmachine.nativead.NativeMediaPrivateData
    public final void setVideoUri(Uri uri) {
        this.videoUri = uri;
    }

    @Override // io.bidmachine.nativead.NativeContainer
    public final void unregisterView() {
        try {
            ViewGroup viewGroup = this.container;
            if (viewGroup != null) {
                deConfigureClickableView(viewGroup);
                VisibilityTracker.stopTracking(this.container);
            }
            MediaView mediaView = this.mediaView;
            if (mediaView != null) {
                mediaView.stopVideoVisibilityCheckerTimer();
                this.mediaView.release();
            }
            NativeNetworkAdapter nativeNetworkAdapter = this.nativeNetworkAdapter;
            if (nativeNetworkAdapter != null) {
                nativeNetworkAdapter.unregisterNative();
            }
            this.viewRegistered = false;
        } catch (Throwable th) {
            Logger.log(th);
        }
    }
}
