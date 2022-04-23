package com.inmobi.rendering;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Point;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.inmobi.ads.AbstractC8213cb;
import com.inmobi.ads.AdContainer;
import com.inmobi.ads.C8083ah;
import com.inmobi.ads.C8109ao;
import com.inmobi.ads.C8148bd;
import com.inmobi.ads.C8152be;
import com.inmobi.ads.C8197c;
import com.inmobi.ads.NativeVideoView;
import com.inmobi.ads.NativeVideoWrapper;
import com.inmobi.commons.core.configs.C8348b;
import com.inmobi.commons.core.p509a.C8328a;
import com.inmobi.commons.core.p513e.C8365a;
import com.inmobi.commons.core.utilities.C8388a;
import com.inmobi.commons.core.utilities.Logger;
import com.inmobi.commons.core.utilities.p516b.C8399c;
import com.inmobi.commons.p508a.C8326a;
import com.inmobi.rendering.RenderView;
import com.mopub.common.AdType;
import com.mopub.mobileads.resource.DrawableConstants;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/inmobi/rendering/InMobiAdActivity.class */
public class InMobiAdActivity extends Activity {

    /* renamed from: i */
    public static RenderView f32726i;

    /* renamed from: j */
    public static RenderView.AbstractC8440a f32727j;

    /* renamed from: k */
    public AdContainer f32729k;

    /* renamed from: l */
    public RenderView f32730l;

    /* renamed from: m */
    public CustomView f32731m;

    /* renamed from: n */
    public CustomView f32732n;

    /* renamed from: o */
    public NativeVideoView f32733o;

    /* renamed from: p */
    public int f32734p;

    /* renamed from: q */
    public int f32735q;

    /* renamed from: g */
    public static final String f32724g = InMobiAdActivity.class.getSimpleName();

    /* renamed from: h */
    public static SparseArray<AdContainer> f32725h = new SparseArray<>();

    /* renamed from: b */
    public static Map<Integer, AbstractC8426a> f32719b = new HashMap();

    /* renamed from: c */
    public static Map<Integer, Intent> f32720c = new HashMap();

    /* renamed from: d */
    public static Integer f32721d = 0;

    /* renamed from: e */
    public static Map<Integer, Object> f32722e = new HashMap();

    /* renamed from: f */
    public static Integer f32723f = 0;

    /* renamed from: a */
    public boolean f32728a = false;

    /* renamed from: r */
    public boolean f32736r = false;

    /* renamed from: s */
    public boolean f32737s = false;

    /* renamed from: com.inmobi.rendering.InMobiAdActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/rendering/InMobiAdActivity$a.class */
    public interface AbstractC8426a {
    }

    /* renamed from: a */
    public static int m5615a(AdContainer adContainer) {
        int hashCode = adContainer.hashCode();
        f32725h.put(hashCode, adContainer);
        return hashCode;
    }

    /* renamed from: a */
    public static void m5613a(RenderView.AbstractC8440a aVar) {
        f32727j = aVar;
    }

    /* renamed from: a */
    public static void m5612a(RenderView renderView) {
        f32726i = renderView;
    }

    /* renamed from: a */
    public static void m5611a(Object obj) {
        f32725h.remove(obj.hashCode());
    }

    @Override // android.app.Activity
    public void onActivityResult(int i, int i2, Intent intent) {
        super.onActivityResult(i, i2, intent);
        if (f32719b.remove(Integer.valueOf(i)) != null) {
            f32720c.remove(Integer.valueOf(i));
            this.f32728a = true;
            finish();
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        int i = this.f32734p;
        if (i == 102) {
            AdContainer adContainer = this.f32729k;
            if (adContainer != null && !adContainer.mo5585c()) {
                boolean z = false;
                if (200 == this.f32735q) {
                    RenderView renderView = (RenderView) this.f32729k;
                    if (renderView != null) {
                        if (renderView.f32795q != null) {
                            z = true;
                        }
                        if (z) {
                            renderView.m5597a(renderView.f32795q, "broadcastEvent('backButtonPressed')");
                        }
                        if (!renderView.f32794p) {
                            this.f32728a = true;
                            try {
                                renderView.mo5592b();
                            } catch (Exception e) {
                                new StringBuilder("Encountered unexpected error in processing close request: ").append(e.getMessage());
                                Logger.m5724a(Logger.InternalLogLevel.DEBUG, "InMobi", "SDK encountered unexpected error in processing close request");
                            }
                        }
                    }
                } else {
                    AdContainer adContainer2 = this.f32729k;
                    if (adContainer2 instanceof C8148bd) {
                        C8148bd bdVar = (C8148bd) adContainer2;
                        if (bdVar != null && !bdVar.m6484h().f31720b) {
                            this.f32728a = true;
                            NativeVideoView nativeVideoView = this.f32733o;
                            if (nativeVideoView != null) {
                                C8152be beVar = (C8152be) nativeVideoView.getTag();
                                if (beVar != null) {
                                    if (AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_FULLSCREEN == bdVar.f31621b.f31277a) {
                                        this.f32733o.m6657a();
                                    }
                                    try {
                                        if (((Boolean) beVar.f31697v.get("isFullScreen")).booleanValue()) {
                                            beVar.f31697v.put("seekPosition", Integer.valueOf(this.f32733o.getCurrentPosition()));
                                            if (!bdVar.f31631l && ((Boolean) beVar.f31697v.get("didRequestFullScreen")).booleanValue()) {
                                                beVar.f31697v.put("didRequestFullScreen", false);
                                                if (beVar.f31700y != null) {
                                                    beVar.f31700y.f31697v.put("didRequestFullScreen", false);
                                                }
                                                bdVar.mo5592b();
                                                beVar.f31697v.put("isFullScreen", false);
                                            }
                                        }
                                    } catch (Exception e2) {
                                        new StringBuilder("Encountered unexpected error in onVideoClosed handler: ").append(e2.getMessage());
                                        Logger.m5724a(Logger.InternalLogLevel.DEBUG, "InMobi", "SDK encountered unexpected error in closing video");
                                        C8328a.m5878a().m5875a(new C8365a(e2));
                                    }
                                }
                            } else {
                                finish();
                            }
                        }
                    } else if (adContainer2 instanceof C8083ah) {
                        C8083ah ahVar = (C8083ah) adContainer2;
                        if (ahVar == null) {
                            finish();
                        } else if (!ahVar.m6484h().f31720b) {
                            ahVar.mo5592b();
                        }
                    }
                }
            }
        } else if (i == 100) {
            this.f32728a = true;
            finish();
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        RenderView renderView = this.f32730l;
        if (renderView != null && "Resized".equals(renderView.f32782d) && renderView.getResizeProperties() != null) {
            renderView.f32785g.m5469a();
        }
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        int intExtra;
        String[] stringArrayExtra;
        NativeVideoWrapper nativeVideoWrapper;
        C8197c cVar;
        super.onCreate(bundle);
        if (!C8326a.m5899a()) {
            finish();
            Logger.m5724a(Logger.InternalLogLevel.DEBUG, "InMobi", "Session not found, AdActivity will be closed");
            return;
        }
        this.f32736r = false;
        int intExtra2 = getIntent().getIntExtra("com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE", 102);
        this.f32734p = intExtra2;
        if (intExtra2 == 100) {
            String stringExtra = getIntent().getStringExtra("com.inmobi.rendering.InMobiAdActivity.IN_APP_BROWSER_URL");
            long longExtra = getIntent().getLongExtra("placementId", Long.MIN_VALUE);
            boolean booleanExtra = getIntent().getBooleanExtra("allowAutoRedirection", false);
            String stringExtra2 = getIntent().getStringExtra("impressionId");
            String stringExtra3 = getIntent().getStringExtra("creativeId");
            RenderView renderView = new RenderView(this, new AdContainer.RenderingProperties(AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_FULLSCREEN), null, stringExtra2);
            this.f32730l = renderView;
            renderView.setPlacementId(longExtra);
            this.f32730l.setCreativeId(stringExtra3);
            this.f32730l.setAllowAutoRedirection(booleanExtra);
            RenderView.AbstractC8440a aVar = RenderView.f32746a;
            RenderView renderView2 = f32726i;
            if (renderView2 != null) {
                aVar = renderView2.getListener();
                cVar = f32726i.getAdConfig();
            } else {
                C8197c cVar2 = new C8197c();
                RenderView.AbstractC8440a aVar2 = f32727j;
                cVar = cVar2;
                if (aVar2 != null) {
                    aVar = aVar2;
                    cVar = cVar2;
                }
            }
            this.f32730l.setIsInAppBrowser(true);
            this.f32730l.m5605a(aVar, cVar);
            RelativeLayout relativeLayout = new RelativeLayout(this);
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(10);
            layoutParams.addRule(2, 65533);
            relativeLayout.setBackgroundColor(-1);
            relativeLayout.addView(this.f32730l, layoutParams);
            float f = C8399c.m5687a().f32662c;
            LinearLayout linearLayout = new LinearLayout(this);
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, (int) (48.0f * f));
            linearLayout.setOrientation(0);
            linearLayout.setId(65533);
            linearLayout.setWeightSum(100.0f);
            linearLayout.setBackgroundResource(17301658);
            linearLayout.setBackgroundColor(-7829368);
            layoutParams2.addRule(12);
            relativeLayout.addView(linearLayout, layoutParams2);
            LinearLayout.LayoutParams layoutParams3 = new LinearLayout.LayoutParams(-1, -1);
            layoutParams3.weight = 25.0f;
            CustomView customView = new CustomView(this, f, 2);
            customView.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.rendering.InMobiAdActivity.2
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    if (motionEvent.getAction() == 1) {
                        view.setBackgroundColor(-7829368);
                        InMobiAdActivity.this.f32728a = true;
                        InMobiAdActivity.this.finish();
                        return true;
                    } else if (motionEvent.getAction() != 0) {
                        return true;
                    } else {
                        view.setBackgroundColor(-16711681);
                        return true;
                    }
                }
            });
            linearLayout.addView(customView, layoutParams3);
            CustomView customView2 = new CustomView(this, f, 3);
            customView2.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.rendering.InMobiAdActivity.3
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    if (motionEvent.getAction() == 1) {
                        view.setBackgroundColor(-7829368);
                        InMobiAdActivity.this.f32730l.reload();
                        return true;
                    } else if (motionEvent.getAction() != 0) {
                        return true;
                    } else {
                        view.setBackgroundColor(-16711681);
                        return true;
                    }
                }
            });
            linearLayout.addView(customView2, layoutParams3);
            CustomView customView3 = new CustomView(this, f, 4);
            customView3.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.rendering.InMobiAdActivity.4
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    if (motionEvent.getAction() == 1) {
                        view.setBackgroundColor(-7829368);
                        if (InMobiAdActivity.this.f32730l.canGoBack()) {
                            InMobiAdActivity.this.f32730l.goBack();
                            return true;
                        }
                        InMobiAdActivity.this.f32728a = true;
                        InMobiAdActivity.this.finish();
                        return true;
                    } else if (motionEvent.getAction() != 0) {
                        return true;
                    } else {
                        view.setBackgroundColor(-16711681);
                        return true;
                    }
                }
            });
            linearLayout.addView(customView3, layoutParams3);
            CustomView customView4 = new CustomView(this, f, 6);
            customView4.setOnTouchListener(new View.OnTouchListener() { // from class: com.inmobi.rendering.InMobiAdActivity.5
                @Override // android.view.View.OnTouchListener
                public final boolean onTouch(View view, MotionEvent motionEvent) {
                    if (motionEvent.getAction() == 1) {
                        view.setBackgroundColor(-7829368);
                        if (!InMobiAdActivity.this.f32730l.canGoForward()) {
                            return true;
                        }
                        InMobiAdActivity.this.f32730l.goForward();
                        return true;
                    } else if (motionEvent.getAction() != 0) {
                        return true;
                    } else {
                        view.setBackgroundColor(-16711681);
                        return true;
                    }
                }
            });
            linearLayout.addView(customView4, layoutParams3);
            setContentView(relativeLayout);
            this.f32730l.loadUrl(stringExtra);
            this.f32730l.setFullScreenActivityContext(this);
        } else if (intExtra2 == 102) {
            if (getIntent().hasExtra("com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_INDEX")) {
                AdContainer adContainer = f32725h.get(getIntent().getIntExtra("com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_INDEX", -1));
                this.f32729k = adContainer;
                if (adContainer == null) {
                    finish();
                    return;
                }
                int intExtra3 = getIntent().getIntExtra("com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_TYPE", 0);
                this.f32735q = intExtra3;
                if (intExtra3 == 0) {
                    if (this.f32729k.getFullScreenEventsListener() != null) {
                        this.f32729k.getFullScreenEventsListener().mo5558a();
                    }
                    finish();
                    return;
                }
                if (getIntent().getBooleanExtra("com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_IS_FULL_SCREEN", false)) {
                    requestWindowFeature(1);
                    getWindow().setFlags(1024, 1024);
                }
                if ((200 != this.f32735q || AdType.HTML.equals(this.f32729k.getMarkupType())) && (201 != this.f32735q || "inmobiJson".equals(this.f32729k.getMarkupType()))) {
                    try {
                        this.f32729k.setFullScreenActivityContext(this);
                        FrameLayout frameLayout = (FrameLayout) findViewById(16908290);
                        RelativeLayout relativeLayout2 = new RelativeLayout(getApplicationContext());
                        relativeLayout2.setId(65534);
                        float f2 = C8399c.m5687a().f32662c;
                        if (AdType.HTML.equals(this.f32729k.getMarkupType())) {
                            relativeLayout2.setBackgroundColor(0);
                            RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, -1);
                            layoutParams4.addRule(10);
                            int i = (int) (50.0f * f2);
                            RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(i, i);
                            layoutParams5.addRule(11);
                            CustomView customView5 = new CustomView(this, f2, 0);
                            this.f32731m = customView5;
                            customView5.setId(65532);
                            this.f32731m.setOnClickListener(new View.OnClickListener() { // from class: com.inmobi.rendering.InMobiAdActivity.6
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    InMobiAdActivity.this.f32728a = true;
                                    try {
                                        InMobiAdActivity.this.f32729k.mo5592b();
                                    } catch (Exception e) {
                                        String unused = InMobiAdActivity.f32724g;
                                        new StringBuilder("Encountered unexpected error in processing close request: ").append(e.getMessage());
                                        Logger.m5724a(Logger.InternalLogLevel.DEBUG, "InMobi", "SDK encountered unexpected error in processing close request");
                                    }
                                }
                            });
                            CustomView customView6 = new CustomView(this, f2, 1);
                            this.f32732n = customView6;
                            customView6.setId(65531);
                            this.f32732n.setOnClickListener(new View.OnClickListener() { // from class: com.inmobi.rendering.InMobiAdActivity.7
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    InMobiAdActivity.this.f32728a = true;
                                    try {
                                        InMobiAdActivity.this.f32729k.mo5592b();
                                    } catch (Exception e) {
                                        String unused = InMobiAdActivity.f32724g;
                                        new StringBuilder("Encountered unexpected error in processing close request: ").append(e.getMessage());
                                        Logger.m5724a(Logger.InternalLogLevel.DEBUG, "InMobi", "SDK encountered unexpected error in processing close request");
                                    }
                                }
                            });
                            View a = this.f32729k.getViewableAd().mo5945a();
                            if (a != null) {
                                ViewGroup viewGroup = (ViewGroup) a.getParent();
                                if (viewGroup != null) {
                                    viewGroup.removeView(a);
                                }
                                relativeLayout2.addView(a, layoutParams4);
                                relativeLayout2.addView(this.f32731m, layoutParams5);
                                relativeLayout2.addView(this.f32732n, layoutParams5);
                                ((RenderView) this.f32729k).m5593a(((RenderView) this.f32729k).f32793o);
                                ((RenderView) this.f32729k).m5586b(((RenderView) this.f32729k).f32790l);
                            }
                        } else if ("inmobiJson".equals(this.f32729k.getMarkupType())) {
                            AdContainer.RenderingProperties.PlacementType placementType = this.f32729k.getRenderingProperties().f31277a;
                            relativeLayout2.setBackgroundColor(DrawableConstants.CtaButton.BACKGROUND_COLOR);
                            C8109ao aoVar = (C8109ao) this.f32729k.getDataModel();
                            Point point = aoVar.f31722d.f31678c.f31701a;
                            C8348b.m5847a().m5844a(new C8197c(), (C8348b.AbstractC8351c) null);
                            AbstractC8213cb viewableAd = this.f32729k.getViewableAd();
                            View b = aoVar.f31721c ? viewableAd.mo5936b() : null;
                            View view = b;
                            if (b == null) {
                                view = viewableAd.mo5941a(null, relativeLayout2, false);
                            }
                            if ((this.f32729k instanceof C8148bd) && (nativeVideoWrapper = (NativeVideoWrapper) this.f32729k.getVideoContainerView()) != null) {
                                NativeVideoView videoView = nativeVideoWrapper.getVideoView();
                                this.f32733o = videoView;
                                videoView.requestFocus();
                                C8152be beVar = (C8152be) this.f32733o.getTag();
                                if (beVar.f31700y != null) {
                                    beVar.m6312a((C8152be) beVar.f31700y);
                                }
                                if (AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_INLINE == placementType) {
                                    beVar.f31697v.put("placementType", AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_INLINE);
                                } else {
                                    beVar.f31697v.put("placementType", AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_FULLSCREEN);
                                }
                            }
                            if (view != null) {
                                relativeLayout2.addView(view, new RelativeLayout.LayoutParams(point.x, point.y));
                            }
                            this.f32729k.setRequestedScreenOrientation();
                        } else {
                            if (this.f32729k.getFullScreenEventsListener() != null) {
                                this.f32729k.getFullScreenEventsListener().mo5558a();
                            }
                            finish();
                            return;
                        }
                        frameLayout.addView(relativeLayout2, new RelativeLayout.LayoutParams(-1, -1));
                    } catch (Exception e) {
                        this.f32729k.setFullScreenActivityContext(null);
                        if (this.f32729k.getFullScreenEventsListener() != null) {
                            this.f32729k.getFullScreenEventsListener().mo5558a();
                        }
                        finish();
                        C8328a.m5878a().m5875a(new C8365a(e));
                    }
                } else {
                    if (this.f32729k.getFullScreenEventsListener() != null) {
                        this.f32729k.getFullScreenEventsListener().mo5558a();
                    }
                    finish();
                }
            }
        } else if (intExtra2 == 103) {
            int intExtra4 = getIntent().getIntExtra("id", -1);
            if (intExtra4 != -1) {
                startActivityForResult(f32720c.get(Integer.valueOf(intExtra4)), intExtra4);
            }
        } else if (intExtra2 == 104 && (intExtra = getIntent().getIntExtra("id", -1)) != -1 && (stringArrayExtra = getIntent().getStringArrayExtra("permissions")) != null && stringArrayExtra.length > 0 && Build.VERSION.SDK_INT >= 23) {
            C8388a.m5719b();
            requestPermissions(stringArrayExtra, intExtra);
        }
    }

    @Override // android.app.Activity
    public void onDestroy() {
        AdContainer adContainer;
        C8152be beVar;
        AdContainer adContainer2;
        if (this.f32728a) {
            int i = this.f32734p;
            if (100 == i) {
                RenderView renderView = this.f32730l;
                if (!(renderView == null || renderView.getFullScreenEventsListener() == null)) {
                    try {
                        this.f32730l.getFullScreenEventsListener().mo5556b(this.f32730l);
                        this.f32730l.destroy();
                        this.f32730l = null;
                    } catch (Exception e) {
                    }
                }
            } else if (!(102 != i || (adContainer2 = this.f32729k) == null || adContainer2.getFullScreenEventsListener() == null)) {
                int i2 = this.f32735q;
                if (200 == i2) {
                    try {
                        this.f32729k.getFullScreenEventsListener().mo5556b(null);
                    } catch (Exception e2) {
                        new StringBuilder("Encountered unexpected error in onAdScreenDismissed handler: ").append(e2.getMessage());
                        Logger.m5724a(Logger.InternalLogLevel.DEBUG, "InMobi", "SDK encountered unexpected error while finishing fullscreen view");
                    }
                } else if (201 == i2 && Build.VERSION.SDK_INT >= 15) {
                    AdContainer adContainer3 = this.f32729k;
                    if (adContainer3 instanceof C8148bd) {
                        NativeVideoWrapper nativeVideoWrapper = (NativeVideoWrapper) ((C8148bd) adContainer3).getVideoContainerView();
                        if (nativeVideoWrapper != null) {
                            try {
                                this.f32729k.getFullScreenEventsListener().mo5556b((C8152be) nativeVideoWrapper.getVideoView().getTag());
                            } catch (Exception e3) {
                                new StringBuilder("Encountered unexpected error in onAdScreenDismissed handler: ").append(e3.getMessage());
                                Logger.m5724a(Logger.InternalLogLevel.DEBUG, "InMobi", "SDK encountered unexpected error while finishing fullscreen view");
                                C8328a.m5878a().m5875a(new C8365a(e3));
                            }
                        }
                    } else if (adContainer3 instanceof C8083ah) {
                        try {
                            adContainer3.getFullScreenEventsListener().mo5556b(null);
                        } catch (Exception e4) {
                            new StringBuilder("Encountered unexpected error in onAdScreenDismissed handler: ").append(e4.getMessage());
                            Logger.m5724a(Logger.InternalLogLevel.DEBUG, "InMobi", "SDK encountered unexpected error while finishing fullscreen view");
                            C8328a.m5878a().m5875a(new C8365a(e4));
                        }
                    }
                }
            }
            AdContainer adContainer4 = this.f32729k;
            if (adContainer4 != null) {
                adContainer4.destroy();
                this.f32729k = null;
            }
        } else {
            int i3 = this.f32734p;
            if (!(100 == i3 || 102 != i3 || (adContainer = this.f32729k) == null)) {
                int i4 = this.f32735q;
                if (200 == i4) {
                    RenderView renderView2 = (RenderView) adContainer;
                    renderView2.setFullScreenActivityContext(null);
                    try {
                        renderView2.mo5592b();
                    } catch (Exception e5) {
                        new StringBuilder("Encountered unexpected error in processing close request: ").append(e5.getMessage());
                        Logger.m5724a(Logger.InternalLogLevel.DEBUG, "InMobi", "SDK encountered unexpected error in processing close request");
                    }
                } else if (201 == i4 && Build.VERSION.SDK_INT >= 15) {
                    if (adContainer instanceof C8148bd) {
                        C8148bd bdVar = (C8148bd) adContainer;
                        NativeVideoView nativeVideoView = this.f32733o;
                        if (!(nativeVideoView == null || (beVar = (C8152be) nativeVideoView.getTag()) == null)) {
                            if (AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_FULLSCREEN == bdVar.f31621b.f31277a) {
                                this.f32733o.m6657a();
                            }
                            if (this.f32729k.getFullScreenEventsListener() != null) {
                                try {
                                    this.f32729k.getFullScreenEventsListener().mo5556b(beVar);
                                } catch (Exception e6) {
                                    new StringBuilder("Encountered unexpected error in onAdScreenDismissed handler: ").append(e6.getMessage());
                                    Logger.m5724a(Logger.InternalLogLevel.DEBUG, "InMobi", "SDK encountered unexpected error while finishing fullscreen view");
                                    C8328a.m5878a().m5875a(new C8365a(e6));
                                }
                            }
                        }
                    } else if ((adContainer instanceof C8083ah) && adContainer.getFullScreenEventsListener() != null) {
                        try {
                            this.f32729k.getFullScreenEventsListener().mo5556b(null);
                        } catch (Exception e7) {
                            new StringBuilder("Encountered unexpected error in onAdScreenDismissed handler: ").append(e7.getMessage());
                            Logger.m5724a(Logger.InternalLogLevel.DEBUG, "InMobi", "SDK encountered unexpected error while finishing fullscreen view");
                            C8328a.m5878a().m5875a(new C8365a(e7));
                        }
                    }
                }
                m5611a((Object) this.f32729k);
                this.f32729k.destroy();
                this.f32729k = null;
            }
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z) {
        super.onMultiWindowModeChanged(z);
        if (!z) {
            RenderView renderView = this.f32730l;
            if (renderView != null) {
                renderView.setOrientationProperties(renderView.getOrientationProperties());
            }
            AdContainer adContainer = this.f32729k;
            if (adContainer != null) {
                adContainer.setRequestedScreenOrientation();
            }
        }
    }

    @Override // android.app.Activity
    public void onMultiWindowModeChanged(boolean z, Configuration configuration) {
        super.onMultiWindowModeChanged(z, configuration);
        onMultiWindowModeChanged(z);
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
        super.onRequestPermissionsResult(i, strArr, iArr);
        C8388a.m5718c();
        f32722e.remove(Integer.valueOf(i));
        finish();
    }

    @Override // android.app.Activity
    public void onResume() {
        NativeVideoView nativeVideoView;
        super.onResume();
        if (!this.f32728a) {
            int i = this.f32734p;
            if (100 == i) {
                RenderView renderView = this.f32730l;
                if (!(renderView == null || renderView.getFullScreenEventsListener() == null)) {
                    if (!this.f32736r) {
                        this.f32736r = true;
                        this.f32730l.getFullScreenEventsListener().mo5557a(this.f32730l);
                    }
                }
                this.f32737s = false;
            }
            if (this.f32735q == 200 && 102 == i) {
                AdContainer adContainer = this.f32729k;
                if (!(adContainer == null || adContainer.getFullScreenEventsListener() == null)) {
                    if (!this.f32736r) {
                        this.f32736r = true;
                        this.f32729k.getFullScreenEventsListener().mo5557a(null);
                    }
                }
            } else if (201 == this.f32735q) {
                if (!(this.f32729k instanceof C8148bd) || (nativeVideoView = this.f32733o) == null) {
                    AdContainer adContainer2 = this.f32729k;
                    if (adContainer2 instanceof C8083ah) {
                        try {
                            if (!this.f32736r) {
                                this.f32736r = true;
                                adContainer2.getFullScreenEventsListener().mo5557a(null);
                            }
                        } catch (Exception e) {
                            C8328a.m5878a().m5875a(new C8365a(e));
                        }
                    }
                } else {
                    final C8152be beVar = (C8152be) nativeVideoView.getTag();
                    if (beVar != null && this.f32737s) {
                        new Handler(Looper.getMainLooper()).postDelayed(new Runnable() { // from class: com.inmobi.rendering.InMobiAdActivity.1
                            @Override // java.lang.Runnable
                            public final void run() {
                                if (InMobiAdActivity.this.f32729k == null) {
                                    return;
                                }
                                if (InMobiAdActivity.this.f32729k.getRenderingProperties().f31277a != AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_FULLSCREEN || !((Boolean) beVar.f31697v.get("didCompleteQ4")).booleanValue()) {
                                    InMobiAdActivity.this.f32733o.start();
                                }
                            }
                        }, 50L);
                    }
                    if (this.f32729k.getFullScreenEventsListener() != null) {
                        try {
                            if (!this.f32736r) {
                                this.f32736r = true;
                                this.f32729k.getFullScreenEventsListener().mo5557a(beVar);
                            }
                        } catch (Exception e2) {
                            C8328a.m5878a().m5875a(new C8365a(e2));
                        }
                    }
                }
            }
            this.f32737s = false;
            this.f32737s = false;
        }
    }

    @Override // android.app.Activity
    public void onStart() {
        AdContainer adContainer;
        super.onStart();
        if (!this.f32728a && 102 == this.f32734p && (adContainer = this.f32729k) != null) {
            AbstractC8213cb viewableAd = adContainer.getViewableAd();
            int i = this.f32735q;
            if (200 == i) {
                if (AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_FULLSCREEN == this.f32729k.getRenderingProperties().f31277a) {
                    try {
                        viewableAd.mo5937a(this.f32731m, this.f32732n);
                    } catch (Exception e) {
                        new StringBuilder("SDK encountered unexpected error in enabling impression tracking on this ad: ").append(e.getMessage());
                        if (this.f32729k.getFullScreenEventsListener() != null) {
                            this.f32729k.getFullScreenEventsListener().mo5558a();
                        }
                    }
                }
            } else if (201 == i) {
                try {
                    C8197c cVar = new C8197c();
                    C8348b.m5847a().m5844a(cVar, (C8348b.AbstractC8351c) null);
                    if (viewableAd.mo5936b() == null) {
                        return;
                    }
                    if (this.f32729k instanceof C8148bd) {
                        C8152be beVar = (C8152be) this.f32733o.getTag();
                        if (beVar != null) {
                            C8197c.C8209l lVar = cVar.f31992k;
                            int i2 = lVar.f32063g;
                            if (beVar.f31852G.containsKey("time")) {
                                i2 = ((Integer) beVar.f31852G.get("time")).intValue();
                            }
                            lVar.f32063g = i2;
                            viewableAd.mo5937a(new View[0]);
                        }
                    } else if (this.f32729k instanceof C8083ah) {
                        try {
                            viewableAd.mo5937a(new View[0]);
                        } catch (Exception e2) {
                            new StringBuilder("SDK encountered unexpected error in enabling impression tracking on this ad: ").append(e2.getMessage());
                            if (this.f32729k.getFullScreenEventsListener() != null) {
                                this.f32729k.getFullScreenEventsListener().mo5558a();
                            }
                        }
                    }
                } catch (Exception e3) {
                    new StringBuilder("SDK encountered unexpected error in enabling impression tracking on this ad: ").append(e3.getMessage());
                    if (this.f32729k.getFullScreenEventsListener() != null) {
                        this.f32729k.getFullScreenEventsListener().mo5558a();
                    }
                    C8328a.m5878a().m5875a(new C8365a(e3));
                }
            }
        }
    }

    @Override // android.app.Activity
    public void onStop() {
        super.onStop();
        if (!this.f32728a) {
            this.f32737s = true;
            NativeVideoView nativeVideoView = this.f32733o;
            if (nativeVideoView != null) {
                nativeVideoView.pause();
            }
        }
    }
}
