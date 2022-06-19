package com.millennialmedia.internal.adcontrollers;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.content.MutableContextWrapper;
import android.view.View;
import android.view.ViewGroup;
import com.millennialmedia.MMLog;
import com.millennialmedia.XIncentivizedEventListener;
import com.millennialmedia.internal.AdContainer;
import com.millennialmedia.internal.MMActivity;
import com.millennialmedia.internal.MMWebView;
import com.millennialmedia.internal.SizableStateManager;
import com.millennialmedia.internal.utils.EnvironmentUtils;
import com.millennialmedia.internal.utils.HttpUtils;
import com.millennialmedia.internal.utils.ThreadUtils;
import com.millennialmedia.internal.utils.TrackingEvent;
import com.millennialmedia.internal.utils.Utils;
import com.millennialmedia.internal.utils.ViewUtils;
import com.millennialmedia.internal.video.VASTParser;
import com.millennialmedia.internal.video.VASTVideoView;
import com.millennialmedia.internal.video.VPAIDWebView;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.xmlpull.v1.XmlPullParserException;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adcontrollers/VASTVideoController.class */
public class VASTVideoController extends AdController {
    private static final int MAX_WRAPPERS = 3;
    private static final String TAG = "VASTVideoController";
    private VASTParser.InLineAd inLineAd;
    private VASTVideoControllerListener listener;
    private List<String> vastDocuments;
    private ViewGroup videoView;
    private List<VASTParser.WrapperAd> wrapperAds;

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adcontrollers/VASTVideoController$VASTVideoControllerListener.class */
    public interface VASTVideoControllerListener {
        void attachFailed();

        void attachSucceeded();

        void close();

        void initFailed();

        void initSucceeded();

        void onAdLeftApplication();

        void onClick();

        void onIncentiveEarned(XIncentivizedEventListener.XIncentiveEvent xIncentiveEvent);
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adcontrollers/VASTVideoController$VideoViewActions.class */
    public interface VideoViewActions {
        boolean onBackPressed();

        void release();

        void updateLayout();
    }

    public VASTVideoController() {
    }

    public VASTVideoController(VASTVideoControllerListener vASTVideoControllerListener) {
        this.listener = vASTVideoControllerListener;
    }

    public void fireErrorUrls() {
        ArrayList arrayList = new ArrayList();
        VASTParser.InLineAd inLineAd = this.inLineAd;
        if (inLineAd != null && !Utils.isEmpty(inLineAd.error)) {
            arrayList.add(new TrackingEvent("error", this.inLineAd.error));
        }
        List<VASTParser.WrapperAd> list = this.wrapperAds;
        if (list != null) {
            for (VASTParser.WrapperAd wrapperAd : list) {
                if (!Utils.isEmpty(wrapperAd.error)) {
                    arrayList.add(new TrackingEvent("error", wrapperAd.error));
                }
            }
        }
        TrackingEvent.fireEvents(arrayList);
    }

    private static boolean isJavascript(String str) {
        return "application/javascript".equalsIgnoreCase(str) || "application/x-javascript".equalsIgnoreCase(str) || "text/javascript".equalsIgnoreCase(str);
    }

    public static boolean isVPAID(VASTParser.InLineAd inLineAd) {
        List<VASTParser.MediaFile> list;
        List<VASTParser.Creative> list2 = inLineAd.creatives;
        if (list2 != null) {
            for (VASTParser.Creative creative : list2) {
                VASTParser.LinearAd linearAd = creative.linearAd;
                if (linearAd != null && (list = linearAd.mediaFiles) != null) {
                    for (VASTParser.MediaFile mediaFile : list) {
                        if ("VPAID".equalsIgnoreCase(mediaFile.apiFramework) && isJavascript(mediaFile.contentType)) {
                            if (!MMLog.isDebugEnabled()) {
                                return true;
                            }
                            MMLog.m4070d(TAG, "Detected VPAID video content");
                            return true;
                        }
                    }
                    continue;
                }
            }
            return false;
        }
        return false;
    }

    public void loadAd(String str) {
        String str2;
        this.vastDocuments.add(str);
        VASTParser.C0962Ad parse = VASTParser.parse(str);
        if (parse == null) {
            fireErrorUrls();
            this.listener.initFailed();
        } else if (parse instanceof VASTParser.InLineAd) {
            this.inLineAd = (VASTParser.InLineAd) parse;
        } else if (!(parse instanceof VASTParser.WrapperAd)) {
        } else {
            VASTParser.WrapperAd wrapperAd = (VASTParser.WrapperAd) parse;
            this.wrapperAds.add(wrapperAd);
            if (this.wrapperAds.size() > 3 || (str2 = wrapperAd.adTagURI) == null || str2.isEmpty()) {
                MMLog.m4068e(TAG, "VAST wrapper did not contain a valid ad tag URI or MAX VAST Redirects exceeded.");
                return;
            }
            if (MMLog.isDebugEnabled()) {
                String str3 = TAG;
                MMLog.m4070d(str3, "Requesting VAST tag URI = " + wrapperAd.adTagURI);
            }
            HttpUtils.Response contentFromGetRequest = HttpUtils.getContentFromGetRequest(wrapperAd.adTagURI);
            if (contentFromGetRequest.code == 200) {
                loadAd(contentFromGetRequest.content);
                return;
            }
            String str4 = TAG;
            MMLog.m4068e(str4, "Received HTTP status code = " + contentFromGetRequest.code + " when processing ad tag URI = " + wrapperAd.adTagURI);
        }
    }

    public void attach(MMActivity mMActivity) {
        ViewGroup rootView = mMActivity.getRootView();
        if (rootView == null) {
            this.listener.attachFailed();
            return;
        }
        Context context = rootView.getContext();
        if (!(context instanceof Activity)) {
            this.listener.attachFailed();
            return;
        }
        final AdContainer adContainer = new AdContainer((Activity) context, null);
        adContainer.setOnClickListener(new View.OnClickListener() { // from class: com.millennialmedia.internal.adcontrollers.VASTVideoController.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                VASTVideoController.this.listener.onClick();
            }
        });
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.adcontrollers.VASTVideoController.5
            @Override // java.lang.Runnable
            public void run() {
                if (VASTVideoController.this.videoView == null) {
                    MMLog.m4068e(VASTVideoController.TAG, "videoView instance is null, unable to attach");
                    VASTVideoController.this.listener.attachFailed();
                    return;
                }
                VASTVideoController.this.videoView.setLayoutParams(new ViewGroup.LayoutParams(-1, -1));
                ViewUtils.attachView(adContainer, VASTVideoController.this.videoView);
                if (VASTVideoController.this.videoView instanceof VideoViewActions) {
                    ((VideoViewActions) VASTVideoController.this.videoView).updateLayout();
                }
                VASTVideoController.this.listener.attachSucceeded();
            }
        });
        ViewUtils.attachView(rootView, adContainer);
    }

    @Override // com.millennialmedia.internal.adcontrollers.AdController
    @SuppressLint({"DefaultLocale"})
    public boolean canHandleContent(String str) {
        if (Utils.isEmpty(str)) {
            return false;
        }
        String upperCase = str.toUpperCase();
        int indexOf = upperCase.indexOf("<VAST");
        int indexOf2 = upperCase.indexOf("<AD");
        int indexOf3 = upperCase.indexOf("</VAST>");
        boolean z = false;
        if (indexOf >= 0) {
            z = false;
            if (indexOf < indexOf2) {
                z = false;
                if (indexOf2 < indexOf3) {
                    z = true;
                }
            }
        }
        return z;
    }

    @Override // com.millennialmedia.internal.adcontrollers.AdController
    public void close() {
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.adcontrollers.VASTVideoController.7
            @Override // java.lang.Runnable
            public void run() {
                if (VASTVideoController.this.listener != null) {
                    VASTVideoController.this.listener.close();
                }
            }
        });
    }

    public void createVASTVideoView(final Context context) {
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.adcontrollers.VASTVideoController.3
            @Override // java.lang.Runnable
            public void run() {
                VASTVideoController.this.videoView = new VASTVideoView(new MutableContextWrapper(context), VASTVideoController.this.inLineAd, VASTVideoController.this.wrapperAds, new VASTVideoView.VASTVideoViewListener() { // from class: com.millennialmedia.internal.adcontrollers.VASTVideoController.3.1
                    @Override // com.millennialmedia.internal.video.VASTVideoView.VASTVideoViewListener
                    public void close() {
                        VASTVideoController.this.close();
                    }

                    @Override // com.millennialmedia.internal.video.VASTVideoView.VASTVideoViewListener
                    public void onAdLeftApplication() {
                        VASTVideoController.this.listener.onAdLeftApplication();
                    }

                    @Override // com.millennialmedia.internal.video.VASTVideoView.VASTVideoViewListener
                    public void onClicked() {
                        VASTVideoController.this.listener.onClick();
                    }

                    @Override // com.millennialmedia.internal.video.VASTVideoView.VASTVideoViewListener
                    public void onFailed() {
                        VASTVideoController.this.fireErrorUrls();
                        VASTVideoController.this.listener.initFailed();
                    }

                    @Override // com.millennialmedia.internal.video.VASTVideoView.VASTVideoViewListener
                    public void onIncentiveEarned(XIncentivizedEventListener.XIncentiveEvent xIncentiveEvent) {
                        VASTVideoController.this.listener.onIncentiveEarned(xIncentiveEvent);
                    }

                    @Override // com.millennialmedia.internal.video.VASTVideoView.VASTVideoViewListener
                    public void onLoaded() {
                        VASTVideoController.this.listener.initSucceeded();
                    }
                });
                VASTVideoController.this.videoView.setTag("mmVastVideoView");
            }
        });
    }

    public void createVPAIDWebView(final Context context) {
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.adcontrollers.VASTVideoController.2
            @Override // java.lang.Runnable
            public void run() {
                VPAIDWebView vPAIDWebView = new VPAIDWebView(new MutableContextWrapper(context), false, new MMWebView.MMWebViewListener() { // from class: com.millennialmedia.internal.adcontrollers.VASTVideoController.2.1
                    @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                    public void close() {
                        VASTVideoController.this.close();
                    }

                    @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                    public boolean expand(SizableStateManager.ExpandParams expandParams) {
                        return false;
                    }

                    @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                    public void onAdLeftApplication() {
                        VASTVideoController.this.listener.onAdLeftApplication();
                    }

                    @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                    public void onClicked() {
                        VASTVideoController.this.listener.onClick();
                    }

                    @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                    public void onFailed() {
                        VASTVideoController.this.listener.initFailed();
                    }

                    @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                    public void onLoaded() {
                        VASTVideoController.this.listener.initSucceeded();
                    }

                    @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                    public void onReady() {
                    }

                    @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                    public boolean resize(SizableStateManager.ResizeParams resizeParams) {
                        return false;
                    }

                    @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                    public void setOrientation(int i) {
                    }

                    @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
                    public void showCloseIndicator(boolean z) {
                    }
                });
                vPAIDWebView.setTag("mmVpaidWebView");
                VASTVideoController.this.videoView = vPAIDWebView;
                vPAIDWebView.setVastDocuments(VASTVideoController.this.vastDocuments);
            }
        });
    }

    public ViewGroup getVideoView() {
        return this.videoView;
    }

    public void init(final Context context, final String str) {
        this.wrapperAds = new ArrayList();
        this.vastDocuments = new ArrayList();
        if (EnvironmentUtils.isExternalStorageWritable()) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.millennialmedia.internal.adcontrollers.VASTVideoController.1
                @Override // java.lang.Runnable
                public void run() {
                    String str2;
                    String str3;
                    Throwable e;
                    try {
                        VASTVideoController.this.loadAd(str);
                        if (VASTVideoController.this.inLineAd == null) {
                            MMLog.m4068e(VASTVideoController.TAG, "VAST content did not produce a valid InLineAd instance.");
                            VASTVideoController.this.fireErrorUrls();
                            VASTVideoController.this.listener.initFailed();
                            return;
                        }
                        if (VASTVideoController.this.wrapperAds != null) {
                            Iterator it = VASTVideoController.this.wrapperAds.iterator();
                            do {
                                if (it.hasNext()) {
                                }
                            } while (!((VASTParser.WrapperAd) it.next()).impressions.isEmpty());
                            MMLog.m4068e(VASTVideoController.TAG, "WrapperAd must contain at least one Impression URL.");
                            VASTVideoController.this.fireErrorUrls();
                            VASTVideoController.this.listener.initFailed();
                            return;
                        }
                        if (VASTVideoController.isVPAID(VASTVideoController.this.inLineAd)) {
                            VASTVideoController.this.createVPAIDWebView(context);
                        } else {
                            VASTVideoController.this.createVASTVideoView(context);
                        }
                    } catch (IOException e2) {
                        e = e2;
                        str3 = VASTVideoController.TAG;
                        str2 = "VAST XML I/O error.";
                        MMLog.m4067e(str3, str2, e);
                        VASTVideoController.this.fireErrorUrls();
                        VASTVideoController.this.listener.initFailed();
                    } catch (XmlPullParserException e3) {
                        e = e3;
                        str3 = VASTVideoController.TAG;
                        str2 = "VAST XML Parsing error.";
                        MMLog.m4067e(str3, str2, e);
                        VASTVideoController.this.fireErrorUrls();
                        VASTVideoController.this.listener.initFailed();
                    }
                }
            });
            return;
        }
        MMLog.m4062w(TAG, "External storage is not writeable.  Unable to load VAST video interstitial.");
        this.listener.initFailed();
    }

    public boolean onBackPressed() {
        ViewGroup viewGroup = this.videoView;
        if (viewGroup instanceof VideoViewActions) {
            return ((VideoViewActions) viewGroup).onBackPressed();
        }
        return true;
    }

    @Override // com.millennialmedia.internal.adcontrollers.AdController
    public void release() {
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.adcontrollers.VASTVideoController.6
            @Override // java.lang.Runnable
            public void run() {
                if (VASTVideoController.this.videoView instanceof VideoViewActions) {
                    ((VideoViewActions) VASTVideoController.this.videoView).release();
                    VASTVideoController.this.videoView = null;
                }
            }
        });
    }
}
