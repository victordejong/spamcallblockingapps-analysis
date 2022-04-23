package com.inmobi.rendering;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.media.AudioManager;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.provider.Settings;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.webkit.JavascriptInterface;
import android.webkit.URLUtil;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import com.google.common.collect.RegularImmutableMap;
import com.inmobi.ads.AdContainer;
import com.inmobi.ads.C8083ah;
import com.inmobi.ads.C8103ak;
import com.inmobi.ads.C8181bn;
import com.inmobi.ads.C8186bs;
import com.inmobi.ads.p500a.C8051b;
import com.inmobi.ads.p500a.C8055f;
import com.inmobi.commons.core.configs.C8348b;
import com.inmobi.commons.core.configs.C8359h;
import com.inmobi.commons.core.network.C8379a;
import com.inmobi.commons.core.network.C8383c;
import com.inmobi.commons.core.network.C8384d;
import com.inmobi.commons.core.utilities.Logger;
import com.inmobi.commons.core.utilities.p516b.C8399c;
import com.inmobi.commons.p508a.C8326a;
import com.inmobi.p497a.C8002n;
import com.inmobi.rendering.mraid.C8482a;
import com.inmobi.rendering.mraid.C8483b;
import com.inmobi.rendering.mraid.C8489f;
import com.inmobi.rendering.mraid.C8490g;
import com.inmobi.rendering.mraid.MediaRenderView;
import com.inmobi.rendering.mraid.MraidMediaProcessor;
import com.inmobi.rendering.p517a.C8444c;
import com.mopub.common.AdType;
import com.mopub.mobileads.resource.DrawableConstants;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Locale;
import java.util.UUID;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.inmobi.rendering.c */
/* loaded from: classes2-dex2jar.jar:com/inmobi/rendering/c.class */
public class C8463c {

    /* renamed from: a */
    public static final String[] f32878a = {"tel", "sms", "calendar", "inlineVideo"};

    /* renamed from: b */
    public static final String f32879b = "c";

    /* renamed from: c */
    public RenderView f32880c;

    /* renamed from: d */
    public AdContainer.RenderingProperties f32881d;

    /* renamed from: e */
    public C8489f f32882e;

    /* renamed from: com.inmobi.rendering.c$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/rendering/c$a.class */
    public static final class ViewTreeObserver$OnGlobalLayoutListenerC8475a implements ViewTreeObserver.OnGlobalLayoutListener {

        /* renamed from: a */
        public int f32910a;

        /* renamed from: b */
        public int f32911b;

        /* renamed from: c */
        public View f32912c;

        /* renamed from: d */
        public final Boolean f32913d = false;

        public ViewTreeObserver$OnGlobalLayoutListenerC8475a(View view) {
            this.f32912c = view;
        }

        @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
        public final void onGlobalLayout() {
            try {
                this.f32910a = C8399c.m5684b(this.f32912c.getWidth());
                this.f32911b = C8399c.m5684b(this.f32912c.getHeight());
                if (Build.VERSION.SDK_INT >= 16) {
                    this.f32912c.getViewTreeObserver().removeOnGlobalLayoutListener(this);
                } else {
                    this.f32912c.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                }
                synchronized (this.f32913d) {
                    this.f32913d.notify();
                }
            } catch (Exception e) {
                String unused = C8463c.f32879b;
                new StringBuilder("SDK encountered unexpected error in JavaScriptBridge$1.onGlobalLayout(); ").append(e.getMessage());
            }
        }
    }

    public C8463c(RenderView renderView, AdContainer.RenderingProperties renderingProperties) {
        this.f32880c = renderView;
        this.f32881d = renderingProperties;
    }

    @JavascriptInterface
    public void asyncPing(String str, String str2) {
        if (!URLUtil.isValidUrl(str2)) {
            this.f32880c.m5587b(str, "Invalid url", "asyncPing");
            return;
        }
        try {
            HashMap hashMap = new HashMap();
            hashMap.put("command", "ping");
            hashMap.put("scheme", C8186bs.m6242a(str));
            this.f32880c.m5594a("CreativeInvokedAction", hashMap);
            final C8383c cVar = new C8383c("GET", str2);
            cVar.f32615t = false;
            cVar.f32621z = false;
            final long elapsedRealtime = SystemClock.elapsedRealtime();
            new C8379a(cVar, new C8379a.AbstractC8381a() { // from class: com.inmobi.rendering.c.2
                @Override // com.inmobi.commons.core.network.C8379a.AbstractC8381a
                /* renamed from: a */
                public final void mo5500a(C8384d dVar) {
                    String unused = C8463c.f32879b;
                    try {
                        C8002n.m6748a().m6747a(cVar.m5734g());
                        C8002n.m6748a().m6745b(dVar.m5729c());
                        C8002n.m6748a().m6744c(SystemClock.elapsedRealtime() - elapsedRealtime);
                    } catch (Exception e) {
                        String unused2 = C8463c.f32879b;
                        new StringBuilder("Error in setting request-response data size. ").append(e.getMessage());
                    }
                }

                @Override // com.inmobi.commons.core.network.C8379a.AbstractC8381a
                /* renamed from: b */
                public final void mo5499b(C8384d dVar) {
                    String unused = C8463c.f32879b;
                }
            }).m5752a();
        } catch (Exception e) {
            this.f32880c.m5587b(str, "Unexpected error", "asyncPing");
            new StringBuilder("SDK encountered internal error in handling asyncPing() request from creative; ").append(e.getMessage());
        }
    }

    @JavascriptInterface
    public void cancelSaveContent(String str, String str2) {
        try {
            RenderView.m5580d();
        } catch (Exception e) {
            this.f32880c.m5587b(str, "Unexpected error", "cancelSaveContent");
            new StringBuilder("SDK encountered unexpected error in handling cancelSaveContent() request from creative; ").append(e.getMessage());
        }
    }

    @JavascriptInterface
    public void close(final String str) {
        new Handler(this.f32880c.getContainerContext().getMainLooper()).post(new Runnable() { // from class: com.inmobi.rendering.c.11
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    C8463c.this.f32880c.getReferenceContainer().mo5592b();
                } catch (Exception e) {
                    C8463c.this.f32880c.m5587b(str, "Unexpected error", "close");
                    Logger.m5724a(Logger.InternalLogLevel.ERROR, "InMobi", "Failed to close ad; SDK encountered an unexpected error");
                    String unused = C8463c.f32879b;
                    new StringBuilder("SDK encountered an expected error in handling the close() request from creative; ").append(e.getMessage());
                }
            }
        });
    }

    @JavascriptInterface
    public void disableBackButton(String str, boolean z) {
        RenderView renderView = this.f32880c;
        if (renderView != null) {
            renderView.setDisableBackButton(z);
        }
    }

    @JavascriptInterface
    public void disableCloseRegion(final String str, final boolean z) {
        if (this.f32880c != null) {
            new Handler(this.f32880c.getContainerContext().getMainLooper()).post(new Runnable() { // from class: com.inmobi.rendering.c.3
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        C8463c.this.f32880c.m5593a(z);
                    } catch (Exception e) {
                        C8463c.this.f32880c.m5587b(str, "Unexpected error", "disableCloseRegion");
                        String unused = C8463c.f32879b;
                        new StringBuilder("SDK encountered unexpected error in handling disableCloseRegion() request from creative; ").append(e.getMessage());
                    }
                }
            });
        }
    }

    @JavascriptInterface
    public void expand(final String str, final String str2) {
        RenderView renderView;
        if (this.f32881d.f31277a != AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_FULLSCREEN && (renderView = this.f32880c) != null) {
            if (!renderView.m5576e()) {
                this.f32880c.m5583c("expand");
                return;
            }
            RenderView renderView2 = this.f32880c;
            if (!renderView2.f32792n) {
                renderView2.m5587b(str, "Creative is not visible. Ignoring request.", "expand");
            } else if (str2 == null || str2.length() == 0 || str2.startsWith("http")) {
                new Handler(this.f32880c.getContainerContext().getMainLooper()).post(new Runnable() { // from class: com.inmobi.rendering.c.7
                    @Override // java.lang.Runnable
                    public final void run() {
                        int i;
                        try {
                            RenderView renderView3 = C8463c.this.f32880c;
                            String str3 = str;
                            String str4 = str2;
                            if ("Default".equals(renderView3.f32782d) || "Resized".equals(renderView3.f32782d)) {
                                renderView3.f32797s = true;
                                C8483b bVar = renderView3.f32784f;
                                if (bVar.f32957c == null) {
                                    ViewGroup viewGroup = (ViewGroup) bVar.f32955a.getParent();
                                    bVar.f32957c = viewGroup;
                                    bVar.f32958d = viewGroup.indexOfChild(bVar.f32955a);
                                }
                                if (bVar.f32955a != null) {
                                    C8482a expandProperties = bVar.f32955a.getExpandProperties();
                                    boolean isValidUrl = URLUtil.isValidUrl(str4);
                                    bVar.f32956b = isValidUrl;
                                    if (isValidUrl) {
                                        RenderView renderView4 = new RenderView(bVar.f32955a.getContainerContext(), new AdContainer.RenderingProperties(AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_INLINE), null, bVar.f32955a.getImpressionId());
                                        renderView4.m5605a(bVar.f32955a.getListener(), bVar.f32955a.getAdConfig());
                                        renderView4.setOriginalRenderView(bVar.f32955a);
                                        renderView4.loadUrl(str4);
                                        renderView4.setPlacementId(bVar.f32955a.getPlacementId());
                                        renderView4.setAllowAutoRedirection(bVar.f32955a.getAllowAutoRedirection());
                                        renderView4.setCreativeId(bVar.f32955a.getCreativeId());
                                        int a = InMobiAdActivity.m5615a((AdContainer) renderView4);
                                        i = a;
                                        if (expandProperties != null) {
                                            renderView4.setUseCustomClose(bVar.f32955a.f32790l);
                                            i = a;
                                        }
                                    } else {
                                        FrameLayout frameLayout = new FrameLayout(bVar.f32955a.getContainerContext());
                                        ViewGroup.LayoutParams layoutParams = new ViewGroup.LayoutParams(bVar.f32955a.getWidth(), bVar.f32955a.getHeight());
                                        frameLayout.setId(RegularImmutableMap.SHORT_MASK);
                                        bVar.f32957c.addView(frameLayout, bVar.f32958d, layoutParams);
                                        bVar.f32957c.removeView(bVar.f32955a);
                                        i = InMobiAdActivity.m5615a((AdContainer) bVar.f32955a);
                                    }
                                    bVar.f32955a.getListener().mo5551E();
                                    Intent intent = new Intent(bVar.f32955a.getContainerContext(), InMobiAdActivity.class);
                                    intent.putExtra("com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE", 102);
                                    intent.putExtra("com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_INDEX", i);
                                    intent.putExtra("com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_TYPE", 200);
                                    C8326a.m5896a(bVar.f32955a.getContainerContext(), intent);
                                }
                                renderView3.requestLayout();
                                renderView3.invalidate();
                                renderView3.f32791m = true;
                                renderView3.setFocusable(true);
                                renderView3.setFocusableInTouchMode(true);
                                renderView3.requestFocus();
                                HashMap hashMap = new HashMap();
                                hashMap.put("command", "expand");
                                hashMap.put("scheme", C8186bs.m6242a(str3));
                                renderView3.f32781c.mo5547b("CreativeInvokedAction", hashMap);
                                return;
                            }
                            new StringBuilder("Render view state must be either DEFAULT or RESIZED to admit the expand request. Current state:").append(renderView3.f32782d);
                        } catch (Exception e) {
                            C8463c.this.f32880c.m5587b(str, "Unexpected error", "expand");
                            Logger.m5724a(Logger.InternalLogLevel.ERROR, "InMobi", "Failed to expand ad; SDK encountered an unexpected error");
                            String unused = C8463c.f32879b;
                            new StringBuilder("SDK encountered unexpected error in handling expand() request; ").append(e.getMessage());
                        }
                    }
                });
            } else {
                this.f32880c.m5587b(str, "Invalid URL", "expand");
            }
        }
    }

    @JavascriptInterface
    public void fireAdFailed(String str) {
        try {
            this.f32880c.getListener().mo5542w();
        } catch (Exception e) {
            this.f32880c.m5587b(str, "Unexpected error", "fireAdFailed");
            new StringBuilder("SDK encountered unexpected error in handling fireAdFailed() signal from creative; ").append(e.getMessage());
        }
    }

    @JavascriptInterface
    public void fireAdReady(String str) {
        try {
            this.f32880c.getListener().mo5543u();
        } catch (Exception e) {
            this.f32880c.m5587b(str, "Unexpected error", "fireAdReady");
            new StringBuilder("SDK encountered unexpected error in handling fireAdReady() signal from creative; ").append(e.getMessage());
        }
    }

    @JavascriptInterface
    public void fireComplete(String str) {
        if (this.f32880c != null) {
            RenderView.m5570g();
        }
    }

    @JavascriptInterface
    public void fireSkip(String str) {
        RenderView.m5573f();
    }

    @JavascriptInterface
    public void getBlob(String str, String str2) {
        AbstractC8441a aVar;
        RenderView renderView = this.f32880c;
        if (renderView != null && (aVar = renderView.f32798t) != null) {
            aVar.mo5539a(str, str2, renderView);
        }
    }

    @JavascriptInterface
    public String getCurrentPosition(String str) {
        RenderView renderView = this.f32880c;
        if (renderView == null) {
            return "";
        }
        synchronized (renderView.getCurrentPositionMonitor()) {
            try {
                this.f32880c.setCurrentPositionLock();
                new Handler(this.f32880c.getContainerContext().getMainLooper()).post(new Runnable() { // from class: com.inmobi.rendering.c.6
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            C8463c.this.f32880c.setCurrentPosition();
                        } catch (Exception e) {
                            String unused = C8463c.f32879b;
                            new StringBuilder("SDK encountered unexpected error in getting/setting current position; ").append(e.getMessage());
                        }
                    }
                });
                while (this.f32880c.f32789k) {
                    try {
                        this.f32880c.getCurrentPositionMonitor().wait();
                    } catch (InterruptedException e) {
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return this.f32880c.getCurrentPosition();
    }

    @JavascriptInterface
    public String getDefaultPosition(String str) {
        RenderView renderView = this.f32880c;
        if (renderView == null) {
            return new JSONObject().toString();
        }
        synchronized (renderView.getDefaultPositionMonitor()) {
            try {
                this.f32880c.setDefaultPositionLock();
                new Handler(this.f32880c.getContainerContext().getMainLooper()).post(new Runnable() { // from class: com.inmobi.rendering.c.5
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            C8463c.this.f32880c.setDefaultPosition();
                        } catch (Exception e) {
                            String unused = C8463c.f32879b;
                            new StringBuilder("SDK encountered unexpected error in getting/setting default position; ").append(e.getMessage());
                        }
                    }
                });
                while (this.f32880c.f32788j) {
                    try {
                        this.f32880c.getDefaultPositionMonitor().wait();
                    } catch (InterruptedException e) {
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return this.f32880c.getDefaultPosition();
    }

    @JavascriptInterface
    public int getDeviceVolume(String str) {
        RenderView renderView = this.f32880c;
        if (renderView == null) {
            return -1;
        }
        try {
            MraidMediaProcessor mediaProcessor = renderView.getMediaProcessor();
            Context b = C8326a.m5891b();
            if (b == null) {
                return -1;
            }
            if (!mediaProcessor.f32931a.getRenderingConfig().f32048m || !C8326a.m5886d()) {
                return ((AudioManager) b.getSystemService("audio")).getStreamVolume(3);
            }
            return 0;
        } catch (Exception e) {
            this.f32880c.m5587b(str, "Unexpected error", "getDeviceVolume");
            new StringBuilder("SDK encountered unexpected error in handling getDeviceVolume() request from creative; ").append(e.getMessage());
            return -1;
        }
    }

    @JavascriptInterface
    public int getDownloadProgress(String str) {
        RenderView renderView = this.f32880c;
        if (renderView == null) {
            return -1;
        }
        try {
            return renderView.getDownloadProgress();
        } catch (Exception e) {
            this.f32880c.m5587b(str, "Unexpected error", "getDownloadProgress");
            new StringBuilder("SDK encountered unexpected error in handling getDownloadProgress() request from creative; ").append(e.getMessage());
            return -1;
        }
    }

    @JavascriptInterface
    public int getDownloadStatus(String str) {
        RenderView renderView = this.f32880c;
        if (renderView == null) {
            return -1;
        }
        try {
            return renderView.getDownloadStatus();
        } catch (Exception e) {
            this.f32880c.m5587b(str, "Unexpected error", "getDownloadStatus");
            new StringBuilder("SDK encountered unexpected error in handling getDownloadStatus() request from creative; ").append(e.getMessage());
            return -1;
        }
    }

    @JavascriptInterface
    public String getExpandProperties(String str) {
        RenderView renderView = this.f32880c;
        return renderView == null ? "" : renderView.getExpandProperties().f32950c;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0078, code lost:
        if (r0 == 0) goto L_0x007b;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:37:0x0116 -> B:30:0x00d0). Please submit an issue!!! */
    @android.webkit.JavascriptInterface
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String getMaxSize(java.lang.String r6) {
        /*
            Method dump skipped, instructions count: 283
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.rendering.C8463c.getMaxSize(java.lang.String):java.lang.String");
    }

    @JavascriptInterface
    public String getOrientation(String str) {
        int b = C8399c.m5685b();
        return b == 1 ? "0" : b == 3 ? "90" : b == 2 ? "180" : b == 4 ? "270" : "-1";
    }

    @JavascriptInterface
    public String getOrientationProperties(String str) {
        return this.f32882e.f32975d;
    }

    @JavascriptInterface
    public String getPlacementType(String str) {
        return AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_FULLSCREEN == this.f32881d.f31277a ? AdType.INTERSTITIAL : "inline";
    }

    @JavascriptInterface
    public String getPlatform(String str) {
        return "android";
    }

    @JavascriptInterface
    public String getPlatformVersion(String str) {
        return Integer.toString(Build.VERSION.SDK_INT);
    }

    @JavascriptInterface
    public String getResizeProperties(String str) {
        C8490g resizeProperties;
        RenderView renderView = this.f32880c;
        return (renderView == null || (resizeProperties = renderView.getResizeProperties()) == null) ? "" : resizeProperties.m5466a();
    }

    @JavascriptInterface
    public String getScreenSize(String str) {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("width", C8399c.m5687a().f32660a);
            jSONObject.put("height", C8399c.m5687a().f32661b);
        } catch (JSONException e) {
        } catch (Exception e2) {
            this.f32880c.m5587b(str, "Unexpected error", "getScreenSize");
            new StringBuilder("SDK encountered unexpected error while getting screen dimensions; ").append(e2.getMessage());
        }
        return jSONObject.toString();
    }

    @JavascriptInterface
    public String getSdkVersion(String str) {
        return "7.3.0";
    }

    @JavascriptInterface
    public String getState(String str) {
        return this.f32880c.getState().toLowerCase(Locale.ENGLISH);
    }

    @JavascriptInterface
    public String getVersion(String str) {
        return "2.0";
    }

    @JavascriptInterface
    public void incentCompleted(String str, String str2) {
        if (str2 == null) {
            try {
                this.f32880c.getListener().mo5549a(new HashMap<>());
            } catch (Exception e) {
                this.f32880c.m5587b(str, "Unexpected error", "incentCompleted");
                new StringBuilder("SDK encountered unexpected error in handling onUserInteraction() signal from creative; ").append(e.getMessage());
            }
        } else {
            try {
                JSONObject jSONObject = new JSONObject(str2);
                HashMap<Object, Object> hashMap = new HashMap<>();
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    hashMap.put(next, jSONObject.get(next));
                }
                try {
                    this.f32880c.getListener().mo5549a(hashMap);
                } catch (Exception e2) {
                    this.f32880c.m5587b(str, "Unexpected error", "incentCompleted");
                    new StringBuilder("SDK encountered unexpected error in handling onUserInteraction() signal from creative; ").append(e2.getMessage());
                }
            } catch (JSONException e3) {
                try {
                    this.f32880c.getListener().mo5549a(new HashMap<>());
                } catch (Exception e4) {
                    this.f32880c.m5587b(str, "Unexpected error", "incentCompleted");
                    new StringBuilder("SDK encountered unexpected error in handling onUserInteraction() signal from creative; ").append(e4.getMessage());
                }
            }
        }
    }

    @JavascriptInterface
    public boolean isBackButtonDisabled(String str) {
        RenderView renderView = this.f32880c;
        if (renderView == null) {
            return false;
        }
        return renderView.f32794p;
    }

    @JavascriptInterface
    public String isDeviceMuted(String str) {
        RenderView renderView = this.f32880c;
        if (renderView == null) {
            return "false";
        }
        boolean z = false;
        try {
            renderView.getMediaProcessor();
            z = MraidMediaProcessor.m5489a();
        } catch (Exception e) {
            new StringBuilder("SDK encountered unexpected error in checking if device is muted; ").append(e.getMessage());
        }
        return String.valueOf(z);
    }

    @JavascriptInterface
    public String isHeadphonePlugged(String str) {
        RenderView renderView = this.f32880c;
        if (renderView == null) {
            return "false";
        }
        boolean z = false;
        try {
            renderView.getMediaProcessor();
            z = MraidMediaProcessor.m5481d();
        } catch (Exception e) {
            new StringBuilder("SDK encountered unexpected error in checking if headphones are plugged-in; ").append(e.getMessage());
        }
        return String.valueOf(z);
    }

    @JavascriptInterface
    public boolean isViewable(String str) {
        RenderView renderView = this.f32880c;
        if (renderView == null) {
            return false;
        }
        return renderView.f32792n;
    }

    @JavascriptInterface
    public void log(String str, String str2) {
    }

    @JavascriptInterface
    public void onOrientationChange(String str) {
    }

    @JavascriptInterface
    public void onUserInteraction(String str, String str2) {
        RenderView renderView = this.f32880c;
        if (renderView != null && !renderView.m5576e()) {
            this.f32880c.m5583c("onUserInteraction");
        } else if (str2 == null) {
            try {
                this.f32880c.getListener().mo5546b(new HashMap<>());
            } catch (Exception e) {
                this.f32880c.m5587b(str, "Unexpected error", "onUserInteraction");
                new StringBuilder("SDK encountered unexpected error in handling onUserInteraction() signal from creative; ").append(e.getMessage());
            }
        } else {
            try {
                JSONObject jSONObject = new JSONObject(str2);
                HashMap<Object, Object> hashMap = new HashMap<>();
                Iterator<String> keys = jSONObject.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    hashMap.put(next, jSONObject.get(next));
                }
                try {
                    this.f32880c.getListener().mo5546b(hashMap);
                } catch (Exception e2) {
                    this.f32880c.m5587b(str, "Unexpected error", "onUserInteraction");
                    new StringBuilder("SDK encountered unexpected error in handling onUserInteraction() signal from creative; ").append(e2.getMessage());
                }
            } catch (JSONException e3) {
                try {
                    this.f32880c.getListener().mo5546b(new HashMap<>());
                } catch (Exception e4) {
                    this.f32880c.m5587b(str, "Unexpected error", "onUserInteraction");
                    new StringBuilder("SDK encountered unexpected error in handling onUserInteraction() signal from creative; ").append(e4.getMessage());
                }
            }
        }
    }

    @JavascriptInterface
    public void open(final String str, final String str2) {
        RenderView renderView = this.f32880c;
        if (renderView != null) {
            if (!renderView.m5576e()) {
                this.f32880c.m5583c("open");
            } else {
                new Handler(this.f32880c.getContainerContext().getMainLooper()).post(new Runnable() { // from class: com.inmobi.rendering.c.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            C8463c.this.f32880c.m5582c("open", str, str2);
                        } catch (Exception e) {
                            C8463c.this.f32880c.m5587b(str, "Unexpected error", "open");
                            Logger.m5724a(Logger.InternalLogLevel.ERROR, "InMobi", "Failed to open URL; SDK encountered unexpected error");
                            String unused = C8463c.f32879b;
                            new StringBuilder("SDK encountered unexpected error in handling open() request from creative; ").append(e.getMessage());
                        }
                    }
                });
            }
        }
    }

    @JavascriptInterface
    public void openEmbedded(final String str, final String str2) {
        RenderView renderView = this.f32880c;
        if (renderView != null) {
            if (!renderView.m5576e()) {
                this.f32880c.m5583c("openEmbedded");
            } else {
                new Handler(this.f32880c.getContainerContext().getMainLooper()).post(new Runnable() { // from class: com.inmobi.rendering.c.4
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            C8463c.this.f32880c.m5582c("openEmbedded", str, str2);
                        } catch (Exception e) {
                            C8463c.this.f32880c.m5587b(str, "Unexpected error", "openEmbedded");
                            Logger.m5724a(Logger.InternalLogLevel.ERROR, "InMobi", "Failed to open URL; SDK encountered unexpected error");
                            String unused = C8463c.f32879b;
                            new StringBuilder("SDK encountered unexpected error in handling openEmbedded() request from creative; ").append(e.getMessage());
                        }
                    }
                });
            }
        }
    }

    @JavascriptInterface
    public void openExternal(String str, String str2, String str3) {
        RenderView renderView = this.f32880c;
        if (renderView != null) {
            if (!renderView.m5576e()) {
                this.f32880c.m5583c("openExternal");
            } else {
                this.f32880c.m5596a("openExternal", str, str2, str3);
            }
        }
    }

    @JavascriptInterface
    public void ping(String str, final String str2, final boolean z) {
        if (this.f32880c != null) {
            if (str2 == null || str2.trim().length() == 0 || !URLUtil.isValidUrl(str2)) {
                RenderView renderView = this.f32880c;
                renderView.m5587b(str, "Invalid URL:" + str2, "ping");
                return;
            }
            StringBuilder sb = new StringBuilder("JavaScript called ping() URL: >>> ");
            sb.append(str2);
            sb.append(" <<<");
            try {
                final C8444c a = C8444c.m5530a();
                new Thread() { // from class: com.inmobi.rendering.a.c.1
                    @Override // java.lang.Thread, java.lang.Runnable
                    public final void run() {
                        try {
                            C8359h hVar = new C8359h();
                            C8348b.m5847a().m5844a(hVar, (C8348b.AbstractC8351c) null);
                            if (!hVar.f32507g) {
                                C8442a aVar = new C8442a(str2, z, false, C8444c.f32844j.f32021a + 1);
                                String unused = C8444c.f32835a;
                                StringBuilder sb2 = new StringBuilder("Received click (");
                                sb2.append(aVar.f32825b);
                                sb2.append(") for pinging over HTTP");
                                C8444c.m5525a(a, aVar);
                            }
                        } catch (Exception e) {
                            String unused2 = C8444c.f32835a;
                            new StringBuilder("SDK encountered unexpected error in pinging click; ").append(e.getMessage());
                        }
                    }
                }.start();
            } catch (Exception e) {
                this.f32880c.m5587b(str, "Unexpected error", "ping");
                Logger.m5724a(Logger.InternalLogLevel.ERROR, "InMobi", "Failed to fire ping; SDK encountered unexpected error");
                new StringBuilder("SDK encountered unexpected error in handling ping() request from creative; ").append(e.getMessage());
            }
        }
    }

    @JavascriptInterface
    public void pingInWebView(String str, final String str2, final boolean z) {
        if (this.f32880c != null) {
            if (str2 == null || str2.trim().length() == 0 || !URLUtil.isValidUrl(str2)) {
                RenderView renderView = this.f32880c;
                renderView.m5587b(str, "Invalid URL:" + str2, "pingInWebView");
                return;
            }
            StringBuilder sb = new StringBuilder("JavaScript called pingInWebView() URL: >>> ");
            sb.append(str2);
            sb.append(" <<<");
            try {
                final C8444c a = C8444c.m5530a();
                new Thread() { // from class: com.inmobi.rendering.a.c.3
                    @Override // java.lang.Thread, java.lang.Runnable
                    public final void run() {
                        try {
                            C8359h hVar = new C8359h();
                            C8348b.m5847a().m5844a(hVar, (C8348b.AbstractC8351c) null);
                            if (!hVar.f32507g) {
                                C8442a aVar = new C8442a(str2, z, true, C8444c.f32844j.f32021a + 1);
                                String unused = C8444c.f32835a;
                                StringBuilder sb2 = new StringBuilder("Received click (");
                                sb2.append(aVar.f32825b);
                                sb2.append(") for pinging in WebView");
                                C8444c.m5525a(a, aVar);
                            }
                        } catch (Exception e) {
                            String unused2 = C8444c.f32835a;
                            new StringBuilder("SDK encountered unexpected error in pinging click over WebView; ").append(e.getMessage());
                        }
                    }
                }.start();
            } catch (Exception e) {
                this.f32880c.m5587b(str, "Unexpected error", "pingInWebView");
                Logger.m5724a(Logger.InternalLogLevel.ERROR, "InMobi", "Failed to fire ping; SDK encountered unexpected error");
                new StringBuilder("SDK encountered unexpected error in handling pingInWebView() request from creative; ").append(e.getMessage());
            }
        }
    }

    @JavascriptInterface
    public void playVideo(final String str, final String str2) {
        if (this.f32880c != null) {
            if (str2 == null || str2.trim().length() == 0 || !str2.startsWith("http") || (!str2.endsWith("mp4") && !str2.endsWith("avi") && !str2.endsWith("m4v"))) {
                this.f32880c.m5587b(str, "Null or empty or invalid media playback URL supplied", "playVideo");
                return;
            }
            StringBuilder sb = new StringBuilder("JavaScript called: playVideo (");
            sb.append(str2);
            sb.append(")");
            new Handler(this.f32880c.getContainerContext().getMainLooper()).post(new Runnable() { // from class: com.inmobi.rendering.c.10
                @Override // java.lang.Runnable
                public final void run() {
                    try {
                        RenderView renderView = C8463c.this.f32880c;
                        String str3 = str;
                        String trim = str2.trim();
                        if (AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_FULLSCREEN == renderView.f32783e.f31277a || "Expanded".equals(renderView.getViewState())) {
                            if (!(renderView.f32780b == null || renderView.f32780b.get() == null)) {
                                renderView.setAdActiveFlag(true);
                                final MraidMediaProcessor mraidMediaProcessor = renderView.f32786h;
                                Activity activity = renderView.f32780b.get();
                                MediaRenderView mediaRenderView = new MediaRenderView(activity);
                                mraidMediaProcessor.f32932b = mediaRenderView;
                                mediaRenderView.f32922h = MediaRenderView.m5492a(trim);
                                mediaRenderView.f32921g = "anonymous";
                                if (mediaRenderView.f32916b == null) {
                                    mediaRenderView.f32916b = Bitmap.createBitmap(24, 24, Bitmap.Config.ARGB_8888);
                                    mediaRenderView.f32916b = MediaRenderView.m5490b(mediaRenderView.f32922h);
                                }
                                ViewGroup viewGroup = (ViewGroup) activity.findViewById(16908290);
                                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
                                layoutParams.addRule(13);
                                mraidMediaProcessor.f32932b.setLayoutParams(layoutParams);
                                RelativeLayout relativeLayout = new RelativeLayout(activity);
                                relativeLayout.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.rendering.mraid.MraidMediaProcessor.1
                                    @Override // android.view.View.OnTouchListener
                                    public final boolean onTouch(View view, MotionEvent motionEvent) {
                                        return true;
                                    }
                                });
                                relativeLayout.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
                                relativeLayout.addView(mraidMediaProcessor.f32932b);
                                viewGroup.addView(relativeLayout, new ViewGroup.LayoutParams(-1, -1));
                                mraidMediaProcessor.f32932b.f32917c = relativeLayout;
                                mraidMediaProcessor.f32932b.requestFocus();
                                mraidMediaProcessor.f32932b.setOnKeyListener(new View.OnKeyListener() { // from class: com.inmobi.rendering.mraid.MraidMediaProcessor.2
                                    @Override // android.view.View.OnKeyListener
                                    public final boolean onKey(View view, int i, KeyEvent keyEvent) {
                                        if (4 != i || keyEvent.getAction() != 0) {
                                            return false;
                                        }
                                        mraidMediaProcessor.f32932b.m5495a();
                                        return true;
                                    }
                                });
                                mraidMediaProcessor.f32932b.f32918d = new MediaRenderView.AbstractC8477a() { // from class: com.inmobi.rendering.mraid.MraidMediaProcessor.3
                                    @Override // com.inmobi.rendering.mraid.MediaRenderView.AbstractC8477a
                                    /* renamed from: a */
                                    public final void mo5478a() {
                                        String unused = MraidMediaProcessor.f32930f;
                                    }

                                    @Override // com.inmobi.rendering.mraid.MediaRenderView.AbstractC8477a
                                    /* renamed from: a */
                                    public final void mo5477a(MediaRenderView mediaRenderView2) {
                                        String unused = MraidMediaProcessor.f32930f;
                                        mraidMediaProcessor.f32931a.setAdActiveFlag(false);
                                        ViewGroup viewGroup2 = mediaRenderView2.f32917c;
                                        if (viewGroup2 != null) {
                                            ((ViewGroup) viewGroup2.getParent()).removeView(viewGroup2);
                                        }
                                        mediaRenderView2.f32917c = null;
                                    }
                                };
                                MediaRenderView mediaRenderView2 = mraidMediaProcessor.f32932b;
                                mediaRenderView2.setVideoPath(mediaRenderView2.f32922h);
                                mediaRenderView2.setOnCompletionListener(mediaRenderView2);
                                mediaRenderView2.setOnPreparedListener(mediaRenderView2);
                                mediaRenderView2.setOnErrorListener(mediaRenderView2);
                                if (mediaRenderView2.f32915a == null && Build.VERSION.SDK_INT >= 19) {
                                    MediaRenderView.CustomMediaController customMediaController = new MediaRenderView.CustomMediaController(mediaRenderView2.getContext());
                                    mediaRenderView2.f32915a = customMediaController;
                                    customMediaController.setAnchorView(mediaRenderView2);
                                    mediaRenderView2.setMediaController(mediaRenderView2.f32915a);
                                }
                                HashMap hashMap = new HashMap();
                                hashMap.put("command", "playVideo");
                                hashMap.put("scheme", C8186bs.m6242a(str3));
                                renderView.f32781c.mo5547b("CreativeInvokedAction", hashMap);
                                return;
                            }
                            renderView.m5587b(str3, "Media playback is  not allowed before it is visible! Ignoring request ...", "playVideo");
                        }
                    } catch (Exception e) {
                        C8463c.this.f32880c.m5587b(str, "Unexpected error", "playVideo");
                        Logger.m5724a(Logger.InternalLogLevel.ERROR, "InMobi", "Error playing video; SDK encountered an unexpected error");
                        String unused = C8463c.f32879b;
                        new StringBuilder("SDK encountered unexpected error in handling playVideo() request from creative; ").append(e.getMessage());
                    }
                }
            });
        }
    }

    @JavascriptInterface
    public void registerBackButtonPressedEventListener(String str) {
        RenderView renderView = this.f32880c;
        if (renderView != null) {
            try {
                renderView.f32795q = str;
            } catch (Exception e) {
                this.f32880c.m5587b(str, "Unexpected error", "registerBackButtonPressedEventListener");
                new StringBuilder("SDK encountered unexpected error in handling registerBackButtonPressedEventListener() request from creative; ").append(e.getMessage());
            }
        }
    }

    @JavascriptInterface
    public void registerDeviceMuteEventListener(String str) {
        RenderView renderView = this.f32880c;
        if (renderView != null) {
            try {
                MraidMediaProcessor mediaProcessor = renderView.getMediaProcessor();
                Context b = C8326a.m5891b();
                if (b != null && mediaProcessor.f32933c == null) {
                    MraidMediaProcessor.RingerModeChangeReceiver ringerModeChangeReceiver = new MraidMediaProcessor.RingerModeChangeReceiver(str);
                    mediaProcessor.f32933c = ringerModeChangeReceiver;
                    b.registerReceiver(ringerModeChangeReceiver, new IntentFilter("android.media.RINGER_MODE_CHANGED"));
                }
            } catch (Exception e) {
                this.f32880c.m5587b(str, "Unexpected error", "registerDeviceMuteEventListener");
                new StringBuilder("SDK encountered unexpected error in handling registerDeviceMuteEventListener() request from creative; ").append(e.getMessage());
            }
        }
    }

    @JavascriptInterface
    public void registerDeviceVolumeChangeEventListener(String str) {
        RenderView renderView = this.f32880c;
        if (renderView != null) {
            try {
                MraidMediaProcessor mediaProcessor = renderView.getMediaProcessor();
                Context b = C8326a.m5891b();
                if (b != null && mediaProcessor.f32934d == null) {
                    mediaProcessor.f32934d = new MraidMediaProcessor.C8481a(str, b, new Handler());
                    b.getContentResolver().registerContentObserver(Settings.System.CONTENT_URI, true, mediaProcessor.f32934d);
                }
            } catch (Exception e) {
                this.f32880c.m5587b(str, "Unexpected error", "registerDeviceVolumeChangeEventListener");
                new StringBuilder("SDK encountered unexpected error in handling registerDeviceVolumeChangeEventListener() request from creative; ").append(e.getMessage());
            }
        }
    }

    @JavascriptInterface
    public void registerDownloaderCallbacks(String str) {
        RenderView renderView = this.f32880c;
        if (renderView != null) {
            try {
                AdContainer referenceContainer = renderView.getReferenceContainer();
                if (referenceContainer instanceof C8083ah) {
                    ((C8083ah) referenceContainer).m6505a(renderView);
                }
            } catch (Exception e) {
                this.f32880c.m5587b(str, "Unexpected error", "registerDownloaderCallbacks");
                new StringBuilder("SDK encountered unexpected error in handling registerDownloaderCallbacks() request from creative; ").append(e.getMessage());
            }
        }
    }

    @JavascriptInterface
    public void registerHeadphonePluggedEventListener(String str) {
        RenderView renderView = this.f32880c;
        if (renderView != null) {
            try {
                MraidMediaProcessor mediaProcessor = renderView.getMediaProcessor();
                Context b = C8326a.m5891b();
                if (b != null && mediaProcessor.f32935e == null) {
                    MraidMediaProcessor.HeadphonesPluggedChangeReceiver headphonesPluggedChangeReceiver = new MraidMediaProcessor.HeadphonesPluggedChangeReceiver(str);
                    mediaProcessor.f32935e = headphonesPluggedChangeReceiver;
                    b.registerReceiver(headphonesPluggedChangeReceiver, new IntentFilter("android.intent.action.HEADSET_PLUG"));
                }
            } catch (Exception e) {
                this.f32880c.m5587b(str, "Unexpected error", "registerHeadphonePluggedEventListener");
                new StringBuilder("SDK encountered unexpected error in handling registerHeadphonePluggedEventListener() request from creative; ").append(e.getMessage());
            }
        }
    }

    @JavascriptInterface
    public void resize(final String str) {
        RenderView renderView;
        if (this.f32881d.f31277a != AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_FULLSCREEN && (renderView = this.f32880c) != null) {
            if (renderView.f32792n) {
                new Handler(this.f32880c.getContainerContext().getMainLooper()).post(new Runnable() { // from class: com.inmobi.rendering.c.8
                    @Override // java.lang.Runnable
                    public final void run() {
                        try {
                            RenderView renderView2 = C8463c.this.f32880c;
                            String str2 = str;
                            if (("Default".equals(renderView2.f32782d) || "Resized".equals(renderView2.f32782d)) && renderView2.getResizeProperties() != null) {
                                renderView2.f32797s = true;
                                renderView2.f32785g.m5469a();
                                renderView2.requestLayout();
                                renderView2.invalidate();
                                renderView2.f32791m = true;
                                renderView2.setFocusable(true);
                                renderView2.setFocusableInTouchMode(true);
                                renderView2.requestFocus();
                                renderView2.setAndUpdateViewState("Resized");
                                renderView2.f32781c.mo5545c(renderView2);
                                renderView2.f32797s = false;
                                HashMap hashMap = new HashMap();
                                hashMap.put("command", "resize");
                                hashMap.put("scheme", C8186bs.m6242a(str2));
                                renderView2.f32781c.mo5547b("CreativeInvokedAction", hashMap);
                            }
                        } catch (Exception e) {
                            C8463c.this.f32880c.m5587b(str, "Unexpected error", "resize");
                            Logger.m5724a(Logger.InternalLogLevel.ERROR, C8463c.f32879b, "Could not resize ad; SDK encountered an unexpected error");
                            String unused = C8463c.f32879b;
                            new StringBuilder("SDK encountered an unexpected error in handling resize() request; ").append(e.getMessage());
                        }
                    }
                });
            } else {
                renderView.m5587b(str, "Creative is not visible. Ignoring request.", "resize");
            }
        }
    }

    @JavascriptInterface
    public void saveBlob(String str, String str2) {
        AbstractC8441a aVar;
        RenderView renderView = this.f32880c;
        if (renderView != null && (aVar = renderView.f32798t) != null) {
            aVar.mo5538e(str2);
        }
    }

    @JavascriptInterface
    public void saveContent(String str, String str2, String str3) {
        if (str2 == null || str2.length() == 0 || str3 == null || str3.length() == 0) {
            JSONObject jSONObject = new JSONObject();
            String str4 = str3;
            if (str3 == null) {
                str4 = "";
            }
            try {
                jSONObject.put("url", str4);
                jSONObject.put("reason", 1);
            } catch (JSONException e) {
            }
            String replace = jSONObject.toString().replace("\"", "\\\"");
            StringBuilder sb = new StringBuilder("sendSaveContentResult(\"saveContent_");
            String str5 = str2;
            if (str2 == null) {
                str5 = "";
            }
            sb.append(str5);
            sb.append("\", 'failed', \"");
            sb.append(replace);
            sb.append("\");");
            this.f32880c.m5597a(str, sb.toString());
            return;
        }
        try {
            RenderView renderView = this.f32880c;
            StringBuilder sb2 = new StringBuilder("saveContent called: content ID: ");
            sb2.append(str2);
            sb2.append("; URL: ");
            sb2.append(str3);
            if (!renderView.m5574e("saveContent")) {
                JSONObject jSONObject2 = new JSONObject();
                try {
                    jSONObject2.put("url", str3);
                    jSONObject2.put("reason", 5);
                } catch (JSONException e2) {
                }
                String replace2 = jSONObject2.toString().replace("\"", "\\\"");
                renderView.m5597a(str, "sendSaveContentResult(\"saveContent_" + str2 + "\", 'failed', \"" + replace2 + "\");");
                return;
            }
            HashSet hashSet = new HashSet();
            hashSet.add(new C8181bn(-1, str3));
            final C8051b bVar = new C8051b(UUID.randomUUID().toString(), hashSet, renderView.f32800v, str2);
            bVar.f31515g = str;
            final C8055f a = C8055f.m6593a();
            a.f31531c.execute(new Runnable() { // from class: com.inmobi.ads.a.f.4
                @Override // java.lang.Runnable
                public final void run() {
                    a.m6577b(bVar);
                    String unused = C8055f.f31526f;
                    StringBuilder sb3 = new StringBuilder("Attempting to cache ");
                    sb3.append(bVar.f31510b.size());
                    sb3.append("remote URLs ");
                    for (C8181bn bnVar : bVar.f31510b) {
                        C8055f.m6574b(a, bnVar.f31917b);
                    }
                }
            });
        } catch (Exception e3) {
            this.f32880c.m5587b(str, "Unexpected error", "saveContent");
            new StringBuilder("SDK encountered unexpected error in handling saveContent() request from creative; ").append(e3.getMessage());
        }
    }

    @JavascriptInterface
    public void setCloseEndCardTracker(String str, String str2) {
        RenderView renderView = this.f32880c;
        if (renderView != null) {
            try {
                renderView.setCloseEndCardTracker(str2);
            } catch (Exception e) {
                this.f32880c.m5587b(str, "Unexpected error", "getDownloadStatus");
                new StringBuilder("SDK encountered unexpected error in handling getDownloadStatus() request from creative; ").append(e.getMessage());
            }
        }
    }

    @JavascriptInterface
    public void setExpandProperties(String str, String str2) {
        RenderView renderView = this.f32880c;
        if (renderView != null && !"Expanded".equals(renderView.getState())) {
            try {
                this.f32880c.setExpandProperties(C8482a.m5476a(str2));
            } catch (Exception e) {
                this.f32880c.m5587b(str, "Unexpected error", "setExpandProperties");
                new StringBuilder("SDK encountered unexpected error in setExpandProperties(); ").append(e.getMessage());
            }
        }
    }

    @JavascriptInterface
    public void setOrientationProperties(String str, String str2) {
        C8489f a = C8489f.m5467a(str2, this.f32880c.getOrientationProperties());
        this.f32882e = a;
        this.f32880c.setOrientationProperties(a);
    }

    @JavascriptInterface
    public void setResizeProperties(String str, String str2) {
        RenderView renderView = this.f32880c;
        if (renderView != null) {
            C8490g a = C8490g.m5465a(str2, renderView.getResizeProperties());
            if (a == null) {
                this.f32880c.m5587b(str, "setResizeProperties", "All mandatory fields are not present");
            }
            this.f32880c.setResizeProperties(a);
        }
    }

    @JavascriptInterface
    public void showAlert(String str, String str2) {
    }

    @JavascriptInterface
    public void showEndCard(String str) {
        RenderView renderView = this.f32880c;
        if (renderView != null) {
            AdContainer referenceContainer = renderView.getReferenceContainer();
            if (referenceContainer instanceof C8083ah) {
                final C8083ah ahVar = (C8083ah) referenceContainer;
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.inmobi.ads.ah.6
                    @Override // java.lang.Runnable
                    public final void run() {
                        C8083ah ahVar2 = ahVar;
                        ahVar2.f31637r = true;
                        ahVar2.m6493c((C8103ak) null);
                    }
                });
            }
        }
    }

    @JavascriptInterface
    public void startDownloader(String str, String str2, String str3, String str4) {
        RenderView renderView = this.f32880c;
        if (renderView != null) {
            if (!renderView.m5576e()) {
                this.f32880c.m5583c("startDownloader");
                return;
            }
            try {
                if (TextUtils.isEmpty(str2)) {
                    this.f32880c.m5587b(str, "Invalid URL", "startDownloader");
                    return;
                }
                RenderView renderView2 = this.f32880c;
                AdContainer referenceContainer = renderView2.getReferenceContainer();
                if (referenceContainer instanceof C8083ah) {
                    C8103ak.m6450a(str2, str3, str4);
                    ((C8083ah) referenceContainer).m6505a(renderView2);
                } else if (referenceContainer instanceof RenderView) {
                    C8103ak.m6450a(str2, str3, str4);
                }
            } catch (Exception e) {
                this.f32880c.m5587b(str, "Unexpected error", "startDownloader");
                new StringBuilder("SDK encountered unexpected error in handling startDownloader() request from creative; ").append(e.getMessage());
            }
        }
    }

    @JavascriptInterface
    public void storePicture(String str, String str2) {
    }

    @JavascriptInterface
    public String supports(String str, String str2) {
        return (Arrays.asList(f32878a).contains(str2) || this.f32880c.m5574e(str2)) ? String.valueOf(this.f32880c.m5574e(str2)) : "false";
    }

    @JavascriptInterface
    public void unregisterBackButtonPressedEventListener(String str) {
        RenderView renderView = this.f32880c;
        if (renderView != null) {
            try {
                renderView.f32795q = null;
            } catch (Exception e) {
                this.f32880c.m5587b(str, "Unexpected error", "unregisterBackButtonPressedEventListener");
                new StringBuilder("SDK encountered unexpected error in handling unregisterBackButtonPressedEventListener() request from creative; ").append(e.getMessage());
            }
        }
    }

    @JavascriptInterface
    public void unregisterDeviceMuteEventListener(String str) {
        RenderView renderView = this.f32880c;
        if (renderView != null) {
            try {
                renderView.getMediaProcessor().m5485b();
            } catch (Exception e) {
                this.f32880c.m5587b(str, "Unexpected error", "unRegisterDeviceMuteEventListener");
                new StringBuilder("SDK encountered unexpected error in handling unregisterDeviceMuteEventListener() request from creative; ").append(e.getMessage());
            }
        }
    }

    @JavascriptInterface
    public void unregisterDeviceVolumeChangeEventListener(String str) {
        RenderView renderView = this.f32880c;
        if (renderView != null) {
            try {
                renderView.getMediaProcessor().m5482c();
            } catch (Exception e) {
                this.f32880c.m5587b(str, "Unexpected error", "unregisterDeviceVolumeChangeEventListener");
                new StringBuilder("SDK encountered unexpected error in handling unregisterDeviceVolumeChangeEventListener() request from creative; ").append(e.getMessage());
            }
        }
    }

    @JavascriptInterface
    public void unregisterDownloaderCallbacks(String str) {
        RenderView renderView = this.f32880c;
        if (renderView != null) {
            try {
                AdContainer referenceContainer = renderView.getReferenceContainer();
                if (referenceContainer instanceof C8083ah) {
                    C8083ah ahVar = (C8083ah) referenceContainer;
                    if (ahVar.f31645z != null) {
                        ahVar.f31645z.remove(renderView);
                    }
                }
            } catch (Exception e) {
                this.f32880c.m5587b(str, "Unexpected error", "unregisterDownloaderCallbacks");
                new StringBuilder("SDK encountered unexpected error in handling unregisterDownloaderCallbacks() request from creative; ").append(e.getMessage());
            }
        }
    }

    @JavascriptInterface
    public void unregisterHeadphonePluggedEventListener(String str) {
        RenderView renderView = this.f32880c;
        if (renderView != null) {
            try {
                renderView.getMediaProcessor().m5480e();
            } catch (Exception e) {
                this.f32880c.m5587b(str, "Unexpected error", "unregisterHeadphonePluggedEventListener");
                new StringBuilder("SDK encountered unexpected error in handling unregisterHeadphonePluggedEventListener() request from creative; ").append(e.getMessage());
            }
        }
    }

    @JavascriptInterface
    public void useCustomClose(final String str, final boolean z) {
        new Handler(this.f32880c.getContainerContext().getMainLooper()).post(new Runnable() { // from class: com.inmobi.rendering.c.9
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    C8463c.this.f32880c.m5586b(z);
                } catch (Exception e) {
                    C8463c.this.f32880c.m5587b(str, "Unexpected error", "useCustomClose");
                    String unused = C8463c.f32879b;
                    new StringBuilder("SDK encountered internal error in handling useCustomClose() request from creative; ").append(e.getMessage());
                }
            }
        });
    }
}
