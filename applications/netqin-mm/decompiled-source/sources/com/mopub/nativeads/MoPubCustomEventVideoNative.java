package com.mopub.nativeads;

import android.content.Context;
import android.graphics.SurfaceTexture;
import android.media.AudioManager;
import android.text.TextUtils;
import android.view.TextureView;
import android.view.View;
import com.mopub.common.DataKeys;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibilityTracker;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Utils;
import com.mopub.mobileads.BaseVideoPlayerActivity;
import com.mopub.mobileads.VastManager;
import com.mopub.mobileads.VastTracker;
import com.mopub.mobileads.VastVideoConfig;
import com.mopub.mobileads.VideoViewabilityTracker;
import com.mopub.mobileads.factories.VastManagerFactory;
import com.mopub.nativeads.CustomEventNative;
import com.mopub.nativeads.MediaLayout;
import com.mopub.nativeads.NativeImageHelper;
import com.mopub.nativeads.NativeVideoController;
import com.mopub.network.TrackingRequest;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Set;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubCustomEventVideoNative.class */
public class MoPubCustomEventVideoNative extends CustomEventNative {
    public static final String ADAPTER_NAME = "MoPubCustomEventVideoNative";

    /* renamed from: a */
    public MoPubVideoNativeAd f34717a;

    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd.class */
    public static class MoPubVideoNativeAd extends VideoNativeAd implements VastManager.VastManagerListener, NativeVideoController.NativeVideoProgressRunnable.ProgressListener, AudioManager.OnAudioFocusChangeListener {

        /* renamed from: A */
        public MediaLayout f34718A;

        /* renamed from: B */
        public View f34719B;

        /* renamed from: C */
        public final long f34720C;

        /* renamed from: D */
        public boolean f34721D;

        /* renamed from: E */
        public boolean f34722E;

        /* renamed from: F */
        public boolean f34723F;

        /* renamed from: G */
        public boolean f34724G;

        /* renamed from: H */
        public int f34725H;

        /* renamed from: I */
        public boolean f34726I;

        /* renamed from: J */
        public boolean f34727J;

        /* renamed from: K */
        public boolean f34728K;

        /* renamed from: L */
        public boolean f34729L;

        /* renamed from: p */
        public final Context f34730p;

        /* renamed from: q */
        public final JSONObject f34731q;

        /* renamed from: r */
        public VideoState f34732r;

        /* renamed from: s */
        public final VisibilityTracker f34733s;

        /* renamed from: t */
        public final String f34734t;

        /* renamed from: u */
        public final CustomEventNative.CustomEventNativeListener f34735u;

        /* renamed from: v */
        public final C8944e f34736v;

        /* renamed from: w */
        public final C8942c f34737w;

        /* renamed from: x */
        public NativeVideoController f34738x;

        /* renamed from: y */
        public final VastManager f34739y;

        /* renamed from: z */
        public VastVideoConfig f34740z;

        /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$Parameter.class */
        public enum Parameter {
            IMPRESSION_TRACKER("imptracker", true),
            CLICK_TRACKER("clktracker", true),
            TITLE("title", false),
            TEXT("text", false),
            IMAGE_URL("mainimage", false),
            ICON_URL("iconimage", false),
            CLICK_DESTINATION("clk", false),
            FALLBACK("fallback", false),
            CALL_TO_ACTION("ctatext", false),
            VAST_VIDEO("video", false),
            PRIVACY_INFORMATION_ICON_IMAGE_URL("privacyicon", false),
            PRIVACY_INFORMATION_ICON_CLICKTHROUGH_URL("privacyclkurl", false),
            SPONSORED("sponsored", false);
            
            @VisibleForTesting
            public static final Set<String> requiredKeys = new HashSet();
            public final String mName;
            public final boolean mRequired;

            static {
                Parameter[] values;
                for (Parameter parameter : values()) {
                    if (parameter.mRequired) {
                        requiredKeys.add(parameter.mName);
                    }
                }
            }

            Parameter(String str, boolean z) {
                Preconditions.checkNotNull(str);
                this.mName = str;
                this.mRequired = z;
            }

            public static Parameter from(String str) {
                Parameter[] values;
                Preconditions.checkNotNull(str);
                for (Parameter parameter : values()) {
                    if (parameter.mName.equals(str)) {
                        return parameter;
                    }
                }
                return null;
            }
        }

        /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$VideoState.class */
        public enum VideoState {
            CREATED,
            LOADING,
            BUFFERING,
            PAUSED,
            PLAYING,
            PLAYING_MUTED,
            ENDED,
            FAILED_LOAD
        }

        /* renamed from: com.mopub.nativeads.MoPubCustomEventVideoNative$MoPubVideoNativeAd$a */
        /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$a.class */
        public class C8933a implements VisibilityTracker.VisibilityTrackerListener {
            public C8933a() {
            }

            @Override // com.mopub.common.VisibilityTracker.VisibilityTrackerListener
            public void onVisibilityChanged(List<View> list, List<View> list2) {
                if (!list.isEmpty() && !MoPubVideoNativeAd.this.f34727J) {
                    MoPubVideoNativeAd.this.f34727J = true;
                    MoPubVideoNativeAd.this.m3967i();
                } else if (!list2.isEmpty() && MoPubVideoNativeAd.this.f34727J) {
                    MoPubVideoNativeAd.this.f34727J = false;
                    MoPubVideoNativeAd.this.m3967i();
                }
            }
        }

        /* renamed from: com.mopub.nativeads.MoPubCustomEventVideoNative$MoPubVideoNativeAd$b */
        /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$b.class */
        public class C8934b implements NativeImageHelper.ImageListener {
            public C8934b() {
            }

            @Override // com.mopub.nativeads.NativeImageHelper.ImageListener
            public void onImagesCached() {
                MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_SUCCESS, MoPubCustomEventVideoNative.ADAPTER_NAME);
                if (!MoPubVideoNativeAd.this.isInvalidated()) {
                    VastManager vastManager = MoPubVideoNativeAd.this.f34739y;
                    String vastVideo = MoPubVideoNativeAd.this.getVastVideo();
                    MoPubVideoNativeAd moPubVideoNativeAd = MoPubVideoNativeAd.this;
                    vastManager.prepareVastVideoConfiguration(vastVideo, moPubVideoNativeAd, null, moPubVideoNativeAd.f34730p);
                }
            }

            @Override // com.mopub.nativeads.NativeImageHelper.ImageListener
            public void onImagesFailedToCache(NativeErrorCode nativeErrorCode) {
                if (!MoPubVideoNativeAd.this.isInvalidated()) {
                    MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, MoPubCustomEventVideoNative.ADAPTER_NAME, Integer.valueOf(nativeErrorCode.getIntCode()), nativeErrorCode);
                    MoPubVideoNativeAd.this.f34735u.onNativeAdFailed(nativeErrorCode);
                }
            }
        }

        /* renamed from: com.mopub.nativeads.MoPubCustomEventVideoNative$MoPubVideoNativeAd$c */
        /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$c.class */
        public class TextureView$SurfaceTextureListenerC8935c implements TextureView.SurfaceTextureListener {
            public TextureView$SurfaceTextureListenerC8935c() {
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i, int i2) {
                MoPubVideoNativeAd.this.f34738x.setListener(MoPubVideoNativeAd.this);
                MoPubVideoNativeAd.this.f34738x.setOnAudioFocusChangeListener(MoPubVideoNativeAd.this);
                MoPubVideoNativeAd.this.f34738x.setProgressListener(MoPubVideoNativeAd.this);
                MoPubVideoNativeAd.this.f34738x.setTextureView(MoPubVideoNativeAd.this.f34718A.getTextureView());
                MoPubVideoNativeAd.this.f34718A.resetProgress();
                long duration = MoPubVideoNativeAd.this.f34738x.getDuration();
                long currentPosition = MoPubVideoNativeAd.this.f34738x.getCurrentPosition();
                if (MoPubVideoNativeAd.this.f34725H == 4 || (duration > 0 && duration - currentPosition < 750)) {
                    MoPubVideoNativeAd.this.f34729L = true;
                }
                if (MoPubVideoNativeAd.this.f34722E) {
                    MoPubVideoNativeAd.this.f34722E = false;
                    MoPubVideoNativeAd.this.f34738x.prepare(MoPubVideoNativeAd.this);
                }
                MoPubVideoNativeAd.this.f34721D = true;
                MoPubVideoNativeAd.this.m3967i();
                if (MoPubVideoNativeAd.this.f34732r == VideoState.PLAYING || MoPubVideoNativeAd.this.f34732r == VideoState.PLAYING_MUTED) {
                    MoPubLog.log(MoPubLog.AdapterLogEvent.SHOW_SUCCESS, MoPubCustomEventVideoNative.ADAPTER_NAME);
                }
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
                MoPubVideoNativeAd.this.f34722E = true;
                MoPubVideoNativeAd.this.f34738x.release(MoPubVideoNativeAd.this);
                MoPubVideoNativeAd.this.m3990a(VideoState.PAUSED);
                return true;
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i, int i2) {
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
            }
        }

        /* renamed from: com.mopub.nativeads.MoPubCustomEventVideoNative$MoPubVideoNativeAd$d */
        /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$d.class */
        public class View$OnClickListenerC8936d implements View.OnClickListener {
            public View$OnClickListenerC8936d() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MoPubVideoNativeAd.this.f34718A.resetProgress();
                MoPubVideoNativeAd.this.f34738x.seekTo(0L);
                MoPubVideoNativeAd.this.f34729L = false;
                MoPubVideoNativeAd.this.f34721D = false;
            }
        }

        /* renamed from: com.mopub.nativeads.MoPubCustomEventVideoNative$MoPubVideoNativeAd$e */
        /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$e.class */
        public class View$OnClickListenerC8937e implements View.OnClickListener {
            public View$OnClickListenerC8937e() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MoPubVideoNativeAd moPubVideoNativeAd = MoPubVideoNativeAd.this;
                moPubVideoNativeAd.f34728K = !moPubVideoNativeAd.f34728K;
                MoPubVideoNativeAd.this.m3967i();
            }
        }

        /* renamed from: com.mopub.nativeads.MoPubCustomEventVideoNative$MoPubVideoNativeAd$f */
        /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$f.class */
        public class View$OnClickListenerC8938f implements View.OnClickListener {
            public View$OnClickListenerC8938f() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MoPubLog.log(MoPubLog.AdapterLogEvent.CLICKED, MoPubCustomEventVideoNative.ADAPTER_NAME);
                MoPubVideoNativeAd.this.m3965j();
                MoPubVideoNativeAd.this.f34738x.m3894f();
                BaseVideoPlayerActivity.startNativeVideo(MoPubVideoNativeAd.this.f34730p, MoPubVideoNativeAd.this.f34720C, MoPubVideoNativeAd.this.f34740z);
            }
        }

        /* renamed from: com.mopub.nativeads.MoPubCustomEventVideoNative$MoPubVideoNativeAd$g */
        /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubCustomEventVideoNative$MoPubVideoNativeAd$g.class */
        public class View$OnClickListenerC8939g implements View.OnClickListener {
            public View$OnClickListenerC8939g() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                MoPubVideoNativeAd.this.m3965j();
                MoPubVideoNativeAd.this.f34738x.m3894f();
                MoPubVideoNativeAd.this.f34738x.handleCtaClick(MoPubVideoNativeAd.this.f34730p);
            }
        }

        @VisibleForTesting
        public MoPubVideoNativeAd(Context context, JSONObject jSONObject, CustomEventNative.CustomEventNativeListener customEventNativeListener, C8944e eVar, VisibilityTracker visibilityTracker, C8942c cVar, String str, VastManager vastManager) {
            this.f34723F = false;
            this.f34724G = false;
            Preconditions.checkNotNull(context);
            Preconditions.checkNotNull(jSONObject);
            Preconditions.checkNotNull(customEventNativeListener);
            Preconditions.checkNotNull(eVar);
            Preconditions.checkNotNull(visibilityTracker);
            Preconditions.checkNotNull(cVar);
            Preconditions.checkNotNull(str);
            Preconditions.checkNotNull(vastManager);
            this.f34730p = context.getApplicationContext();
            this.f34731q = jSONObject;
            this.f34735u = customEventNativeListener;
            this.f34736v = eVar;
            this.f34737w = cVar;
            this.f34734t = str;
            this.f34720C = Utils.generateUniqueId();
            this.f34721D = true;
            this.f34732r = VideoState.CREATED;
            this.f34722E = true;
            this.f34725H = 1;
            this.f34728K = true;
            this.f34733s = visibilityTracker;
            visibilityTracker.setVisibilityTrackerListener(new C8933a());
            this.f34739y = vastManager;
        }

        public MoPubVideoNativeAd(Context context, JSONObject jSONObject, CustomEventNative.CustomEventNativeListener customEventNativeListener, C8944e eVar, String str) {
            this(context, jSONObject, customEventNativeListener, eVar, new VisibilityTracker(context), new C8942c(), str, VastManagerFactory.create(context.getApplicationContext(), false));
        }

        /* renamed from: a */
        public final void m3991a(Parameter parameter, Object obj) throws ClassCastException {
            Preconditions.checkNotNull(parameter);
            Preconditions.checkNotNull(obj);
            try {
                switch (C8940a.f34748a[parameter.ordinal()]) {
                    case 1:
                        m4026b(obj);
                        return;
                    case 2:
                        setTitle((String) obj);
                        return;
                    case 3:
                        setText((String) obj);
                        return;
                    case 4:
                        setMainImageUrl((String) obj);
                        return;
                    case 5:
                        setIconImageUrl((String) obj);
                        return;
                    case 6:
                        setClickDestinationUrl((String) obj);
                        return;
                    case 7:
                        m3979c(obj);
                        return;
                    case 8:
                        setCallToAction((String) obj);
                        return;
                    case 9:
                        setVastVideo((String) obj);
                        return;
                    case 10:
                        setPrivacyInformationIconImageUrl((String) obj);
                        return;
                    case 11:
                        setPrivacyInformationIconClickThroughUrl((String) obj);
                        return;
                    case 12:
                        setSponsored((String) obj);
                        break;
                }
                MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
                MoPubLog.log(adapterLogEvent, "Unable to add JSON key to internal mapping: " + parameter.mName);
            } catch (ClassCastException e) {
                if (!parameter.mRequired) {
                    MoPubLog.AdapterLogEvent adapterLogEvent2 = MoPubLog.AdapterLogEvent.CUSTOM;
                    MoPubLog.log(adapterLogEvent2, "Ignoring class cast exception for optional key: " + parameter.mName);
                    return;
                }
                throw e;
            }
        }

        @VisibleForTesting
        /* renamed from: a */
        public void m3990a(VideoState videoState) {
            m3989a(videoState, false);
        }

        @VisibleForTesting
        /* renamed from: a */
        public void m3989a(VideoState videoState, boolean z) {
            VideoState videoState2;
            Preconditions.checkNotNull(videoState);
            if (this.f34740z != null && this.f34738x != null && this.f34718A != null && (videoState2 = this.f34732r) != videoState) {
                this.f34732r = videoState;
                switch (C8940a.f34749b[videoState.ordinal()]) {
                    case 1:
                        this.f34740z.handleError(this.f34730p, null, 0);
                        this.f34738x.setAppAudioEnabled(false);
                        this.f34718A.setMode(MediaLayout.Mode.IMAGE);
                        return;
                    case 2:
                    case 3:
                        this.f34738x.setPlayWhenReady(true);
                        this.f34718A.setMode(MediaLayout.Mode.LOADING);
                        return;
                    case 4:
                        this.f34738x.setPlayWhenReady(true);
                        this.f34718A.setMode(MediaLayout.Mode.BUFFERING);
                        return;
                    case 5:
                        if (z) {
                            this.f34724G = false;
                        }
                        if (!z) {
                            this.f34738x.setAppAudioEnabled(false);
                            if (this.f34723F) {
                                TrackingRequest.makeVastTrackingHttpRequest(this.f34740z.getPauseTrackers(), null, Integer.valueOf((int) this.f34738x.getCurrentPosition()), null, this.f34730p);
                                this.f34723F = false;
                                this.f34724G = true;
                            }
                        }
                        this.f34738x.setPlayWhenReady(false);
                        this.f34718A.setMode(MediaLayout.Mode.PAUSED);
                        return;
                    case 6:
                        m3984b(videoState2);
                        this.f34738x.setPlayWhenReady(true);
                        this.f34738x.setAudioEnabled(true);
                        this.f34738x.setAppAudioEnabled(true);
                        this.f34718A.setMode(MediaLayout.Mode.PLAYING);
                        this.f34718A.setMuteState(MediaLayout.MuteState.UNMUTED);
                        return;
                    case 7:
                        m3984b(videoState2);
                        this.f34738x.setPlayWhenReady(true);
                        this.f34738x.setAudioEnabled(false);
                        this.f34738x.setAppAudioEnabled(false);
                        this.f34718A.setMode(MediaLayout.Mode.PLAYING);
                        this.f34718A.setMuteState(MediaLayout.MuteState.MUTED);
                        return;
                    case 8:
                        if (this.f34738x.hasFinalFrame()) {
                            this.f34718A.setMainImageDrawable(this.f34738x.getFinalFrame());
                        }
                        this.f34723F = false;
                        this.f34724G = false;
                        this.f34740z.handleComplete(this.f34730p, 0);
                        this.f34738x.setAppAudioEnabled(false);
                        this.f34718A.setMode(MediaLayout.Mode.FINISHED);
                        this.f34718A.updateProgress(1000);
                        return;
                    default:
                        return;
                }
            }
        }

        /* renamed from: a */
        public final boolean m3986a(String str) {
            return str != null && str.toLowerCase(Locale.US).endsWith("image");
        }

        /* renamed from: a */
        public final boolean m3985a(JSONObject jSONObject) {
            Preconditions.checkNotNull(jSONObject);
            HashSet hashSet = new HashSet();
            Iterator<String> keys = jSONObject.keys();
            while (keys.hasNext()) {
                hashSet.add(keys.next());
            }
            return hashSet.containsAll(Parameter.requiredKeys);
        }

        /* renamed from: b */
        public final void m3984b(VideoState videoState) {
            if (!(!this.f34724G || videoState == VideoState.PLAYING || videoState == VideoState.PLAYING_MUTED)) {
                TrackingRequest.makeVastTrackingHttpRequest(this.f34740z.getResumeTrackers(), null, Integer.valueOf((int) this.f34738x.getCurrentPosition()), null, this.f34730p);
                this.f34724G = false;
            }
            this.f34723F = true;
            if (this.f34721D) {
                this.f34721D = false;
                NativeVideoController nativeVideoController = this.f34738x;
                nativeVideoController.seekTo(nativeVideoController.getCurrentPosition());
            }
        }

        /* renamed from: c */
        public final void m3979c(Object obj) {
            if (obj instanceof JSONArray) {
                m4028a(obj);
            } else {
                addClickTracker((String) obj);
            }
        }

        @Override // com.mopub.nativeads.VideoNativeAd, com.mopub.nativeads.BaseNativeAd
        public void clear(View view) {
            Preconditions.checkNotNull(view);
            this.f34738x.clear();
            m3976e();
        }

        @Override // com.mopub.nativeads.VideoNativeAd, com.mopub.nativeads.BaseNativeAd
        public void destroy() {
            invalidate();
            m3976e();
            this.f34738x.setPlayWhenReady(false);
            this.f34738x.release(this);
            NativeVideoController.remove(this.f34720C);
            this.f34733s.destroy();
        }

        /* renamed from: e */
        public final void m3976e() {
            MediaLayout mediaLayout = this.f34718A;
            if (mediaLayout != null) {
                mediaLayout.setMode(MediaLayout.Mode.IMAGE);
                this.f34718A.setSurfaceTextureListener(null);
                this.f34718A.setPlayButtonClickListener(null);
                this.f34718A.setMuteControlClickListener(null);
                this.f34718A.setOnClickListener(null);
                this.f34733s.removeView(this.f34718A);
                this.f34718A = null;
            }
        }

        /* renamed from: f */
        public final List<String> m3973f() {
            ArrayList arrayList = new ArrayList();
            if (!TextUtils.isEmpty(getMainImageUrl())) {
                arrayList.add(getMainImageUrl());
            }
            if (!TextUtils.isEmpty(getIconImageUrl())) {
                arrayList.add(getIconImageUrl());
            }
            if (!TextUtils.isEmpty(getPrivacyInformationIconImageUrl())) {
                arrayList.add(getPrivacyInformationIconImageUrl());
            }
            arrayList.addAll(m3971g());
            return arrayList;
        }

        /* renamed from: g */
        public final List<String> m3971g() {
            ArrayList arrayList = new ArrayList(getExtras().size());
            for (Map.Entry<String, Object> entry : getExtras().entrySet()) {
                if (m3986a(entry.getKey()) && (entry.getValue() instanceof String)) {
                    arrayList.add((String) entry.getValue());
                }
            }
            return arrayList;
        }

        /* renamed from: h */
        public void m3969h() throws IllegalArgumentException {
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, MoPubCustomEventVideoNative.ADAPTER_NAME);
            if (m3985a(this.f34731q)) {
                Iterator<String> keys = this.f34731q.keys();
                while (keys.hasNext()) {
                    String next = keys.next();
                    Parameter from = Parameter.from(next);
                    if (from != null) {
                        try {
                            m3991a(from, this.f34731q.opt(next));
                        } catch (ClassCastException e) {
                            throw new IllegalArgumentException("JSONObject key (" + next + ") contained unexpected value.");
                        }
                    } else {
                        addExtra(next, this.f34731q.opt(next));
                    }
                }
                if (TextUtils.isEmpty(getPrivacyInformationIconClickThroughUrl())) {
                    setPrivacyInformationIconClickThroughUrl("https://www.mopub.com/optout/");
                }
                NativeImageHelper.preCacheImages(this.f34730p, m3973f(), new C8934b());
                return;
            }
            throw new IllegalArgumentException("JSONObject did not contain required keys.");
        }

        /* renamed from: i */
        public final void m3967i() {
            VideoState videoState = this.f34732r;
            if (this.f34726I) {
                videoState = VideoState.FAILED_LOAD;
            } else if (this.f34729L) {
                videoState = VideoState.ENDED;
            } else {
                int i = this.f34725H;
                if (i == 1) {
                    videoState = VideoState.LOADING;
                } else if (i == 2) {
                    videoState = VideoState.BUFFERING;
                } else if (i == 4) {
                    this.f34729L = true;
                    videoState = VideoState.ENDED;
                } else if (i == 3) {
                    videoState = this.f34727J ? this.f34728K ? VideoState.PLAYING_MUTED : VideoState.PLAYING : VideoState.PAUSED;
                }
            }
            m3990a(videoState);
        }

        /* renamed from: j */
        public final void m3965j() {
            MoPubLog.log(MoPubLog.AdapterLogEvent.WILL_LEAVE_APPLICATION, MoPubCustomEventVideoNative.ADAPTER_NAME);
            this.f34721D = true;
            this.f34722E = true;
            this.f34738x.setListener(null);
            this.f34738x.setOnAudioFocusChangeListener(null);
            this.f34738x.setProgressListener(null);
            this.f34738x.clear();
            m3989a(VideoState.PAUSED, true);
        }

        @Override // android.media.AudioManager.OnAudioFocusChangeListener
        public void onAudioFocusChange(int i) {
            if (i == -1 || i == -2) {
                this.f34728K = true;
                m3967i();
            } else if (i == -3) {
                this.f34738x.setAudioVolume(0.3f);
            } else if (i == 1) {
                this.f34738x.setAudioVolume(1.0f);
                m3967i();
            }
        }

        @Override // com.mopub.nativeads.NativeVideoController.Listener
        public void onError(Exception exc) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.SHOW_FAILED, MoPubCustomEventVideoNative.ADAPTER_NAME, Integer.valueOf(NativeErrorCode.UNSPECIFIED.getIntCode()), NativeErrorCode.UNSPECIFIED);
            this.f34726I = true;
            m3967i();
        }

        @Override // com.mopub.nativeads.NativeVideoController.Listener
        public void onStateChanged(boolean z, int i) {
            this.f34725H = i;
            m3967i();
        }

        @Override // com.mopub.mobileads.VastManager.VastManagerListener
        public void onVastVideoConfigurationPrepared(VastVideoConfig vastVideoConfig) {
            if (vastVideoConfig == null) {
                MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, MoPubCustomEventVideoNative.ADAPTER_NAME, Integer.valueOf(NativeErrorCode.INVALID_RESPONSE.getIntCode()), NativeErrorCode.INVALID_RESPONSE);
                this.f34735u.onNativeAdFailed(NativeErrorCode.INVALID_RESPONSE);
                return;
            }
            ArrayList arrayList = new ArrayList();
            NativeVideoController.C8969d dVar = new NativeVideoController.C8969d();
            dVar.f34896a = new C8941b(this);
            dVar.f34897b = this.f34736v.m3960a();
            dVar.f34898c = this.f34736v.m3959b();
            arrayList.add(dVar);
            dVar.f34901f = this.f34736v.m3958c();
            for (VastTracker vastTracker : vastVideoConfig.getImpressionTrackers()) {
                NativeVideoController.C8969d dVar2 = new NativeVideoController.C8969d();
                dVar2.f34896a = new C8943d(this.f34730p, vastTracker.getContent());
                dVar2.f34897b = this.f34736v.m3960a();
                dVar2.f34898c = this.f34736v.m3959b();
                arrayList.add(dVar2);
                dVar2.f34901f = this.f34736v.m3958c();
            }
            this.f34740z = vastVideoConfig;
            VideoViewabilityTracker videoViewabilityTracker = vastVideoConfig.getVideoViewabilityTracker();
            if (videoViewabilityTracker != null) {
                NativeVideoController.C8969d dVar3 = new NativeVideoController.C8969d();
                dVar3.f34896a = new C8943d(this.f34730p, videoViewabilityTracker.getContent());
                dVar3.f34897b = videoViewabilityTracker.getPercentViewable();
                dVar3.f34898c = videoViewabilityTracker.getViewablePlaytimeMS();
                arrayList.add(dVar3);
            }
            this.f34740z.setPrivacyInformationIconImageUrl(getPrivacyInformationIconImageUrl());
            this.f34740z.setPrivacyInformationIconClickthroughUrl(getPrivacyInformationIconClickThroughUrl());
            HashSet<String> hashSet = new HashSet();
            hashSet.add(this.f34734t);
            hashSet.addAll(m4029a());
            ArrayList arrayList2 = new ArrayList();
            for (String str : hashSet) {
                arrayList2.add(new VastTracker(str, false));
            }
            this.f34740z.addClickTrackers(arrayList2);
            this.f34740z.setClickThroughUrl(getClickDestinationUrl());
            this.f34738x = this.f34737w.createForId(this.f34720C, this.f34730p, arrayList, this.f34740z);
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_SUCCESS, MoPubCustomEventVideoNative.ADAPTER_NAME);
            this.f34735u.onNativeAdLoaded(this);
            JSONObject f = this.f34736v.m3955f();
            if (f != null) {
                this.f34740z.addVideoTrackers(f);
            }
        }

        @Override // com.mopub.nativeads.VideoNativeAd, com.mopub.nativeads.BaseNativeAd
        public void prepare(View view) {
            Preconditions.checkNotNull(view);
            this.f34719B = view;
            view.setOnClickListener(new View$OnClickListenerC8939g());
        }

        @Override // com.mopub.nativeads.VideoNativeAd
        public void render(MediaLayout mediaLayout) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.SHOW_ATTEMPTED, MoPubCustomEventVideoNative.ADAPTER_NAME);
            Preconditions.checkNotNull(mediaLayout);
            this.f34733s.addView(this.f34719B, mediaLayout, this.f34736v.m3956e(), this.f34736v.m3957d(), this.f34736v.m3958c());
            this.f34718A = mediaLayout;
            mediaLayout.initForVideo();
            this.f34718A.setSurfaceTextureListener(new TextureView$SurfaceTextureListenerC8935c());
            this.f34718A.setPlayButtonClickListener(new View$OnClickListenerC8936d());
            this.f34718A.setMuteControlClickListener(new View$OnClickListenerC8937e());
            this.f34718A.setOnClickListener(new View$OnClickListenerC8938f());
            if (this.f34738x.getPlaybackState() == 5) {
                this.f34738x.prepare(this);
            }
            m3990a(VideoState.PAUSED);
        }

        @Override // com.mopub.nativeads.NativeVideoController.NativeVideoProgressRunnable.ProgressListener
        public void updateProgress(int i) {
            this.f34718A.updateProgress(i);
        }
    }

    /* renamed from: com.mopub.nativeads.MoPubCustomEventVideoNative$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubCustomEventVideoNative$a.class */
    public static /* synthetic */ class C8940a {

        /* renamed from: a */
        public static final /* synthetic */ int[] f34748a;

        /* renamed from: b */
        public static final /* synthetic */ int[] f34749b;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x00f9 -> B:84:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x00fd -> B:102:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:46:0x0101 -> B:96:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:47:0x0105 -> B:70:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:48:0x0109 -> B:66:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:49:0x010d -> B:78:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:50:0x0111 -> B:74:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:51:0x0115 -> B:18:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:52:0x0119 -> B:82:0x0078). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:53:0x011d -> B:100:0x0083). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:54:0x0121 -> B:94:0x008e). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:55:0x0125 -> B:68:0x0099). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:56:0x0129 -> B:64:0x00a4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:57:0x012d -> B:76:0x00b0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:58:0x0131 -> B:72:0x00bc). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:59:0x0135 -> B:86:0x00c8). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:60:0x0139 -> B:80:0x00d4). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:61:0x013d -> B:98:0x00e0). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:62:0x0141 -> B:92:0x00ec). Please submit an issue!!! */
        static {
            int[] iArr = new int[MoPubVideoNativeAd.VideoState.values().length];
            f34749b = iArr;
            try {
                iArr[MoPubVideoNativeAd.VideoState.FAILED_LOAD.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f34749b[MoPubVideoNativeAd.VideoState.CREATED.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f34749b[MoPubVideoNativeAd.VideoState.LOADING.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f34749b[MoPubVideoNativeAd.VideoState.BUFFERING.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f34749b[MoPubVideoNativeAd.VideoState.PAUSED.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f34749b[MoPubVideoNativeAd.VideoState.PLAYING.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f34749b[MoPubVideoNativeAd.VideoState.PLAYING_MUTED.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f34749b[MoPubVideoNativeAd.VideoState.ENDED.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            int[] iArr2 = new int[MoPubVideoNativeAd.Parameter.values().length];
            f34748a = iArr2;
            try {
                iArr2[MoPubVideoNativeAd.Parameter.IMPRESSION_TRACKER.ordinal()] = 1;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f34748a[MoPubVideoNativeAd.Parameter.TITLE.ordinal()] = 2;
            } catch (NoSuchFieldError e10) {
            }
            try {
                f34748a[MoPubVideoNativeAd.Parameter.TEXT.ordinal()] = 3;
            } catch (NoSuchFieldError e11) {
            }
            try {
                f34748a[MoPubVideoNativeAd.Parameter.IMAGE_URL.ordinal()] = 4;
            } catch (NoSuchFieldError e12) {
            }
            try {
                f34748a[MoPubVideoNativeAd.Parameter.ICON_URL.ordinal()] = 5;
            } catch (NoSuchFieldError e13) {
            }
            try {
                f34748a[MoPubVideoNativeAd.Parameter.CLICK_DESTINATION.ordinal()] = 6;
            } catch (NoSuchFieldError e14) {
            }
            try {
                f34748a[MoPubVideoNativeAd.Parameter.CLICK_TRACKER.ordinal()] = 7;
            } catch (NoSuchFieldError e15) {
            }
            try {
                f34748a[MoPubVideoNativeAd.Parameter.CALL_TO_ACTION.ordinal()] = 8;
            } catch (NoSuchFieldError e16) {
            }
            try {
                f34748a[MoPubVideoNativeAd.Parameter.VAST_VIDEO.ordinal()] = 9;
            } catch (NoSuchFieldError e17) {
            }
            try {
                f34748a[MoPubVideoNativeAd.Parameter.PRIVACY_INFORMATION_ICON_IMAGE_URL.ordinal()] = 10;
            } catch (NoSuchFieldError e18) {
            }
            try {
                f34748a[MoPubVideoNativeAd.Parameter.PRIVACY_INFORMATION_ICON_CLICKTHROUGH_URL.ordinal()] = 11;
            } catch (NoSuchFieldError e19) {
            }
            try {
                f34748a[MoPubVideoNativeAd.Parameter.SPONSORED.ordinal()] = 12;
            } catch (NoSuchFieldError e20) {
            }
        }
    }

    @VisibleForTesting
    /* renamed from: com.mopub.nativeads.MoPubCustomEventVideoNative$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubCustomEventVideoNative$b.class */
    public static class C8941b implements NativeVideoController.C8969d.AbstractC8970a {

        /* renamed from: a */
        public final WeakReference<MoPubVideoNativeAd> f34750a;

        public C8941b(MoPubVideoNativeAd moPubVideoNativeAd) {
            this.f34750a = new WeakReference<>(moPubVideoNativeAd);
        }

        @Override // com.mopub.nativeads.NativeVideoController.C8969d.AbstractC8970a
        public void execute() {
            MoPubVideoNativeAd moPubVideoNativeAd = this.f34750a.get();
            if (moPubVideoNativeAd != null) {
                moPubVideoNativeAd.m4024d();
            }
        }
    }

    @VisibleForTesting
    /* renamed from: com.mopub.nativeads.MoPubCustomEventVideoNative$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubCustomEventVideoNative$c.class */
    public static class C8942c {
        public NativeVideoController createForId(long j, Context context, List<NativeVideoController.C8969d> list, VastVideoConfig vastVideoConfig) {
            return NativeVideoController.createForId(j, context, list, vastVideoConfig);
        }
    }

    @VisibleForTesting
    /* renamed from: com.mopub.nativeads.MoPubCustomEventVideoNative$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubCustomEventVideoNative$d.class */
    public static class C8943d implements NativeVideoController.C8969d.AbstractC8970a {

        /* renamed from: a */
        public final Context f34751a;

        /* renamed from: b */
        public final String f34752b;

        public C8943d(Context context, String str) {
            this.f34751a = context.getApplicationContext();
            this.f34752b = str;
        }

        @Override // com.mopub.nativeads.NativeVideoController.C8969d.AbstractC8970a
        public void execute() {
            TrackingRequest.makeTrackingHttpRequest(this.f34752b, this.f34751a);
        }
    }

    @VisibleForTesting
    /* renamed from: com.mopub.nativeads.MoPubCustomEventVideoNative$e */
    /* loaded from: classes2-dex2jar.jar:com/mopub/nativeads/MoPubCustomEventVideoNative$e.class */
    public static class C8944e {

        /* renamed from: a */
        public boolean f34753a;

        /* renamed from: b */
        public int f34754b;

        /* renamed from: c */
        public int f34755c;

        /* renamed from: d */
        public int f34756d;

        /* renamed from: e */
        public int f34757e;

        /* renamed from: f */
        public Integer f34758f;

        /* renamed from: g */
        public JSONObject f34759g;

        public C8944e(Map<String, String> map) {
            try {
                this.f34754b = Integer.parseInt(map.get(DataKeys.PLAY_VISIBLE_PERCENT));
                this.f34755c = Integer.parseInt(map.get(DataKeys.PAUSE_VISIBLE_PERCENT));
                this.f34757e = Integer.parseInt(map.get(DataKeys.IMPRESSION_VISIBLE_MS));
                Integer.parseInt(map.get(DataKeys.MAX_BUFFER_MS));
                this.f34753a = true;
            } catch (NumberFormatException e) {
                this.f34753a = false;
            }
            String str = map.get(DataKeys.IMPRESSION_MIN_VISIBLE_PX);
            if (!TextUtils.isEmpty(str)) {
                try {
                    this.f34758f = Integer.valueOf(Integer.parseInt(str));
                } catch (NumberFormatException e2) {
                    MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM, "Unable to parse impression min visible px from server extras.");
                }
            }
            try {
                this.f34756d = Integer.parseInt(map.get(DataKeys.IMPRESSION_MIN_VISIBLE_PERCENT));
            } catch (NumberFormatException e3) {
                MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM, "Unable to parse impression min visible percent from server extras.");
                Integer num = this.f34758f;
                if (num == null || num.intValue() < 0) {
                    this.f34753a = false;
                }
            }
            String str2 = map.get(DataKeys.VIDEO_TRACKERS_KEY);
            if (!TextUtils.isEmpty(str2)) {
                try {
                    this.f34759g = new JSONObject(str2);
                } catch (JSONException e4) {
                    MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM_WITH_THROWABLE;
                    MoPubLog.log(adapterLogEvent, "Failed to parse video trackers to JSON: " + str2, e4);
                    this.f34759g = null;
                }
            }
        }

        /* renamed from: a */
        public int m3960a() {
            return this.f34756d;
        }

        /* renamed from: b */
        public int m3959b() {
            return this.f34757e;
        }

        /* renamed from: c */
        public Integer m3958c() {
            return this.f34758f;
        }

        /* renamed from: d */
        public int m3957d() {
            return this.f34755c;
        }

        /* renamed from: e */
        public int m3956e() {
            return this.f34754b;
        }

        /* renamed from: f */
        public JSONObject m3955f() {
            return this.f34759g;
        }

        /* renamed from: g */
        public boolean m3954g() {
            return this.f34753a;
        }
    }

    @Override // com.mopub.nativeads.CustomEventNative
    /* renamed from: a */
    public void mo3993a() {
        MoPubVideoNativeAd moPubVideoNativeAd = this.f34717a;
        if (moPubVideoNativeAd != null) {
            moPubVideoNativeAd.invalidate();
        }
    }

    @Override // com.mopub.nativeads.CustomEventNative
    /* renamed from: a */
    public void mo3992a(Context context, CustomEventNative.CustomEventNativeListener customEventNativeListener, Map<String, Object> map, Map<String, String> map2) {
        Object obj = map.get(DataKeys.JSON_BODY_KEY);
        if (!(obj instanceof JSONObject)) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, ADAPTER_NAME, Integer.valueOf(NativeErrorCode.INVALID_RESPONSE.getIntCode()), NativeErrorCode.INVALID_RESPONSE);
            customEventNativeListener.onNativeAdFailed(NativeErrorCode.INVALID_RESPONSE);
            return;
        }
        map.get(DataKeys.EVENT_DETAILS);
        C8944e eVar = new C8944e(map2);
        if (!eVar.m3954g()) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, ADAPTER_NAME, Integer.valueOf(NativeErrorCode.INVALID_RESPONSE.getIntCode()), NativeErrorCode.INVALID_RESPONSE);
            customEventNativeListener.onNativeAdFailed(NativeErrorCode.INVALID_RESPONSE);
            return;
        }
        Object obj2 = map.get(DataKeys.CLICK_TRACKING_URL_KEY);
        if (obj2 instanceof String) {
            String str = (String) obj2;
            if (!TextUtils.isEmpty(str)) {
                MoPubVideoNativeAd moPubVideoNativeAd = new MoPubVideoNativeAd(context, (JSONObject) obj, customEventNativeListener, eVar, str);
                this.f34717a = moPubVideoNativeAd;
                try {
                    moPubVideoNativeAd.m3969h();
                    return;
                } catch (IllegalArgumentException e) {
                    MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, ADAPTER_NAME, Integer.valueOf(NativeErrorCode.UNSPECIFIED.getIntCode()), NativeErrorCode.UNSPECIFIED);
                    customEventNativeListener.onNativeAdFailed(NativeErrorCode.UNSPECIFIED);
                    return;
                }
            }
        }
        MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, ADAPTER_NAME, Integer.valueOf(NativeErrorCode.UNSPECIFIED.getIntCode()), NativeErrorCode.UNSPECIFIED);
        customEventNativeListener.onNativeAdFailed(NativeErrorCode.UNSPECIFIED);
    }
}
