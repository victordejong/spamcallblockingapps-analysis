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
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import com.iab.omid.library.verizonmedia.adsession.AdSessionConfiguration;
import com.iab.omid.library.verizonmedia.adsession.a.a;
import com.iab.omid.library.verizonmedia.adsession.b;
import com.iab.omid.library.verizonmedia.adsession.c;
import com.iab.omid.library.verizonmedia.adsession.e;
import com.iab.omid.library.verizonmedia.adsession.g;
import com.iab.omid.library.verizonmedia.adsession.h;
import com.iab.omid.library.verizonmedia.adsession.j;
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
    private static final Logger j = Logger.getInstance(VASTVideoView.class);
    private static final String k = VASTVideoView.class.getSimpleName();
    private static final List<String> l;
    private ToggleButton A;
    private TextView B;
    private LinearLayout C;
    private VASTParser.InLineAd D;
    private ViewabilityWatcher E;
    private ViewabilityWatcher F;
    private ViewabilityWatcher G;
    private File H;
    private int I;
    private boolean K;
    private volatile VASTParser.MediaFile M;
    private volatile VASTParser.CompanionAd N;
    private Set<VASTParser.TrackingEvent> O;
    private int P;

    /* renamed from: a  reason: collision with root package name */
    List<VASTParser.WrapperAd> f35706a;

    /* renamed from: b  reason: collision with root package name */
    VASTParser.VideoClicks f35707b;

    /* renamed from: c  reason: collision with root package name */
    List<VASTParser.VideoClicks> f35708c;

    /* renamed from: d  reason: collision with root package name */
    volatile VASTParser.Creative f35709d;
    VideoPlayerView e;
    VideoPlayer f;
    b g;
    a h;
    com.iab.omid.library.verizonmedia.adsession.a i;
    private volatile Map<String, VASTParser.Icon> p;
    private volatile int q;
    private LoadListener r;
    private InteractionListener s;
    private PlaybackListener t;
    private FrameLayout u;
    private FrameLayout v;
    private ImageView w;
    private ImageView x;
    private AdChoicesButton y;
    private ImageView z;
    private volatile boolean m = false;
    private volatile boolean n = false;
    private volatile boolean o = false;
    private int J = 0;
    private int L = -1;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.verizon.ads.vastcontroller.VASTVideoView$1  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTVideoView$1.class */
    public class AnonymousClass1 implements IOUtils.DownloadListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ LoadListener f35710a;

        AnonymousClass1(LoadListener loadListener) {
            this.f35710a = loadListener;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ void a(File file, VideoPlayer videoPlayer) {
            VASTVideoView.this.H = file;
            videoPlayer.load(Uri.fromFile(file));
            VASTVideoView vASTVideoView = VASTVideoView.this;
            vASTVideoView.f35707b = vASTVideoView.f35709d.linearAd.videoClicks;
            ArrayList arrayList = new ArrayList();
            if (vASTVideoView.f35706a != null) {
                for (VASTParser.WrapperAd wrapperAd : vASTVideoView.f35706a) {
                    if (wrapperAd.creatives != null) {
                        for (VASTParser.Creative creative : wrapperAd.creatives) {
                            if (!(creative.linearAd == null || creative.linearAd.videoClicks == null)) {
                                arrayList.add(creative.linearAd.videoClicks);
                            }
                        }
                    }
                }
            }
            vASTVideoView.f35708c = arrayList;
        }

        @Override // com.verizon.ads.utils.IOUtils.DownloadListener
        public void onDownloadFailed(Throwable th) {
            VASTVideoView.j.e("Error occurred downloading the video file.", th);
            LoadListener loadListener = this.f35710a;
            if (loadListener != null) {
                loadListener.onComplete(new ErrorInfo(VASTVideoView.k, "Error occurred downloading the video file.", 2));
            }
        }

        @Override // com.verizon.ads.utils.IOUtils.DownloadListener
        public void onDownloadSucceeded(final File file) {
            final VideoPlayer videoPlayer = VASTVideoView.this.f;
            if (videoPlayer != null) {
                ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$1$fdGQO1K7iTLnkMPseIBp2dXlJ_k
                    @Override // java.lang.Runnable
                    public final void run() {
                        VASTVideoView.AnonymousClass1.this.a(file, videoPlayer);
                    }
                });
            } else {
                VASTVideoView.j.d("Unable to load the video asset. VideoView instance is null.");
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

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTVideoView$VASTEndCardViewabilityListener.class */
    static class VASTEndCardViewabilityListener implements ViewabilityWatcher.ViewabilityListener {

        /* renamed from: a  reason: collision with root package name */
        WeakReference<VASTVideoView> f35714a;

        VASTEndCardViewabilityListener(VASTVideoView vASTVideoView) {
            this.f35714a = new WeakReference<>(vASTVideoView);
        }

        @Override // com.verizon.ads.support.utils.ViewabilityWatcher.ViewabilityListener
        public void onViewableChanged(boolean z) {
            VASTVideoView vASTVideoView = this.f35714a.get();
            if (vASTVideoView != null && z && vASTVideoView.N.trackingEvents != null && !vASTVideoView.N.trackingEvents.isEmpty()) {
                vASTVideoView.a(vASTVideoView.N.trackingEvents.get(VASTParser.TrackableEvent.creativeView), 0);
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTVideoView$VASTImpressionViewabilityListener.class */
    static class VASTImpressionViewabilityListener implements ViewabilityWatcher.ViewabilityListener {

        /* renamed from: a  reason: collision with root package name */
        WeakReference<VASTVideoView> f35715a;

        VASTImpressionViewabilityListener(VASTVideoView vASTVideoView) {
            this.f35715a = new WeakReference<>(vASTVideoView);
        }

        @Override // com.verizon.ads.support.utils.ViewabilityWatcher.ViewabilityListener
        public void onViewableChanged(boolean z) {
            VASTVideoView vASTVideoView = this.f35715a.get();
            if (vASTVideoView != null && z) {
                VASTVideoView.a(vASTVideoView);
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/verizon/ads/vastcontroller/VASTVideoView$VASTVideoViewabilityListener.class */
    static class VASTVideoViewabilityListener implements ViewabilityWatcher.ViewabilityListener {

        /* renamed from: a  reason: collision with root package name */
        boolean f35716a = false;

        /* renamed from: b  reason: collision with root package name */
        WeakReference<VASTVideoView> f35717b;

        /* renamed from: c  reason: collision with root package name */
        WeakReference<VideoPlayer> f35718c;

        VASTVideoViewabilityListener(VASTVideoView vASTVideoView, VideoPlayer videoPlayer) {
            this.f35717b = new WeakReference<>(vASTVideoView);
            this.f35718c = new WeakReference<>(videoPlayer);
        }

        @Override // com.verizon.ads.support.utils.ViewabilityWatcher.ViewabilityListener
        public void onViewableChanged(boolean z) {
            VideoPlayer videoPlayer = this.f35718c.get();
            VASTVideoView vASTVideoView = this.f35717b.get();
            if (vASTVideoView != null && videoPlayer != null) {
                if (z) {
                    vASTVideoView.a(vASTVideoView.a(VASTParser.TrackableEvent.creativeView), 0);
                    if (vASTVideoView.f35709d != null) {
                        vASTVideoView.a(vASTVideoView.f35709d.linearAd.trackingEvents.get(VASTParser.TrackableEvent.creativeView), 0);
                    }
                }
                if (!z && videoPlayer.getState() == 4) {
                    this.f35716a = true;
                    videoPlayer.pause();
                } else if (this.f35716a) {
                    VASTVideoView.c(vASTVideoView);
                    this.f35716a = false;
                }
            }
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        l = arrayList;
        arrayList.add("image/bmp");
        arrayList.add("image/gif");
        arrayList.add("image/jpeg");
        arrayList.add("image/png");
    }

    public VASTVideoView(Context context, VASTParser.InLineAd inLineAd, List<VASTParser.WrapperAd> list) {
        super(context);
        this.D = inLineAd;
        this.f35706a = list;
        setBackgroundColor(-16777216);
        setId(R.id.vas_vast_video_view);
        if (g()) {
            this.P = 1;
        } else {
            this.P = 2;
        }
        this.O = Collections.synchronizedSet(new HashSet());
        this.G = new ViewabilityWatcher(this, new VASTImpressionViewabilityListener(this));
        FrameLayout frameLayout = new FrameLayout(getContext());
        addView(frameLayout, new RelativeLayout.LayoutParams(-1, -1));
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.u = frameLayout2;
        frameLayout2.setTag("mmVastVideoView_backgroundFrame");
        this.u.setVisibility(8);
        frameLayout.addView(this.u, new FrameLayout.LayoutParams(-1, -1));
        Component component = ComponentRegistry.getComponent("video/player-v2", context, null, new Object[0]);
        if (!(component instanceof VideoPlayer)) {
            j.e("Cannot load videoPlayerView. A compatible video player component has not been registered.");
            LoadListener loadListener = this.r;
            if (loadListener != null) {
                loadListener.onComplete(new ErrorInfo(k, "Cannot load videoPlayerView. A compatible video player component has not been registered.", 4));
                return;
            }
            return;
        }
        this.f = (VideoPlayer) component;
        VideoPlayerView videoPlayerView = new VideoPlayerView(getContext());
        this.e = videoPlayerView;
        videoPlayerView.bindPlayer(this.f);
        this.e.setPlayButtonEnabled(false);
        this.e.setReplayButtonEnabled(false);
        this.e.setMuteToggleEnabled(false);
        this.f.setVolume(i() ? 1.0f : BitmapDescriptorFactory.HUE_RED);
        this.e.setTag("mmVastVideoView_videoView");
        this.f.registerListener(this);
        this.F = new ViewabilityWatcher(this.e, new VASTVideoViewabilityListener(this, this.f));
        l();
        VASTParser.MediaFile mediaFile = this.M;
        boolean z = mediaFile != null && mediaFile.width <= mediaFile.height;
        this.K = z;
        if (z) {
            this.D.mmExtension = null;
        }
        addView(this.e, k());
        AdChoicesButton adChoicesButton = new AdChoicesButton(context);
        this.y = adChoicesButton;
        adChoicesButton.setId(R.id.vas_vast_adchoices_button);
        addView(this.y);
        FrameLayout frameLayout3 = new FrameLayout(context);
        this.v = frameLayout3;
        frameLayout3.setTag("mmVastVideoView_endCardContainer");
        this.v.setVisibility(8);
        this.E = new ViewabilityWatcher(this.v, new VASTEndCardViewabilityListener(this));
        this.G.startWatching();
        this.F.startWatching();
        this.E.startWatching();
        frameLayout.addView(this.v, new FrameLayout.LayoutParams(-1, -1));
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setId(R.id.vas_vast_video_control_buttons);
        int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.vas_control_button_margin);
        ImageView imageView = new ImageView(context);
        this.w = imageView;
        imageView.setImageDrawable(getResources().getDrawable(R.drawable.verizon_ads_sdk_vast_close));
        this.w.setVisibility(8);
        this.w.setOnClickListener(new View.OnClickListener() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$_a2PhojU4cXUjGR9IJG30RaPfvA
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VASTVideoView.this.f(view);
            }
        });
        this.w.setTag("mmVastVideoView_closeButton");
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(getResources().getDimensionPixelSize(R.dimen.vas_control_button_width), getResources().getDimensionPixelSize(R.dimen.vas_control_button_height));
        layoutParams.addRule(10);
        layoutParams.addRule(11);
        layoutParams.setMargins(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        relativeLayout.addView(this.w, layoutParams);
        ImageView imageView2 = new ImageView(context);
        this.x = imageView2;
        imageView2.setImageDrawable(getResources().getDrawable(R.drawable.verizon_ads_sdk_vast_skip));
        this.x.setTag("mmVastVideoView_skipButton");
        this.x.setEnabled(false);
        this.x.setVisibility(4);
        TextView textView = new TextView(context);
        this.B = textView;
        textView.setBackground(getResources().getDrawable(R.drawable.verizon_ads_sdk_vast_opacity));
        this.B.setTextColor(getResources().getColor(17170443));
        this.B.setTypeface(null, 1);
        this.B.setGravity(17);
        this.B.setVisibility(4);
        this.B.setTag("mmVastVideoView_countdown");
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(getResources().getDimensionPixelSize(R.dimen.vas_control_button_width), getResources().getDimensionPixelSize(R.dimen.vas_control_button_height));
        layoutParams2.addRule(10);
        layoutParams2.addRule(11);
        layoutParams2.setMargins(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        relativeLayout.addView(this.x, layoutParams2);
        relativeLayout.addView(this.B, layoutParams2);
        ImageView imageView3 = new ImageView(context);
        this.z = imageView3;
        imageView3.setImageDrawable(getResources().getDrawable(R.drawable.verizon_ads_sdk_vast_replay));
        this.z.setVisibility(8);
        this.z.setOnClickListener(new View.OnClickListener() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$eQvpOrBb_eKvm6AWKVTOWFp2h3Q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VASTVideoView.this.e(view);
            }
        });
        this.z.setTag("mmVastVideoView_replayButton");
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(getResources().getDimensionPixelSize(R.dimen.vas_control_button_width), getResources().getDimensionPixelSize(R.dimen.vas_control_button_height));
        layoutParams3.addRule(10);
        layoutParams3.addRule(9);
        layoutParams3.setMargins(dimensionPixelSize, dimensionPixelSize, dimensionPixelSize, dimensionPixelSize);
        relativeLayout.addView(this.z, layoutParams3);
        ToggleButton toggleButton = new ToggleButton(context);
        this.A = toggleButton;
        toggleButton.setText("");
        this.A.setTextOff("");
        this.A.setTextOn("");
        this.A.setTag("mmVastVideoView_muteToggleButton");
        this.A.setBackgroundResource(R.drawable.verizon_ads_sdk_vast_mute_toggle);
        this.A.setChecked(i());
        this.A.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$5YgPC_R6mEu55nWsYQLBtia6JTU
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z2) {
                VASTVideoView.this.a(compoundButton, z2);
            }
        });
        relativeLayout.addView(this.A, layoutParams3);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams4.addRule(3, R.id.vas_vast_adchoices_button);
        addView(relativeLayout, layoutParams4);
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, -2);
        layoutParams5.addRule(12);
        LinearLayout linearLayout = new LinearLayout(getContext());
        this.C = linearLayout;
        addView(linearLayout, layoutParams5);
        this.q = 0;
    }

    private int a(int i) {
        int i2 = Configuration.getInt("com.verizon.ads.vast", "vastSkipOffsetMax", 7500);
        int i3 = Configuration.getInt("com.verizon.ads.vast", "vastSkipOffsetMin", 7500);
        int i4 = i3;
        if (i3 > i2) {
            i4 = i2;
        }
        return Math.min(Math.max(Math.min(i2, this.I), i4), i);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ int a(VASTParser.Button button, VASTParser.Button button2) {
        return button.position - button2.position;
    }

    private static int a(VASTParser.StaticResource staticResource) {
        int i;
        if (!(staticResource == null || staticResource.backgroundColor == null)) {
            try {
                i = Color.parseColor(staticResource.backgroundColor);
            } catch (IllegalArgumentException e) {
                Logger logger = j;
                logger.w("Invalid hex color format specified = " + staticResource.backgroundColor);
            }
            return i;
        }
        i = -16777216;
        return i;
    }

    private int a(String str) {
        return a(str, b(this.f35709d.linearAd.duration), -1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(String str, int i, int i2) {
        int i3 = i2;
        if (!TextUtils.isEmpty(str)) {
            String trim = str.trim();
            try {
                if (trim.contains("%")) {
                    String replace = trim.replace("%", "");
                    if (!TextUtils.isEmpty(replace)) {
                        i3 = (int) ((Float.parseFloat(replace.trim()) / 100.0f) * i);
                    } else {
                        j.e("VAST time is missing percent value, parse value was: ".concat(String.valueOf(trim)));
                        i3 = i2;
                    }
                } else {
                    i3 = b(trim);
                }
            } catch (NumberFormatException e) {
                j.e("VAST time has invalid number format, parse value was: ".concat(String.valueOf(trim)));
                i3 = i2;
            }
        }
        return i3;
    }

    private static List<j> a(VASTParser.AdVerifications adVerifications) {
        ArrayList arrayList = new ArrayList();
        if (!(adVerifications == null || adVerifications.verifications == null)) {
            for (VASTParser.Verification verification : adVerifications.verifications) {
                VASTParser.JavaScriptResource javaScriptResource = verification.javaScriptResource;
                if (javaScriptResource != null && !TextUtils.isEmpty(javaScriptResource.uri) && "omid".equalsIgnoreCase(javaScriptResource.apiFramework)) {
                    try {
                        if (TextUtils.isEmpty(verification.vendor) || TextUtils.isEmpty(verification.verificationParameters)) {
                            arrayList.add(j.a(new URL(javaScriptResource.uri)));
                        } else {
                            arrayList.add(j.a(verification.vendor, new URL(javaScriptResource.uri), verification.verificationParameters));
                        }
                    } catch (Exception e) {
                        j.e("Error processing verification node.", e);
                    }
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public List<VASTParser.TrackingEvent> a(VASTParser.TrackableEvent trackableEvent) {
        List<VASTParser.TrackingEvent> list;
        ArrayList arrayList = new ArrayList();
        List<VASTParser.WrapperAd> list2 = this.f35706a;
        if (list2 != null) {
            for (VASTParser.WrapperAd wrapperAd : list2) {
                if (wrapperAd.creatives != null) {
                    for (VASTParser.Creative creative : wrapperAd.creatives) {
                        if (!(creative.linearAd == null || (list = creative.linearAd.trackingEvents.get(trackableEvent)) == null)) {
                            arrayList.addAll(list);
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(float f) {
        a aVar = this.h;
        if (aVar != null) {
            try {
                aVar.a(f);
                j.d("Fired OMSDK volume change event.");
            } catch (Throwable th) {
                j.e("Error occurred firing OMSDK volume change event.", th);
            }
        }
    }

    private static void a(View view) {
        if (view != null) {
            view.setOnClickListener(_$$Lambda$VASTVideoView$xJeFjwsEFdK2KVfFDop0DGFamtk.INSTANCE);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(CompoundButton compoundButton, boolean z) {
        this.f.setVolume(z ? 1.0f : BitmapDescriptorFactory.HUE_RED);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(ImageView imageView, HttpUtils.Response response) {
        imageView.setImageBitmap(response.bitmap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(VideoPlayer videoPlayer) {
        if (!this.m && this.h != null) {
            try {
                this.m = true;
                this.h.a(getDuration(), videoPlayer.getVolume());
                j.d("Fired OMSDK start event.");
            } catch (Throwable th) {
                j.e("Error occurred firing OMSDK start event.", th);
            }
        }
        updateComponentVisibility();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(HttpUtils.Response response) {
        ImageView imageView = new ImageView(getContext());
        imageView.setImageBitmap(response.bitmap);
        imageView.setOnClickListener(new View.OnClickListener() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$BC_l1cp6iGgp2wUNz58FFaYBg_s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VASTVideoView.this.b(view);
            }
        });
        imageView.setTag("mmVastVideoView_companionImageView");
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        this.v.setBackgroundColor(a(this.N.staticResource));
        this.v.addView(imageView, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(VASTParser.Background background, final ImageView imageView) {
        final HttpUtils.Response bitmapFromGetRequest = HttpUtils.getBitmapFromGetRequest(background.staticResource.uri);
        if (bitmapFromGetRequest.code == 200) {
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$_4fCt9KsgAz8onKWFKwB2QVwE_Q
                @Override // java.lang.Runnable
                public final void run() {
                    VASTVideoView.a(imageView, bitmapFromGetRequest);
                }
            });
        }
    }

    private void a(VASTParser.InLineAd inLineAd, List<VASTParser.WrapperAd> list) {
        if (this.g == null) {
            j.d("Preparing OMSDK");
            ArrayList arrayList = new ArrayList(a(inLineAd.adVerifications));
            for (VASTParser.WrapperAd wrapperAd : list) {
                arrayList.addAll(a(wrapperAd.adVerifications));
            }
            if (arrayList.isEmpty()) {
                j.e("OMSDK is disabled - verification script resources is empty");
            } else if (a(arrayList)) {
                try {
                    this.i = com.iab.omid.library.verizonmedia.adsession.a.a(this.g);
                    this.h = a.a(this.g);
                    this.g.a(this);
                    j.d("Starting the OMSDK Ad session.");
                    this.g.a();
                } catch (Throwable th) {
                    j.e("OMSDK is disabled - error initializing OMSDK Ad Session.", th);
                    this.g = null;
                    this.i = null;
                    this.h = null;
                }
            }
        }
    }

    private static void a(VASTParser.VideoClicks videoClicks, boolean z) {
        if (videoClicks != null) {
            ArrayList arrayList = new ArrayList();
            a(arrayList, videoClicks.clickTrackingUrls, "video click tracker");
            if (z) {
                a(arrayList, videoClicks.customClickUrls, "custom click");
            }
            TrackingEvent.fireEvents(arrayList);
        }
    }

    static /* synthetic */ void a(VASTVideoView vASTVideoView) {
        com.iab.omid.library.verizonmedia.adsession.a aVar = vASTVideoView.i;
        if (aVar != null) {
            try {
                aVar.a();
                j.d("Fired OMSDK impression event.");
            } catch (Throwable th) {
                j.e("Error occurred firing OMSDK Impression event.", th);
            }
        }
        VASTParser.InLineAd inLineAd = vASTVideoView.D;
        if (!(inLineAd == null || inLineAd.impressions == null)) {
            vASTVideoView.G.stopWatching();
            ArrayList arrayList = new ArrayList();
            a(arrayList, vASTVideoView.D.impressions, "impression");
            List<VASTParser.WrapperAd> list = vASTVideoView.f35706a;
            if (list != null) {
                for (VASTParser.WrapperAd wrapperAd : list) {
                    a(arrayList, wrapperAd.impressions, "wrapper immpression");
                }
            }
            TrackingEvent.fireEvents(arrayList);
        }
    }

    static /* synthetic */ void a(VASTVideoView vASTVideoView, int i) {
        for (int i2 = 0; i2 < vASTVideoView.C.getChildCount(); i2++) {
            View childAt = vASTVideoView.C.getChildAt(i2);
            if (childAt instanceof FrameLayout) {
                View childAt2 = ((FrameLayout) childAt).getChildAt(0);
                if (childAt2.getVisibility() != 0 && (childAt2 instanceof ImageButton)) {
                    final ImageButton imageButton = (ImageButton) childAt2;
                    if (i >= imageButton.a()) {
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

    static /* synthetic */ void a(final VASTVideoView vASTVideoView, int i, int i2) {
        int a2 = vASTVideoView.a(i2);
        final int ceil = i > a2 ? 0 : (int) Math.ceil((a2 - i) / 1000.0d);
        if (ceil <= 0) {
            vASTVideoView.n = true;
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$OTYmvzt5tUzwjV7e_DBHUJnLIpM
                @Override // java.lang.Runnable
                public final void run() {
                    VASTVideoView.this.c();
                }
            });
        } else if (ceil != vASTVideoView.L) {
            vASTVideoView.L = ceil;
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$Q_CUEeyVlwHoaafwiM_9uKqDN30
                @Override // java.lang.Runnable
                public final void run() {
                    VASTVideoView.this.b(ceil);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(List<VASTParser.TrackingEvent> list, int i) {
        if (list != null) {
            ArrayList arrayList = new ArrayList();
            for (VASTParser.TrackingEvent trackingEvent : list) {
                if (trackingEvent != null && !TextUtils.isEmpty(trackingEvent.url) && !this.O.contains(trackingEvent)) {
                    this.O.add(trackingEvent);
                    arrayList.add(new VideoTrackingEvent(trackingEvent.event.name(), trackingEvent.url, i));
                }
            }
            TrackingEvent.fireEvents(arrayList);
        }
    }

    private static void a(List<TrackingEvent> list, List<String> list2, String str) {
        if (list2 != null) {
            for (String str2 : list2) {
                if (!TextUtils.isEmpty(str2)) {
                    list.add(new TrackingEvent(str, str2));
                }
            }
        }
    }

    private static void a(List<VASTParser.VideoClicks> list, boolean z) {
        if (!(list == null || list.isEmpty())) {
            ArrayList arrayList = new ArrayList();
            for (VASTParser.VideoClicks videoClicks : list) {
                a(arrayList, videoClicks.clickTrackingUrls, "wrapper video click tracker");
                if (z) {
                    a(arrayList, videoClicks.customClickUrls, "wrapper custom click tracker");
                }
            }
            TrackingEvent.fireEvents(arrayList);
        }
    }

    private void a(final boolean z) {
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$OGiWpkeP_VtQnSSw8pEx6Lcl79I
            @Override // java.lang.Runnable
            public final void run() {
                VASTVideoView.this.b(z);
            }
        });
    }

    private static boolean a(VASTParser.Icon icon) {
        if (icon != null && icon.program != null && icon.program.equalsIgnoreCase("adchoices") && icon.iconClicks != null && !TextUtils.isEmpty(icon.iconClicks.clickThrough) && icon.staticResource != null && !TextUtils.isEmpty(icon.staticResource.uri)) {
            return true;
        }
        if (!Logger.isLogLevelEnabled(3)) {
            return false;
        }
        j.d("Invalid adchoices icon: ".concat(String.valueOf(icon)));
        return false;
    }

    private static boolean a(VASTParser.VideoClicks videoClicks) {
        if (videoClicks != null) {
            return !TextUtils.isEmpty(videoClicks.clickThrough) || !videoClicks.customClickUrls.isEmpty();
        }
        return false;
    }

    private boolean a(List<j> list) {
        OpenMeasurementService measurementService = OMSDKPlugin.getMeasurementService();
        if (measurementService == null) {
            j.d("OMSDK is disabled");
            return false;
        }
        try {
            c a2 = c.a(measurementService.getPartner(), measurementService.getOMSDKJS(), list);
            e eVar = e.VIDEO;
            g gVar = g.OTHER;
            h hVar = h.NATIVE;
            this.g = b.a(AdSessionConfiguration.createAdSessionConfiguration(eVar, gVar, hVar, hVar, false), a2);
            return true;
        } catch (IOException e) {
            j.e("OMSDK is disabled - error occurred loading the OMSDK JS", e);
            return false;
        } catch (Throwable th) {
            j.e("OMSDK is disabled - error initializing OMSDK Ad Session.", th);
            return false;
        }
    }

    private static int b(String str) {
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
                j.e("VAST time has invalid HHMMSS format, parse value was: ".concat(String.valueOf(trim)));
            } else {
                j.e("VAST time has invalid format, parse value was: ".concat(String.valueOf(trim)));
            }
        }
        i = -1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(int i) {
        a(this.B);
        this.B.setVisibility(0);
        this.B.setText(String.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        h();
        if (!TextUtils.isEmpty(this.N.companionClickThrough)) {
            ActivityUtils.startActivityFromUrl(getContext(), this.N.companionClickThrough);
        }
        if (this.N != null) {
            ArrayList<VASTParser.CompanionAd> arrayList = new ArrayList();
            List<VASTParser.WrapperAd> list = this.f35706a;
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
            a(arrayList2, this.N.companionClickTracking, "tracking");
            for (VASTParser.CompanionAd companionAd : arrayList) {
                a(arrayList2, companionAd.companionClickTracking, "wrapper tracking");
            }
            TrackingEvent.fireEvents(arrayList2);
        }
    }

    static /* synthetic */ void b(VASTVideoView vASTVideoView, int i) {
        ArrayList<VASTParser.TrackingEvent> arrayList = new ArrayList();
        List<VASTParser.TrackingEvent> list = vASTVideoView.f35709d.linearAd.trackingEvents.get(VASTParser.TrackableEvent.progress);
        if (list != null) {
            arrayList.addAll(list);
        }
        arrayList.addAll(vASTVideoView.a(VASTParser.TrackableEvent.progress));
        for (VASTParser.TrackingEvent trackingEvent : arrayList) {
            VASTParser.ProgressEvent progressEvent = (VASTParser.ProgressEvent) trackingEvent;
            int a2 = vASTVideoView.a(progressEvent.offset);
            if (a2 == -1) {
                if (Logger.isLogLevelEnabled(3)) {
                    Logger logger = j;
                    logger.d("Progress event could not be fired because the time offset is invalid. url = " + progressEvent.url + ", offset = " + progressEvent.offset);
                }
                vASTVideoView.O.add(progressEvent);
            } else if (TextUtils.isEmpty(progressEvent.url)) {
                if (Logger.isLogLevelEnabled(3)) {
                    Logger logger2 = j;
                    logger2.d("Progress event could not be fired because the url is empty. offset = " + progressEvent.offset);
                }
                vASTVideoView.O.add(progressEvent);
            } else if (!vASTVideoView.O.contains(trackingEvent) && i >= a2) {
                vASTVideoView.a(Collections.singletonList(progressEvent), i);
            }
        }
    }

    static /* synthetic */ void b(VASTVideoView vASTVideoView, int i, int i2) {
        int i3 = i2 / 4;
        if (i >= i3 && vASTVideoView.J <= 0) {
            vASTVideoView.J = 1;
            vASTVideoView.a(vASTVideoView.a(VASTParser.TrackableEvent.firstQuartile), i);
            vASTVideoView.a(vASTVideoView.f35709d.linearAd.trackingEvents.get(VASTParser.TrackableEvent.firstQuartile), i);
            a aVar = vASTVideoView.h;
            if (aVar != null) {
                try {
                    aVar.a();
                    j.d("Fired OMSDK Q1 event.");
                } catch (Throwable th) {
                    j.e("Error occurred firing OMSDK Q1 event.", th);
                }
            }
        }
        if (i >= i3 * 2 && vASTVideoView.J < 2) {
            vASTVideoView.J = 2;
            vASTVideoView.a(vASTVideoView.a(VASTParser.TrackableEvent.midpoint), i);
            vASTVideoView.a(vASTVideoView.f35709d.linearAd.trackingEvents.get(VASTParser.TrackableEvent.midpoint), i);
            a aVar2 = vASTVideoView.h;
            if (aVar2 != null) {
                try {
                    aVar2.b();
                    j.d("Fired OMSDK midpoint event.");
                } catch (Throwable th2) {
                    j.e("Error occurred firing OMSDK midpoint event.", th2);
                }
            }
        }
        if (i >= i3 * 3 && vASTVideoView.J < 3) {
            vASTVideoView.J = 3;
            vASTVideoView.a(vASTVideoView.a(VASTParser.TrackableEvent.thirdQuartile), i);
            vASTVideoView.a(vASTVideoView.f35709d.linearAd.trackingEvents.get(VASTParser.TrackableEvent.thirdQuartile), i);
            a aVar3 = vASTVideoView.h;
            if (aVar3 != null) {
                try {
                    aVar3.c();
                    j.d("Fired OMSDK Q3 event.");
                } catch (Throwable th3) {
                    j.e("Error occurred firing OMSDK q3 event.", th3);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(boolean z) {
        setKeepScreenOn(z);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        this.B.setVisibility(8);
        this.x.setEnabled(true);
        this.x.setVisibility(0);
        this.x.setOnClickListener(new View.OnClickListener() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$3e7FjZd_mRvi3H3_6FCmL7zxpk4
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                VASTVideoView.this.c(view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(View view) {
        d();
    }

    static /* synthetic */ void c(final VASTVideoView vASTVideoView) {
        vASTVideoView.f.play();
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$NBs3xVdqj2ttG_RSnp4sSOOXMoE
            @Override // java.lang.Runnable
            public final void run() {
                VASTVideoView.this.u();
            }
        });
    }

    private void d() {
        a aVar = this.h;
        if (aVar != null) {
            try {
                aVar.g();
                j.d("Fired OMSDK skipped event.");
            } catch (Throwable th) {
                j.e("Error occurred firing OMSDK skipped event.", th);
            }
        }
        if (this.f35709d != null) {
            a(a(VASTParser.TrackableEvent.skip), 0);
            a(this.f35709d.linearAd.trackingEvents.get(VASTParser.TrackableEvent.skip), 0);
        }
        e();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void d(View view) {
        j.d("Clicked on an unclickable region.");
    }

    private void e() {
        View childAt;
        f();
        this.q = 2;
        this.B.setVisibility(8);
        this.y.a();
        if (this.N == null || this.v.getChildCount() <= 0) {
            j();
            return;
        }
        this.z.setVisibility(0);
        this.A.setVisibility(8);
        this.x.setVisibility(8);
        this.w.setVisibility(0);
        for (int i = 0; i < this.C.getChildCount(); i++) {
            View childAt2 = this.C.getChildAt(i);
            if ((childAt2 instanceof FrameLayout) && (childAt = ((FrameLayout) childAt2).getChildAt(0)) != null) {
                childAt.setVisibility(0);
            }
        }
        updateComponentVisibility();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(View view) {
        h();
        this.q = 1;
        updateComponentVisibility();
        this.z.setVisibility(8);
        this.A.setVisibility(0);
        this.w.setVisibility(8);
        this.x.setVisibility(0);
        AdChoicesButton adChoicesButton = this.y;
        adChoicesButton.a();
        adChoicesButton.f = 0;
        adChoicesButton.e = 0;
        adChoicesButton.f35670d = AdChoicesButton.AdChoicesButtonState.READY;
        this.f.replay();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        b bVar = this.g;
        if (bVar != null) {
            bVar.b();
            this.g = null;
            j.d("Finished OMSDK Ad Session.");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(View view) {
        j();
    }

    private boolean g() {
        return getResources().getConfiguration().orientation != 2;
    }

    private void h() {
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$DAsSF97v6ppTfyRDpJ4AQgOsttM
            @Override // java.lang.Runnable
            public final void run() {
                VASTVideoView.this.t();
            }
        });
    }

    private static boolean i() {
        return Configuration.getBoolean(BuildConfig.LIBRARY_PACKAGE_NAME, "autoPlayAudioEnabled", false);
    }

    private void j() {
        if (this.f35709d != null) {
            a(a(VASTParser.TrackableEvent.closeLinear), 0);
            a(this.f35709d.linearAd.trackingEvents.get(VASTParser.TrackableEvent.closeLinear), 0);
        }
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$YgKGMf6P_AusLo8Ial0bSKQEhJk
            @Override // java.lang.Runnable
            public final void run() {
                VASTVideoView.this.q();
            }
        });
    }

    private ViewGroup.LayoutParams k() {
        RelativeLayout.LayoutParams layoutParams;
        if (!g() || this.K) {
            layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        } else {
            layoutParams = new RelativeLayout.LayoutParams(-1, -2);
            layoutParams.addRule(3, R.id.vas_vast_video_control_buttons);
        }
        return layoutParams;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00ee  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0175 A[EDGE_INSN: B:65:0x0175->B:54:0x0175 ?: BREAK  , SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void l() {
        /*
            Method dump skipped, instructions count: 390
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.verizon.ads.vastcontroller.VASTVideoView.l():void");
    }

    private void m() {
        if (this.D.creatives != null) {
            for (VASTParser.Creative creative : this.D.creatives) {
                if (creative.companionAds != null && !creative.companionAds.isEmpty()) {
                    Iterator<VASTParser.CompanionAd> it2 = creative.companionAds.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            break;
                        }
                        VASTParser.CompanionAd next = it2.next();
                        if (!(next == null || next.width == null || next.width.intValue() < 300 || next.height == null || next.height.intValue() < 250 || next.staticResource == null || TextUtils.isEmpty(next.staticResource.uri) || !l.contains(next.staticResource.creativeType))) {
                            this.N = next;
                            break;
                        }
                    }
                }
                if (!(this.N == null || creative == this.f35709d)) {
                    break;
                }
            }
        }
        if (!(this.N == null || this.N.staticResource == null || TextUtils.isEmpty(this.N.staticResource.uri))) {
            ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$s_3SmqJeFKMueTHnsa_XrumCW5Q
                @Override // java.lang.Runnable
                public final void run() {
                    VASTVideoView.this.p();
                }
            });
        }
    }

    private void n() {
        if (!(this.D.mmExtension == null || this.D.mmExtension.buttons == null)) {
            Collections.sort(this.D.mmExtension.buttons, _$$Lambda$VASTVideoView$4C5Nnr3ePkEzEnHdxemFld1XHPE.INSTANCE);
            int i = 0;
            int dimensionPixelSize = getResources().getDimensionPixelSize(R.dimen.vas_ad_button_width);
            int dimensionPixelSize2 = getResources().getDimensionPixelSize(R.dimen.vas_ad_button_height);
            for (VASTParser.Button button : this.D.mmExtension.buttons) {
                if (i >= 3) {
                    return;
                }
                if (button.staticResource != null && !TextUtils.isEmpty(button.staticResource.uri) && !TextUtils.isEmpty(button.staticResource.creativeType) && button.staticResource.creativeType.trim().equalsIgnoreCase("image/png")) {
                    i++;
                    ImageButton imageButton = new ImageButton(getContext(), button, getDuration());
                    imageButton.setInteractionListener(this.s);
                    imageButton.setTag("mmVastVideoView_mmExtensionButton_".concat(String.valueOf(i)));
                    FrameLayout frameLayout = new FrameLayout(getContext());
                    frameLayout.addView(imageButton, new FrameLayout.LayoutParams(-1, -1));
                    LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(dimensionPixelSize, dimensionPixelSize2, g() ? 1.0f : 0.0f);
                    if (!g()) {
                        layoutParams.leftMargin = getResources().getDimensionPixelSize(R.dimen.vas_ad_button_padding_left);
                    }
                    this.C.addView(frameLayout, layoutParams);
                }
            }
        }
    }

    private Map<String, VASTParser.Icon> o() {
        HashMap hashMap = new HashMap();
        List<VASTParser.WrapperAd> list = this.f35706a;
        if (list != null) {
            for (VASTParser.WrapperAd wrapperAd : list) {
                if (wrapperAd.creatives != null) {
                    for (VASTParser.Creative creative : wrapperAd.creatives) {
                        if (!(creative.linearAd == null || creative.linearAd.icons == null)) {
                            for (VASTParser.Icon icon : creative.linearAd.icons) {
                                if (a(icon)) {
                                    hashMap.put(icon.program.toLowerCase(Locale.ROOT), icon);
                                }
                            }
                        }
                    }
                }
            }
        }
        if (!(this.f35709d == null || this.f35709d.linearAd.icons == null)) {
            for (VASTParser.Icon icon2 : this.f35709d.linearAd.icons) {
                if (a(icon2)) {
                    hashMap.put(icon2.program.toLowerCase(Locale.ROOT), icon2);
                }
            }
        }
        return hashMap;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void p() {
        final HttpUtils.Response bitmapFromGetRequest = HttpUtils.getBitmapFromGetRequest(this.N.staticResource.uri);
        if (bitmapFromGetRequest != null && bitmapFromGetRequest.code == 200) {
            ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$VtmKrh7QihhLQXN9HcKiGBa9OuA
                @Override // java.lang.Runnable
                public final void run() {
                    VASTVideoView.this.a(bitmapFromGetRequest);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void q() {
        InteractionListener interactionListener = this.s;
        if (interactionListener != null) {
            interactionListener.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void r() {
        PlaybackListener playbackListener = this.t;
        if (playbackListener != null) {
            playbackListener.onComplete();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void s() {
        InteractionListener interactionListener = this.s;
        if (interactionListener != null) {
            interactionListener.onAdLeftApplication();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t() {
        InteractionListener interactionListener = this.s;
        if (interactionListener != null) {
            interactionListener.onClicked();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u() {
        a aVar = this.h;
        if (aVar != null) {
            try {
                aVar.f();
                j.d("Fired OMSDK resume event.");
            } catch (Throwable th) {
                j.e("Error occurred firing OMSDK resume event.", th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void v() {
        a aVar = this.h;
        if (aVar != null) {
            try {
                aVar.d();
                j.d("Fired OMSDK complete event.");
            } catch (Throwable th) {
                j.e("Error occurred firing OMSDK complete event.", th);
            }
        }
        e();
        setKeepScreenOn(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w() {
        a aVar = this.h;
        if (aVar != null) {
            try {
                aVar.e();
                j.d("Fired OMSDK pause event.");
            } catch (Throwable th) {
                j.e("Error occurred firing OMSDK pause event.", th);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void x() {
        this.I = Math.max(0, a(this.f35709d.linearAd.skipOffset));
        if (this.h != null) {
            try {
                this.i.a(com.iab.omid.library.verizonmedia.adsession.a.c.a(a(getDuration()) / 1000.0f, true, com.iab.omid.library.verizonmedia.adsession.a.b.STANDALONE));
                j.d("Fired OMSDK loaded event.");
            } catch (Throwable th) {
                j.e("Error recording load event with OMSDK.", th);
            }
        }
        if (!this.o) {
            this.o = true;
            LoadListener loadListener = this.r;
            if (loadListener != null) {
                loadListener.onComplete(null);
            }
        }
    }

    public int getCurrentPosition() {
        if (this.e == null) {
            return -1;
        }
        return this.f.getCurrentPosition();
    }

    public int getDuration() {
        if (this.f35709d == null || this.f35709d.linearAd == null) {
            return -1;
        }
        return b(this.f35709d.linearAd.duration);
    }

    public void load(LoadListener loadListener, int i) {
        File filesDir;
        this.r = loadListener;
        if (this.M != null) {
            if (getContext().getFilesDir() == null) {
                j.e("Cannot access video cache directory. Storage is not available.");
                if (loadListener != null) {
                    loadListener.onComplete(new ErrorInfo(k, "Cannot access video cache directory. Storage is not available.", 1));
                    return;
                }
                return;
            }
            File file = new File(filesDir.getAbsolutePath() + File.separator + "_vasads_video_cache");
            if (!file.exists()) {
                if (file.mkdirs()) {
                    j.d("Found existing video cache directory.");
                } else {
                    j.d("Created video cache directory.");
                }
            }
            File[] listFiles = file.listFiles();
            if (listFiles != null) {
                for (File file2 : listFiles) {
                    if (file2.isFile() && System.currentTimeMillis() - file2.lastModified() > 43200000 && !file2.delete()) {
                        j.w(String.format("Failed to deleted expired video: %s", file2));
                    }
                }
            }
            IOUtils.downloadFile(this.M.url.trim(), Integer.valueOf(i), file, new AnonymousClass1(loadListener));
            n();
            if (!(this.D.mmExtension == null || this.D.mmExtension.background == null)) {
                final VASTParser.Background background = this.D.mmExtension.background;
                if (background.staticResource != null && !TextUtils.isEmpty(background.staticResource.uri)) {
                    final ImageView imageView = new ImageView(getContext());
                    imageView.setTag("mmVastVideoView_backgroundImageView");
                    this.u.addView(imageView);
                    this.u.setBackgroundColor(a(background.staticResource));
                    ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$vs4kyFOfi2D2PVj2cqz9UaYWgzE
                        @Override // java.lang.Runnable
                        public final void run() {
                            VASTVideoView.a(VASTParser.Background.this, imageView);
                        }
                    });
                }
            }
            m();
            FrameLayout frameLayout = new FrameLayout(getContext());
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, ViewUtils.convertPixelsToDips(getContext(), (int) DrawableConstants.CtaButton.WIDTH_DIPS));
            a(frameLayout);
            this.e.addView(frameLayout, layoutParams);
            if (this.p == null) {
                this.p = o();
            }
            VASTParser.Icon icon = this.p.get("adchoices");
            AdChoicesButton adChoicesButton = this.y;
            int b2 = b(this.f35709d.linearAd.duration);
            if (icon != null) {
                adChoicesButton.h = icon;
                adChoicesButton.g = a(icon.offset, b2, 0);
                adChoicesButton.f35667a = a(icon.duration, b2, 3600000);
                adChoicesButton.setOnClickListener(adChoicesButton);
            }
            a(this.D, this.f35706a);
            return;
        }
        j.d("Ad load failed because it did not contain a compatible media file.");
        if (loadListener != null) {
            loadListener.onComplete(new ErrorInfo(k, "Ad load failed because it did not contain a compatible media file.", 3));
        }
    }

    @Override // com.verizon.ads.vastcontroller.VASTController.VideoViewActions
    public boolean onBackPressed() {
        if (this.n) {
            d();
        }
        return this.n;
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onClick(VideoPlayer videoPlayer) {
        boolean z;
        if (!a(this.f35707b)) {
            Iterator<VASTParser.VideoClicks> it2 = this.f35708c.iterator();
            while (true) {
                if (it2.hasNext()) {
                    if (a(it2.next())) {
                        z = true;
                        break;
                    }
                } else {
                    z = false;
                    break;
                }
            }
            if (!z) {
                return;
            }
        }
        h();
        VASTParser.VideoClicks videoClicks = this.f35707b;
        if (videoClicks == null || TextUtils.isEmpty(videoClicks.clickThrough)) {
            a(this.f35707b, true);
            a(this.f35708c, true);
            return;
        }
        ActivityUtils.startActivityFromUrl(getContext(), this.f35707b.clickThrough);
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$GVMkCMm8tzuXxWngpU_C1alnXMY
            @Override // java.lang.Runnable
            public final void run() {
                VASTVideoView.this.s();
            }
        });
        a(this.f35707b, false);
        a(this.f35708c, false);
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onComplete(VideoPlayer videoPlayer) {
        j.d("onComplete");
        if (this.f35709d != null) {
            a(a(VASTParser.TrackableEvent.complete), getDuration());
            a(this.f35709d.linearAd.trackingEvents.get(VASTParser.TrackableEvent.complete), getDuration());
        }
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$NnEQB1t2CwL_lnovSc45b6InEIw
            @Override // java.lang.Runnable
            public final void run() {
                VASTVideoView.this.v();
            }
        });
        ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$_qSwUYp6KLtcl0Gr0ZETXE9F6QQ
            @Override // java.lang.Runnable
            public final void run() {
                VASTVideoView.this.r();
            }
        });
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onError(VideoPlayer videoPlayer) {
        j.d("onError");
        a(false);
        LoadListener loadListener = this.r;
        if (loadListener != null) {
            loadListener.onComplete(new ErrorInfo(k, "VideoView error", -1));
        }
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onLoaded(VideoPlayer videoPlayer) {
        j.d("onLoaded");
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$88aWy_iw91A0uxa_gMY1pw8BKCw
            @Override // java.lang.Runnable
            public final void run() {
                VASTVideoView.this.x();
            }
        });
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onPaused(VideoPlayer videoPlayer) {
        j.d("onPaused");
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$OtC2eed093xBFDeq4mJ49WDrjYE
            @Override // java.lang.Runnable
            public final void run() {
                VASTVideoView.this.w();
            }
        });
        a(false);
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onPlay(final VideoPlayer videoPlayer) {
        synchronized (this) {
            j.d("onPlay");
            this.q = 1;
            post(new Runnable() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$vzb8kVNXuL7OQ_MHZp_zHYABJvs
                @Override // java.lang.Runnable
                public final void run() {
                    VASTVideoView.this.a(videoPlayer);
                }
            });
            a(true);
            if (this.f35709d != null) {
                a(a(VASTParser.TrackableEvent.start), 0);
                a(this.f35709d.linearAd.trackingEvents.get(VASTParser.TrackableEvent.start), 0);
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
                    if (VASTVideoView.this.C != null) {
                        VASTVideoView.a(VASTVideoView.this, i);
                    }
                    if (!VASTVideoView.this.n) {
                        VASTVideoView vASTVideoView = VASTVideoView.this;
                        VASTVideoView.a(vASTVideoView, i, vASTVideoView.getDuration());
                    }
                    if (VASTVideoView.this.y != null) {
                        final AdChoicesButton adChoicesButton = VASTVideoView.this.y;
                        int i3 = i;
                        if (adChoicesButton.h != null) {
                            if (adChoicesButton.f35670d == AdChoicesButton.AdChoicesButtonState.SHOWN && i3 > adChoicesButton.f && (i2 = i3 - adChoicesButton.f) <= 1500) {
                                adChoicesButton.e += i2;
                            }
                            adChoicesButton.f = i3;
                            if (adChoicesButton.f35670d != AdChoicesButton.AdChoicesButtonState.COMPLETE && adChoicesButton.e >= adChoicesButton.f35667a) {
                                adChoicesButton.a();
                            } else if (adChoicesButton.f35670d == AdChoicesButton.AdChoicesButtonState.READY && i3 >= adChoicesButton.g) {
                                adChoicesButton.f35670d = AdChoicesButton.AdChoicesButtonState.SHOWING;
                                ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.vastcontroller.AdChoicesButton.1
                                    @Override // java.lang.Runnable
                                    public void run() {
                                        AdChoicesButton.this.setVisibility(0);
                                    }
                                });
                                if (!adChoicesButton.f35669c) {
                                    adChoicesButton.f35669c = true;
                                    ThreadUtils.runOnWorkerThread(new Runnable() { // from class: com.verizon.ads.vastcontroller.AdChoicesButton.3
                                        @Override // java.lang.Runnable
                                        public void run() {
                                            final HttpUtils.Response bitmapFromGetRequest = HttpUtils.getBitmapFromGetRequest(AdChoicesButton.this.h.staticResource.uri);
                                            if (bitmapFromGetRequest != null && bitmapFromGetRequest.code == 200 && bitmapFromGetRequest.bitmap != null) {
                                                int dimensionPixelSize = AdChoicesButton.this.getResources().getDimensionPixelSize(R.dimen.vas_adchoices_icon_height);
                                                int height = bitmapFromGetRequest.bitmap.getHeight();
                                                if (height <= 0) {
                                                    AdChoicesButton.j.e("Invalid icon height: ".concat(String.valueOf(height)));
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
                                                        AdChoicesButton.this.b();
                                                    }
                                                });
                                            }
                                        }
                                    });
                                } else if (adChoicesButton.f35668b) {
                                    adChoicesButton.b();
                                }
                            }
                        }
                    }
                    if (VASTVideoView.this.f35709d != null) {
                        VASTVideoView vASTVideoView2 = VASTVideoView.this;
                        VASTVideoView.b(vASTVideoView2, i, vASTVideoView2.getDuration());
                        VASTVideoView.b(VASTVideoView.this, i);
                    }
                }
            });
        }
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onReady(final VideoPlayer videoPlayer) {
        j.d("onReady");
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
        j.d("onSeekCompleted");
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onUnloaded(VideoPlayer videoPlayer) {
        j.d("onUnloaded");
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onVideoSizeChanged(int i, int i2) {
        j.d(String.format("video size changed new width = %d, new height = %d", Integer.valueOf(i), Integer.valueOf(i2)));
    }

    @Override // com.verizon.ads.VideoPlayer.VideoPlayerListener
    public void onVolumeChanged(VideoPlayer videoPlayer, final float f) {
        j.d("onVolumeChanged");
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$wNclKFwydahnzifS9WpgZkfPD_0
            @Override // java.lang.Runnable
            public final void run() {
                VASTVideoView.this.a(f);
            }
        });
    }

    @Override // com.verizon.ads.vastcontroller.VASTController.VideoViewActions
    public void release() {
        ThreadUtils.postOnUiThread(new Runnable() { // from class: com.verizon.ads.vastcontroller._$$Lambda$VASTVideoView$Ne9u9kQnNdQhyWkjp23y4zcd5v4
            @Override // java.lang.Runnable
            public final void run() {
                VASTVideoView.this.f();
            }
        });
        VideoPlayer videoPlayer = this.f;
        if (videoPlayer != null) {
            videoPlayer.pause();
            this.f.unload();
            this.e = null;
        }
        File file = this.H;
        if (file != null) {
            if (!file.delete()) {
                Logger logger = j;
                logger.w("Failed to delete video asset = " + this.H.getAbsolutePath());
            }
            this.H = null;
        }
        this.E.stopWatching();
        this.F.stopWatching();
        this.E = null;
        this.F = null;
    }

    public void setInteractionListener(InteractionListener interactionListener) {
        this.s = interactionListener;
        this.y.setInteractionListener(interactionListener);
    }

    public void setPlaybackListener(PlaybackListener playbackListener) {
        this.t = playbackListener;
    }

    public void updateComponentVisibility() {
        if (this.q == 1) {
            this.u.setVisibility(g() ? 0 : 8);
            this.v.setVisibility(8);
            VideoPlayerView videoPlayerView = this.e;
            if (videoPlayerView != null) {
                videoPlayerView.setVisibility(0);
            }
        } else if (this.q == 2) {
            VideoPlayerView videoPlayerView2 = this.e;
            if (videoPlayerView2 != null) {
                videoPlayerView2.setVisibility(8);
            }
            this.u.setVisibility(8);
            this.v.setVisibility(0);
        }
        if (this.q == 1) {
            if (g()) {
                VASTParser.InLineAd inLineAd = this.D;
                if (inLineAd == null || inLineAd.mmExtension == null || this.D.mmExtension.background == null || !this.D.mmExtension.background.hideButtons) {
                    this.C.setVisibility(0);
                } else {
                    this.C.setVisibility(4);
                }
            } else {
                VASTParser.InLineAd inLineAd2 = this.D;
                if (inLineAd2 == null || inLineAd2.mmExtension == null || this.D.mmExtension.overlay == null || !this.D.mmExtension.overlay.hideButtons) {
                    this.C.setVisibility(0);
                } else {
                    this.C.setVisibility(4);
                }
            }
        } else if (this.q != 2) {
        } else {
            if (this.N == null || !this.N.hideButtons) {
                this.C.setVisibility(0);
            } else {
                this.C.setVisibility(4);
            }
        }
    }

    @Override // com.verizon.ads.vastcontroller.VASTController.VideoViewActions
    public void updateLayout() {
        int i;
        boolean z = true;
        if ((!g() || this.P == 1) && (g() || this.P != 1)) {
            z = false;
        } else {
            this.e.setLayoutParams(k());
            updateComponentVisibility();
        }
        if (z) {
            LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(getResources().getDimensionPixelSize(R.dimen.vas_ad_button_width), getResources().getDimensionPixelSize(R.dimen.vas_ad_button_height), g() ? 1.0f : 0.0f);
            if (!g()) {
                layoutParams.leftMargin = getResources().getDimensionPixelSize(R.dimen.vas_ad_button_padding_left);
                i = 0;
            } else {
                layoutParams.leftMargin = 0;
                i = 0;
            }
            while (i < this.C.getChildCount()) {
                this.C.getChildAt(i).setLayoutParams(layoutParams);
                i++;
            }
        }
        this.C.bringToFront();
        this.P = getResources().getConfiguration().orientation;
    }
}
