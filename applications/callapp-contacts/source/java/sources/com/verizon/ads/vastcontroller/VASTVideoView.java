package com.verizon.ads.vastcontroller;

import android.content.Context;
import android.graphics.Color;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.ToggleButton;
import com.callapp.contacts.activity.base.BaseViewTypeData;
import com.iab.omid.library.verizonmedia.adsession.AbstractC16483b;
import com.iab.omid.library.verizonmedia.adsession.AdSessionConfiguration;
import com.iab.omid.library.verizonmedia.adsession.C16479a;
import com.iab.omid.library.verizonmedia.adsession.C16484c;
import com.iab.omid.library.verizonmedia.adsession.C16491j;
import com.iab.omid.library.verizonmedia.adsession.EnumC16486e;
import com.iab.omid.library.verizonmedia.adsession.EnumC16488g;
import com.iab.omid.library.verizonmedia.adsession.EnumC16489h;
import com.iab.omid.library.verizonmedia.adsession.p447a.C16480a;
import com.iab.omid.library.verizonmedia.adsession.p447a.C16482c;
import com.iab.omid.library.verizonmedia.adsession.p447a.EnumC16481b;
import com.mopub.mobileads.resource.DrawableConstants;
import com.verizon.ads.BuildConfig;
import com.verizon.ads.Component;
import com.verizon.ads.ComponentRegistry;
import com.verizon.ads.Configuration;
import com.verizon.ads.ErrorInfo;
import com.verizon.ads.Logger;
import com.verizon.ads.VideoPlayer;
import com.verizon.ads.VideoPlayerView;
import com.verizon.ads.omsdk.OMSDKPlugin;
import com.verizon.ads.omsdk.OpenMeasurementService;
import com.verizon.ads.support.SafeRunnable;
import com.verizon.ads.support.utils.ActivityUtils;
import com.verizon.ads.support.utils.ViewUtils;
import com.verizon.ads.support.utils.ViewabilityWatcher;
import com.verizon.ads.utils.HttpUtils;
import com.verizon.ads.utils.IOUtils;
import com.verizon.ads.utils.TextUtils;
import com.verizon.ads.utils.ThreadUtils;
import com.verizon.ads.vastcontroller.AdChoicesButton;
import com.verizon.ads.vastcontroller.VASTController;
import com.verizon.ads.vastcontroller.VASTParser;
import com.verizon.ads.vastcontroller.VASTVideoView;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.net.URL;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
/* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTVideoView.class */
public class VASTVideoView extends RelativeLayout implements VideoPlayer.VideoPlayerListener, VASTController.VideoViewActions {

    /* renamed from: j */
    private static final Logger f61827j = Logger.getInstance(VASTVideoView.class);

    /* renamed from: k */
    private static final String f61828k = VASTVideoView.class.getSimpleName();

    /* renamed from: l */
    private static final List<String> f61829l;

    /* renamed from: A */
    private ToggleButton f61830A;

    /* renamed from: B */
    private TextView f61831B;

    /* renamed from: C */
    private LinearLayout f61832C;

    /* renamed from: D */
    private VASTParser.InLineAd f61833D;

    /* renamed from: E */
    private ViewabilityWatcher f61834E;

    /* renamed from: F */
    private ViewabilityWatcher f61835F;

    /* renamed from: G */
    private ViewabilityWatcher f61836G;

    /* renamed from: H */
    private File f61837H;

    /* renamed from: I */
    private int f61838I;

    /* renamed from: K */
    private boolean f61840K;

    /* renamed from: M */
    private volatile VASTParser.MediaFile f61842M;

    /* renamed from: N */
    private volatile VASTParser.CompanionAd f61843N;

    /* renamed from: O */
    private Set<VASTParser.TrackingEvent> f61844O;

    /* renamed from: P */
    private int f61845P;

    /* renamed from: a */
    List<VASTParser.WrapperAd> f61846a;

    /* renamed from: b */
    VASTParser.VideoClicks f61847b;

    /* renamed from: c */
    List<VASTParser.VideoClicks> f61848c;

    /* renamed from: d */
    volatile VASTParser.Creative f61849d;

    /* renamed from: e */
    VideoPlayerView f61850e;

    /* renamed from: f */
    VideoPlayer f61851f;

    /* renamed from: g */
    AbstractC16483b f61852g;

    /* renamed from: h */
    C16480a f61853h;

    /* renamed from: i */
    C16479a f61854i;

    /* renamed from: p */
    private volatile Map<String, VASTParser.Icon> f61858p;

    /* renamed from: q */
    private volatile int f61859q;

    /* renamed from: r */
    private LoadListener f61860r;

    /* renamed from: s */
    private InteractionListener f61861s;

    /* renamed from: t */
    private PlaybackListener f61862t;

    /* renamed from: u */
    private FrameLayout f61863u;

    /* renamed from: v */
    private FrameLayout f61864v;

    /* renamed from: w */
    private ImageView f61865w;

    /* renamed from: x */
    private ImageView f61866x;

    /* renamed from: y */
    private AdChoicesButton f61867y;

    /* renamed from: z */
    private ImageView f61868z;

    /* renamed from: m */
    private volatile boolean f61855m = false;

    /* renamed from: n */
    private volatile boolean f61856n = false;

    /* renamed from: o */
    private volatile boolean f61857o = false;

    /* renamed from: J */
    private int f61839J = 0;

    /* renamed from: L */
    private int f61841L = -1;

    /* renamed from: com.verizon.ads.vastcontroller.VASTVideoView$1 */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTVideoView$1.class */
    public class C174731 implements IOUtils.DownloadListener {

        /* renamed from: a */
        final /* synthetic */ LoadListener f61869a;

        C174731(LoadListener loadListener) {
            VASTVideoView.this = r4;
            this.f61869a = loadListener;
        }

        /* renamed from: a */
        public /* synthetic */ void m5186a(File file, VideoPlayer videoPlayer) {
            VASTVideoView.this.f61837H = file;
            videoPlayer.load(Uri.fromFile(file));
            VASTVideoView vASTVideoView = VASTVideoView.this;
            vASTVideoView.f61847b = vASTVideoView.f61849d.linearAd.videoClicks;
            ArrayList arrayList = new ArrayList();
            if (vASTVideoView.f61846a != null) {
                for (VASTParser.WrapperAd wrapperAd : vASTVideoView.f61846a) {
                    if (wrapperAd.creatives != null) {
                        for (VASTParser.Creative creative : wrapperAd.creatives) {
                            if (creative.linearAd != null && creative.linearAd.videoClicks != null) {
                                arrayList.add(creative.linearAd.videoClicks);
                            }
                        }
                    }
                }
            }
            vASTVideoView.f61848c = arrayList;
        }

        @Override // com.verizon.ads.utils.IOUtils.DownloadListener
        public void onDownloadFailed(Throwable th) {
            VASTVideoView.f61827j.m5564e("Error occurred downloading the video file.", th);
            LoadListener loadListener = this.f61869a;
            if (loadListener != null) {
                loadListener.onComplete(new ErrorInfo(VASTVideoView.f61828k, "Error occurred downloading the video file.", 2));
            }
        }

        @Override // com.verizon.ads.utils.IOUtils.DownloadListener
        public void onDownloadSucceeded(final File file) {
            final VideoPlayer videoPlayer = VASTVideoView.this.f61851f;
            if (videoPlayer != null) {
                ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$1$fdGQO1K7iTLnkMPseIBp2dXlJ_k
                    @Override // java.lang.Runnable
                    public final void run() {
                        VASTVideoView.C174731.this.m5186a(file, videoPlayer);
                    }
                });
            } else {
                VASTVideoView.f61827j.m5567d("Unable to load the video asset. VideoView instance is null.");
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTVideoView$InteractionListener.class */
    public interface InteractionListener {
        void close();

        void onAdLeftApplication();

        void onClicked();
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTVideoView$LoadListener.class */
    public interface LoadListener {
        void onComplete(ErrorInfo errorInfo);
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTVideoView$PlaybackListener.class */
    public interface PlaybackListener {
        void onComplete();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTVideoView$VASTEndCardViewabilityListener.class */
    public static class VASTEndCardViewabilityListener implements ViewabilityWatcher.ViewabilityListener {

        /* renamed from: a */
        WeakReference<VASTVideoView> f61873a;

        VASTEndCardViewabilityListener(VASTVideoView vASTVideoView) {
            this.f61873a = new WeakReference<>(vASTVideoView);
        }

        @Override // com.verizon.ads.support.utils.ViewabilityWatcher.ViewabilityListener
        public void onViewableChanged(boolean z) {
            VASTVideoView vASTVideoView = this.f61873a.get();
            if (vASTVideoView != null && z && vASTVideoView.f61843N.trackingEvents != null && !vASTVideoView.f61843N.trackingEvents.isEmpty()) {
                vASTVideoView.m5229a(vASTVideoView.f61843N.trackingEvents.get(VASTParser.TrackableEvent.creativeView), 0);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTVideoView$VASTImpressionViewabilityListener.class */
    public static class VASTImpressionViewabilityListener implements ViewabilityWatcher.ViewabilityListener {

        /* renamed from: a */
        WeakReference<VASTVideoView> f61874a;

        VASTImpressionViewabilityListener(VASTVideoView vASTVideoView) {
            this.f61874a = new WeakReference<>(vASTVideoView);
        }

        @Override // com.verizon.ads.support.utils.ViewabilityWatcher.ViewabilityListener
        public void onViewableChanged(boolean z) {
            VASTVideoView vASTVideoView = this.f61874a.get();
            if (vASTVideoView != null && z) {
                VASTVideoView.m5238a(vASTVideoView);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTVideoView$VASTVideoViewabilityListener.class */
    public static class VASTVideoViewabilityListener implements ViewabilityWatcher.ViewabilityListener {

        /* renamed from: a */
        boolean f61875a = false;

        /* renamed from: b */
        WeakReference<VASTVideoView> f61876b;

        /* renamed from: c */
        WeakReference<VideoPlayer> f61877c;

        VASTVideoViewabilityListener(VASTVideoView vASTVideoView, VideoPlayer videoPlayer) {
            this.f61876b = new WeakReference<>(vASTVideoView);
            this.f61877c = new WeakReference<>(videoPlayer);
        }

        @Override // com.verizon.ads.support.utils.ViewabilityWatcher.ViewabilityListener
        public void onViewableChanged(boolean z) {
            VideoPlayer videoPlayer = this.f61877c.get();
            VASTVideoView vASTVideoView = this.f61876b.get();
            if (vASTVideoView == null || videoPlayer == null) {
                return;
            }
            if (z) {
                vASTVideoView.m5229a(vASTVideoView.m5241a(VASTParser.TrackableEvent.creativeView), 0);
                if (vASTVideoView.f61849d != null) {
                    vASTVideoView.m5229a(vASTVideoView.f61849d.linearAd.trackingEvents.get(VASTParser.TrackableEvent.creativeView), 0);
                }
            }
            if (!z && videoPlayer.getState() == 4) {
                this.f61875a = true;
                videoPlayer.pause();
            } else if (!this.f61875a) {
            } else {
                VASTVideoView.m5215c(vASTVideoView);
                this.f61875a = false;
            }
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        f61829l = arrayList;
        arrayList.add("image/bmp");
        arrayList.add("image/gif");
        arrayList.add("image/jpeg");
        arrayList.add("image/png");
    }

    public VASTVideoView(Context context, VASTParser.InLineAd inLineAd, List<VASTParser.WrapperAd> list) {
        super(context);
        this.f61833D = inLineAd;
        this.f61846a = list;
        setBackgroundColor(-16777216);
        setId(C17460R.C17462id.vas_vast_video_view);
        if (m5205g()) {
            this.f61845P = 1;
        } else {
            this.f61845P = 2;
        }
        this.f61844O = Collections.synchronizedSet(new HashSet());
        this.f61836G = new ViewabilityWatcher(this, new VASTImpressionViewabilityListener(this));
        FrameLayout frameLayout = new FrameLayout(getContext());
        addView(frameLayout, new RelativeLayout.LayoutParams(-1, -1));
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.f61863u = frameLayout2;
        frameLayout2.setTag("mmVastVideoView_backgroundFrame");
        this.f61863u.setVisibility(8);
        frameLayout.addView(this.f61863u, new FrameLayout.LayoutParams(-1, -1));
        Component component = ComponentRegistry.getComponent("video/player-v2", context, null, new Object[0]);
        if (!(component instanceof VideoPlayer)) {
            f61827j.m5565e("Cannot load videoPlayerView. A compatible video player component has not been registered.");
            LoadListener loadListener = this.f61860r;
            if (loadListener == null) {
                return;
            }
            loadListener.onComplete(new ErrorInfo(f61828k, "Cannot load videoPlayerView. A compatible video player component has not been registered.", 4));
            return;
        }
        this.f61851f = (VideoPlayer) component;
        VideoPlayerView videoPlayerView = new VideoPlayerView(getContext());
        this.f61850e = videoPlayerView;
        videoPlayerView.bindPlayer(this.f61851f);
        this.f61850e.setPlayButtonEnabled(false);
        this.f61850e.setReplayButtonEnabled(false);
        this.f61850e.setMuteToggleEnabled(false);
        this.f61851f.setVolume(m5202i() ? 1.0f : 0.0f);
        this.f61850e.setTag("mmVastVideoView_videoView");
        this.f61851f.registerListener(this);
        this.f61835F = new ViewabilityWatcher(this.f61850e, new VASTVideoViewabilityListener(this, this.f61851f));
        m5199l();
        VASTParser.MediaFile mediaFile = this.f61842M;
        boolean z = mediaFile != null && mediaFile.width <= mediaFile.height;
        this.f61840K = z;
        if (z) {
            this.f61833D.mmExtension = null;
        }
        addView(this.f61850e, m5200k());
        AdChoicesButton adChoicesButton = new AdChoicesButton(context);
        this.f61867y = adChoicesButton;
        adChoicesButton.setId(C17460R.C17462id.vas_vast_adchoices_button);
        addView(this.f61867y);
        FrameLayout frameLayout3 = new FrameLayout(context);
        this.f61864v = frameLayout3;
        frameLayout3.setTag("mmVastVideoView_endCardContainer");
        this.f61864v.setVisibility(8);
        this.f61834E = new ViewabilityWatcher(this.f61864v, new VASTEndCardViewabilityListener(this));
        this.f61836G.startWatching();
        this.f61835F.startWatching();
        this.f61834E.startWatching();
        frameLayout.addView(this.f61864v, new FrameLayout.LayoutParams(-1, -1));
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setId(C17460R.C17462id.vas_vast_video_control_buttons);
        int dimensionPixelSize = getResources().getDimensionPixelSize(C17460R.dimen.vas_control_button_margin);
        ImageView imageView = new ImageView(context);
        this.f61865w = imageView;
        imageView.setImageDrawable(getResources().getDrawable(C17460R.C17461drawable.verizon_ads_sdk_vast_close));
        this.f61865w.setVisibility(8);
        this.f61865w.setOnClickListener(new View.OnClickListener() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$_a2PhojU4cXUjGR9IJG30RaPfvA
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VASTVideoView.this.m5207f(view);
            }
        });
        this.f61865w.setTag("mmVastVideoView_closeButton");
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(getResources().getDimensionPixelSize(C17460R.dimen.vas_control_button_width), getResources().getDimensionPixelSize(C17460R.dimen.vas_control_button_height));
        layoutParams.addRule(10);
        layoutParams.addRule(11);
        layoutParams.setMargins(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        relativeLayout.addView(this.f61865w, layoutParams);
        ImageView imageView2 = new ImageView(context);
        this.f61866x = imageView2;
        imageView2.setImageDrawable(getResources().getDrawable(C17460R.C17461drawable.verizon_ads_sdk_vast_skip));
        this.f61866x.setTag("mmVastVideoView_skipButton");
        this.f61866x.setEnabled(false);
        this.f61866x.setVisibility(4);
        TextView textView = new TextView(context);
        this.f61831B = textView;
        textView.setBackground(getResources().getDrawable(C17460R.C17461drawable.verizon_ads_sdk_vast_opacity));
        this.f61831B.setTextColor(getResources().getColor(17170443));
        this.f61831B.setTypeface(null, 1);
        this.f61831B.setGravity(17);
        this.f61831B.setVisibility(4);
        this.f61831B.setTag("mmVastVideoView_countdown");
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(getResources().getDimensionPixelSize(C17460R.dimen.vas_control_button_width), getResources().getDimensionPixelSize(C17460R.dimen.vas_control_button_height));
        layoutParams2.addRule(10);
        layoutParams2.addRule(11);
        layoutParams2.setMargins(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        relativeLayout.addView(this.f61866x, layoutParams2);
        relativeLayout.addView(this.f61831B, layoutParams2);
        ImageView imageView3 = new ImageView(context);
        this.f61868z = imageView3;
        imageView3.setImageDrawable(getResources().getDrawable(C17460R.C17461drawable.verizon_ads_sdk_vast_replay));
        this.f61868z.setVisibility(8);
        this.f61868z.setOnClickListener(new View.OnClickListener() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$eQvpOrBb_eKvm6AWKVTOWFp2h3Q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VASTVideoView.this.m5210e(view);
            }
        });
        this.f61868z.setTag("mmVastVideoView_replayButton");
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(getResources().getDimensionPixelSize(C17460R.dimen.vas_control_button_width), getResources().getDimensionPixelSize(C17460R.dimen.vas_control_button_height));
        layoutParams3.addRule(10);
        layoutParams3.addRule(9);
        layoutParams3.setMargins(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        relativeLayout.addView(this.f61868z, layoutParams3);
        ToggleButton toggleButton = new ToggleButton(context);
        this.f61830A = toggleButton;
        toggleButton.setText("");
        this.f61830A.setTextOff("");
        this.f61830A.setTextOn("");
        this.f61830A.setTag("mmVastVideoView_muteToggleButton");
        this.f61830A.setBackgroundResource(C17460R.C17461drawable.verizon_ads_sdk_vast_mute_toggle);
        this.f61830A.setChecked(m5202i());
        this.f61830A.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$5YgPC_R6mEu55nWsYQLBtia6JTU
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
                VASTVideoView.this.m5251a(compoundButton, z2);
            }
        });
        relativeLayout.addView(this.f61830A, layoutParams3);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams4.addRule(3, C17460R.C17462id.vas_vast_adchoices_button);
        addView(relativeLayout, layoutParams4);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams5.addRule(12);
        LinearLayout linearLayout = new LinearLayout(getContext());
        this.f61832C = linearLayout;
        addView(linearLayout, layoutParams5);
        this.f61859q = 0;
    }

    /* renamed from: a */
    private int m5253a(int i) {
        int i2 = Configuration.getInt("com.verizon.ads.vast", "vastSkipOffsetMax", 7500);
        int i3 = Configuration.getInt("com.verizon.ads.vast", "vastSkipOffsetMin", 7500);
        int i4 = i3;
        if (i3 > i2) {
            i4 = i2;
        }
        return Math.min(Math.max(Math.min(i2, this.f61838I), i4), i);
    }

    /* renamed from: a */
    public static /* synthetic */ int m5245a(VASTParser.Button button, VASTParser.Button button2) {
        return button.position - button2.position;
    }

    /* renamed from: a */
    private static int m5242a(VASTParser.StaticResource staticResource) {
        int i;
        if (staticResource != null && staticResource.backgroundColor != null) {
            try {
                i = Color.parseColor(staticResource.backgroundColor);
            } catch (IllegalArgumentException e) {
                f61827j.m5559w("Invalid hex color format specified = " + staticResource.backgroundColor);
            }
            return i;
        }
        i = -16777216;
        return i;
    }

    /* renamed from: a */
    private int m5232a(String str) {
        return m5231a(str, m5219b(this.f61849d.linearAd.duration), -1);
    }

    /* renamed from: a */
    public static int m5231a(String str, int i, int i2) {
        int i3 = i2;
        if (!TextUtils.isEmpty(str)) {
            String trim = str.trim();
            try {
                if (trim.contains("%")) {
                    String replace = trim.replace("%", "");
                    if (!TextUtils.isEmpty(replace)) {
                        i3 = (int) ((Float.parseFloat(replace.trim()) / 100.0f) * i);
                    } else {
                        f61827j.m5565e("VAST time is missing percent value, parse value was: ".concat(String.valueOf(trim)));
                        i3 = i2;
                    }
                } else {
                    i3 = m5219b(trim);
                }
            } catch (NumberFormatException e) {
                f61827j.m5565e("VAST time has invalid number format, parse value was: ".concat(String.valueOf(trim)));
                i3 = i2;
            }
        }
        return i3;
    }

    /* renamed from: a */
    private static List<C16491j> m5247a(VASTParser.AdVerifications adVerifications) {
        ArrayList arrayList = new ArrayList();
        if (adVerifications != null && adVerifications.verifications != null) {
            for (VASTParser.Verification verification : adVerifications.verifications) {
                VASTParser.JavaScriptResource javaScriptResource = verification.javaScriptResource;
                if (javaScriptResource != null && !TextUtils.isEmpty(javaScriptResource.uri) && "omid".equalsIgnoreCase(javaScriptResource.apiFramework)) {
                    try {
                        if (TextUtils.isEmpty(verification.vendor) || TextUtils.isEmpty(verification.verificationParameters)) {
                            arrayList.add(C16491j.m7155a(new URL(javaScriptResource.uri)));
                        } else {
                            arrayList.add(C16491j.m7156a(verification.vendor, new URL(javaScriptResource.uri), verification.verificationParameters));
                        }
                    } catch (Exception e) {
                        f61827j.m5564e("Error processing verification node.", e);
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public List<VASTParser.TrackingEvent> m5241a(VASTParser.TrackableEvent trackableEvent) {
        List<VASTParser.TrackingEvent> list;
        ArrayList arrayList = new ArrayList();
        List<VASTParser.WrapperAd> list2 = this.f61846a;
        if (list2 != null) {
            for (VASTParser.WrapperAd wrapperAd : list2) {
                if (wrapperAd.creatives != null) {
                    for (VASTParser.Creative creative : wrapperAd.creatives) {
                        if (creative.linearAd != null && (list = creative.linearAd.trackingEvents.get(trackableEvent)) != null) {
                            arrayList.addAll(list);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    /* renamed from: a */
    public /* synthetic */ void m5254a(float f) {
        C16480a c16480a = this.f61853h;
        if (c16480a != null) {
            try {
                c16480a.m7170a(f);
                f61827j.m5567d("Fired OMSDK volume change event.");
            } catch (Throwable th) {
                f61827j.m5564e("Error occurred firing OMSDK volume change event.", th);
            }
        }
    }

    /* renamed from: a */
    private static void m5252a(View view) {
        if (view != null) {
            view.setOnClickListener(_$$Lambda$VASTVideoView$xJeFjwsEFdK2KVfFDop0DGFamtk.INSTANCE);
        }
    }

    /* renamed from: a */
    public /* synthetic */ void m5251a(CompoundButton compoundButton, boolean z) {
        this.f61851f.setVolume(z ? 1.0f : 0.0f);
    }

    /* renamed from: a */
    public static /* synthetic */ void m5250a(ImageView imageView, HttpUtils.Response response) {
        imageView.setImageBitmap(response.bitmap);
    }

    /* renamed from: a */
    public /* synthetic */ void m5249a(VideoPlayer videoPlayer) {
        if (!this.f61855m && this.f61853h != null) {
            try {
                this.f61855m = true;
                this.f61853h.m7169a(getDuration(), videoPlayer.getVolume());
                f61827j.m5567d("Fired OMSDK start event.");
            } catch (Throwable th) {
                f61827j.m5564e("Error occurred firing OMSDK start event.", th);
            }
        }
        updateComponentVisibility();
    }

    /* renamed from: a */
    public /* synthetic */ void m5248a(HttpUtils.Response response) {
        ImageView imageView = new ImageView(getContext());
        imageView.setImageBitmap(response.bitmap);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$BC_l1cp6iGgp2wUNz58FFaYBg_s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VASTVideoView.this.m5223b(view);
            }
        });
        imageView.setTag("mmVastVideoView_companionImageView");
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        this.f61864v.setBackgroundColor(m5242a(this.f61843N.staticResource));
        this.f61864v.addView(imageView, layoutParams);
    }

    /* renamed from: a */
    public static /* synthetic */ void m5246a(VASTParser.Background background, final ImageView imageView) {
        final HttpUtils.Response bitmapFromGetRequest = HttpUtils.getBitmapFromGetRequest(background.staticResource.uri);
        if (bitmapFromGetRequest.code == 200) {
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$_4fCt9KsgAz8onKWFKwB2QVwE_Q
                @Override // java.lang.Runnable
                public final void run() {
                    VASTVideoView.m5250a(imageView, bitmapFromGetRequest);
                }
            });
        }
    }

    /* renamed from: a */
    private void m5243a(VASTParser.InLineAd inLineAd, List<VASTParser.WrapperAd> list) {
        if (this.f61852g != null) {
            return;
        }
        f61827j.m5567d("Preparing OMSDK");
        ArrayList arrayList = new ArrayList(m5247a(inLineAd.adVerifications));
        for (VASTParser.WrapperAd wrapperAd : list) {
            arrayList.addAll(m5247a(wrapperAd.adVerifications));
        }
        if (arrayList.isEmpty()) {
            f61827j.m5565e("OMSDK is disabled - verification script resources is empty");
        } else if (m5230a(arrayList)) {
            try {
                this.f61854i = C16479a.m7173a(this.f61852g);
                this.f61853h = C16480a.m7168a(this.f61852g);
                this.f61852g.mo7153a(this);
                f61827j.m5567d("Starting the OMSDK Ad session.");
                this.f61852g.mo7154a();
            } catch (Throwable th) {
                f61827j.m5564e("OMSDK is disabled - error initializing OMSDK Ad Session.", th);
                this.f61852g = null;
                this.f61854i = null;
                this.f61853h = null;
            }
        }
    }

    /* renamed from: a */
    private static void m5239a(VASTParser.VideoClicks videoClicks, boolean z) {
        if (videoClicks != null) {
            ArrayList arrayList = new ArrayList();
            m5228a(arrayList, videoClicks.clickTrackingUrls, "video click tracker");
            if (z) {
                m5228a(arrayList, videoClicks.customClickUrls, "custom click");
            }
            TrackingEvent.fireEvents(arrayList);
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m5238a(VASTVideoView vASTVideoView) {
        C16479a c16479a = vASTVideoView.f61854i;
        if (c16479a != null) {
            try {
                c16479a.m7175a();
                f61827j.m5567d("Fired OMSDK impression event.");
            } catch (Throwable th) {
                f61827j.m5564e("Error occurred firing OMSDK Impression event.", th);
            }
        }
        VASTParser.InLineAd inLineAd = vASTVideoView.f61833D;
        if (inLineAd == null || inLineAd.impressions == null) {
            return;
        }
        vASTVideoView.f61836G.stopWatching();
        ArrayList arrayList = new ArrayList();
        m5228a(arrayList, vASTVideoView.f61833D.impressions, "impression");
        List<VASTParser.WrapperAd> list = vASTVideoView.f61846a;
        if (list != null) {
            for (VASTParser.WrapperAd wrapperAd : list) {
                m5228a(arrayList, wrapperAd.impressions, "wrapper immpression");
            }
        }
        TrackingEvent.fireEvents(arrayList);
    }

    /* renamed from: a */
    static /* synthetic */ void m5237a(VASTVideoView vASTVideoView, int i) {
        for (int i2 = 0; i2 < vASTVideoView.f61832C.getChildCount(); i2++) {
            View childAt = vASTVideoView.f61832C.getChildAt(i2);
            if (childAt instanceof FrameLayout) {
                View childAt2 = ((FrameLayout) childAt).getChildAt(0);
                if (childAt2.getVisibility() != 0 && (childAt2 instanceof ImageButton)) {
                    final ImageButton imageButton = (ImageButton) childAt2;
                    if (i >= imageButton.m5293a()) {
                        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.vastcontroller.ImageButton.1
                            @Override // java.lang.Runnable
                            public void run() {
                                ImageButton.this.setVisibility(0);
                            }
                        });
                    }
                }
            }
        }
    }

    /* renamed from: a */
    static /* synthetic */ void m5236a(VASTVideoView vASTVideoView, int i, int i2) {
        int m5253a = vASTVideoView.m5253a(i2);
        int ceil = i > m5253a ? 0 : (int) Math.ceil((m5253a - i) / 1000.0d);
        if (ceil <= 0) {
            vASTVideoView.f61856n = true;
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$OTYmvzt5tUzwjV7e_DBHUJnLIpM
                @Override // java.lang.Runnable
                public final void run() {
                    VASTVideoView.this.m5217c();
                }
            });
        } else if (ceil == vASTVideoView.f61841L) {
        } else {
            vASTVideoView.f61841L = ceil;
            final int i3 = ceil;
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$Q_CUEeyVlwHoaafwiM_9uKqDN30
                @Override // java.lang.Runnable
                public final void run() {
                    VASTVideoView.this.m5224b(i3);
                }
            });
        }
    }

    /* renamed from: a */
    public void m5229a(List<VASTParser.TrackingEvent> list, int i) {
        if (list != null) {
            ArrayList arrayList = new ArrayList();
            for (VASTParser.TrackingEvent trackingEvent : list) {
                if (trackingEvent != null && !TextUtils.isEmpty(trackingEvent.url) && !this.f61844O.contains(trackingEvent)) {
                    this.f61844O.add(trackingEvent);
                    arrayList.add(new VideoTrackingEvent(trackingEvent.event.name(), trackingEvent.url, i));
                }
            }
            TrackingEvent.fireEvents(arrayList);
        }
    }

    /* renamed from: a */
    private static void m5228a(List<TrackingEvent> list, List<String> list2, String str) {
        if (list2 != null) {
            for (String str2 : list2) {
                if (!TextUtils.isEmpty(str2)) {
                    list.add(new TrackingEvent(str, str2));
                }
            }
        }
    }

    /* renamed from: a */
    private static void m5227a(List<VASTParser.VideoClicks> list, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (VASTParser.VideoClicks videoClicks : list) {
            m5228a(arrayList, videoClicks.clickTrackingUrls, "wrapper video click tracker");
            if (z) {
                m5228a(arrayList, videoClicks.customClickUrls, "wrapper custom click tracker");
            }
        }
        TrackingEvent.fireEvents(arrayList);
    }

    /* renamed from: a */
    private void m5226a(final boolean z) {
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$OGiWpkeP_VtQnSSw8pEx6Lcl79I
            @Override // java.lang.Runnable
            public final void run() {
                VASTVideoView.this.m5218b(z);
            }
        });
    }

    /* renamed from: a */
    private static boolean m5244a(VASTParser.Icon icon) {
        if (icon == null || icon.program == null || !icon.program.equalsIgnoreCase("adchoices") || icon.iconClicks == null || TextUtils.isEmpty(icon.iconClicks.clickThrough) || icon.staticResource == null || TextUtils.isEmpty(icon.staticResource.uri)) {
            if (!Logger.isLogLevelEnabled(3)) {
                return false;
            }
            f61827j.m5567d("Invalid adchoices icon: ".concat(String.valueOf(icon)));
            return false;
        }
        return true;
    }

    /* renamed from: a */
    private static boolean m5240a(VASTParser.VideoClicks videoClicks) {
        if (videoClicks != null) {
            return !TextUtils.isEmpty(videoClicks.clickThrough) || !videoClicks.customClickUrls.isEmpty();
        }
        return false;
    }

    /* renamed from: a */
    private boolean m5230a(List<C16491j> list) {
        OpenMeasurementService measurementService = OMSDKPlugin.getMeasurementService();
        if (measurementService == null) {
            f61827j.m5567d("OMSDK is disabled");
            return false;
        }
        try {
            C16484c m7157a = C16484c.m7157a(measurementService.getPartner(), measurementService.getOMSDKJS(), list);
            EnumC16486e enumC16486e = EnumC16486e.VIDEO;
            EnumC16488g enumC16488g = EnumC16488g.OTHER;
            EnumC16489h enumC16489h = EnumC16489h.NATIVE;
            this.f61852g = AbstractC16483b.m7158a(AdSessionConfiguration.createAdSessionConfiguration(enumC16486e, enumC16488g, enumC16489h, enumC16489h, false), m7157a);
            return true;
        } catch (IOException e) {
            f61827j.m5564e("OMSDK is disabled - error occurred loading the OMSDK JS", e);
            return false;
        } catch (Throwable th) {
            f61827j.m5564e("OMSDK is disabled - error initializing OMSDK Ad Session.", th);
            return false;
        }
    }

    /* renamed from: b */
    private static int m5219b(String str) {
        int i;
        int i2;
        if (!TextUtils.isEmpty(str)) {
            String trim = str.trim();
            String[] split = trim.split("\\.");
            if (split.length <= 2) {
                if (split.length == 2) {
                    trim = split[0];
                    i2 = Integer.parseInt(split[1]);
                } else {
                    i2 = 0;
                }
                String[] split2 = trim.split(":");
                if (split2.length == 3) {
                    i = (Integer.parseInt(split2[0]) * 3600000) + (Integer.parseInt(split2[1]) * 60000) + (Integer.parseInt(split2[2]) * 1000) + i2;
                    return i;
                }
                f61827j.m5565e("VAST time has invalid HHMMSS format, parse value was: ".concat(String.valueOf(trim)));
            } else {
                f61827j.m5565e("VAST time has invalid format, parse value was: ".concat(String.valueOf(trim)));
            }
        }
        i = -1;
        return i;
    }

    /* renamed from: b */
    public /* synthetic */ void m5224b(int i) {
        m5252a(this.f61831B);
        this.f61831B.setVisibility(0);
        this.f61831B.setText(String.valueOf(i));
    }

    /* renamed from: b */
    public /* synthetic */ void m5223b(View view) {
        m5203h();
        if (!TextUtils.isEmpty(this.f61843N.companionClickThrough)) {
            ActivityUtils.startActivityFromUrl(getContext(), this.f61843N.companionClickThrough);
        }
        if (this.f61843N != null) {
            ArrayList<VASTParser.CompanionAd> arrayList = new ArrayList();
            List<VASTParser.WrapperAd> list = this.f61846a;
            if (list != null) {
                for (VASTParser.WrapperAd wrapperAd : list) {
                    if (wrapperAd.creatives != null) {
                        for (VASTParser.Creative creative : wrapperAd.creatives) {
                            if (creative.companionAds != null) {
                                Iterator<VASTParser.CompanionAd> it2 = creative.companionAds.iterator();
                                while (true) {
                                    if (it2.hasNext()) {
                                        VASTParser.CompanionAd next = it2.next();
                                        if (next.htmlResource == null && next.iframeResource == null && next.staticResource == null) {
                                            arrayList.add(next);
                                            break;
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            ArrayList arrayList2 = new ArrayList();
            m5228a(arrayList2, this.f61843N.companionClickTracking, "tracking");
            for (VASTParser.CompanionAd companionAd : arrayList) {
                m5228a(arrayList2, companionAd.companionClickTracking, "wrapper tracking");
            }
            TrackingEvent.fireEvents(arrayList2);
        }
    }

    /* renamed from: b */
    static /* synthetic */ void m5221b(VASTVideoView vASTVideoView, int i) {
        ArrayList<VASTParser.TrackingEvent> arrayList = new ArrayList();
        List<VASTParser.TrackingEvent> list = vASTVideoView.f61849d.linearAd.trackingEvents.get(VASTParser.TrackableEvent.progress);
        if (list != null) {
            arrayList.addAll(list);
        }
        arrayList.addAll(vASTVideoView.m5241a(VASTParser.TrackableEvent.progress));
        for (VASTParser.TrackingEvent trackingEvent : arrayList) {
            VASTParser.ProgressEvent progressEvent = (VASTParser.ProgressEvent) trackingEvent;
            int m5232a = vASTVideoView.m5232a(progressEvent.offset);
            if (m5232a == -1) {
                if (Logger.isLogLevelEnabled(3)) {
                    Logger logger = f61827j;
                    logger.m5567d("Progress event could not be fired because the time offset is invalid. url = " + progressEvent.url + ", offset = " + progressEvent.offset);
                }
                vASTVideoView.f61844O.add(progressEvent);
            } else if (TextUtils.isEmpty(progressEvent.url)) {
                if (Logger.isLogLevelEnabled(3)) {
                    Logger logger2 = f61827j;
                    logger2.m5567d("Progress event could not be fired because the url is empty. offset = " + progressEvent.offset);
                }
                vASTVideoView.f61844O.add(progressEvent);
            } else if (!vASTVideoView.f61844O.contains(trackingEvent) && i >= m5232a) {
                vASTVideoView.m5229a(Collections.singletonList(progressEvent), i);
            }
        }
    }

    /* renamed from: b */
    static /* synthetic */ void m5220b(VASTVideoView vASTVideoView, int i, int i2) {
        int i3 = i2 / 4;
        if (i >= i3 && vASTVideoView.f61839J <= 0) {
            vASTVideoView.f61839J = 1;
            vASTVideoView.m5229a(vASTVideoView.m5241a(VASTParser.TrackableEvent.firstQuartile), i);
            vASTVideoView.m5229a(vASTVideoView.f61849d.linearAd.trackingEvents.get(VASTParser.TrackableEvent.firstQuartile), i);
            C16480a c16480a = vASTVideoView.f61853h;
            if (c16480a != null) {
                try {
                    c16480a.m7171a();
                    f61827j.m5567d("Fired OMSDK Q1 event.");
                } catch (Throwable th) {
                    f61827j.m5564e("Error occurred firing OMSDK Q1 event.", th);
                }
            }
        }
        if (i >= i3 * 2 && vASTVideoView.f61839J < 2) {
            vASTVideoView.f61839J = 2;
            vASTVideoView.m5229a(vASTVideoView.m5241a(VASTParser.TrackableEvent.midpoint), i);
            vASTVideoView.m5229a(vASTVideoView.f61849d.linearAd.trackingEvents.get(VASTParser.TrackableEvent.midpoint), i);
            C16480a c16480a2 = vASTVideoView.f61853h;
            if (c16480a2 != null) {
                try {
                    c16480a2.m7167b();
                    f61827j.m5567d("Fired OMSDK midpoint event.");
                } catch (Throwable th2) {
                    f61827j.m5564e("Error occurred firing OMSDK midpoint event.", th2);
                }
            }
        }
        if (i < i3 * 3 || vASTVideoView.f61839J >= 3) {
            return;
        }
        vASTVideoView.f61839J = 3;
        vASTVideoView.m5229a(vASTVideoView.m5241a(VASTParser.TrackableEvent.thirdQuartile), i);
        vASTVideoView.m5229a(vASTVideoView.f61849d.linearAd.trackingEvents.get(VASTParser.TrackableEvent.thirdQuartile), i);
        C16480a c16480a3 = vASTVideoView.f61853h;
        if (c16480a3 == null) {
            return;
        }
        try {
            c16480a3.m7165c();
            f61827j.m5567d("Fired OMSDK Q3 event.");
        } catch (Throwable th3) {
            f61827j.m5564e("Error occurred firing OMSDK q3 event.", th3);
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m5218b(boolean z) {
        setKeepScreenOn(z);
    }

    /* renamed from: c */
    public void m5217c() {
        this.f61831B.setVisibility(8);
        this.f61866x.setEnabled(true);
        this.f61866x.setVisibility(0);
        this.f61866x.setOnClickListener(new View.OnClickListener() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$3e7FjZd_mRvi3H3_6FCmL7zxpk4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VASTVideoView.this.m5216c(view);
            }
        });
    }

    /* renamed from: c */
    public /* synthetic */ void m5216c(View view) {
        m5214d();
    }

    /* renamed from: c */
    static /* synthetic */ void m5215c(VASTVideoView vASTVideoView) {
        vASTVideoView.f61851f.play();
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$NBs3xVdqj2ttG_RSnp4sSOOXMoE
            @Override // java.lang.Runnable
            public final void run() {
                VASTVideoView.this.m5190u();
            }
        });
    }

    /* renamed from: d */
    private void m5214d() {
        C16480a c16480a = this.f61853h;
        if (c16480a != null) {
            try {
                c16480a.m7161g();
                f61827j.m5567d("Fired OMSDK skipped event.");
            } catch (Throwable th) {
                f61827j.m5564e("Error occurred firing OMSDK skipped event.", th);
            }
        }
        if (this.f61849d != null) {
            m5229a(m5241a(VASTParser.TrackableEvent.skip), 0);
            m5229a(this.f61849d.linearAd.trackingEvents.get(VASTParser.TrackableEvent.skip), 0);
        }
        m5211e();
    }

    /* renamed from: d */
    public static /* synthetic */ void m5213d(View view) {
        f61827j.m5567d("Clicked on an unclickable region.");
    }

    /* renamed from: e */
    private void m5211e() {
        View childAt;
        m5208f();
        this.f61859q = 2;
        this.f61831B.setVisibility(8);
        this.f61867y.m5297a();
        if (this.f61843N == null || this.f61864v.getChildCount() <= 0) {
            m5201j();
            return;
        }
        this.f61868z.setVisibility(0);
        this.f61830A.setVisibility(8);
        this.f61866x.setVisibility(8);
        this.f61865w.setVisibility(0);
        for (int i = 0; i < this.f61832C.getChildCount(); i++) {
            View childAt2 = this.f61832C.getChildAt(i);
            if ((childAt2 instanceof FrameLayout) && (childAt = ((FrameLayout) childAt2).getChildAt(0)) != null) {
                childAt.setVisibility(0);
            }
        }
        updateComponentVisibility();
    }

    /* renamed from: e */
    public /* synthetic */ void m5210e(View view) {
        m5203h();
        this.f61859q = 1;
        updateComponentVisibility();
        this.f61868z.setVisibility(8);
        this.f61830A.setVisibility(0);
        this.f61865w.setVisibility(8);
        this.f61866x.setVisibility(0);
        AdChoicesButton adChoicesButton = this.f61867y;
        adChoicesButton.m5297a();
        adChoicesButton.f61773f = 0;
        adChoicesButton.f61772e = 0;
        adChoicesButton.f61771d = AdChoicesButton.AdChoicesButtonState.READY;
        this.f61851f.replay();
    }

    /* renamed from: f */
    public void m5208f() {
        AbstractC16483b abstractC16483b = this.f61852g;
        if (abstractC16483b != null) {
            abstractC16483b.mo7151b();
            this.f61852g = null;
            f61827j.m5567d("Finished OMSDK Ad Session.");
        }
    }

    /* renamed from: f */
    public /* synthetic */ void m5207f(View view) {
        m5201j();
    }

    /* renamed from: g */
    private boolean m5205g() {
        return getResources().getConfiguration().orientation != 2;
    }

    /* renamed from: h */
    private void m5203h() {
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$DAsSF97v6ppTfyRDpJ4AQgOsttM
            @Override // java.lang.Runnable
            public final void run() {
                VASTVideoView.this.m5191t();
            }
        });
    }

    /* renamed from: i */
    private static boolean m5202i() {
        return Configuration.getBoolean(BuildConfig.LIBRARY_PACKAGE_NAME, "autoPlayAudioEnabled", false);
    }

    /* renamed from: j */
    private void m5201j() {
        if (this.f61849d != null) {
            m5229a(m5241a(VASTParser.TrackableEvent.closeLinear), 0);
            m5229a(this.f61849d.linearAd.trackingEvents.get(VASTParser.TrackableEvent.closeLinear), 0);
        }
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$YgKGMf6P_AusLo8Ial0bSKQEhJk
            @Override // java.lang.Runnable
            public final void run() {
                VASTVideoView.this.m5194q();
            }
        });
    }

    /* renamed from: k */
    private ViewGroup.LayoutParams m5200k() {
        RelativeLayout.LayoutParams layoutParams;
        if (!m5205g() || this.f61840K) {
            layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        } else {
            layoutParams = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams.addRule(3, C17460R.C17462id.vas_vast_video_control_buttons);
        }
        return layoutParams;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0175 A[EDGE_INSN: B:65:0x0175->B:54:0x0175 ?: BREAK  , SYNTHETIC] */
    /* renamed from: l */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m5199l() {
        /*
            Method dump skipped, instructions count: 390
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.verizon.ads.vastcontroller.VASTVideoView.m5199l():void");
    }

    /* renamed from: m */
    private void m5198m() {
        if (this.f61833D.creatives != null) {
            for (VASTParser.Creative creative : this.f61833D.creatives) {
                if (creative.companionAds != null && !creative.companionAds.isEmpty()) {
                    Iterator<VASTParser.CompanionAd> it2 = creative.companionAds.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        VASTParser.CompanionAd next = it2.next();
                        if (next != null && next.width != null && next.width.intValue() >= 300 && next.height != null && next.height.intValue() >= 250 && next.staticResource != null && !TextUtils.isEmpty(next.staticResource.uri) && f61829l.contains(next.staticResource.creativeType)) {
                            this.f61843N = next;
                            break;
                        }
                    }
                }
                if (this.f61843N != null && creative != this.f61849d) {
                    break;
                }
            }
        }
        if (this.f61843N == null || this.f61843N.staticResource == null || TextUtils.isEmpty(this.f61843N.staticResource.uri)) {
            return;
        }
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$s_3SmqJeFKMueTHnsa_XrumCW5Q
            @Override // java.lang.Runnable
            public final void run() {
                VASTVideoView.this.m5195p();
            }
        });
    }

    /* renamed from: n */
    private void m5197n() {
        if (this.f61833D.mmExtension == null || this.f61833D.mmExtension.buttons == null) {
            return;
        }
        Collections.sort(this.f61833D.mmExtension.buttons, _$$Lambda$VASTVideoView$4C5Nnr3ePkEzEnHdxemFld1XHPE.INSTANCE);
        int i = 0;
        int dimensionPixelSize = getResources().getDimensionPixelSize(C17460R.dimen.vas_ad_button_width);
        int dimensionPixelSize2 = getResources().getDimensionPixelSize(C17460R.dimen.vas_ad_button_height);
        for (VASTParser.Button button : this.f61833D.mmExtension.buttons) {
            if (i >= 3) {
                return;
            }
            if (button.staticResource != null && !TextUtils.isEmpty(button.staticResource.uri) && !TextUtils.isEmpty(button.staticResource.creativeType) && button.staticResource.creativeType.trim().equalsIgnoreCase("image/png")) {
                i++;
                ImageButton imageButton = new ImageButton(getContext(), button, getDuration());
                imageButton.setInteractionListener(this.f61861s);
                imageButton.setTag("mmVastVideoView_mmExtensionButton_".concat(String.valueOf(i)));
                FrameLayout frameLayout = new FrameLayout(getContext());
                frameLayout.addView(imageButton, new FrameLayout.LayoutParams(-1, -1));
                LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(dimensionPixelSize, dimensionPixelSize2, m5205g() ? 1.0f : 0.0f);
                if (!m5205g()) {
                    layoutParams.leftMargin = getResources().getDimensionPixelSize(C17460R.dimen.vas_ad_button_padding_left);
                }
                this.f61832C.addView(frameLayout, layoutParams);
            }
        }
    }

    /* renamed from: o */
    private Map<String, VASTParser.Icon> m5196o() {
        HashMap hashMap = new HashMap();
        List<VASTParser.WrapperAd> list = this.f61846a;
        if (list != null) {
            for (VASTParser.WrapperAd wrapperAd : list) {
                if (wrapperAd.creatives != null) {
                    for (VASTParser.Creative creative : wrapperAd.creatives) {
                        if (creative.linearAd != null && creative.linearAd.icons != null) {
                            for (VASTParser.Icon icon : creative.linearAd.icons) {
                                if (m5244a(icon)) {
                                    hashMap.put(icon.program.toLowerCase(Locale.ROOT), icon);
                                }
                            }
                        }
                    }
                }
            }
        }
        if (this.f61849d != null && this.f61849d.linearAd.icons != null) {
            for (VASTParser.Icon icon2 : this.f61849d.linearAd.icons) {
                if (m5244a(icon2)) {
                    hashMap.put(icon2.program.toLowerCase(Locale.ROOT), icon2);
                }
            }
        }
        return hashMap;
    }

    /* renamed from: p */
    public /* synthetic */ void m5195p() {
        final HttpUtils.Response bitmapFromGetRequest = HttpUtils.getBitmapFromGetRequest(this.f61843N.staticResource.uri);
        if (bitmapFromGetRequest == null || bitmapFromGetRequest.code != 200) {
            return;
        }
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$VtmKrh7QihhLQXN9HcKiGBa9OuA
            @Override // java.lang.Runnable
            public final void run() {
                VASTVideoView.this.m5248a(bitmapFromGetRequest);
            }
        });
    }

    /* renamed from: q */
    public /* synthetic */ void m5194q() {
        InteractionListener interactionListener = this.f61861s;
        if (interactionListener != null) {
            interactionListener.close();
        }
    }

    /* renamed from: r */
    public /* synthetic */ void m5193r() {
        PlaybackListener playbackListener = this.f61862t;
        if (playbackListener != null) {
            playbackListener.onComplete();
        }
    }

    /* renamed from: s */
    public /* synthetic */ void m5192s() {
        InteractionListener interactionListener = this.f61861s;
        if (interactionListener != null) {
            interactionListener.onAdLeftApplication();
        }
    }

    /* renamed from: t */
    public /* synthetic */ void m5191t() {
        InteractionListener interactionListener = this.f61861s;
        if (interactionListener != null) {
            interactionListener.onClicked();
        }
    }

    /* renamed from: u */
    public /* synthetic */ void m5190u() {
        C16480a c16480a = this.f61853h;
        if (c16480a != null) {
            try {
                c16480a.m7162f();
                f61827j.m5567d("Fired OMSDK resume event.");
            } catch (Throwable th) {
                f61827j.m5564e("Error occurred firing OMSDK resume event.", th);
            }
        }
    }

    /* renamed from: v */
    public /* synthetic */ void m5189v() {
        C16480a c16480a = this.f61853h;
        if (c16480a != null) {
            try {
                c16480a.m7164d();
                f61827j.m5567d("Fired OMSDK complete event.");
            } catch (Throwable th) {
                f61827j.m5564e("Error occurred firing OMSDK complete event.", th);
            }
        }
        m5211e();
        setKeepScreenOn(false);
    }

    /* renamed from: w */
    public /* synthetic */ void m5188w() {
        C16480a c16480a = this.f61853h;
        if (c16480a != null) {
            try {
                c16480a.m7163e();
                f61827j.m5567d("Fired OMSDK pause event.");
            } catch (Throwable th) {
                f61827j.m5564e("Error occurred firing OMSDK pause event.", th);
            }
        }
    }

    /* renamed from: x */
    public /* synthetic */ void m5187x() {
        this.f61838I = Math.max(0, m5232a(this.f61849d.linearAd.skipOffset));
        if (this.f61853h != null) {
            try {
                this.f61854i.m7174a(C16482c.m7159a(m5253a(getDuration()) / 1000.0f, true, EnumC16481b.STANDALONE));
                f61827j.m5567d("Fired OMSDK loaded event.");
            } catch (Throwable th) {
                f61827j.m5564e("Error recording load event with OMSDK.", th);
            }
        }
        if (!this.f61857o) {
            this.f61857o = true;
            LoadListener loadListener = this.f61860r;
            if (loadListener == null) {
                return;
            }
            loadListener.onComplete(null);
        }
    }

    public int getCurrentPosition() {
        if (this.f61850e == null) {
            return -1;
        }
        return this.f61851f.getCurrentPosition();
    }

    public int getDuration() {
        if (this.f61849d == null || this.f61849d.linearAd == null) {
            return -1;
        }
        return m5219b(this.f61849d.linearAd.duration);
    }

    public void load(LoadListener loadListener, int i) {
        File filesDir;
        this.f61860r = loadListener;
        if (this.f61842M == null) {
            f61827j.m5567d("Ad load failed because it did not contain a compatible media file.");
            if (loadListener == null) {
                return;
            }
            loadListener.onComplete(new ErrorInfo(f61828k, "Ad load failed because it did not contain a compatible media file.", 3));
            return;
        }
        if (getContext().getFilesDir() == null) {
            f61827j.m5565e("Cannot access video cache directory. Storage is not available.");
            if (loadListener == null) {
                return;
            }
            loadListener.onComplete(new ErrorInfo(f61828k, "Cannot access video cache directory. Storage is not available.", 1));
            return;
        }
        File file = new File(filesDir.getAbsolutePath() + File.separator + "_vasads_video_cache");
        if (!file.exists()) {
            if (file.mkdirs()) {
                f61827j.m5567d("Found existing video cache directory.");
            } else {
                f61827j.m5567d("Created video cache directory.");
            }
        }
        File[] listFiles = file.listFiles();
        if (listFiles != null) {
            for (File file2 : listFiles) {
                if (file2.isFile() && System.currentTimeMillis() - file2.lastModified() > 43200000 && !file2.delete()) {
                    f61827j.m5559w(String.format("Failed to deleted expired video: %s", file2));
                }
            }
        }
        IOUtils.downloadFile(this.f61842M.url.trim(), Integer.valueOf(i), file, new C174731(loadListener));
        m5197n();
        if (this.f61833D.mmExtension != null && this.f61833D.mmExtension.background != null) {
            final VASTParser.Background background = this.f61833D.mmExtension.background;
            if (background.staticResource != null && !TextUtils.isEmpty(background.staticResource.uri)) {
                final ImageView imageView = new ImageView(getContext());
                imageView.setTag("mmVastVideoView_backgroundImageView");
                this.f61863u.addView(imageView);
                this.f61863u.setBackgroundColor(m5242a(background.staticResource));
                ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$vs4kyFOfi2D2PVj2cqz9UaYWgzE
                    @Override // java.lang.Runnable
                    public final void run() {
                        VASTVideoView.m5246a(VASTParser.Background.this, imageView);
                    }
                });
            }
        }
        m5198m();
        FrameLayout frameLayout = new FrameLayout(getContext());
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, ViewUtils.convertPixelsToDips(getContext(), (int) DrawableConstants.CtaButton.WIDTH_DIPS));
        m5252a(frameLayout);
        this.f61850e.addView(frameLayout, layoutParams);
        if (this.f61858p == null) {
            this.f61858p = m5196o();
        }
        VASTParser.Icon icon = this.f61858p.get("adchoices");
        AdChoicesButton adChoicesButton = this.f61867y;
        int m5219b = m5219b(this.f61849d.linearAd.duration);
        if (icon != null) {
            adChoicesButton.f61775h = icon;
            adChoicesButton.f61774g = m5231a(icon.offset, m5219b, 0);
            adChoicesButton.f61768a = m5231a(icon.duration, m5219b, 3600000);
            adChoicesButton.setOnClickListener(adChoicesButton);
        }
        m5243a(this.f61833D, this.f61846a);
    }

    @Override // com.verizon.ads.vastcontroller.VASTController.VideoViewActions
    public boolean onBackPressed() {
        if (this.f61856n) {
            m5214d();
        }
        return this.f61856n;
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onClick(VideoPlayer videoPlayer) {
        boolean z;
        if (!m5240a(this.f61847b)) {
            Iterator<VASTParser.VideoClicks> it2 = this.f61848c.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z = false;
                    break;
                } else if (m5240a(it2.next())) {
                    z = true;
                    break;
                }
            }
            if (!z) {
                return;
            }
        }
        m5203h();
        VASTParser.VideoClicks videoClicks = this.f61847b;
        if (videoClicks == null || TextUtils.isEmpty(videoClicks.clickThrough)) {
            m5239a(this.f61847b, true);
            m5227a(this.f61848c, true);
            return;
        }
        ActivityUtils.startActivityFromUrl(getContext(), this.f61847b.clickThrough);
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$GVMkCMm8tzuXxWngpU_C1alnXMY
            @Override // java.lang.Runnable
            public final void run() {
                VASTVideoView.this.m5192s();
            }
        });
        m5239a(this.f61847b, false);
        m5227a(this.f61848c, false);
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onComplete(VideoPlayer videoPlayer) {
        f61827j.m5567d("onComplete");
        if (this.f61849d != null) {
            m5229a(m5241a(VASTParser.TrackableEvent.complete), getDuration());
            m5229a(this.f61849d.linearAd.trackingEvents.get(VASTParser.TrackableEvent.complete), getDuration());
        }
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$NnEQB1t2CwL_lnovSc45b6InEIw
            @Override // java.lang.Runnable
            public final void run() {
                VASTVideoView.this.m5189v();
            }
        });
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$_qSwUYp6KLtcl0Gr0ZETXE9F6QQ
            @Override // java.lang.Runnable
            public final void run() {
                VASTVideoView.this.m5193r();
            }
        });
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onError(VideoPlayer videoPlayer) {
        f61827j.m5567d("onError");
        m5226a(false);
        LoadListener loadListener = this.f61860r;
        if (loadListener != null) {
            loadListener.onComplete(new ErrorInfo(f61828k, "VideoView error", -1));
        }
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onLoaded(VideoPlayer videoPlayer) {
        f61827j.m5567d("onLoaded");
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$88aWy_iw91A0uxa_gMY1pw8BKCw
            @Override // java.lang.Runnable
            public final void run() {
                VASTVideoView.this.m5187x();
            }
        });
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onPaused(VideoPlayer videoPlayer) {
        f61827j.m5567d("onPaused");
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$OtC2eed093xBFDeq4mJ49WDrjYE
            @Override // java.lang.Runnable
            public final void run() {
                VASTVideoView.this.m5188w();
            }
        });
        m5226a(false);
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onPlay(final VideoPlayer videoPlayer) {
        synchronized (this) {
            f61827j.m5567d("onPlay");
            this.f61859q = 1;
            post(new Runnable() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$vzb8kVNXuL7OQ_MHZp_zHYABJvs
                @Override // java.lang.Runnable
                public final void run() {
                    VASTVideoView.this.m5249a(videoPlayer);
                }
            });
            m5226a(true);
            if (this.f61849d != null) {
                m5229a(m5241a(VASTParser.TrackableEvent.start), 0);
                m5229a(this.f61849d.linearAd.trackingEvents.get(VASTParser.TrackableEvent.start), 0);
            }
        }
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onProgress(VideoPlayer videoPlayer, final int i) {
        synchronized (this) {
            ThreadUtils.postOnUiThread(new SafeRunnable() { // from class: com.verizon.ads.vastcontroller.VASTVideoView.2
                @Override // com.verizon.ads.support.SafeRunnable
                public void safeRun() {
                    int i2;
                    if (VASTVideoView.this.f61832C != null) {
                        VASTVideoView.m5237a(VASTVideoView.this, i);
                    }
                    if (!VASTVideoView.this.f61856n) {
                        VASTVideoView vASTVideoView = VASTVideoView.this;
                        VASTVideoView.m5236a(vASTVideoView, i, vASTVideoView.getDuration());
                    }
                    if (VASTVideoView.this.f61867y != null) {
                        final AdChoicesButton adChoicesButton = VASTVideoView.this.f61867y;
                        int i3 = i;
                        if (adChoicesButton.f61775h != null) {
                            if (adChoicesButton.f61771d == AdChoicesButton.AdChoicesButtonState.SHOWN && i3 > adChoicesButton.f61773f && (i2 = i3 - adChoicesButton.f61773f) <= 1500) {
                                adChoicesButton.f61772e += i2;
                            }
                            adChoicesButton.f61773f = i3;
                            if (adChoicesButton.f61771d != AdChoicesButton.AdChoicesButtonState.COMPLETE && adChoicesButton.f61772e >= adChoicesButton.f61768a) {
                                adChoicesButton.m5297a();
                            } else if (adChoicesButton.f61771d == AdChoicesButton.AdChoicesButtonState.READY && i3 >= adChoicesButton.f61774g) {
                                adChoicesButton.f61771d = AdChoicesButton.AdChoicesButtonState.SHOWING;
                                ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.vastcontroller.AdChoicesButton.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        AdChoicesButton.this.setVisibility(0);
                                    }
                                });
                                if (!adChoicesButton.f61770c) {
                                    adChoicesButton.f61770c = true;
                                    ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.verizon.ads.vastcontroller.AdChoicesButton.3
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            final HttpUtils.Response bitmapFromGetRequest = HttpUtils.getBitmapFromGetRequest(AdChoicesButton.this.f61775h.staticResource.uri);
                                            if (bitmapFromGetRequest == null || bitmapFromGetRequest.code != 200 || bitmapFromGetRequest.bitmap == null) {
                                                return;
                                            }
                                            int dimensionPixelSize = AdChoicesButton.this.getResources().getDimensionPixelSize(C17460R.dimen.vas_adchoices_icon_height);
                                            int height = bitmapFromGetRequest.bitmap.getHeight();
                                            if (height <= 0) {
                                                AdChoicesButton.f61767j.m5565e("Invalid icon height: ".concat(String.valueOf(height)));
                                                return;
                                            }
                                            final RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams((bitmapFromGetRequest.bitmap.getWidth() * dimensionPixelSize) / height, dimensionPixelSize);
                                            layoutParams.leftMargin = 0;
                                            layoutParams.topMargin = 0;
                                            layoutParams.rightMargin = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;
                                            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.vastcontroller.AdChoicesButton.3.1
                                                @Override // java.lang.Runnable
                                                public void run() {
                                                    AdChoicesButton.this.setImageBitmap(bitmapFromGetRequest.bitmap);
                                                    AdChoicesButton.this.setLayoutParams(layoutParams);
                                                    AdChoicesButton.this.m5295b();
                                                }
                                            });
                                        }
                                    });
                                } else if (adChoicesButton.f61769b) {
                                    adChoicesButton.m5295b();
                                }
                            }
                        }
                    }
                    if (VASTVideoView.this.f61849d != null) {
                        VASTVideoView vASTVideoView2 = VASTVideoView.this;
                        VASTVideoView.m5220b(vASTVideoView2, i, vASTVideoView2.getDuration());
                        VASTVideoView.m5221b(VASTVideoView.this, i);
                    }
                }
            });
        }
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onReady(final VideoPlayer videoPlayer) {
        f61827j.m5567d("onReady");
        videoPlayer.getClass();
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.vastcontroller._$$Lambda$hlaLYYsyA_xU90RvD_sjsyz2rto
            @Override // java.lang.Runnable
            public final void run() {
                VideoPlayer.this.play();
            }
        });
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onSeekCompleted(VideoPlayer videoPlayer) {
        f61827j.m5567d("onSeekCompleted");
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onUnloaded(VideoPlayer videoPlayer) {
        f61827j.m5567d("onUnloaded");
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onVideoSizeChanged(int i, int i2) {
        f61827j.m5567d(String.format("video size changed new width = %d, new height = %d", Integer.valueOf(i), Integer.valueOf(i2)));
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onVolumeChanged(VideoPlayer videoPlayer, final float f) {
        f61827j.m5567d("onVolumeChanged");
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$wNclKFwydahnzifS9WpgZkfPD_0
            @Override // java.lang.Runnable
            public final void run() {
                VASTVideoView.this.m5254a(f);
            }
        });
    }

    @Override // com.verizon.ads.vastcontroller.VASTController.VideoViewActions
    public void release() {
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$Ne9u9kQnNdQhyWkjp23y4zcd5v4
            @Override // java.lang.Runnable
            public final void run() {
                VASTVideoView.this.m5208f();
            }
        });
        VideoPlayer videoPlayer = this.f61851f;
        if (videoPlayer != null) {
            videoPlayer.pause();
            this.f61851f.unload();
            this.f61850e = null;
        }
        File file = this.f61837H;
        if (file != null) {
            if (!file.delete()) {
                Logger logger = f61827j;
                logger.m5559w("Failed to delete video asset = " + this.f61837H.getAbsolutePath());
            }
            this.f61837H = null;
        }
        this.f61834E.stopWatching();
        this.f61835F.stopWatching();
        this.f61834E = null;
        this.f61835F = null;
    }

    public void setInteractionListener(InteractionListener interactionListener) {
        this.f61861s = interactionListener;
        this.f61867y.setInteractionListener(interactionListener);
    }

    public void setPlaybackListener(PlaybackListener playbackListener) {
        this.f61862t = playbackListener;
    }

    public void updateComponentVisibility() {
        if (this.f61859q == 1) {
            this.f61863u.setVisibility(m5205g() ? 0 : 8);
            this.f61864v.setVisibility(8);
            VideoPlayerView videoPlayerView = this.f61850e;
            if (videoPlayerView != null) {
                videoPlayerView.setVisibility(0);
            }
        } else if (this.f61859q == 2) {
            VideoPlayerView videoPlayerView2 = this.f61850e;
            if (videoPlayerView2 != null) {
                videoPlayerView2.setVisibility(8);
            }
            this.f61863u.setVisibility(8);
            this.f61864v.setVisibility(0);
        }
        if (this.f61859q != 1) {
            if (this.f61859q != 2) {
                return;
            }
            if (this.f61843N == null || !this.f61843N.hideButtons) {
                this.f61832C.setVisibility(0);
            } else {
                this.f61832C.setVisibility(4);
            }
        } else if (m5205g()) {
            VASTParser.InLineAd inLineAd = this.f61833D;
            if (inLineAd == null || inLineAd.mmExtension == null || this.f61833D.mmExtension.background == null || !this.f61833D.mmExtension.background.hideButtons) {
                this.f61832C.setVisibility(0);
            } else {
                this.f61832C.setVisibility(4);
            }
        } else {
            VASTParser.InLineAd inLineAd2 = this.f61833D;
            if (inLineAd2 == null || inLineAd2.mmExtension == null || this.f61833D.mmExtension.overlay == null || !this.f61833D.mmExtension.overlay.hideButtons) {
                this.f61832C.setVisibility(0);
            } else {
                this.f61832C.setVisibility(4);
            }
        }
    }

    @Override // com.verizon.ads.vastcontroller.VASTController.VideoViewActions
    public void updateLayout() {
        int i;
        Object[] objArr = 1;
        if ((!m5205g() || this.f61845P == 1) && (m5205g() || this.f61845P != 1)) {
            objArr = null;
        } else {
            this.f61850e.setLayoutParams(m5200k());
            updateComponentVisibility();
        }
        if (objArr != null) {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(getResources().getDimensionPixelSize(C17460R.dimen.vas_ad_button_width), getResources().getDimensionPixelSize(C17460R.dimen.vas_ad_button_height), m5205g() ? 1.0f : 0.0f);
            if (!m5205g()) {
                layoutParams.leftMargin = getResources().getDimensionPixelSize(C17460R.dimen.vas_ad_button_padding_left);
                i = 0;
            } else {
                layoutParams.leftMargin = 0;
                i = 0;
            }
            while (i < this.f61832C.getChildCount()) {
                this.f61832C.getChildAt(i).setLayoutParams(layoutParams);
                i++;
            }
        }
        this.f61832C.bringToFront();
        this.f61845P = getResources().getConfiguration().orientation;
    }
}
