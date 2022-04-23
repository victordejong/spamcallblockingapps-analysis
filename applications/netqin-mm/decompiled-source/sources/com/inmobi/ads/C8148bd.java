package com.inmobi.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.view.View;
import android.view.ViewGroup;
import com.inmobi.ads.AdContainer;
import com.inmobi.ads.C8083ah;
import com.inmobi.ads.C8094ai;
import com.inmobi.ads.NativeTracker;
import com.inmobi.ads.p505f.p506a.C8242b;
import com.inmobi.commons.core.p509a.C8328a;
import com.inmobi.commons.core.p513e.C8365a;
import com.inmobi.commons.core.p513e.C8366b;
import com.inmobi.commons.core.utilities.Logger;
import com.mopub.nativeads.MoPubNativeAdPositioning;
import java.lang.ref.WeakReference;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.TimeUnit;
import p131c.p372f.p373a.p374a.p375a.p381m.C6431e;
/* renamed from: com.inmobi.ads.bd */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/bd.class */
public class C8148bd extends C8083ah {

    /* renamed from: D */
    public static final String f31836D = C8148bd.class.getSimpleName();

    /* renamed from: B */
    public WeakReference<View> f31837B;

    /* renamed from: E */
    public final AdContainer.AbstractC8007a f31839E = new AdContainer.AbstractC8007a() { // from class: com.inmobi.ads.bd.1
        @Override // com.inmobi.ads.AdContainer.AbstractC8007a
        /* renamed from: a */
        public final void mo5558a() {
            String unused = C8148bd.f31836D;
            C8083ah.AbstractC8093c e = C8148bd.this.m6489e();
            if (e != null) {
                e.mo6024a();
            }
        }

        @Override // com.inmobi.ads.AdContainer.AbstractC8007a
        /* renamed from: a */
        public final void mo5557a(Object obj) {
            if (C8148bd.this.m6481l() != null) {
                C8152be beVar = (C8152be) obj;
                String unused = C8148bd.f31836D;
                beVar.f31697v.put("didRequestFullScreen", true);
                beVar.f31697v.put("isFullScreen", true);
                beVar.f31697v.put("shouldAutoPlay", true);
                C8103ak akVar = beVar.f31700y;
                if (akVar != null) {
                    akVar.f31697v.put("didRequestFullScreen", true);
                    beVar.f31700y.f31697v.put("isFullScreen", true);
                    beVar.f31700y.f31697v.put("shouldAutoPlay", true);
                }
                AdContainer.RenderingProperties.PlacementType placementType = AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_INLINE;
                C8148bd bdVar = C8148bd.this;
                if (placementType == bdVar.f31621b.f31277a) {
                    bdVar.getViewableAd().mo5944a(1);
                    beVar.m6453a(NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_FULLSCREEN, C8148bd.this.m6321g(beVar));
                }
                C8083ah.AbstractC8093c e = C8148bd.this.m6489e();
                if (e != null) {
                    e.mo6020b();
                }
            }
        }

        @Override // com.inmobi.ads.AdContainer.AbstractC8007a
        /* renamed from: b */
        public final void mo5556b(Object obj) {
            String unused = C8148bd.f31836D;
            C8152be beVar = (C8152be) obj;
            beVar.f31697v.put("didRequestFullScreen", false);
            beVar.f31697v.put("isFullScreen", false);
            C8103ak akVar = beVar.f31700y;
            if (akVar != null) {
                akVar.f31697v.put("didRequestFullScreen", false);
                beVar.f31700y.f31697v.put("isFullScreen", false);
                beVar.f31700y.f31700y = null;
            }
            beVar.f31700y = null;
            C8148bd bdVar = C8148bd.this;
            if (bdVar.f31621b.f31277a == AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_INLINE) {
                bdVar.getViewableAd().mo5944a(2);
                C8083ah ahVar = C8148bd.this.f31633n;
                if (ahVar != null) {
                    ahVar.getViewableAd().mo5944a(16);
                }
                beVar.m6453a(NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_EXIT_FULLSCREEN, C8148bd.this.m6321g(beVar));
            } else {
                bdVar.getViewableAd().mo5944a(3);
            }
            C8083ah.AbstractC8093c e = C8148bd.this.m6489e();
            if (e != null) {
                e.mo6016f();
            }
        }
    };

    /* renamed from: C */
    public C8094ai.AbstractC8098a f31838C = new C8094ai.AbstractC8098a() { // from class: com.inmobi.ads.bd.2
        @Override // com.inmobi.ads.C8094ai.AbstractC8098a
        /* renamed from: a */
        public final void mo6314a(View view, boolean z) {
            C8148bd.this.m6500a(z);
            C8148bd.m6336a(C8148bd.this, view, z);
        }
    };

    public C8148bd(Context context, AdContainer.RenderingProperties renderingProperties, C8109ao aoVar, String str, String str2, Set<C8185br> set, C8197c cVar, long j, boolean z, String str3) {
        super(context, renderingProperties, aoVar, str, str2, set, cVar, j, z, str3);
        this.f31620a = aoVar;
    }

    /* renamed from: a */
    private void m6337a(NativeVideoView nativeVideoView) {
        int videoVolume = nativeVideoView.getVideoVolume();
        int lastVolume = nativeVideoView.getLastVolume();
        if (videoVolume != lastVolume && lastVolume > 0) {
            m6326b(true);
            nativeVideoView.setLastVolume(videoVolume);
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m6336a(C8148bd bdVar, View view, final boolean z) {
        final C8152be beVar;
        final NativeVideoView nativeVideoView = (NativeVideoView) view.findViewById(MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT);
        if (nativeVideoView != null && (beVar = (C8152be) nativeVideoView.getTag()) != null) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.inmobi.ads.bd.3
                @Override // java.lang.Runnable
                public final void run() {
                    beVar.f31697v.put("visible", Boolean.valueOf(z));
                    if (!z || C8148bd.this.f31632m) {
                        C8148bd.m6329b(C8148bd.this, nativeVideoView);
                        final NativeVideoView nativeVideoView2 = nativeVideoView;
                        int i = beVar.f31851F;
                        if (!nativeVideoView2.f31440i && 4 != nativeVideoView2.getState()) {
                            if (nativeVideoView2.f31439h == null) {
                                nativeVideoView2.f31439h = new Handler(Looper.getMainLooper());
                            }
                            if (i > 0) {
                                nativeVideoView2.f31440i = true;
                                nativeVideoView2.m6643d();
                                nativeVideoView2.f31439h.postDelayed(new Runnable() { // from class: com.inmobi.ads.NativeVideoView.8
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        nativeVideoView2.pause();
                                    }
                                }, i * 1000);
                                return;
                            }
                            nativeVideoView2.pause();
                            return;
                        }
                        return;
                    }
                    beVar.f31697v.put("lastVisibleTimestamp", Long.valueOf(SystemClock.uptimeMillis()));
                    NativeVideoView nativeVideoView3 = nativeVideoView;
                    if (nativeVideoView3.f31440i && nativeVideoView3.getMediaPlayer() != null) {
                        if (beVar.m6313a()) {
                            nativeVideoView.m6641e();
                        } else {
                            nativeVideoView.m6643d();
                        }
                    }
                    NativeVideoView nativeVideoView4 = nativeVideoView;
                    Handler handler = nativeVideoView4.f31439h;
                    if (handler != null) {
                        handler.removeMessages(0);
                    }
                    nativeVideoView4.f31440i = false;
                    C8148bd.m6335a(C8148bd.this, nativeVideoView);
                    C8148bd.m6334a(C8148bd.this, nativeVideoView, beVar);
                    if (1 == nativeVideoView.getState()) {
                        nativeVideoView.getMediaPlayer().f31814b = 3;
                    } else if (2 == nativeVideoView.getState() || 4 == nativeVideoView.getState() || (5 == nativeVideoView.getState() && beVar.f31848C)) {
                        nativeVideoView.start();
                    }
                }
            });
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m6335a(C8148bd bdVar, NativeVideoView nativeVideoView) {
        int videoVolume;
        if (bdVar.f31621b.f31277a == AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_INLINE && !bdVar.mo6320i() && (videoVolume = nativeVideoView.getVideoVolume()) != nativeVideoView.getLastVolume() && nativeVideoView.isPlaying()) {
            bdVar.m6326b(videoVolume <= 0);
            nativeVideoView.setLastVolume(videoVolume);
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m6334a(C8148bd bdVar, NativeVideoView nativeVideoView, C8152be beVar) {
        if (bdVar.f31621b.f31277a == AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_INLINE && !bdVar.mo6320i() && !beVar.f31848C && !nativeVideoView.isPlaying() && nativeVideoView.getState() == 5) {
            bdVar.m6337a(nativeVideoView);
        }
    }

    /* renamed from: b */
    public static /* synthetic */ void m6329b(C8148bd bdVar, NativeVideoView nativeVideoView) {
        if (bdVar.f31621b.f31277a == AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_INLINE && !bdVar.mo6320i() && !bdVar.f31632m) {
            bdVar.m6337a(nativeVideoView);
        }
    }

    /* renamed from: b */
    private void m6326b(boolean z) {
        C8083ah.AbstractC8093c e;
        if (this.f31621b.f31277a == AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_INLINE && !mo6320i() && (e = m6489e()) != null) {
            e.mo6021a(z);
        }
    }

    /* renamed from: f */
    private void m6322f(C8152be beVar) {
        if (!((Boolean) beVar.f31697v.get("didImpressionFire")).booleanValue()) {
            List<NativeTracker> list = beVar.f31696u;
            Map<String, String> g = m6321g(beVar);
            List arrayList = new ArrayList();
            for (NativeTracker nativeTracker : list) {
                if (NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_VIDEO_RENDER == nativeTracker.f31407b) {
                    if (nativeTracker.f31406a.startsWith("http")) {
                        C8103ak.m6452a(nativeTracker, g);
                    }
                    List list2 = (List) nativeTracker.f31409d.get("referencedEvents");
                    Iterator it = list2.iterator();
                    while (true) {
                        arrayList = list2;
                        if (it.hasNext()) {
                            beVar.m6453a((NativeTracker.TrackerEventType) it.next(), g);
                        }
                    }
                }
            }
            if (arrayList.isEmpty()) {
                beVar.m6453a(NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_PLAY, g);
                beVar.m6453a(NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_RENDER, g);
            }
            this.f31620a.f31722d.m6453a(NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_RENDER, m6321g(beVar));
            beVar.f31697v.put("didImpressionFire", true);
            this.f31629j.mo5944a(0);
            if (this.f31621b.f31277a == AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_INLINE) {
                HashMap hashMap = new HashMap();
                hashMap.put("type", "native");
                hashMap.put("clientRequestId", this.f31627h);
                hashMap.put("impId", this.f31623d);
                m6501a("AdRendered", hashMap);
            }
            if (m6489e() != null) {
                m6489e().mo6018d();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: g */
    public Map<String, String> m6321g(C8152be beVar) {
        C8105am amVar = (C8105am) beVar.f31695t;
        HashMap hashMap = new HashMap(4);
        NativeVideoWrapper nativeVideoWrapper = (NativeVideoWrapper) this.f31837B.get();
        if (nativeVideoWrapper != null) {
            double duration = nativeVideoWrapper.getVideoView().getDuration();
            Double.isNaN(duration);
            hashMap.put("$MD", String.valueOf((int) Math.round((duration * 1.0d) / 1000.0d)));
        }
        hashMap.put("[ERRORCODE]", "405");
        long intValue = ((Integer) beVar.f31697v.get("seekPosition")).intValue();
        hashMap.put("[CONTENTPLAYHEAD]", String.format(Locale.US, "%02d:%02d:%02d.%03d", Long.valueOf(TimeUnit.MILLISECONDS.toHours(intValue)), Long.valueOf(TimeUnit.MILLISECONDS.toMinutes(intValue) - TimeUnit.HOURS.toMinutes(TimeUnit.MILLISECONDS.toHours(intValue))), Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(intValue) - TimeUnit.MINUTES.toSeconds(TimeUnit.MILLISECONDS.toMinutes(intValue))), Long.valueOf(intValue - (TimeUnit.MILLISECONDS.toSeconds(intValue) * 1000))));
        hashMap.put("[CACHEBUSTING]", m6315y());
        hashMap.put("[ASSETURI]", beVar.m6311b().mo6204b());
        hashMap.put("$TS", String.valueOf(System.currentTimeMillis()));
        hashMap.put("$LTS", String.valueOf(this.f31620a.f31722d.f31715z));
        if (amVar != null) {
            hashMap.put("$STS", String.valueOf(amVar.f31715z));
        }
        return hashMap;
    }

    /* renamed from: y */
    public static String m6315y() {
        SecureRandom secureRandom = new SecureRandom();
        StringBuilder sb = new StringBuilder();
        int i = 0;
        while (i == 0) {
            i = (secureRandom.nextInt() & MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT) % 10;
        }
        sb.append(i);
        for (int i2 = 1; i2 < 8; i2++) {
            sb.append((secureRandom.nextInt() & MoPubNativeAdPositioning.MoPubClientPositioning.NO_REPEAT) % 10);
        }
        return sb.toString();
    }

    @Override // com.inmobi.ads.C8083ah
    /* renamed from: a */
    public final void mo6338a(View view) {
        if (!m6482k() && !this.f31631l && (view instanceof NativeVideoView)) {
            NativeVideoView nativeVideoView = (NativeVideoView) view;
            this.f31630k = true;
            HashMap hashMap = new HashMap();
            hashMap.put("type", AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_FULLSCREEN == getRenderingProperties().f31277a ? "int" : "native");
            hashMap.put("clientRequestId", this.f31627h);
            hashMap.put("impId", this.f31623d);
            C8366b.m5794a();
            C8366b.m5789a("ads", "ViewableBeaconFired", hashMap);
            m6322f((C8152be) nativeVideoView.getTag());
        }
    }

    /* renamed from: a */
    public final void m6332a(C8152be beVar) {
        if (!this.f31631l) {
            C8083ah.m6495c(m6487f());
            beVar.m6453a(NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_PAUSE, m6321g(beVar));
            this.f31629j.mo5944a(7);
        }
    }

    /* renamed from: a */
    public final void m6331a(C8152be beVar, int i) {
        if (!this.f31631l) {
            HashMap hashMap = new HashMap();
            hashMap.put("errorCode", String.valueOf(i));
            hashMap.put("reason", "Video Player Error");
            hashMap.put("url", beVar.m6311b().mo6204b());
            m6501a("VideoError", hashMap);
            beVar.m6453a(NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_ERROR, m6321g(beVar));
            this.f31629j.mo5944a(17);
        }
    }

    @Override // com.inmobi.ads.C8083ah
    /* renamed from: b */
    public final void mo6330b(C8103ak akVar) {
        NativeVideoWrapper nativeVideoWrapper;
        int i = akVar.f31687l;
        if (i == 0) {
            return;
        }
        if (i == 1) {
            super.mo6330b(akVar);
        } else if (i == 3) {
            try {
                if (this.f31642w != null) {
                    this.f31642w.m5578d("window.imraid.broadcastEvent('replay');");
                }
                if (m6487f() != null) {
                    View f = m6487f();
                    NativeTimerView b = C8083ah.m6499b(f);
                    if (b != null) {
                        b.m6672a();
                    }
                    ViewGroup viewGroup = (ViewGroup) f.getParent();
                    if (viewGroup != null) {
                        viewGroup.removeView(f);
                    }
                }
                if (!"VIDEO".equals(akVar.f31677b)) {
                    new StringBuilder("Action 3 not valid for asset of type: ").append(akVar.f31677b);
                    return;
                }
                NativeVideoWrapper nativeVideoWrapper2 = (NativeVideoWrapper) getVideoContainerView();
                if (nativeVideoWrapper2 != null) {
                    nativeVideoWrapper2.getVideoView().m6641e();
                    nativeVideoWrapper2.getVideoView().start();
                }
            } catch (Exception e) {
                new StringBuilder("Encountered unexpected error in handling replay action on video: ").append(e.getMessage());
                Logger.m5724a(Logger.InternalLogLevel.DEBUG, "InMobi", "SDK encountered unexpected error in replaying video");
                C8328a.m5878a().m5875a(new C8365a(e));
            }
        } else if (i == 4) {
            try {
                if (AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_INLINE == this.f31621b.f31277a && (nativeVideoWrapper = (NativeVideoWrapper) getVideoContainerView()) != null) {
                    NativeVideoView videoView = nativeVideoWrapper.getVideoView();
                    C8152be beVar = (C8152be) videoView.getTag();
                    if (videoView.getState() != 1) {
                        try {
                            if (!this.f31631l && this.f31635p.get() != null && !((Boolean) beVar.f31697v.get("didRequestFullScreen")).booleanValue()) {
                                beVar.f31697v.put("didRequestFullScreen", true);
                                beVar.f31697v.put("seekPosition", Integer.valueOf(videoView.getCurrentPosition()));
                                beVar.f31697v.put("lastMediaVolume", Integer.valueOf(videoView.getVolume()));
                                if (videoView.getMediaPlayer().isPlaying()) {
                                    videoView.getMediaPlayer().pause();
                                }
                                videoView.getMediaPlayer().f31813a = 4;
                                beVar.f31697v.put("isFullScreen", true);
                                beVar.f31697v.put("seekPosition", Integer.valueOf(videoView.getMediaPlayer().getCurrentPosition()));
                                m6480m();
                            }
                        } catch (Exception e2) {
                            new StringBuilder("SDK encountered unexpected error in handling the onVideoRequestedFullScreen event; ").append(e2.getMessage());
                            C8328a.m5878a().m5875a(new C8365a(e2));
                        }
                    }
                }
            } catch (Exception e3) {
                new StringBuilder("Encountered unexpected error in handling fullscreen action on video: ").append(e3.getMessage());
                Logger.m5724a(Logger.InternalLogLevel.DEBUG, "InMobi", "SDK encountered unexpected error in expanding video to fullscreen");
                C8328a.m5878a().m5875a(new C8365a(e3));
            }
        } else if (i != 5) {
            try {
                if (AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_FULLSCREEN == this.f31621b.f31277a) {
                    super.mo6330b(akVar);
                    if (!"VIDEO".equals(akVar.f31677b)) {
                        new StringBuilder("Action 2 not valid for asset of type: ").append(akVar.f31677b);
                        return;
                    }
                    NativeVideoWrapper nativeVideoWrapper3 = (NativeVideoWrapper) getVideoContainerView();
                    if (nativeVideoWrapper3 != null) {
                        nativeVideoWrapper3.getVideoView().m6643d();
                        NativeVideoView videoView2 = nativeVideoWrapper3.getVideoView();
                        if (videoView2.m6650b() && videoView2.f31434c.isPlaying()) {
                            videoView2.f31434c.pause();
                            videoView2.f31434c.seekTo(0);
                            if (videoView2.getTag() != null) {
                                C8152be beVar2 = (C8152be) videoView2.getTag();
                                beVar2.f31697v.put("didPause", true);
                                beVar2.f31697v.put("seekPosition", 0);
                                beVar2.f31697v.put("didCompleteQ4", true);
                            }
                            videoView2.f31434c.f31813a = 4;
                            videoView2.getPlaybackEventListener().mo6359a(4);
                        }
                        if (videoView2.f31434c != null) {
                            videoView2.f31434c.f31814b = 4;
                            return;
                        }
                        return;
                    }
                    return;
                }
                C8083ah.AbstractC8093c e4 = m6489e();
                if (e4 != null) {
                    e4.mo6013i();
                }
            } catch (Exception e5) {
                new StringBuilder("Action 2 not valid for asset of type: ").append(akVar.f31677b);
                C8328a.m5878a().m5875a(new C8365a(e5));
            }
        } else {
            try {
                NativeVideoWrapper nativeVideoWrapper4 = (NativeVideoWrapper) getVideoContainerView();
                if (nativeVideoWrapper4 != null) {
                    C8152be beVar3 = (C8152be) nativeVideoWrapper4.getVideoView().getTag();
                    beVar3.f31697v.put("shouldAutoPlay", true);
                    if (beVar3.f31700y != null) {
                        beVar3.f31700y.f31697v.put("shouldAutoPlay", true);
                    }
                    nativeVideoWrapper4.getVideoView().start();
                }
            } catch (Exception e6) {
                new StringBuilder("Encountered unexpected error in handling play action on video: ").append(e6.getMessage());
                Logger.m5724a(Logger.InternalLogLevel.DEBUG, "InMobi", "SDK encountered unexpected error in playing video");
                C8328a.m5878a().m5875a(new C8365a(e6));
            }
        }
    }

    /* renamed from: b */
    public final void m6328b(C8152be beVar) {
        if (!this.f31631l) {
            C8083ah.m6491d(m6487f());
            beVar.m6453a(NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_RESUME, m6321g(beVar));
            this.f31629j.mo5944a(8);
        }
    }

    /* renamed from: b */
    public final void m6327b(C8152be beVar, int i) {
        if (!this.f31631l) {
            if (i == 0) {
                beVar.m6453a(NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_Q1, m6321g(beVar));
                HashMap hashMap = new HashMap();
                hashMap.put("url", beVar.m6311b().mo6204b());
                hashMap.put("isCached", "1");
                m6501a("VideoQ1Completed", hashMap);
                this.f31629j.mo5944a(9);
            } else if (i == 1) {
                beVar.m6453a(NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_Q2, m6321g(beVar));
                HashMap hashMap2 = new HashMap();
                hashMap2.put("url", beVar.m6311b().mo6204b());
                hashMap2.put("isCached", "1");
                m6501a("VideoQ2Completed", hashMap2);
                this.f31629j.mo5944a(10);
            } else if (i == 2) {
                beVar.m6453a(NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_Q3, m6321g(beVar));
                HashMap hashMap3 = new HashMap();
                hashMap3.put("url", beVar.m6311b().mo6204b());
                hashMap3.put("isCached", "1");
                m6501a("VideoQ3Completed", hashMap3);
                this.f31629j.mo5944a(11);
            } else if (i == 3 && !((Boolean) beVar.f31697v.get("didQ4Fire")).booleanValue()) {
                m6323e(beVar);
            }
        }
    }

    /* renamed from: c */
    public final void m6325c(C8152be beVar) {
        if (!this.f31631l) {
            beVar.f31697v.put("lastMediaVolume", 0);
            beVar.m6453a(NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_MUTE, m6321g(beVar));
            this.f31629j.mo5944a(13);
        }
    }

    /* renamed from: d */
    public final void m6324d(C8152be beVar) {
        if (!this.f31631l) {
            beVar.f31697v.put("lastMediaVolume", 15);
            beVar.m6453a(NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_UNMUTE, m6321g(beVar));
            this.f31629j.mo5944a(14);
        }
    }

    @Override // com.inmobi.ads.C8083ah, com.inmobi.ads.AdContainer
    public void destroy() {
        NativeVideoWrapper nativeVideoWrapper;
        if (!this.f31631l) {
            if (!(getVideoContainerView() == null || (nativeVideoWrapper = (NativeVideoWrapper) getVideoContainerView()) == null)) {
                nativeVideoWrapper.getVideoView().m6646c();
            }
            super.destroy();
        }
    }

    /* renamed from: e */
    public final void m6323e(C8152be beVar) {
        new StringBuilder("Firing Q4 beacons for completion at ").append(beVar.f31850E);
        beVar.f31697v.put("didQ4Fire", true);
        beVar.m6453a(NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_Q4, m6321g(beVar));
        this.f31629j.mo5944a(12);
        HashMap hashMap = new HashMap();
        hashMap.put("url", beVar.m6311b().mo6204b());
        hashMap.put("isCached", "1");
        hashMap.put("completeAfter", Integer.valueOf(beVar.f31850E));
        m6501a("VideoQ4Completed", hashMap);
    }

    @Override // com.inmobi.ads.C8083ah, com.inmobi.ads.AdContainer
    public AdContainer.AbstractC8007a getFullScreenEventsListener() {
        return this.f31839E;
    }

    @Override // com.inmobi.ads.C8083ah, com.inmobi.ads.AdContainer
    public View getVideoContainerView() {
        WeakReference<View> weakReference = this.f31837B;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    @Override // com.inmobi.ads.C8083ah, com.inmobi.ads.AdContainer
    public AbstractC8213cb getViewableAd() {
        Context j = m6483j();
        if (this.f31629j == null && j != null) {
            m6485g();
            this.f31629j = new C8067ab(this, new C8217ce(this));
            Set<C8185br> set = this.f31628i;
            if (set != null) {
                if (j instanceof Activity) {
                    try {
                        Activity activity = (Activity) j;
                        for (C8185br brVar : set) {
                            int i = brVar.f31928a;
                            if (i == 1) {
                                AbstractC8213cb cbVar = this.f31629j;
                                Map<String, Object> map = brVar.f31929b;
                                C8152be beVar = (C8152be) this.f31620a.m6410c("VIDEO").get(0);
                                StringBuilder sb = new StringBuilder();
                                for (NativeTracker nativeTracker : beVar.f31696u) {
                                    if (NativeTracker.TrackerEventType.TRACKER_EVENT_TYPE_MOAT == nativeTracker.f31407b) {
                                        sb.append(nativeTracker.f31406a);
                                    }
                                }
                                if (sb.length() > 0) {
                                    map.put("zMoatVASTIDs", sb.toString());
                                }
                                this.f31629j = new C8081af(activity, cbVar, this, map);
                            } else if (i == 3) {
                                C6431e eVar = (C6431e) brVar.f31929b.get("avidAdSession");
                                if (eVar != null) {
                                    this.f31629j = new C8311w(activity, this.f31629j, this, eVar);
                                }
                            } else if (i == 6 && ((List) brVar.f31929b.get("trackerUrls")) != null) {
                                this.f31629j = new C8242b(this.f31629j, this);
                            }
                        }
                    } catch (Exception e) {
                        new StringBuilder("Exception occurred while creating the video viewable ad : ").append(e.getMessage());
                        C8328a.m5878a().m5875a(new C8365a(e));
                    }
                } else {
                    HashMap hashMap = new HashMap();
                    hashMap.put("type", "native");
                    hashMap.put("impId", this.f31623d);
                    C8366b.m5794a();
                    C8366b.m5789a("ads", "TrackersForService", hashMap);
                }
            }
        }
        return this.f31629j;
    }

    @Override // com.inmobi.ads.C8083ah
    /* renamed from: i */
    public final boolean mo6320i() {
        return AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_INLINE == this.f31621b.f31277a && m6481l() != null;
    }

    @Override // com.inmobi.ads.C8083ah
    /* renamed from: n */
    public final boolean mo6319n() {
        return !this.f31637r;
    }

    @Override // com.inmobi.ads.C8083ah
    /* renamed from: q */
    public final void mo6318q() {
        super.mo6318q();
        NativeVideoWrapper nativeVideoWrapper = (NativeVideoWrapper) getVideoContainerView();
        if (nativeVideoWrapper != null) {
            NativeVideoView videoView = nativeVideoWrapper.getVideoView();
            if (this.f31621b.f31277a == AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_INLINE && !mo6320i() && videoView.getVideoVolume() > 0) {
                videoView.setLastVolume(-2);
                m6326b(true);
            }
            videoView.pause();
        }
    }

    /* renamed from: w */
    public final void m6317w() {
        this.f31629j.mo5944a(5);
    }
}
