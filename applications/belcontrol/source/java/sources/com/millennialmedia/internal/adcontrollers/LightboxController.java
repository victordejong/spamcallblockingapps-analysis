package com.millennialmedia.internal.adcontrollers;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.view.Display;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.view.animation.Animation;
import android.view.animation.Transformation;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.millennialmedia.MMLog;
import com.millennialmedia.NativeAd;
import com.millennialmedia.internal.MMWebView;
import com.millennialmedia.internal.SizableStateManager;
import com.millennialmedia.internal.utils.ThreadUtils;
import com.millennialmedia.internal.utils.TrackingEvent;
import com.millennialmedia.internal.utils.ViewUtils;
import com.millennialmedia.internal.video.LightboxView;
import com.mopub.common.AdType;
import com.mopub.common.Constants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adcontrollers/LightboxController.class */
public class LightboxController extends AdController {
    private static final String TAG = "LightboxController";
    private volatile ViewGroup adContainer;
    private LightboxAd lightboxAd;
    private LightboxControllerListener lightboxControllerListener;
    private LightboxView lightboxView;
    private MMWebView mmWebView;

    /* renamed from: com.millennialmedia.internal.adcontrollers.LightboxController$1 */
    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adcontrollers/LightboxController$1.class */
    public class RunnableC08321 implements Runnable {
        public final /* synthetic */ Context val$context;

        public RunnableC08321(Context context) {
            LightboxController.this = r4;
            this.val$context = context;
        }

        @Override // java.lang.Runnable
        public void run() {
            LightboxController.this.lightboxView = new LightboxView(this.val$context, LightboxController.this.lightboxAd, new LightboxView.LightboxViewListener() { // from class: com.millennialmedia.internal.adcontrollers.LightboxController.1.1
                @Override // com.millennialmedia.internal.video.LightboxView.LightboxViewListener
                public void onAdLeftApplication() {
                    LightboxController.this.lightboxControllerListener.onAdLeftApplication();
                }

                @Override // com.millennialmedia.internal.video.LightboxView.LightboxViewListener
                public void onClicked() {
                    LightboxController.this.lightboxControllerListener.onClicked();
                }

                @Override // com.millennialmedia.internal.video.LightboxView.LightboxViewListener
                public void onCollapsed() {
                    LightboxController.this.lightboxControllerListener.onCollapsed();
                }

                @Override // com.millennialmedia.internal.video.LightboxView.LightboxViewListener
                public void onExpanded() {
                    LightboxController.this.lightboxControllerListener.onExpanded();
                }

                @Override // com.millennialmedia.internal.video.LightboxView.LightboxViewListener
                public void onFailed() {
                }

                @Override // com.millennialmedia.internal.video.LightboxView.LightboxViewListener
                public void onPrepared() {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.m4070d(LightboxController.TAG, "Lightbox prepared.");
                    }
                    ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.adcontrollers.LightboxController.1.1.1
                        @Override // java.lang.Runnable
                        public void run() {
                            if (LightboxController.this.adContainer == null || LightboxController.this.lightboxView.getParent() != null) {
                                return;
                            }
                            if (MMLog.isDebugEnabled()) {
                                MMLog.m4070d(LightboxController.TAG, "Attaching Lightbox in onPrepared.");
                            }
                            LightboxController.this.attachLightboxView();
                        }
                    });
                }

                @Override // com.millennialmedia.internal.video.LightboxView.LightboxViewListener
                public void onReadyToStart() {
                    if (MMLog.isDebugEnabled()) {
                        MMLog.m4070d(LightboxController.TAG, "lightbox is ready to start playback");
                    }
                    LightboxController.this.lightboxView.start();
                }
            });
            LightboxController lightboxController = LightboxController.this;
            Context context = this.val$context;
            MMWebView.MMWebViewOptions mMWebViewOptions = MMWebView.MMWebViewOptions.getDefault();
            LightboxController lightboxController2 = LightboxController.this;
            lightboxController.mmWebView = new MMWebView(context, mMWebViewOptions, lightboxController2.createMMWebViewListener(lightboxController2.lightboxControllerListener));
            LightboxController.this.mmWebView.setContent(LightboxController.this.lightboxAd.inline.content);
            MMWebView mMWebView = LightboxController.this.mmWebView;
            LightboxController lightboxController3 = LightboxController.this;
            mMWebView.addOnAttachStateChangeListener(lightboxController3.createAttachListener(lightboxController3.lightboxView));
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adcontrollers/LightboxController$Fullscreen.class */
    public static class Fullscreen {
        public String imageUri;
        public List<TrackingEvent> trackingEvents;
        public String webContent;

        public Fullscreen(String str, String str2, List<TrackingEvent> list) {
            this.webContent = str;
            this.imageUri = str2;
            this.trackingEvents = list;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adcontrollers/LightboxController$Inline.class */
    public static class Inline {
        public String content;
        public List<TrackingEvent> trackingEvents;

        public Inline(String str, List<TrackingEvent> list) {
            this.content = str;
            this.trackingEvents = list;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adcontrollers/LightboxController$LightboxAd.class */
    public static class LightboxAd {
        public Fullscreen fullscreen;
        public Inline inline;
        public Video video;

        public LightboxAd(Inline inline, Video video, Fullscreen fullscreen) {
            this.inline = inline;
            this.video = video;
            this.fullscreen = fullscreen;
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adcontrollers/LightboxController$LightboxControllerListener.class */
    public interface LightboxControllerListener {
        void attachFailed();

        void attachSucceeded();

        void initFailed();

        void initSucceeded();

        void onAdLeftApplication();

        void onClicked();

        void onCollapsed();

        void onExpanded();
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adcontrollers/LightboxController$TrackableEvent.class */
    public enum TrackableEvent {
        loaded,
        start,
        firstQuartile,
        midpoint,
        thirdQuartile,
        complete,
        videoExpand,
        videoCollapse,
        videoClose
    }

    /* loaded from: classes3-dex2jar.jar:com/millennialmedia/internal/adcontrollers/LightboxController$Video.class */
    public static class Video {
        public Map<TrackableEvent, List<TrackingEvent>> trackingEvents;
        public String uri;

        public Video(String str, Map<TrackableEvent, List<TrackingEvent>> map) {
            this.uri = str;
            this.trackingEvents = map;
        }
    }

    public LightboxController() {
    }

    public LightboxController(LightboxControllerListener lightboxControllerListener) {
        this.lightboxControllerListener = lightboxControllerListener;
    }

    public void attachLightboxView() {
        if (MMLog.isDebugEnabled()) {
            MMLog.m4070d(TAG, "attaching lightbox view");
        }
        Display defaultDisplay = ((WindowManager) this.adContainer.getContext().getSystemService("window")).getDefaultDisplay();
        final Point point = new Point();
        defaultDisplay.getSize(point);
        Point defaultPosition = this.lightboxView.getDefaultPosition();
        Point defaultDimensions = this.lightboxView.getDefaultDimensions();
        this.lightboxView.setTranslationX(defaultPosition.x);
        this.lightboxView.setTranslationY(point.y);
        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(defaultDimensions.x, defaultDimensions.y);
        ViewGroup decorView = ViewUtils.getDecorView(this.adContainer);
        if (decorView == null) {
            MMLog.m4068e(TAG, "Unable to determine the root view; cannot attach Lightbox view.");
            return;
        }
        ViewUtils.attachView(decorView, this.lightboxView, layoutParams);
        final int i = point.y - defaultPosition.y;
        Animation animation = new Animation() { // from class: com.millennialmedia.internal.adcontrollers.LightboxController.7
            @Override // android.view.animation.Animation
            public void applyTransformation(float f, Transformation transformation) {
                LightboxController.this.lightboxView.setTranslationY(f == 1.0f ? point.y - i : point.y - (f * i));
            }
        };
        animation.setDuration(point.y / this.adContainer.getContext().getResources().getDisplayMetrics().density);
        this.lightboxView.startAnimation(animation);
    }

    public View.OnAttachStateChangeListener createAttachListener(final LightboxView lightboxView) {
        return new View.OnAttachStateChangeListener() { // from class: com.millennialmedia.internal.adcontrollers.LightboxController.5
            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewAttachedToWindow(View view) {
            }

            @Override // android.view.View.OnAttachStateChangeListener
            public void onViewDetachedFromWindow(View view) {
                lightboxView.animateToGone(false);
            }
        };
    }

    public MMWebView.MMWebViewListener createMMWebViewListener(final LightboxControllerListener lightboxControllerListener) {
        return new MMWebView.MMWebViewListener() { // from class: com.millennialmedia.internal.adcontrollers.LightboxController.4
            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void close() {
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public boolean expand(SizableStateManager.ExpandParams expandParams) {
                return false;
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onAdLeftApplication() {
                lightboxControllerListener.onAdLeftApplication();
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onClicked() {
                lightboxControllerListener.onClicked();
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onFailed() {
                lightboxControllerListener.initFailed();
            }

            @Override // com.millennialmedia.internal.MMWebView.MMWebViewListener
            public void onLoaded() {
                lightboxControllerListener.initSucceeded();
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
        };
    }

    private List<TrackingEvent> fromJSONArray(TrackableEvent trackableEvent, JSONArray jSONArray) {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < jSONArray.length(); i++) {
            arrayList.add(new TrackingEvent(trackableEvent.name(), jSONArray.getString(i)));
        }
        return arrayList;
    }

    public void attach(final ViewGroup viewGroup, final ViewGroup.LayoutParams layoutParams) {
        if (viewGroup == null) {
            this.lightboxControllerListener.attachFailed();
            return;
        }
        this.adContainer = viewGroup;
        if (!(viewGroup.getContext() instanceof Activity)) {
            this.lightboxControllerListener.attachFailed();
        } else {
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.adcontrollers.LightboxController.6
                @Override // java.lang.Runnable
                public void run() {
                    ViewUtils.attachView(viewGroup, LightboxController.this.mmWebView, layoutParams);
                    if (LightboxController.this.lightboxView.isPrepared() && LightboxController.this.lightboxView.getParent() == null) {
                        if (MMLog.isDebugEnabled()) {
                            MMLog.m4070d(LightboxController.TAG, "attaching lightbox is attach.");
                        }
                        LightboxController.this.attachLightboxView();
                    }
                    LightboxController.this.lightboxControllerListener.attachSucceeded();
                    TrackingEvent.fireEvents(LightboxController.this.lightboxAd.inline.trackingEvents);
                }
            });
        }
    }

    @Override // com.millennialmedia.internal.adcontrollers.AdController
    public boolean canHandleContent(String str) {
        try {
            return "lightbox".equalsIgnoreCase(new JSONObject(str).getString("mmAdFormat"));
        } catch (JSONException e) {
            return false;
        }
    }

    @Override // com.millennialmedia.internal.adcontrollers.AdController
    public void close() {
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.adcontrollers.LightboxController.3
            @Override // java.lang.Runnable
            public void run() {
                if (LightboxController.this.adContainer != null) {
                    LightboxController.this.adContainer.removeAllViews();
                    LightboxController.this.adContainer = null;
                }
            }
        });
    }

    public int getCurrentPosition() {
        LightboxView lightboxView = this.lightboxView;
        if (lightboxView == null) {
            return -1;
        }
        return lightboxView.getCurrentPosition();
    }

    public int getDuration() {
        LightboxView lightboxView = this.lightboxView;
        if (lightboxView == null) {
            return -1;
        }
        return lightboxView.getDuration();
    }

    public void init(Context context, String str) {
        try {
            JSONObject jSONObject = new JSONObject(str).getJSONObject("ad");
            JSONObject jSONObject2 = jSONObject.getJSONObject(NativeAd.NATIVE_TYPE_INLINE);
            String string = jSONObject2.getString(Constants.VAST_TRACKER_CONTENT);
            TrackableEvent trackableEvent = TrackableEvent.loaded;
            Inline inline = new Inline(string, fromJSONArray(trackableEvent, jSONObject2.getJSONArray("loadTracking")));
            JSONObject jSONObject3 = jSONObject.getJSONObject("video");
            HashMap hashMap = new HashMap();
            TrackableEvent trackableEvent2 = TrackableEvent.start;
            hashMap.put(trackableEvent2, fromJSONArray(trackableEvent2, jSONObject3.getJSONArray(TtmlNode.START)));
            TrackableEvent trackableEvent3 = TrackableEvent.firstQuartile;
            hashMap.put(trackableEvent3, fromJSONArray(trackableEvent3, jSONObject3.getJSONArray("firstQuartile")));
            TrackableEvent trackableEvent4 = TrackableEvent.midpoint;
            hashMap.put(trackableEvent4, fromJSONArray(trackableEvent4, jSONObject3.getJSONArray("midpoint")));
            TrackableEvent trackableEvent5 = TrackableEvent.thirdQuartile;
            hashMap.put(trackableEvent5, fromJSONArray(trackableEvent5, jSONObject3.getJSONArray("thirdQuartile")));
            TrackableEvent trackableEvent6 = TrackableEvent.complete;
            hashMap.put(trackableEvent6, fromJSONArray(trackableEvent6, jSONObject3.getJSONArray("complete")));
            TrackableEvent trackableEvent7 = TrackableEvent.videoExpand;
            hashMap.put(trackableEvent7, fromJSONArray(trackableEvent7, jSONObject3.getJSONArray("videoExpand")));
            TrackableEvent trackableEvent8 = TrackableEvent.videoCollapse;
            hashMap.put(trackableEvent8, fromJSONArray(trackableEvent8, jSONObject3.getJSONArray("videoCollapse")));
            TrackableEvent trackableEvent9 = TrackableEvent.videoClose;
            hashMap.put(trackableEvent9, fromJSONArray(trackableEvent9, jSONObject3.getJSONArray("videoClose")));
            Video video = new Video(jSONObject3.getString("uri"), hashMap);
            JSONObject jSONObject4 = jSONObject.getJSONObject(AdType.FULLSCREEN);
            this.lightboxAd = new LightboxAd(inline, video, new Fullscreen(jSONObject4.getString("webContent"), jSONObject4.getString("imageUri"), fromJSONArray(trackableEvent, jSONObject4.getJSONArray("loadTracking"))));
            ThreadUtils.postOnUiThread(new RunnableC08321(context));
        } catch (JSONException e) {
            MMLog.m4067e(TAG, "Lightbox ad content is malformed.", e);
            this.lightboxControllerListener.initFailed();
        }
    }

    @Override // com.millennialmedia.internal.adcontrollers.AdController
    public void release() {
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.millennialmedia.internal.adcontrollers.LightboxController.2
            @Override // java.lang.Runnable
            public void run() {
                if (LightboxController.this.mmWebView != null) {
                    LightboxController.this.mmWebView.release();
                    LightboxController.this.mmWebView = null;
                }
                if (LightboxController.this.lightboxView != null) {
                    LightboxController.this.lightboxView.release();
                }
            }
        });
    }
}
