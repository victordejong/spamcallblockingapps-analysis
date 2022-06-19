package com.millennialmedia.internal.adadapters;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.os.Bundle;
import com.millennialmedia.MMException;
import com.millennialmedia.MMLog;
import com.millennialmedia.NativeAd;
import com.millennialmedia.internal.Handshake;
import com.millennialmedia.internal.adadapters.MediatedAdAdapter;
import com.millennialmedia.internal.adadapters.NativeAdapter;
import com.millennialmedia.internal.utils.EnvironmentUtils;
import com.millennialmedia.internal.utils.HttpUtils;
import com.millennialmedia.internal.utils.ThreadUtils;
import com.millennialmedia.internal.utils.Utils;
import com.millennialmedia.mediation.CustomEvent;
import com.millennialmedia.mediation.CustomEventNative;
import com.millennialmedia.mediation.CustomEventNativeAd;
import com.millennialmedia.mediation.CustomEventRegistry;
import com.millennialmedia.mediation.ErrorCode;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
@SuppressLint({"DefaultLocale"})
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adadapters/NativeMediatedAdAdapter.class */
public class NativeMediatedAdAdapter extends NativeAdapter implements MediatedAdAdapter {
    private static final String TAG = "NativeMediatedAdAdapter";
    private CustomEventNative customEventNative;
    private MediatedAdAdapter.MediationInfo mediationInfo;
    private NativeAdapter.NativeAdapterListener nativeAdapterListener;
    private List<NativeAdapter.TextComponentInfo> title = new ArrayList(1);
    private List<NativeAdapter.TextComponentInfo> body = new ArrayList(1);
    private List<NativeAdapter.TextComponentInfo> disclaimer = new ArrayList(1);
    private List<NativeAdapter.TextComponentInfo> rating = new ArrayList(1);
    private List<NativeAdapter.TextComponentInfo> callToAction = new ArrayList(1);
    private List<NativeAdapter.ImageComponentInfo> mainImage = new ArrayList(1);
    private List<NativeAdapter.ImageComponentInfo> iconImage = new ArrayList(1);
    private volatile int imagesDownloaded = 0;

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adadapters/NativeMediatedAdAdapter$CustomEventNativeListenerImpl.class */
    public class CustomEventNativeListenerImpl implements CustomEventNative.CustomEventNativeListener {
        private CustomEventNativeListenerImpl() {
            NativeMediatedAdAdapter.this = r4;
        }

        @Override // com.millennialmedia.mediation.CustomEventNative.CustomEventNativeListener
        public void onLoadFailed(ErrorCode errorCode) {
            String str = NativeMediatedAdAdapter.TAG;
            MMLog.m4070d(str, "onLoadFailed called with error code = " + errorCode);
            NativeMediatedAdAdapter.this.nativeAdapterListener.initFailed(null);
        }

        @Override // com.millennialmedia.mediation.CustomEventNative.CustomEventNativeListener
        public void onLoaded(CustomEventNativeAd customEventNativeAd) {
            try {
                NativeMediatedAdAdapter.this.loadContent(customEventNativeAd);
                NativeMediatedAdAdapter.this.nativeAdapterListener.initSucceeded();
            } catch (Exception e) {
                MMLog.m4067e(NativeMediatedAdAdapter.TAG, "An exception was thrown while loading custom event native ad.", e);
                NativeMediatedAdAdapter.this.nativeAdapterListener.initFailed(e);
            }
        }
    }

    public static /* synthetic */ int access$508(NativeMediatedAdAdapter nativeMediatedAdAdapter) {
        int i = nativeMediatedAdAdapter.imagesDownloaded;
        nativeMediatedAdAdapter.imagesDownloaded = i + 1;
        return i;
    }

    private void addImageComponentInfo(List<NativeAdapter.ImageComponentInfo> list, CustomEventNativeAd.ImageComponent imageComponent) {
        if (imageComponent == null) {
            return;
        }
        NativeAdapter.ImageComponentInfo imageComponentInfo = new NativeAdapter.ImageComponentInfo();
        imageComponentInfo.bitmapUrl = imageComponent.imageUrl;
        imageComponentInfo.clickTrackerUrls = imageComponent.clickTrackingUrls;
        imageComponentInfo.clickUrl = imageComponent.clickThroughUrl;
        list.add(imageComponentInfo);
    }

    private void addTextComponentInfo(List<NativeAdapter.TextComponentInfo> list, CustomEventNativeAd.TextComponent textComponent) {
        if (textComponent == null) {
            return;
        }
        NativeAdapter.TextComponentInfo textComponentInfo = new NativeAdapter.TextComponentInfo();
        textComponentInfo.value = textComponent.value;
        textComponentInfo.clickTrackerUrls = textComponent.clickTrackingUrls;
        textComponentInfo.clickUrl = textComponent.clickThroughUrl;
        list.add(textComponentInfo);
    }

    private void downloadImage(final CountDownLatch countDownLatch, final NativeAdapter.ImageComponentInfo imageComponentInfo) {
        if (imageComponentInfo == null || Utils.isEmpty(imageComponentInfo.bitmapUrl)) {
            countDownLatch.countDown();
        } else {
            HttpUtils.getBitmapFromGetRequestAsync(imageComponentInfo.bitmapUrl, new HttpUtils.HttpRequestListener() { // from class: com.millennialmedia.internal.adadapters.NativeMediatedAdAdapter.2
                @Override // com.millennialmedia.internal.utils.HttpUtils.HttpRequestListener
                public void onResponse(HttpUtils.Response response) {
                    if (response.code == 200) {
                        NativeAdapter.ImageComponentInfo imageComponentInfo2 = imageComponentInfo;
                        Bitmap bitmap = response.bitmap;
                        imageComponentInfo2.bitmap = bitmap;
                        imageComponentInfo2.width = bitmap.getWidth();
                        imageComponentInfo.height = response.bitmap.getHeight();
                        NativeMediatedAdAdapter.access$508(NativeMediatedAdAdapter.this);
                    } else {
                        MMLog.m4068e(NativeMediatedAdAdapter.TAG, "An HTTP error occurred downloading custom native ad event image.");
                    }
                    countDownLatch.countDown();
                }
            });
        }
    }

    private void downloadImages() {
        int i = this.mainImage.size() == 1 ? 1 : 0;
        int i2 = i;
        if (this.iconImage.size() == 1) {
            i2 = i + 1;
        }
        CountDownLatch countDownLatch = new CountDownLatch(i2);
        downloadImage(countDownLatch, this.mainImage.get(0));
        downloadImage(countDownLatch, this.iconImage.get(0));
        countDownLatch.await(Handshake.getNativeTimeout(), TimeUnit.MILLISECONDS);
        if (this.imagesDownloaded >= i2) {
            return;
        }
        throw new MMException(String.format("Failed to retrieve all image assets for custom event native ad. Excepted %d, downloaded %d.", Integer.valueOf(i2), Integer.valueOf(this.imagesDownloaded)));
    }

    public void loadContent(CustomEventNativeAd customEventNativeAd) {
        addTextComponentInfo(this.title, customEventNativeAd.getTitle());
        addTextComponentInfo(this.body, customEventNativeAd.getBody());
        addTextComponentInfo(this.disclaimer, customEventNativeAd.getDisclaimer());
        addTextComponentInfo(this.callToAction, customEventNativeAd.getCallToAction());
        addTextComponentInfo(this.rating, customEventNativeAd.getRating());
        addImageComponentInfo(this.mainImage, customEventNativeAd.getMainImageUrl());
        addImageComponentInfo(this.iconImage, customEventNativeAd.getIconUrl());
        downloadImages();
    }

    @Override // com.millennialmedia.internal.adadapters.NativeAdapter
    public List<NativeAdapter.TextComponentInfo> getBodyList() {
        return this.body;
    }

    @Override // com.millennialmedia.internal.adadapters.NativeAdapter
    public List<NativeAdapter.TextComponentInfo> getCallToActionList() {
        return this.callToAction;
    }

    @Override // com.millennialmedia.internal.adadapters.NativeAdapter
    public List<String> getClickTrackers() {
        return null;
    }

    @Override // com.millennialmedia.internal.adadapters.NativeAdapter
    public String getDefaultAction() {
        return null;
    }

    @Override // com.millennialmedia.internal.adadapters.NativeAdapter
    public List<NativeAdapter.TextComponentInfo> getDisclaimerList() {
        return this.disclaimer;
    }

    @Override // com.millennialmedia.internal.adadapters.NativeAdapter
    public List<NativeAdapter.ImageComponentInfo> getIconImageList() {
        return this.iconImage;
    }

    @Override // com.millennialmedia.internal.adadapters.NativeAdapter
    public List<String> getImpressionTrackers() {
        return null;
    }

    @Override // com.millennialmedia.internal.adadapters.NativeAdapter
    public List<NativeAdapter.ImageComponentInfo> getMainImageList() {
        return this.mainImage;
    }

    @Override // com.millennialmedia.internal.adadapters.NativeAdapter
    public List<NativeAdapter.TextComponentInfo> getRatingList() {
        return this.rating;
    }

    @Override // com.millennialmedia.internal.adadapters.NativeAdapter
    public List<NativeAdapter.TextComponentInfo> getTitleList() {
        return this.title;
    }

    @Override // com.millennialmedia.internal.adadapters.NativeAdapter
    public String getType() {
        CustomEventNative customEventNative = this.customEventNative;
        String type = customEventNative != null ? customEventNative.getType() : null;
        String str = type;
        if (type == null) {
            str = CustomEventNative.DEFAULT_TYPE;
        }
        return str;
    }

    @Override // com.millennialmedia.internal.adadapters.NativeAdapter
    public void init(NativeAdapter.NativeAdapterListener nativeAdapterListener) {
        MediatedAdAdapter.MediationInfo mediationInfo = this.mediationInfo;
        if (mediationInfo == null) {
            MMLog.m4070d(TAG, "calling initFailed, mediationInfo was null.");
            nativeAdapterListener.initFailed(null);
            return;
        }
        CustomEventNative customEventNative = (CustomEventNative) CustomEventRegistry.getCustomEvent(NativeAd.class, mediationInfo.networkId, CustomEventNative.class);
        this.customEventNative = customEventNative;
        if (customEventNative == null) {
            MMLog.m4070d(TAG, "calling initFailed, customEventNative was null.");
            nativeAdapterListener.initFailed(null);
            return;
        }
        this.nativeAdapterListener = nativeAdapterListener;
        final Bundle bundle = new Bundle();
        bundle.putString(CustomEvent.PLACEMENT_ID_KEY, this.mediationInfo.spaceId);
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.adadapters.NativeMediatedAdAdapter.1
            @Override // java.lang.Runnable
            public void run() {
                NativeMediatedAdAdapter.this.customEventNative.loadNativeAd(EnvironmentUtils.getApplicationContext(), new CustomEventNativeListenerImpl(), bundle);
            }
        });
    }

    public void onAdClicked(NativeAd nativeAd) {
        this.customEventNative.onAdClicked(nativeAd);
    }

    public void onAdLoaded(NativeAd nativeAd) {
        this.customEventNative.onAdLoaded(nativeAd);
    }

    @Override // com.millennialmedia.internal.adadapters.AdAdapter
    public void release() {
        CustomEventNative customEventNative = this.customEventNative;
        if (customEventNative != null) {
            customEventNative.destroy();
            this.customEventNative = null;
        }
    }

    @Override // com.millennialmedia.internal.adadapters.MediatedAdAdapter
    public void setMediationInfo(MediatedAdAdapter.MediationInfo mediationInfo) {
        this.mediationInfo = mediationInfo;
    }
}
