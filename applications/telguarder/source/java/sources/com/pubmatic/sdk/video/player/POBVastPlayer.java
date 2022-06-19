package com.pubmatic.sdk.video.player;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.view.View;
import android.widget.FrameLayout;
import android.widget.ImageButton;
import android.widget.TextView;
import com.pubmatic.sdk.common.POBAdSize;
import com.pubmatic.sdk.common.POBError;
import com.pubmatic.sdk.common.POBInstanceProvider;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.models.POBDeviceInfo;
import com.pubmatic.sdk.common.network.POBTrackerHandler;
import com.pubmatic.sdk.common.utility.POBUtils;
import com.pubmatic.sdk.video.C1968R;
import com.pubmatic.sdk.video.POBLogConstants;
import com.pubmatic.sdk.video.POBVastError;
import com.pubmatic.sdk.video.POBVastErrorHandler;
import com.pubmatic.sdk.video.POBVastPlayerConfig;
import com.pubmatic.sdk.video.player.POBEndCardView;
import com.pubmatic.sdk.video.player.POBVastHTMLView;
import com.pubmatic.sdk.video.player.POBVideoPlayerView;
import com.pubmatic.sdk.video.vastmodels.POBCompanion;
import com.pubmatic.sdk.video.vastmodels.POBIcon;
import com.pubmatic.sdk.video.vastmodels.POBLinear;
import com.pubmatic.sdk.video.vastmodels.POBMediaFile;
import com.pubmatic.sdk.video.vastmodels.POBTracking;
import com.pubmatic.sdk.video.vastmodels.POBVast;
import com.pubmatic.sdk.video.vastmodels.POBVastAd;
import com.pubmatic.sdk.video.vastmodels.POBVastCreative;
import com.pubmatic.sdk.video.vastparser.POBVastParser;
import com.pubmatic.sdk.video.vastparser.POBVastParserListener;
import com.pubmatic.sdk.video.xmlserialiser.POBXMLNodeListener;
import com.pubmatic.sdk.webrendering.POBUIUtil;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/player/POBVastPlayer.class */
public class POBVastPlayer extends FrameLayout implements POBVideoPlayerView.POBVideoPlayerListener, POBProgressiveEventListener {
    public static final int MEDIA_CONTROL_VISIBILITY_DELAY = 200;

    /* renamed from: a */
    private POBTrackerHandler f893a;

    /* renamed from: b */
    private POBVastPlayerListener f894b;

    /* renamed from: d */
    private POBAdSize f896d;

    /* renamed from: e */
    private POBVideoPlayer f897e;

    /* renamed from: f */
    private TextView f898f;

    /* renamed from: g */
    private ImageButton f899g;

    /* renamed from: h */
    private POBVastAd f900h;

    /* renamed from: j */
    private double f902j;

    /* renamed from: k */
    private long f903k;

    /* renamed from: m */
    private TextView f905m;

    /* renamed from: n */
    private POBVastErrorHandler f906n;

    /* renamed from: o */
    private POBDeviceInfo f907o;

    /* renamed from: p */
    private POBProgressiveEventHandler f908p;

    /* renamed from: q */
    private POBCompanion f909q;

    /* renamed from: r */
    private POBIconView f910r;

    /* renamed from: s */
    private OnSkipButtonAppear f911s;

    /* renamed from: t */
    private POBEndCardView f912t;

    /* renamed from: v */
    private POBVastPlayerConfig f914v;

    /* renamed from: c */
    private int f895c = 3;

    /* renamed from: i */
    private final View.OnClickListener f901i = new View$OnClickListenerC1976a();

    /* renamed from: u */
    private boolean f913u = true;

    /* renamed from: w */
    private Linearity f915w = Linearity.ANY;

    /* renamed from: x */
    private POBVastParserListener f916x = new C1977b();

    /* renamed from: l */
    private List<String> f904l = new ArrayList();

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/player/POBVastPlayer$Linearity.class */
    public enum Linearity {
        LINEAR,
        NON_LINEAR,
        ANY
    }

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/player/POBVastPlayer$OnSkipButtonAppear.class */
    public interface OnSkipButtonAppear {
        void skipButtonAppear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.pubmatic.sdk.video.player.POBVastPlayer$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/player/POBVastPlayer$a.class */
    public class View$OnClickListenerC1976a implements View.OnClickListener {
        View$OnClickListenerC1976a() {
            POBVastPlayer.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int id = view.getId();
            if (id == C1968R.C1971id.learn_more_btn) {
                POBVastPlayer pOBVastPlayer = POBVastPlayer.this;
                pOBVastPlayer.m682a(pOBVastPlayer.f900h.getCreative().getClickThroughURL());
                POBVastPlayer.this.m668f();
            } else if (id != C1968R.C1971id.close_btn || POBVastPlayer.this.f894b == null) {
            } else {
                POBVastCreative.POBEventTypes pOBEventTypes = null;
                if (POBVastPlayer.this.f897e != null) {
                    POBVideoPlayerView.EnumC1992f playerState = POBVastPlayer.this.f897e.getPlayerState();
                    if (playerState == POBVideoPlayerView.EnumC1992f.COMPLETE) {
                        pOBEventTypes = POBVastCreative.POBEventTypes.COMPLETE;
                    } else {
                        pOBEventTypes = null;
                        if (playerState != POBVideoPlayerView.EnumC1992f.ERROR) {
                            pOBEventTypes = POBVastCreative.POBEventTypes.SKIP;
                        }
                    }
                }
                POBVastPlayer.this.f894b.onSkipButtonClick(pOBEventTypes);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.pubmatic.sdk.video.player.POBVastPlayer$b */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/player/POBVastPlayer$b.class */
    public class C1977b implements POBVastParserListener {
        C1977b() {
            POBVastPlayer.this = r4;
        }

        @Override // com.pubmatic.sdk.video.vastparser.POBVastParserListener
        public void onFailure(POBVast pOBVast, POBVastError pOBVastError) {
            if (pOBVast == null || pOBVast.getAds() == null || pOBVast.getAds().isEmpty()) {
                POBVastPlayer.this.m684a((POBVastAd) null, pOBVastError);
            } else {
                POBVastPlayer.this.m684a(pOBVast.getAds().get(0), pOBVastError);
            }
        }

        @Override // com.pubmatic.sdk.video.vastparser.POBVastParserListener
        public void onSuccess(POBVast pOBVast) {
            if (pOBVast.getAds() == null || pOBVast.getAds().isEmpty()) {
                return;
            }
            POBVastPlayer.this.m685a(pOBVast.getAds().get(0));
        }
    }

    /* renamed from: com.pubmatic.sdk.video.player.POBVastPlayer$c */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/player/POBVastPlayer$c.class */
    public class C1978c implements POBEndCardView.AbstractC1973b {
        C1978c() {
            POBVastPlayer.this = r4;
        }

        @Override // com.pubmatic.sdk.video.player.POBEndCardView.AbstractC1973b
        /* renamed from: a */
        public void mo655a() {
            if (POBVastPlayer.this.f900h != null) {
                POBVastPlayer pOBVastPlayer = POBVastPlayer.this;
                pOBVastPlayer.m682a(pOBVastPlayer.f900h.getCreative().getClickThroughURL());
                POBVastPlayer.this.m668f();
            }
        }

        @Override // com.pubmatic.sdk.video.player.POBVastHTMLView.AbstractC1975b
        /* renamed from: a */
        public void mo654a(POBVastError pOBVastError) {
            POBVastPlayer pOBVastPlayer = POBVastPlayer.this;
            pOBVastPlayer.m684a(pOBVastPlayer.f900h, pOBVastError);
        }

        @Override // com.pubmatic.sdk.video.player.POBVastHTMLView.AbstractC1975b
        /* renamed from: a */
        public void mo653a(String str) {
            if (POBVastPlayer.this.f909q != null) {
                POBVastPlayer.this.f893a.sendTrackers(POBVastPlayer.this.f909q.getClickTrackers());
            }
            POBVastPlayer.this.m682a(str);
        }

        @Override // com.pubmatic.sdk.video.player.POBVastHTMLView.AbstractC1975b
        /* renamed from: b */
        public void mo652b() {
            if (POBVastPlayer.this.f909q != null) {
                POBVastPlayer.this.f893a.sendTrackers(POBVastPlayer.this.f909q.getTrackingEventUrls(POBVastCreative.POBEventTypes.CREATIVE_VIEW));
            }
        }
    }

    /* renamed from: com.pubmatic.sdk.video.player.POBVastPlayer$d */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/player/POBVastPlayer$d.class */
    public class C1979d implements POBVastHTMLView.AbstractC1975b {

        /* renamed from: a */
        final /* synthetic */ POBIcon f921a;

        C1979d(POBIcon pOBIcon) {
            POBVastPlayer.this = r4;
            this.f921a = pOBIcon;
        }

        @Override // com.pubmatic.sdk.video.player.POBVastHTMLView.AbstractC1975b
        /* renamed from: a */
        public void mo654a(POBVastError pOBVastError) {
            PMLog.debug("POBVastPlayer", POBLogConstants.MSG_ICON_RENDERING_FAILURE, new Object[0]);
        }

        @Override // com.pubmatic.sdk.video.player.POBVastHTMLView.AbstractC1975b
        /* renamed from: a */
        public void mo653a(String str) {
            PMLog.debug("POBVastPlayer", POBLogConstants.MSG_ICON_CLICKED, new Object[0]);
            POBVastPlayer.this.f893a.sendTrackers(this.f921a.getClickTrackers());
            PMLog.debug("POBVastPlayer", POBLogConstants.MSG_ICON_OPEN_LANDING_PAGE, str);
            if (POBVastPlayer.this.f894b != null) {
                POBVastPlayer.this.f894b.onIndustryIconClick(str);
            }
        }

        @Override // com.pubmatic.sdk.video.player.POBVastHTMLView.AbstractC1975b
        /* renamed from: b */
        public void mo652b() {
            PMLog.debug("POBVastPlayer", POBLogConstants.MSG_ICON_LOADED, new Object[0]);
            POBVastPlayer pOBVastPlayer = POBVastPlayer.this;
            pOBVastPlayer.m679b(pOBVastPlayer.f910r, this.f921a);
        }
    }

    /* renamed from: com.pubmatic.sdk.video.player.POBVastPlayer$e */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/player/POBVastPlayer$e.class */
    public class RunnableC1980e implements Runnable {

        /* renamed from: a */
        final /* synthetic */ POBIconView f923a;

        /* renamed from: b */
        final /* synthetic */ POBIcon f924b;

        RunnableC1980e(POBIconView pOBIconView, POBIcon pOBIcon) {
            POBVastPlayer.this = r4;
            this.f923a = pOBIconView;
            this.f924b = pOBIcon;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (POBVastPlayer.this.f910r != null) {
                POBVastPlayer.this.m674c(this.f923a, this.f924b);
            }
        }
    }

    /* renamed from: com.pubmatic.sdk.video.player.POBVastPlayer$f */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/player/POBVastPlayer$f.class */
    public class RunnableC1981f implements Runnable {

        /* renamed from: a */
        final /* synthetic */ POBIconView f926a;

        RunnableC1981f(POBIconView pOBIconView) {
            POBVastPlayer.this = r4;
            this.f926a = pOBIconView;
        }

        @Override // java.lang.Runnable
        public void run() {
            PMLog.debug("POBVastPlayer", POBLogConstants.MSG_REMOVING_ICON, new Object[0]);
            POBVastPlayer.this.removeView(this.f926a);
        }
    }

    /* renamed from: com.pubmatic.sdk.video.player.POBVastPlayer$g */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/video/player/POBVastPlayer$g.class */
    class RunnableC1982g implements Runnable {

        /* renamed from: a */
        final /* synthetic */ int f928a;

        RunnableC1982g(int i) {
            POBVastPlayer.this = r4;
            this.f928a = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (POBVastPlayer.this.f899g != null && POBVastPlayer.this.f898f != null && POBVastPlayer.this.f913u) {
                int i = this.f928a / 1000;
                if (POBVastPlayer.this.f902j <= i || POBVastPlayer.this.f899g.isShown()) {
                    POBVastPlayer.this.f899g.setVisibility(0);
                    POBVastPlayer.this.f898f.setVisibility(8);
                    POBVastPlayer.this.m664h();
                } else {
                    POBVastPlayer.this.f898f.setText(String.valueOf(((int) POBVastPlayer.this.f902j) - i));
                }
            }
            if (POBVastPlayer.this.f908p != null) {
                POBVastPlayer.this.f908p.onProgress(this.f928a / 1000);
            }
        }
    }

    public POBVastPlayer(Context context, POBVastPlayerConfig pOBVastPlayerConfig) {
        super(context);
        POBTrackerHandler trackerHandler = POBInstanceProvider.getTrackerHandler(POBInstanceProvider.getNetworkHandler(context));
        this.f893a = trackerHandler;
        this.f906n = new POBVastErrorHandler(trackerHandler);
        this.f914v = pOBVastPlayerConfig;
    }

    /* renamed from: a */
    private int m699a(int i) {
        return i == -1 ? POBVastError.MEDIA_FILE_TIMEOUT : POBVastError.MEDIA_FILE_DISPLAY_ERROR;
    }

    /* renamed from: a */
    private POBVideoPlayerView m696a(Context context) {
        POBVideoPlayerView pOBVideoPlayerView = new POBVideoPlayerView(context);
        pOBVideoPlayerView.setListener(this);
        POBPlayerController pOBVideoPlayerController = new POBVideoPlayerController(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        layoutParams.gravity = 80;
        pOBVideoPlayerView.setControllerView(pOBVideoPlayerController, layoutParams);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
        layoutParams2.gravity = 17;
        addView(pOBVideoPlayerView, layoutParams2);
        m688a(pOBVideoPlayerView);
        return pOBVideoPlayerView;
    }

    /* renamed from: a */
    private void m700a() {
        POBEndCardView pOBEndCardView;
        POBCompanion pOBCompanion;
        PMLog.debug("POBVastPlayer", POBLogConstants.MSG_RENDERING_END_CARD, new Object[0]);
        POBEndCardView pOBEndCardView2 = new POBEndCardView(getContext());
        this.f912t = pOBEndCardView2;
        pOBEndCardView2.setLearnMoreTitle(getLearnMoreTitle());
        this.f912t.setListener(new C1978c());
        POBVastAd pOBVastAd = this.f900h;
        if (pOBVastAd != null) {
            List<POBCompanion> combinedCompanions = pOBVastAd.getCombinedCompanions();
            if (combinedCompanions == null || combinedCompanions.isEmpty()) {
                m684a(this.f900h, new POBVastError(POBVastError.NO_COMPANION_AD_ERROR, POBLogConstants.MSG_NO_END_CARD));
                pOBEndCardView = this.f912t;
                pOBCompanion = null;
            } else {
                int width = getWidth();
                int height = getHeight();
                POBAdSize pOBAdSize = this.f896d;
                if (pOBAdSize != null) {
                    width = POBUtils.convertDpToPixel(pOBAdSize.getAdWidth());
                    height = POBUtils.convertDpToPixel(this.f896d.getAdHeight());
                }
                POBCompanion suitableEndCardCompanion = POBVastPlayerUtil.getSuitableEndCardCompanion(combinedCompanions, width, height, 0.3f, 0.5f);
                this.f909q = suitableEndCardCompanion;
                if (suitableEndCardCompanion == null) {
                    m684a(this.f900h, new POBVastError(POBVastError.UNSUPPORTED_COMPANION_AD, POBLogConstants.MSG_NO_MATCHING_END_CARD_FOUND));
                }
                pOBEndCardView = this.f912t;
                pOBCompanion = this.f909q;
            }
            pOBEndCardView.m705a(pOBCompanion);
            addView(this.f912t);
            m681a(false);
            ImageButton imageButton = this.f899g;
            if (imageButton != null) {
                imageButton.bringToFront();
            }
            POBIconView pOBIconView = this.f910r;
            if (pOBIconView == null) {
                return;
            }
            pOBIconView.bringToFront();
        }
    }

    /* renamed from: a */
    private void m698a(int i, POBVastCreative.POBEventTypes pOBEventTypes) {
        POBVastAd pOBVastAd = this.f900h;
        if (pOBVastAd == null || this.f908p == null) {
            return;
        }
        this.f908p.addProgressUrls(Integer.valueOf(i), pOBEventTypes, pOBVastAd.getCombinedTrackingEventList(pOBEventTypes));
    }

    /* renamed from: a */
    private void m697a(long j) {
        this.f908p = new POBProgressiveEventHandler(this);
        m698a(((int) (25 * j)) / 100, POBVastCreative.POBEventTypes.FIRST_QUARTILE);
        m698a(((int) (50 * j)) / 100, POBVastCreative.POBEventTypes.MID_POINT);
        m698a(((int) (75 * j)) / 100, POBVastCreative.POBEventTypes.THIRD_QUARTILE);
        POBVastAd pOBVastAd = this.f900h;
        if (pOBVastAd != null) {
            for (POBXMLNodeListener pOBXMLNodeListener : pOBVastAd.getCombinedObjectList(POBVastAd.POBVastAdParameter.PROGRESS_TRACKING_EVENT)) {
                if (pOBXMLNodeListener instanceof POBTracking) {
                    POBTracking pOBTracking = (POBTracking) pOBXMLNodeListener;
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(pOBTracking.getUrl());
                    this.f908p.addProgressUrls(Integer.valueOf((int) POBUtils.convertToSeconds(String.valueOf(j), pOBTracking.getOffset())), POBVastCreative.POBEventTypes.PROGRESS, arrayList);
                }
            }
        }
    }

    /* renamed from: a */
    private void m695a(POBError pOBError) {
        PMLog.error("POBVastPlayer", pOBError.toString(), new Object[0]);
        POBVastPlayerListener pOBVastPlayerListener = this.f894b;
        if (pOBVastPlayerListener != null) {
            pOBVastPlayerListener.onFailedToPlay(pOBError);
        }
    }

    /* renamed from: a */
    private void m694a(POBIconView pOBIconView, POBIcon pOBIcon) {
        addView(pOBIconView, C1993a.m622a(getContext(), pOBIcon.getContentWidth(), pOBIcon.getContentHeight()));
    }

    /* renamed from: a */
    private void m688a(POBVideoPlayerView pOBVideoPlayerView) {
        TextView m621a = C1993a.m621a(getContext(), C1968R.C1971id.learn_more_btn, getLearnMoreTitle(), getResources().getColor(C1968R.C1969color.pob_controls_background_color));
        this.f905m = m621a;
        m621a.setOnClickListener(this.f901i);
        pOBVideoPlayerView.addView(this.f905m);
    }

    /* renamed from: a */
    private void m687a(POBIcon pOBIcon) {
        if (pOBIcon == null || pOBIcon.getResource() == null || pOBIcon.getOffset() > this.f903k) {
            PMLog.debug("POBVastPlayer", POBLogConstants.MSG_ICON_UNAVAILABLE_RESOURCE, new Object[0]);
            return;
        }
        PMLog.debug("POBVastPlayer", POBLogConstants.MSG_RENDERING_ICON, pOBIcon.getProgram(), Integer.valueOf(pOBIcon.getOffset()), Integer.valueOf(pOBIcon.getDuration()));
        POBIconView pOBIconView = new POBIconView(getContext());
        this.f910r = pOBIconView;
        pOBIconView.setId(C1968R.C1971id.industry_icon_one);
        this.f910r.setListener(new C1979d(pOBIcon));
        this.f910r.m701a(pOBIcon);
    }

    /* renamed from: a */
    private void m686a(POBLinear pOBLinear) {
        POBVastError pOBVastError;
        if (!pOBLinear.getMediaFiles().isEmpty()) {
            this.f902j = pOBLinear.getSkipOffset();
            boolean isWiFiConnected = POBInstanceProvider.getNetworkMonitor(getContext().getApplicationContext()).isWiFiConnected();
            int scaleFactor = POBVastPlayerUtil.getScaleFactor(getContext().getApplicationContext());
            int bitRate = POBVastPlayerUtil.getBitRate(scaleFactor == 1, isWiFiConnected);
            PMLog.info("POBVastPlayer", POBLogConstants.MSG_EXPECTED_BIT_RATE, scaleFactor == 1 ? "low" : "high", isWiFiConnected ? "wifi" : "non-wifi", Integer.valueOf(bitRate));
            List<POBMediaFile> mediaFiles = pOBLinear.getMediaFiles();
            POBVideoPlayerView.SupportedMediaType[] supportedMediaTypeArr = POBVideoPlayerView.f935m;
            POBDeviceInfo pOBDeviceInfo = this.f907o;
            POBMediaFile filterMediaFiles = POBVastPlayerUtil.filterMediaFiles(mediaFiles, supportedMediaTypeArr, bitRate, pOBDeviceInfo.screenWidth, pOBDeviceInfo.screenHeight);
            if (filterMediaFiles != null) {
                PMLog.info("POBVastPlayer", POBLogConstants.MSG_SELECTED_MEDIAL_FILE, filterMediaFiles.toString(), pOBLinear.getMediaFiles().toString(), Integer.valueOf(bitRate), filterMediaFiles.getWidth() + "x" + filterMediaFiles.getHeight(), Arrays.toString(POBVideoPlayerView.f935m));
                String mediaFileURL = filterMediaFiles.getMediaFileURL();
                PMLog.debug("POBVastPlayer", POBLogConstants.MSG_VAST_SELECTED_MEDIA_FILE, mediaFileURL);
                this.f897e = m696a(getContext());
                m660j();
                m672d();
                this.f897e.load(mediaFileURL);
                m681a(false);
                pOBVastError = null;
            } else {
                pOBVastError = new POBVastError(POBVastError.NO_SUPPORTED_MEDIA_FILE, POBLogConstants.MSG_VAST_PLAYER_LINEAR_MEDIA_NOT_SUPPORTED);
            }
        } else {
            pOBVastError = new POBVastError(POBVastError.MEDIA_FILE_NOT_FOUND, POBLogConstants.MSG_VAST_PLAYER_LINEAR_MEDIA_NOT_FOUND);
        }
        if (pOBVastError != null) {
            m684a(this.f900h, pOBVastError);
        }
    }

    /* renamed from: a */
    public void m685a(POBVastAd pOBVastAd) {
        POBVastError pOBVastError;
        Linearity linearity;
        PMLog.debug("POBVastPlayer", POBLogConstants.MSG_VAST_PLAYER_RENDERING_STARTED, new Object[0]);
        this.f900h = pOBVastAd;
        this.f904l = new ArrayList();
        POBVastCreative creative = pOBVastAd.getCreative();
        if (creative == null) {
            pOBVastError = new POBVastError(POBVastError.GENERAL_LINEAR_ERROR, POBLogConstants.MSG_VAST_PLAYER_NO_CREATIVE);
        } else if (creative.getVastCreativeType() == POBVastCreative.CreativeType.LINEAR && ((linearity = this.f915w) == Linearity.LINEAR || linearity == Linearity.ANY)) {
            m686a((POBLinear) creative);
            pOBVastError = null;
        } else {
            pOBVastError = new POBVastError(POBVastError.INCORRECT_LINEARITY, POBLogConstants.MSG_VAST_PLAYER_LINEARITY_NOT_FOUND);
        }
        if (pOBVastError != null) {
            m684a(this.f900h, pOBVastError);
        }
    }

    /* renamed from: a */
    public void m684a(POBVastAd pOBVastAd, POBVastError pOBVastError) {
        if (pOBVastAd != null) {
            this.f906n.executeVastErrors(pOBVastAd.getCombinedList(POBVastAd.POBVastAdParameter.ERRORS), pOBVastError);
        } else {
            this.f906n.executeVastErrors(null, pOBVastError);
        }
        POBError convertToPOBError = POBVastErrorHandler.convertToPOBError(pOBVastError);
        if (convertToPOBError != null) {
            m695a(convertToPOBError);
        }
    }

    /* renamed from: a */
    private void m683a(POBVastCreative.POBEventTypes pOBEventTypes) {
        if (this.f900h == null) {
            PMLog.debug("POBVastPlayer", "Selected Vast Ad is null", new Object[0]);
            return;
        }
        PMLog.debug("POBVastPlayer", POBLogConstants.MSG_VAST_PLAYER_EXECUTE_TRACKER_EVENT, pOBEventTypes.name());
        this.f893a.sendTrackers(this.f900h.getCombinedTrackingEventList(pOBEventTypes), "[ADSERVINGID]", this.f900h.getAdServingId());
        this.f904l.add(pOBEventTypes.name());
    }

    /* renamed from: a */
    public void m682a(String str) {
        POBVastPlayerListener pOBVastPlayerListener = this.f894b;
        if (pOBVastPlayerListener != null) {
            pOBVastPlayerListener.onOpenLandingPage(str);
        }
    }

    /* renamed from: a */
    private void m681a(boolean z) {
        POBVideoPlayer pOBVideoPlayer = this.f897e;
        if (pOBVideoPlayer != null) {
            POBPlayerController controllerView = pOBVideoPlayer.getControllerView();
            if (controllerView != null) {
                if (z) {
                    C1993a.m618b(controllerView, 200);
                } else {
                    C1993a.m619a(controllerView, 200);
                }
            }
            TextView textView = this.f905m;
            if (textView == null) {
                return;
            }
            if (z) {
                C1993a.m618b(textView, 200);
            } else {
                C1993a.m619a(textView, 200);
            }
        }
    }

    /* renamed from: b */
    private void m680b() {
        ImageButton createCloseButton = POBUIUtil.createCloseButton(getContext());
        this.f899g = createCloseButton;
        createCloseButton.setVisibility(8);
        this.f899g.setOnClickListener(this.f901i);
        addView(this.f899g);
    }

    /* renamed from: b */
    public void m679b(POBIconView pOBIconView, POBIcon pOBIcon) {
        new Handler().postDelayed(new RunnableC1980e(pOBIconView, pOBIcon), pOBIcon.getOffset() * 1000);
    }

    /* renamed from: b */
    private void m676b(POBVastCreative.POBEventTypes pOBEventTypes) {
        POBVastPlayerListener pOBVastPlayerListener = this.f894b;
        if (pOBVastPlayerListener != null) {
            pOBVastPlayerListener.onVideoEventOccurred(pOBEventTypes);
        }
    }

    /* renamed from: c */
    private void m675c() {
        TextView m623a = C1993a.m623a(getContext(), C1968R.C1971id.skip_duration_timer);
        this.f898f = m623a;
        addView(m623a);
    }

    /* renamed from: c */
    public void m674c(POBIconView pOBIconView, POBIcon pOBIcon) {
        long duration = pOBIcon.getDuration() * 1000;
        if (duration > 0) {
            new Handler().postDelayed(new RunnableC1981f(pOBIconView), duration);
        }
        m694a(pOBIconView, pOBIcon);
        this.f893a.sendTrackers(pOBIcon.getViewTrackers());
    }

    /* renamed from: d */
    private void m672d() {
        if (this.f913u) {
            m675c();
            m680b();
        }
    }

    /* renamed from: e */
    private void m670e() {
        POBVastCreative.POBEventTypes pOBEventTypes;
        POBVideoPlayer pOBVideoPlayer;
        if (!(this.f904l.contains(POBVastCreative.POBEventTypes.CLOSE_LINEAR.name()) || this.f904l.contains(POBVastCreative.POBEventTypes.CLOSE.name()) || this.f904l.contains(POBVastCreative.POBEventTypes.SKIP.name()))) {
            if (this.f900h != null && (pOBVideoPlayer = this.f897e) != null && pOBVideoPlayer.getPlayerState() == POBVideoPlayerView.EnumC1992f.COMPLETE) {
                pOBEventTypes = !this.f900h.getCombinedTrackingEventList(POBVastCreative.POBEventTypes.CLOSE_LINEAR).isEmpty() ? POBVastCreative.POBEventTypes.CLOSE_LINEAR : POBVastCreative.POBEventTypes.CLOSE;
            } else if (!m666g()) {
                return;
            } else {
                m676b(POBVastCreative.POBEventTypes.SKIP);
                pOBEventTypes = POBVastCreative.POBEventTypes.SKIP;
            }
            m683a(pOBEventTypes);
        }
    }

    /* renamed from: f */
    public void m668f() {
        if (this.f900h != null) {
            PMLog.debug("POBVastPlayer", POBLogConstants.MSG_VAST_PLAYER_EXECUTE_TRACKER_EVENT, POBVastAd.POBVastAdParameter.CLICKTRACKING.name());
            this.f893a.sendTrackers(this.f900h.getCombinedList(POBVastAd.POBVastAdParameter.CLICKTRACKING));
        }
    }

    /* renamed from: g */
    private boolean m666g() {
        ImageButton imageButton = this.f899g;
        return imageButton != null && imageButton.getVisibility() == 0;
    }

    private String getLearnMoreTitle() {
        Resources resources = getResources();
        int identifier = resources.getIdentifier("openwrap_learn_more_title", "string", getContext().getPackageName());
        if (identifier != 0) {
            String string = resources.getString(identifier);
            return !string.isEmpty() ? string : "Learn More";
        }
        return "Learn More";
    }

    /* renamed from: h */
    public void m664h() {
        OnSkipButtonAppear onSkipButtonAppear = this.f911s;
        if (onSkipButtonAppear != null) {
            onSkipButtonAppear.skipButtonAppear();
        }
    }

    /* renamed from: i */
    private void m662i() {
        POBVastAd pOBVastAd = this.f900h;
        if (pOBVastAd != null) {
            m687a(pOBVastAd.getClosestIcon());
        }
    }

    /* renamed from: j */
    private void m660j() {
        POBVideoPlayer pOBVideoPlayer = this.f897e;
        if (pOBVideoPlayer != null) {
            pOBVideoPlayer.setPrepareTimeout(this.f914v.getMediaUriTimeout());
            this.f897e.playOnMute(this.f914v.isPlayOnMute());
        }
    }

    public void destroy() {
        PMLog.debug("POBVastPlayer", POBLogConstants.MSG_VAST_PLAYER_DESTROY, new Object[0]);
        if (!this.f904l.contains(POBVastAd.POBVastAdParameter.IMPRESSIONS.name()) && this.f904l.contains(POBVastCreative.POBEventTypes.LOADED.name())) {
            m683a(POBVastCreative.POBEventTypes.NOT_USED);
        } else if (this.f913u) {
            m670e();
        }
        POBVideoPlayer pOBVideoPlayer = this.f897e;
        if (pOBVideoPlayer != null) {
            pOBVideoPlayer.destroy();
        }
        POBEndCardView pOBEndCardView = this.f912t;
        if (pOBEndCardView != null) {
            pOBEndCardView.setListener(null);
        }
        POBIconView pOBIconView = this.f910r;
        if (pOBIconView != null) {
            pOBIconView.destroy();
            this.f910r = null;
        }
        removeAllViews();
        this.f912t = null;
        this.f894b = null;
        this.f916x = null;
    }

    public boolean getSkipabilityEnabled() {
        return this.f913u;
    }

    public POBVastPlayerConfig getVastPlayerConfig() {
        return this.f914v;
    }

    public void load(String str) {
        POBVastParser pOBVastParser = new POBVastParser(POBInstanceProvider.getNetworkHandler(getContext().getApplicationContext()), this.f895c, this.f916x);
        pOBVastParser.setWrapperTimeout(this.f914v.getWrapperUriTimeout());
        pOBVastParser.parse(str);
    }

    @Override // com.pubmatic.sdk.video.player.POBVideoPlayerView.POBVideoPlayerListener
    public void onBufferUpdate(int i) {
    }

    @Override // com.pubmatic.sdk.video.player.POBVideoPlayerView.POBVideoPlayerListener
    public void onCompletion() {
        setOnClickListener(null);
        m683a(POBVastCreative.POBEventTypes.COMPLETE);
        m676b(POBVastCreative.POBEventTypes.COMPLETE);
        POBVastPlayerListener pOBVastPlayerListener = this.f894b;
        if (pOBVastPlayerListener != null) {
            pOBVastPlayerListener.onPlaybackCompleted((float) this.f903k);
        }
        m700a();
    }

    @Override // com.pubmatic.sdk.video.player.POBVideoPlayerView.POBVideoPlayerListener
    public void onFailure(int i, String str) {
        m684a(this.f900h, new POBVastError(m699a(i), str));
        ImageButton imageButton = this.f899g;
        if (imageButton == null || imageButton.isShown()) {
            return;
        }
        TextView textView = this.f898f;
        if (textView != null) {
            textView.setVisibility(8);
        }
        this.f899g.setVisibility(0);
        m664h();
    }

    @Override // com.pubmatic.sdk.video.player.POBVideoPlayerView.POBVideoPlayerListener
    public void onMute(boolean z) {
        POBVastCreative.POBEventTypes pOBEventTypes;
        if (z) {
            m683a(POBVastCreative.POBEventTypes.MUTE);
            pOBEventTypes = POBVastCreative.POBEventTypes.MUTE;
        } else {
            m683a(POBVastCreative.POBEventTypes.UNMUTE);
            pOBEventTypes = POBVastCreative.POBEventTypes.UNMUTE;
        }
        m676b(pOBEventTypes);
    }

    @Override // com.pubmatic.sdk.video.player.POBVideoPlayerView.POBVideoPlayerListener
    public void onPause() {
        PMLog.debug("POBVastPlayer", POBLogConstants.MSG_VAST_PLAYER_VIDEO_PLAYER_PAUSED, new Object[0]);
        m683a(POBVastCreative.POBEventTypes.PAUSE);
        m676b(POBVastCreative.POBEventTypes.PAUSE);
    }

    @Override // com.pubmatic.sdk.video.player.POBProgressiveEventListener
    public void onProgressReached(Map<POBVastCreative.POBEventTypes, List<String>> map) {
        POBVastAd pOBVastAd;
        for (Map.Entry<POBVastCreative.POBEventTypes, List<String>> entry : map.entrySet()) {
            POBVastCreative.POBEventTypes key = entry.getKey();
            PMLog.debug("POBVastPlayer", POBLogConstants.MSG_VAST_PLAYER_EXECUTE_TRACKER_EVENT, key.name());
            List<String> value = entry.getValue();
            m676b(key);
            if (value != null && (pOBVastAd = this.f900h) != null) {
                this.f893a.sendTrackers(value, "[ADSERVINGID]", pOBVastAd.getAdServingId());
                this.f904l.add(key.name());
            }
        }
    }

    @Override // com.pubmatic.sdk.video.player.POBVideoPlayerView.POBVideoPlayerListener
    public void onProgressUpdate(int i) {
        post(new RunnableC1982g(i));
    }

    @Override // com.pubmatic.sdk.video.player.POBVideoPlayerView.POBVideoPlayerListener
    public void onReadyToPlay(POBVideoPlayerView pOBVideoPlayerView) {
        long mediaDuration = pOBVideoPlayerView.getMediaDuration() / 1000;
        this.f903k = mediaDuration;
        if (this.f913u) {
            this.f902j = POBVastPlayerUtil.getSkipOffset(this.f902j, this.f914v, mediaDuration);
        }
        PMLog.debug("POBVastPlayer", POBLogConstants.MSG_VAST_PLAYER_SKIP_OFFSET, Long.valueOf(this.f903k), Double.valueOf(this.f902j));
        POBVastPlayerListener pOBVastPlayerListener = this.f894b;
        if (pOBVastPlayerListener != null) {
            pOBVastPlayerListener.onReadyToPlay(this.f900h, (float) this.f902j);
        }
        m683a(POBVastCreative.POBEventTypes.LOADED);
        m697a(this.f903k);
    }

    @Override // com.pubmatic.sdk.video.player.POBVideoPlayerView.POBVideoPlayerListener
    public void onResume() {
        PMLog.debug("POBVastPlayer", POBLogConstants.MSG_VAST_PLAYER_VIDEO_PLAYER_PLAY, new Object[0]);
        m683a(POBVastCreative.POBEventTypes.RESUME);
        m676b(POBVastCreative.POBEventTypes.RESUME);
    }

    @Override // com.pubmatic.sdk.video.player.POBVideoPlayerView.POBVideoPlayerListener
    public void onStart() {
        PMLog.debug("POBVastPlayer", POBLogConstants.MSG_VAST_PLAYER_VIDEO_PLAYER_PLAY, new Object[0]);
        m681a(true);
        POBVastAd.POBVastAdParameter pOBVastAdParameter = POBVastAd.POBVastAdParameter.IMPRESSIONS;
        if (this.f900h != null) {
            PMLog.debug("POBVastPlayer", POBLogConstants.MSG_VAST_PLAYER_EXECUTE_TRACKER_EVENT, pOBVastAdParameter.name());
            this.f893a.sendTrackers(POBTrackerHandler.sanitizeURLScheme(this.f900h.getCombinedList(pOBVastAdParameter), Boolean.valueOf(POBInstanceProvider.getSdkConfig().isRequestSecureCreative())));
            this.f904l.add(pOBVastAdParameter.name());
            m683a(POBVastCreative.POBEventTypes.START);
            if (this.f894b != null && (this.f900h.getCreative() instanceof POBLinear)) {
                this.f894b.onVideoStarted((float) this.f903k, this.f914v.isPlayOnMute() ? 0.0f : 1.0f);
            }
            m662i();
        }
    }

    public void pause() {
        POBVideoPlayer pOBVideoPlayer = this.f897e;
        if (pOBVideoPlayer == null || pOBVideoPlayer.getPlayerState() != POBVideoPlayerView.EnumC1992f.PLAYING || this.f897e.getPlayerState() == POBVideoPlayerView.EnumC1992f.STOPPED) {
            return;
        }
        this.f897e.pause();
    }

    public void play() {
        POBVideoPlayer pOBVideoPlayer = this.f897e;
        if (pOBVideoPlayer != null) {
            if ((pOBVideoPlayer.getPlayerState() != POBVideoPlayerView.EnumC1992f.PAUSED && this.f897e.getPlayerState() != POBVideoPlayerView.EnumC1992f.LOADED) || this.f897e.getPlayerState() == POBVideoPlayerView.EnumC1992f.STOPPED || this.f897e.getPlayerState() == POBVideoPlayerView.EnumC1992f.COMPLETE) {
                return;
            }
            this.f897e.play();
        }
    }

    public void setAutoPlayOnForeground(boolean z) {
        POBVideoPlayer pOBVideoPlayer = this.f897e;
        if (pOBVideoPlayer != null) {
            pOBVideoPlayer.setAutoPlayOnForeground(z);
        }
    }

    public void setDeviceInfo(POBDeviceInfo pOBDeviceInfo) {
        this.f907o = pOBDeviceInfo;
    }

    public void setEndCardSize(POBAdSize pOBAdSize) {
        this.f896d = pOBAdSize;
    }

    public void setLinearity(Linearity linearity) {
        this.f915w = linearity;
    }

    public void setMaxWrapperThreshold(int i) {
        this.f895c = i;
    }

    public void setOnSkipButtonAppearListener(OnSkipButtonAppear onSkipButtonAppear) {
        this.f911s = onSkipButtonAppear;
    }

    public void setSkipabilityEnabled(boolean z) {
        this.f913u = z;
    }

    public void setVastPlayerListener(POBVastPlayerListener pOBVastPlayerListener) {
        this.f894b = pOBVastPlayerListener;
    }
}
