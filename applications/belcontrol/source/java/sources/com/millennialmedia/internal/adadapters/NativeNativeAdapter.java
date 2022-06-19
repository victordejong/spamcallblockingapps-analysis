package com.millennialmedia.internal.adadapters;

import android.graphics.Bitmap;
import com.millennialmedia.MMLog;
import com.millennialmedia.internal.adadapters.NativeAdapter;
import com.millennialmedia.internal.adcontrollers.NativeController;
import com.millennialmedia.internal.utils.HttpUtils;
import com.millennialmedia.internal.utils.ThreadUtils;
import java.util.Collections;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adadapters/NativeNativeAdapter.class */
public class NativeNativeAdapter extends NativeAdapter {
    private static final String ASSET_COMPONENT_TYPE_ID_BODY = "101";
    private static final String ASSET_COMPONENT_TYPE_ID_CALL_TO_ACTION = "104";
    private static final String ASSET_COMPONENT_TYPE_ID_DISCLAIMER = "106";
    private static final String ASSET_COMPONENT_TYPE_ID_ICON_IMAGE = "102";
    private static final String ASSET_COMPONENT_TYPE_ID_MAIN_IMAGE = "103";
    private static final String ASSET_COMPONENT_TYPE_ID_RATING = "105";
    private static final String ASSET_COMPONENT_TYPE_ID_TITLE = "100";
    private static final String TAG = "com.millennialmedia.internal.adadapters.NativeNativeAdapter";
    private NativeAdapter.NativeAdapterListener nativeAdapterListener;
    private volatile NativeController nativeController;
    private String nativeType;
    private List<NativeAdapter.TextComponentInfo> titles = new CopyOnWriteArrayList();
    private List<NativeAdapter.TextComponentInfo> bodies = new CopyOnWriteArrayList();
    private List<NativeAdapter.ImageComponentInfo> iconImages = new CopyOnWriteArrayList();
    private List<NativeAdapter.ImageComponentInfo> mainImages = new CopyOnWriteArrayList();
    private List<NativeAdapter.TextComponentInfo> callToActions = new CopyOnWriteArrayList();
    private List<NativeAdapter.TextComponentInfo> ratings = new CopyOnWriteArrayList();
    private List<NativeAdapter.TextComponentInfo> disclaimers = new CopyOnWriteArrayList();
    public NativeController.NativeControllerListener nativeControllerListener = new NativeController.NativeControllerListener() { // from class: com.millennialmedia.internal.adadapters.NativeNativeAdapter.1
        @Override // com.millennialmedia.internal.adcontrollers.NativeController.NativeControllerListener
        public void initFailed(Throwable th) {
            NativeNativeAdapter.this.nativeAdapterListener.initFailed(th);
        }

        @Override // com.millennialmedia.internal.adcontrollers.NativeController.NativeControllerListener
        public void initSucceeded() {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.adadapters.NativeNativeAdapter.1.1
                @Override // java.lang.Runnable
                public void run() {
                    if (NativeNativeAdapter.this.loadComponentsInfo()) {
                        NativeNativeAdapter.this.nativeAdapterListener.initSucceeded();
                    } else {
                        NativeNativeAdapter.this.nativeAdapterListener.initFailed(new RuntimeException("Component info not loaded"));
                    }
                }
            });
        }
    };

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adadapters/NativeNativeAdapter$ImageLoadedCallback.class */
    public interface ImageLoadedCallback {
        void imageLoaded(NativeAdapter.ImageComponentInfo imageComponentInfo);
    }

    public boolean loadComponentsInfo() {
        String str;
        String str2;
        String str3;
        String str4;
        NativeAdapter.TextComponentInfo textComponentInfo;
        List<NativeAdapter.TextComponentInfo> list;
        String str5;
        ImageLoadedCallback imageLoadedCallback;
        if (this.nativeController == null) {
            return false;
        }
        final CountDownLatch countDownLatch = new CountDownLatch(this.nativeController.assets.size());
        for (int i = 0; i < this.nativeController.assets.size(); i++) {
            final NativeController.Asset asset = this.nativeController.assets.get(i);
            if (asset == null) {
                str3 = TAG;
                str4 = "Unable to load component, asset is null";
            } else {
                String num = Integer.toString(asset.f4124id);
                if (num.length() != 9) {
                    str = TAG;
                    str2 = "error when processing native asset, asset ID is not the correct length";
                } else {
                    this.nativeType = num.substring(0, 3);
                    String substring = num.substring(3, 6);
                    if (substring.equals("100")) {
                        if (asset.type == NativeController.Asset.Type.TITLE) {
                            textComponentInfo = new NativeAdapter.TextComponentInfo();
                            textComponentInfo.value = asset.title.value;
                            setLink(textComponentInfo, asset);
                            list = this.titles;
                            list.add(textComponentInfo);
                        } else {
                            str3 = TAG;
                            str4 = "Unable to load title component, asset not the expected type";
                        }
                    } else if (substring.equals(ASSET_COMPONENT_TYPE_ID_BODY)) {
                        if (asset.type == NativeController.Asset.Type.DATA) {
                            textComponentInfo = new NativeAdapter.TextComponentInfo();
                            textComponentInfo.value = asset.data.value;
                            setLink(textComponentInfo, asset);
                            list = this.bodies;
                            list.add(textComponentInfo);
                        } else {
                            str3 = TAG;
                            str4 = "Unable to load body component, asset not the expected type";
                        }
                    } else if (substring.equals(ASSET_COMPONENT_TYPE_ID_ICON_IMAGE)) {
                        if (asset.type == NativeController.Asset.Type.IMAGE) {
                            str5 = asset.image.url;
                            imageLoadedCallback = new ImageLoadedCallback() { // from class: com.millennialmedia.internal.adadapters.NativeNativeAdapter.2
                                @Override // com.millennialmedia.internal.adadapters.NativeNativeAdapter.ImageLoadedCallback
                                public void imageLoaded(NativeAdapter.ImageComponentInfo imageComponentInfo) {
                                    if (imageComponentInfo != null) {
                                        NativeNativeAdapter.this.setLink(imageComponentInfo, asset);
                                        NativeNativeAdapter.this.iconImages.add(imageComponentInfo);
                                    }
                                    countDownLatch.countDown();
                                }
                            };
                            loadImageComponent(str5, imageLoadedCallback);
                        } else {
                            str3 = TAG;
                            str4 = "Unable to load icon image component, asset not the expected type";
                        }
                    } else if (substring.equals(ASSET_COMPONENT_TYPE_ID_MAIN_IMAGE)) {
                        if (asset.type == NativeController.Asset.Type.IMAGE) {
                            str5 = asset.image.url;
                            imageLoadedCallback = new ImageLoadedCallback() { // from class: com.millennialmedia.internal.adadapters.NativeNativeAdapter.3
                                @Override // com.millennialmedia.internal.adadapters.NativeNativeAdapter.ImageLoadedCallback
                                public void imageLoaded(NativeAdapter.ImageComponentInfo imageComponentInfo) {
                                    if (imageComponentInfo != null) {
                                        NativeNativeAdapter.this.setLink(imageComponentInfo, asset);
                                        NativeNativeAdapter.this.mainImages.add(imageComponentInfo);
                                    }
                                    countDownLatch.countDown();
                                }
                            };
                            loadImageComponent(str5, imageLoadedCallback);
                        } else {
                            str3 = TAG;
                            str4 = "Unable to load main image component, asset not the expected type";
                        }
                    } else if (substring.equals(ASSET_COMPONENT_TYPE_ID_CALL_TO_ACTION)) {
                        if (asset.type == NativeController.Asset.Type.DATA) {
                            textComponentInfo = new NativeAdapter.TextComponentInfo();
                            textComponentInfo.value = asset.data.value;
                            setLink(textComponentInfo, asset);
                            list = this.callToActions;
                            list.add(textComponentInfo);
                        } else {
                            str3 = TAG;
                            str4 = "Unable to load call to action text component, asset not the expected type";
                        }
                    } else if (substring.equals(ASSET_COMPONENT_TYPE_ID_RATING)) {
                        if (asset.type == NativeController.Asset.Type.DATA) {
                            textComponentInfo = new NativeAdapter.TextComponentInfo();
                            textComponentInfo.value = asset.data.value;
                            setLink(textComponentInfo, asset);
                            list = this.ratings;
                            list.add(textComponentInfo);
                        } else {
                            str3 = TAG;
                            str4 = "Unable to load rating component, asset not the expected type";
                        }
                    } else if (!substring.equals(ASSET_COMPONENT_TYPE_ID_DISCLAIMER)) {
                        str = TAG;
                        str2 = "Unable to load component from asset, asset type is unrecognized <" + substring + ">";
                    } else if (asset.type == NativeController.Asset.Type.DATA) {
                        textComponentInfo = new NativeAdapter.TextComponentInfo();
                        textComponentInfo.value = asset.data.value;
                        setLink(textComponentInfo, asset);
                        list = this.disclaimers;
                        list.add(textComponentInfo);
                    } else {
                        str3 = TAG;
                        str4 = "Unable to load disclaimer component, asset not the expected type";
                    }
                    countDownLatch.countDown();
                }
                MMLog.m4068e(str, str2);
                countDownLatch.countDown();
            }
            MMLog.m4062w(str3, str4);
            countDownLatch.countDown();
        }
        try {
            return countDownLatch.await(5000L, TimeUnit.MILLISECONDS);
        } catch (InterruptedException e) {
            MMLog.m4068e(TAG, "Error occurred when loading native component info");
            return false;
        }
    }

    private void loadImageComponent(String str, ImageLoadedCallback imageLoadedCallback) {
        HttpUtils.Response bitmapFromGetRequest = HttpUtils.getBitmapFromGetRequest(str);
        if (bitmapFromGetRequest.code != 200 || bitmapFromGetRequest.bitmap == null) {
            imageLoadedCallback.imageLoaded(null);
            return;
        }
        NativeAdapter.ImageComponentInfo imageComponentInfo = new NativeAdapter.ImageComponentInfo();
        imageComponentInfo.bitmapUrl = str;
        Bitmap bitmap = bitmapFromGetRequest.bitmap;
        imageComponentInfo.bitmap = bitmap;
        imageComponentInfo.width = bitmap.getWidth();
        imageComponentInfo.height = bitmapFromGetRequest.bitmap.getHeight();
        imageLoadedCallback.imageLoaded(imageComponentInfo);
    }

    public void setLink(NativeAdapter.ComponentInfo componentInfo, NativeController.Asset asset) {
        NativeController.Link link = asset.link;
        if (link != null) {
            componentInfo.clickUrl = link.url;
        } else if (this.nativeController.link == null) {
            return;
        } else {
            componentInfo.clickUrl = this.nativeController.link.url;
            link = this.nativeController.link;
        }
        componentInfo.clickTrackerUrls = link.clickTrackerUrls;
    }

    @Override // com.millennialmedia.internal.adadapters.NativeAdapter
    public List<NativeAdapter.TextComponentInfo> getBodyList() {
        return this.bodies;
    }

    @Override // com.millennialmedia.internal.adadapters.NativeAdapter
    public List<NativeAdapter.TextComponentInfo> getCallToActionList() {
        return this.callToActions;
    }

    @Override // com.millennialmedia.internal.adadapters.NativeAdapter
    public List<String> getClickTrackers() {
        return this.nativeController.link != null ? this.nativeController.link.clickTrackerUrls : Collections.emptyList();
    }

    @Override // com.millennialmedia.internal.adadapters.NativeAdapter
    public String getDefaultAction() {
        if (this.nativeController.link != null) {
            return this.nativeController.link.url;
        }
        return null;
    }

    @Override // com.millennialmedia.internal.adadapters.NativeAdapter
    public List<NativeAdapter.TextComponentInfo> getDisclaimerList() {
        return this.disclaimers;
    }

    @Override // com.millennialmedia.internal.adadapters.NativeAdapter
    public List<NativeAdapter.ImageComponentInfo> getIconImageList() {
        return this.iconImages;
    }

    @Override // com.millennialmedia.internal.adadapters.NativeAdapter
    public List<String> getImpressionTrackers() {
        return this.nativeController.impTrackers != null ? this.nativeController.impTrackers : Collections.emptyList();
    }

    @Override // com.millennialmedia.internal.adadapters.NativeAdapter
    public List<NativeAdapter.ImageComponentInfo> getMainImageList() {
        return this.mainImages;
    }

    @Override // com.millennialmedia.internal.adadapters.NativeAdapter
    public List<NativeAdapter.TextComponentInfo> getRatingList() {
        return this.ratings;
    }

    @Override // com.millennialmedia.internal.adadapters.NativeAdapter
    public List<NativeAdapter.TextComponentInfo> getTitleList() {
        return this.titles;
    }

    @Override // com.millennialmedia.internal.adadapters.NativeAdapter
    public String getType() {
        return this.nativeType;
    }

    @Override // com.millennialmedia.internal.adadapters.NativeAdapter
    public void init(NativeAdapter.NativeAdapterListener nativeAdapterListener) {
        this.nativeAdapterListener = nativeAdapterListener;
        this.nativeController = new NativeController(this.nativeControllerListener);
        this.nativeController.init(this.adContent);
    }

    @Override // com.millennialmedia.internal.adadapters.AdAdapter
    public void release() {
        if (this.nativeController != null) {
            this.nativeController.close();
            this.nativeController.release();
            this.nativeController = null;
        }
        this.titles.clear();
        this.bodies.clear();
        this.iconImages.clear();
        this.mainImages.clear();
        this.callToActions.clear();
        this.ratings.clear();
        this.disclaimers.clear();
    }
}
