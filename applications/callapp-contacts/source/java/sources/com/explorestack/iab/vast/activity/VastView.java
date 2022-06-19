package com.explorestack.iab.vast.activity;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.media.MediaMetadataRetriever;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.Surface;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.amazonaws.services.p101s3.util.Mimetypes;
import com.explorestack.iab.mraid.MraidInterstitial;
import com.explorestack.iab.mraid.MraidInterstitialListener;
import com.explorestack.iab.utils.AbstractC9588c;
import com.explorestack.iab.utils.AbstractC9594i;
import com.explorestack.iab.utils.Assets;
import com.explorestack.iab.utils.C9589d;
import com.explorestack.iab.utils.C9590e;
import com.explorestack.iab.utils.C9591f;
import com.explorestack.iab.utils.C9593h;
import com.explorestack.iab.utils.C9597j;
import com.explorestack.iab.utils.C9598k;
import com.explorestack.iab.utils.C9599l;
import com.explorestack.iab.utils.C9600m;
import com.explorestack.iab.utils.Utils;
import com.explorestack.iab.vast.AbstractC9619a;
import com.explorestack.iab.vast.C9653b;
import com.explorestack.iab.vast.TrackingEvent;
import com.explorestack.iab.vast.VastError;
import com.explorestack.iab.vast.VastLog;
import com.explorestack.iab.vast.VastRequest;
import com.explorestack.iab.vast.VideoType;
import com.explorestack.iab.vast.processor.VastAd;
import com.explorestack.iab.vast.tags.C9666d;
import com.explorestack.iab.vast.tags.C9668f;
import com.explorestack.iab.vast.tags.C9674l;
import com.explorestack.iab.vast.view.IabVideoTexture;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Locale;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/activity/VastView.class */
public class VastView extends RelativeLayout implements AbstractC9588c {

    /* renamed from: A */
    private boolean f32673A;

    /* renamed from: B */
    private boolean f32674B;

    /* renamed from: C */
    private boolean f32675C;

    /* renamed from: D */
    private boolean f32676D;

    /* renamed from: E */
    private boolean f32677E;

    /* renamed from: F */
    private boolean f32678F;

    /* renamed from: G */
    private boolean f32679G;

    /* renamed from: H */
    private boolean f32680H;

    /* renamed from: I */
    private final List<View> f32681I;

    /* renamed from: J */
    private final List<AbstractC9594i<? extends View>> f32682J;

    /* renamed from: K */
    private final Runnable f32683K;

    /* renamed from: L */
    private final Runnable f32684L;

    /* renamed from: M */
    private final AbstractC9651c f32685M;

    /* renamed from: N */
    private final AbstractC9651c f32686N;

    /* renamed from: O */
    private final LinkedList<Integer> f32687O;

    /* renamed from: P */
    private int f32688P;

    /* renamed from: Q */
    private float f32689Q;

    /* renamed from: R */
    private final AbstractC9651c f32690R;

    /* renamed from: S */
    private final TextureView.SurfaceTextureListener f32691S;

    /* renamed from: T */
    private final MediaPlayer.OnCompletionListener f32692T;

    /* renamed from: U */
    private final MediaPlayer.OnErrorListener f32693U;

    /* renamed from: V */
    private final MediaPlayer.OnPreparedListener f32694V;

    /* renamed from: W */
    private final MediaPlayer.OnVideoSizeChangedListener f32695W;

    /* renamed from: a */
    IabVideoTexture f32696a;

    /* renamed from: aa */
    private C9653b.AbstractC9655a f32697aa;

    /* renamed from: ab */
    private final View.OnTouchListener f32698ab;

    /* renamed from: ac */
    private final WebChromeClient f32699ac;

    /* renamed from: ad */
    private final WebViewClient f32700ad;

    /* renamed from: b */
    FrameLayout f32701b;

    /* renamed from: c */
    Surface f32702c;

    /* renamed from: d */
    FrameLayout f32703d;

    /* renamed from: e */
    C9589d f32704e;

    /* renamed from: f */
    C9590e f32705f;

    /* renamed from: g */
    C9600m f32706g;

    /* renamed from: h */
    C9598k f32707h;

    /* renamed from: i */
    C9597j f32708i;

    /* renamed from: j */
    C9599l f32709j;

    /* renamed from: k */
    C9591f f32710k;

    /* renamed from: l */
    MediaPlayer f32711l;

    /* renamed from: m */
    View f32712m;

    /* renamed from: n */
    C9668f f32713n;

    /* renamed from: o */
    C9668f f32714o;

    /* renamed from: p */
    ImageView f32715p;

    /* renamed from: q */
    MraidInterstitial f32716q;

    /* renamed from: r */
    VastRequest f32717r;

    /* renamed from: s */
    VastViewState f32718s;

    /* renamed from: t */
    private final String f32719t;

    /* renamed from: u */
    private AbstractC9652d f32720u;

    /* renamed from: v */
    private AbstractC9649b f32721v;

    /* renamed from: w */
    private int f32722w;

    /* renamed from: x */
    private int f32723x;

    /* renamed from: y */
    private int f32724y;

    /* renamed from: z */
    private int f32725z;

    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/activity/VastView$SavedState.class */
    static class SavedState extends View.BaseSavedState {
        public static final Parcelable.Creator<SavedState> CREATOR = new Parcelable.Creator<SavedState>() { // from class: com.explorestack.iab.vast.activity.VastView.SavedState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        VastRequest vastRequest;
        VastViewState vastViewState;

        SavedState(Parcel parcel) {
            super(parcel);
            this.vastViewState = (VastViewState) parcel.readParcelable(VastViewState.class.getClassLoader());
            this.vastRequest = (VastRequest) parcel.readParcelable(VastRequest.class.getClassLoader());
        }

        SavedState(Parcelable parcelable) {
            super(parcelable);
        }

        @Override // android.view.View.BaseSavedState, android.view.AbsSavedState, android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            super.writeToParcel(parcel, i);
            parcel.writeParcelable(this.vastViewState, 0);
            parcel.writeParcelable(this.vastRequest, 0);
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/activity/VastView$VastViewState.class */
    public static class VastViewState implements Parcelable {
        public static final Parcelable.Creator<VastViewState> CREATOR = new Parcelable.Creator<VastViewState>() { // from class: com.explorestack.iab.vast.activity.VastView.VastViewState.1
            @Override // android.os.Parcelable.Creator
            public final /* synthetic */ VastViewState createFromParcel(Parcel parcel) {
                return new VastViewState(parcel);
            }

            @Override // android.os.Parcelable.Creator
            public final /* bridge */ /* synthetic */ VastViewState[] newArray(int i) {
                return new VastViewState[i];
            }
        };
        int currentQuartile;
        int currentVideoPosition;
        boolean isCompanionShown;
        boolean isCompleted;
        boolean isImpressionProcessed;
        boolean isMuted;
        boolean isPaused;
        boolean isSkipEnabled;
        float skipTime;
        boolean wasClicked;

        VastViewState() {
            this.skipTime = 5.0f;
            this.currentQuartile = 0;
            this.currentVideoPosition = 0;
            this.isMuted = false;
            this.isPaused = false;
            this.isCompleted = false;
            this.isSkipEnabled = false;
            this.isCompanionShown = false;
            this.isImpressionProcessed = false;
            this.wasClicked = false;
        }

        VastViewState(Parcel parcel) {
            this.skipTime = 5.0f;
            this.currentQuartile = 0;
            this.currentVideoPosition = 0;
            this.isMuted = false;
            this.isPaused = false;
            this.isCompleted = false;
            this.isSkipEnabled = false;
            this.isCompanionShown = false;
            this.isImpressionProcessed = false;
            this.wasClicked = false;
            this.skipTime = parcel.readFloat();
            this.currentQuartile = parcel.readInt();
            this.currentVideoPosition = parcel.readInt();
            this.isMuted = parcel.readByte() != 0;
            this.isPaused = parcel.readByte() != 0;
            this.isCompleted = parcel.readByte() != 0;
            this.isSkipEnabled = parcel.readByte() != 0;
            this.isCompanionShown = parcel.readByte() != 0;
            this.isImpressionProcessed = parcel.readByte() != 0;
            this.wasClicked = parcel.readByte() != 0;
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i) {
            parcel.writeFloat(this.skipTime);
            parcel.writeInt(this.currentQuartile);
            parcel.writeInt(this.currentVideoPosition);
            parcel.writeByte(this.isMuted ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.isPaused ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.isCompleted ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.isSkipEnabled ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.isCompanionShown ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.isImpressionProcessed ? (byte) 1 : (byte) 0);
            parcel.writeByte(this.wasClicked ? (byte) 1 : (byte) 0);
        }
    }

    /* renamed from: com.explorestack.iab.vast.activity.VastView$a */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/activity/VastView$a.class */
    public final class C9648a implements MraidInterstitialListener {
        private C9648a() {
            VastView.this = r4;
        }

        @Override // com.explorestack.iab.mraid.MraidInterstitialListener
        public final void onClose(MraidInterstitial mraidInterstitial) {
            VastView.this.m23930o();
        }

        @Override // com.explorestack.iab.mraid.MraidInterstitialListener
        public final void onError(MraidInterstitial mraidInterstitial, int i) {
            VastView.this.m23928p();
        }

        @Override // com.explorestack.iab.mraid.MraidInterstitialListener
        public final void onLoaded(MraidInterstitial mraidInterstitial) {
            if (VastView.this.f32718s.isCompanionShown) {
                VastView.this.m23954d(false);
                mraidInterstitial.showInView(VastView.this, false);
            }
        }

        @Override // com.explorestack.iab.mraid.MraidInterstitialListener
        public final void onOpenBrowser(MraidInterstitial mraidInterstitial, String str, AbstractC9588c abstractC9588c) {
            abstractC9588c.clickHandled();
            VastView vastView = VastView.this;
            VastView.m23976a(vastView, vastView.f32714o, str);
        }

        @Override // com.explorestack.iab.mraid.MraidInterstitialListener
        public final void onPlayVideo(MraidInterstitial mraidInterstitial, String str) {
        }

        @Override // com.explorestack.iab.mraid.MraidInterstitialListener
        public final void onShown(MraidInterstitial mraidInterstitial) {
        }
    }

    /* renamed from: com.explorestack.iab.vast.activity.VastView$b */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/activity/VastView$b.class */
    public static abstract class AbstractC9649b extends Thread {

        /* renamed from: a */
        private WeakReference<Context> f32752a;

        /* renamed from: b */
        private Uri f32753b;

        /* renamed from: c */
        boolean f32754c;

        /* renamed from: d */
        private String f32755d;

        /* renamed from: e */
        private Bitmap f32756e;

        AbstractC9649b(Context context, Uri uri, String str) {
            this.f32752a = new WeakReference<>(context);
            this.f32753b = uri;
            this.f32755d = str;
            if (str != null || (uri != null && !TextUtils.isEmpty(uri.getPath()) && new File(uri.getPath()).exists())) {
                start();
            } else {
                mo23906a((Bitmap) null);
            }
        }

        /* renamed from: a */
        abstract void mo23906a(Bitmap bitmap);

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Context context = this.f32752a.get();
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            if (context != null) {
                try {
                    Uri uri = this.f32753b;
                    if (uri != null) {
                        mediaMetadataRetriever.setDataSource(context, uri);
                    } else {
                        String str = this.f32755d;
                        if (str != null) {
                            mediaMetadataRetriever.setDataSource(str, new HashMap());
                        }
                    }
                    this.f32756e = mediaMetadataRetriever.getFrameAtTime((Long.parseLong(mediaMetadataRetriever.extractMetadata(9)) / 2) * 1000, 2);
                } catch (Exception e) {
                    VastLog.m24018a("MediaFrameRetriever", e.getMessage());
                }
            }
            mediaMetadataRetriever.release();
            if (this.f32754c) {
                return;
            }
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.explorestack.iab.vast.activity.VastView.b.1
                @Override // java.lang.Runnable
                public final void run() {
                    AbstractC9649b abstractC9649b = AbstractC9649b.this;
                    abstractC9649b.mo23906a(abstractC9649b.f32756e);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.explorestack.iab.vast.activity.VastView$c */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/activity/VastView$c.class */
    public interface AbstractC9651c {
        /* renamed from: a */
        void mo23904a(int i, int i2, float f);
    }

    /* renamed from: com.explorestack.iab.vast.activity.VastView$d */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/activity/VastView$d.class */
    public interface AbstractC9652d {
        /* renamed from: a */
        void mo23903a(int i);

        /* renamed from: a */
        void mo23902a(VastRequest vastRequest);

        /* renamed from: a */
        void mo23901a(VastRequest vastRequest, int i);

        /* renamed from: a */
        void mo23900a(VastRequest vastRequest, AbstractC9588c abstractC9588c, String str);

        /* renamed from: a */
        void mo23899a(VastRequest vastRequest, boolean z);

        /* renamed from: b */
        void mo23898b(VastRequest vastRequest);
    }

    public VastView(Context context) {
        this(context, null);
    }

    public VastView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VastView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.f32719t = "VASTView-" + Integer.toHexString(hashCode());
        this.f32718s = new VastViewState();
        this.f32722w = 0;
        this.f32723x = 0;
        this.f32673A = false;
        this.f32674B = false;
        this.f32675C = false;
        this.f32676D = false;
        this.f32677E = false;
        this.f32678F = false;
        this.f32679G = false;
        this.f32680H = false;
        this.f32681I = new ArrayList();
        this.f32682J = new ArrayList();
        this.f32683K = new Runnable() { // from class: com.explorestack.iab.vast.activity.VastView.20
            @Override // java.lang.Runnable
            public final void run() {
                if (VastView.this.m23968b()) {
                    VastView.this.m24000A();
                }
            }
        };
        this.f32684L = new Runnable() { // from class: com.explorestack.iab.vast.activity.VastView.21
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    if (VastView.this.m23968b() && VastView.this.f32711l.isPlaying()) {
                        int duration = VastView.this.f32711l.getDuration();
                        int currentPosition = VastView.this.f32711l.getCurrentPosition();
                        if (currentPosition > 0) {
                            float f = (currentPosition * 100.0f) / duration;
                            VastView.this.f32685M.mo23904a(duration, currentPosition, f);
                            VastView.this.f32686N.mo23904a(duration, currentPosition, f);
                            VastView.this.f32690R.mo23904a(duration, currentPosition, f);
                            if (f > 105.0f) {
                                VastLog.m24018a(VastView.this.f32719t, "Playback tracking: video hang detected");
                                VastView.m23935l(VastView.this);
                            }
                        }
                    }
                } catch (Exception e) {
                    String str = VastView.this.f32719t;
                    VastLog.m24018a(str, "Playback tracking exception: " + e.getMessage());
                }
                VastView.this.postDelayed(this, 16L);
            }
        };
        this.f32685M = new AbstractC9651c() { // from class: com.explorestack.iab.vast.activity.VastView.2
            @Override // com.explorestack.iab.vast.activity.VastView.AbstractC9651c
            /* renamed from: a */
            public final void mo23904a(int i2, int i3, float f) {
                if (VastView.this.f32718s.isSkipEnabled || VastView.this.f32718s.skipTime == BitmapDescriptorFactory.HUE_RED || VastView.this.f32717r.getVideoType() != VideoType.NonRewarded) {
                    return;
                }
                float f2 = i3;
                float f3 = (VastView.this.f32718s.skipTime * 1000.0f) - f2;
                int i4 = (int) ((f2 * 100.0f) / (VastView.this.f32718s.skipTime * 1000.0f));
                VastLog.m24015d(VastView.this.f32719t, "Skip percent: ".concat(String.valueOf(i4)));
                if (i4 < 100 && VastView.this.f32705f != null) {
                    VastView.this.f32705f.m24074a(i4, (int) Math.ceil(f3 / 1000.0d));
                }
                if (f3 > BitmapDescriptorFactory.HUE_RED) {
                    return;
                }
                VastView.this.f32718s.skipTime = BitmapDescriptorFactory.HUE_RED;
                VastView.this.f32718s.isSkipEnabled = true;
                VastView.this.m23969a(true);
            }
        };
        this.f32686N = new AbstractC9651c() { // from class: com.explorestack.iab.vast.activity.VastView.3
            @Override // com.explorestack.iab.vast.activity.VastView.AbstractC9651c
            /* renamed from: a */
            public final void mo23904a(int i2, int i3, float f) {
                if (!VastView.this.f32718s.isCompleted || VastView.this.f32718s.currentQuartile != 3) {
                    if (VastView.this.f32717r.getMaxDurationMillis() > 0 && i3 > VastView.this.f32717r.getMaxDurationMillis() && VastView.this.f32717r.getVideoType() == VideoType.Rewarded) {
                        VastView.this.f32718s.isSkipEnabled = true;
                        VastView.this.m23969a(true);
                    }
                    if (f <= VastView.this.f32718s.currentQuartile * 25.0f) {
                        return;
                    }
                    if (VastView.this.f32718s.currentQuartile == 3) {
                        VastLog.m24015d(VastView.this.f32719t, "Video at third quartile: (" + f + "%)");
                        VastView.this.m23985a(TrackingEvent.thirdQuartile);
                    } else if (VastView.this.f32718s.currentQuartile == 0) {
                        VastLog.m24015d(VastView.this.f32719t, "Video at start: (" + f + "%)");
                        VastView.this.m23985a(TrackingEvent.start);
                    } else if (VastView.this.f32718s.currentQuartile == 1) {
                        VastLog.m24015d(VastView.this.f32719t, "Video at first quartile: (" + f + "%)");
                        VastView.this.m23985a(TrackingEvent.firstQuartile);
                    } else if (VastView.this.f32718s.currentQuartile == 2) {
                        VastLog.m24015d(VastView.this.f32719t, "Video at midpoint: (" + f + "%)");
                        VastView.this.m23985a(TrackingEvent.midpoint);
                    }
                    VastView.this.f32718s.currentQuartile++;
                }
            }
        };
        this.f32687O = new LinkedList<>();
        this.f32688P = 0;
        this.f32689Q = BitmapDescriptorFactory.HUE_RED;
        this.f32690R = new AbstractC9651c() { // from class: com.explorestack.iab.vast.activity.VastView.4
            @Override // com.explorestack.iab.vast.activity.VastView.AbstractC9651c
            /* renamed from: a */
            public final void mo23904a(int i2, int i3, float f) {
                if (VastView.this.f32687O.size() == 2 && ((Integer) VastView.this.f32687O.getFirst()).intValue() > ((Integer) VastView.this.f32687O.getLast()).intValue()) {
                    VastLog.m24018a(VastView.this.f32719t, "Playing progressing error: seek");
                    VastView.this.f32687O.removeFirst();
                }
                if (VastView.this.f32687O.size() == 19) {
                    int intValue = ((Integer) VastView.this.f32687O.getFirst()).intValue();
                    int intValue2 = ((Integer) VastView.this.f32687O.getLast()).intValue();
                    VastLog.m24015d(VastView.this.f32719t, String.format(Locale.ENGLISH, "Playing progressing position: last=%d, first=%d)", Integer.valueOf(intValue2), Integer.valueOf(intValue)));
                    if (intValue2 > intValue) {
                        VastView.this.f32687O.removeFirst();
                    } else {
                        VastView.m23929o(VastView.this);
                        if (VastView.this.f32688P >= 3) {
                            VastLog.m24018a(VastView.this.f32719t, "Playing progressing error: video hang detected");
                            VastView.this.m23926q();
                            return;
                        }
                    }
                }
                try {
                    VastView.this.f32687O.addLast(Integer.valueOf(i3));
                    if (i2 == 0 || i3 <= 0 || VastView.this.f32709j == null) {
                        return;
                    }
                    VastLog.m24015d(VastView.this.f32719t, "Playing progressing percent: ".concat(String.valueOf(f)));
                    if (VastView.this.f32689Q >= f) {
                        return;
                    }
                    VastView.this.f32689Q = f;
                    int i4 = i2 / 1000;
                    VastView.this.f32709j.m24038a(f, Math.min(i4, (int) Math.ceil(i3 / 1000.0f)), i4);
                } catch (Exception e) {
                }
            }
        };
        TextureView.SurfaceTextureListener surfaceTextureListener = new TextureView.SurfaceTextureListener() { // from class: com.explorestack.iab.vast.activity.VastView.5
            @Override // android.view.TextureView.SurfaceTextureListener
            public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3) {
                VastLog.m24015d(VastView.this.f32719t, "onSurfaceTextureAvailable");
                VastView.this.f32702c = new Surface(surfaceTexture);
                VastView.this.f32675C = true;
                if (VastView.this.f32676D) {
                    VastView.this.f32676D = false;
                    VastView.this.m23973a("onSurfaceTextureAvailable");
                } else if (!VastView.this.m23968b()) {
                } else {
                    VastView.this.f32711l.setSurface(VastView.this.f32702c);
                    VastView.this.m23912x();
                }
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
                VastLog.m24015d(VastView.this.f32719t, "onSurfaceTextureDestroyed");
                VastView.this.f32702c = null;
                VastView.this.f32675C = false;
                if (VastView.this.m23968b()) {
                    VastView.this.f32711l.setSurface(null);
                    VastView.this.m23914w();
                    return false;
                }
                return false;
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i3) {
                String str = VastView.this.f32719t;
                VastLog.m24015d(str, "onSurfaceTextureSizeChanged: " + i2 + "/" + i3);
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
            }
        };
        this.f32691S = surfaceTextureListener;
        this.f32692T = new MediaPlayer.OnCompletionListener() { // from class: com.explorestack.iab.vast.activity.VastView.6
            @Override // android.media.MediaPlayer.OnCompletionListener
            public final void onCompletion(MediaPlayer mediaPlayer) {
                VastLog.m24015d(VastView.this.f32719t, "MediaPlayer - onCompletion");
                VastView.m23935l(VastView.this);
            }
        };
        this.f32693U = new MediaPlayer.OnErrorListener() { // from class: com.explorestack.iab.vast.activity.VastView.7
            @Override // android.media.MediaPlayer.OnErrorListener
            public final boolean onError(MediaPlayer mediaPlayer, int i2, int i3) {
                String str = VastView.this.f32719t;
                VastLog.m24015d(str, "MediaPlayer - onError: what=" + i2 + ", extra=" + i3);
                VastView.this.m23926q();
                return true;
            }
        };
        this.f32694V = new MediaPlayer.OnPreparedListener() { // from class: com.explorestack.iab.vast.activity.VastView.8
            @Override // android.media.MediaPlayer.OnPreparedListener
            public final void onPrepared(MediaPlayer mediaPlayer) {
                VastLog.m24015d(VastView.this.f32719t, "MediaPlayer - onPrepared");
                if (!VastView.this.f32718s.isCompanionShown) {
                    VastView.this.m23985a(TrackingEvent.creativeView);
                    VastView.this.m23985a(TrackingEvent.fullscreen);
                    VastView.this.m23992E();
                    VastView.this.m23954d(false);
                    VastView.this.f32678F = true;
                    if (!VastView.this.f32718s.isPaused) {
                        mediaPlayer.start();
                        VastView.this.m23998B();
                    }
                    VastView.this.m23942i();
                    if (VastView.this.f32718s.currentVideoPosition > 0) {
                        mediaPlayer.seekTo(VastView.this.f32718s.currentVideoPosition);
                        VastView.this.m23985a(TrackingEvent.resume);
                    }
                    if (VastView.this.f32718s.isImpressionProcessed) {
                        return;
                    }
                    VastView.m23997B(VastView.this);
                    if (!VastView.this.f32717r.shouldPreloadCompanion()) {
                        return;
                    }
                    VastView.this.m23963b(false);
                }
            }
        };
        this.f32695W = new MediaPlayer.OnVideoSizeChangedListener() { // from class: com.explorestack.iab.vast.activity.VastView.9
            @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
            public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i2, int i3) {
                VastLog.m24015d(VastView.this.f32719t, "onVideoSizeChanged");
                VastView.this.f32724y = i2;
                VastView.this.f32725z = i3;
                VastView.this.m24000A();
            }
        };
        this.f32697aa = new C9653b.AbstractC9655a() { // from class: com.explorestack.iab.vast.activity.VastView.10
            @Override // com.explorestack.iab.vast.C9653b.AbstractC9655a
            /* renamed from: a */
            public final void mo23891a() {
                VastView.this.m23908z();
            }
        };
        this.f32698ab = new View.OnTouchListener() { // from class: com.explorestack.iab.vast.activity.VastView.11
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                int action = motionEvent.getAction();
                if (action == 0 || action == 1) {
                    VastView.this.f32681I.add(view);
                    if (view.hasFocus()) {
                        return false;
                    }
                    view.requestFocus();
                    return false;
                }
                return false;
            }
        };
        this.f32699ac = new WebChromeClient() { // from class: com.explorestack.iab.vast.activity.VastView.13
            @Override // android.webkit.WebChromeClient
            public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
                VastLog.m24015d("JS alert", str2);
                jsResult.cancel();
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public final boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
                VastLog.m24015d("JS confirm", str2);
                jsResult.cancel();
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public final boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
                VastLog.m24015d("JS prompt", str2);
                jsPromptResult.cancel();
                return true;
            }
        };
        this.f32700ad = new WebViewClient() { // from class: com.explorestack.iab.vast.activity.VastView.14
            @Override // android.webkit.WebViewClient
            public final void onPageFinished(WebView webView, String str) {
                webView.setBackgroundColor(0);
                webView.setLayerType(1, null);
            }

            @Override // android.webkit.WebViewClient
            public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
                if (webResourceRequest.hasGesture()) {
                    VastView.this.f32681I.add(webView);
                }
                return shouldOverrideUrlLoading(webView, webResourceRequest.getUrl().toString());
            }

            @Override // android.webkit.WebViewClient
            public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (VastView.this.f32681I.contains(webView)) {
                    VastLog.m24015d(VastView.this.f32719t, "banner clicked");
                    VastView vastView = VastView.this;
                    VastView.m23976a(vastView, vastView.f32713n, str);
                    return true;
                }
                return true;
            }
        };
        setBackgroundColor(-16777216);
        setOnClickListener(new View.OnClickListener() { // from class: com.explorestack.iab.vast.activity.VastView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (VastView.this.m23968b() || VastView.this.f32718s.isCompanionShown) {
                    VastView.this.m23940j();
                }
            }
        });
        IabVideoTexture iabVideoTexture = new IabVideoTexture(context);
        this.f32696a = iabVideoTexture;
        iabVideoTexture.setSurfaceTextureListener(surfaceTextureListener);
        FrameLayout frameLayout = new FrameLayout(context);
        this.f32701b = frameLayout;
        frameLayout.addView(this.f32696a, new FrameLayout.LayoutParams(-1, -1, 17));
        addView(this.f32701b, new RelativeLayout.LayoutParams(-1, -1));
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.f32703d = frameLayout2;
        frameLayout2.setBackgroundColor(0);
        addView(this.f32703d, new ViewGroup.LayoutParams(-1, -1));
    }

    /* renamed from: A */
    public void m24000A() {
        int i;
        int i2 = this.f32724y;
        if (i2 == 0 || (i = this.f32725z) == 0) {
            VastLog.m24015d(this.f32719t, "configureVideoSurface - skip: videoWidth or videoHeight is 0");
        } else {
            this.f32696a.setVideoSize(i2, i);
        }
    }

    /* renamed from: B */
    public void m23998B() {
        m23994D();
        m23996C();
        this.f32684L.run();
    }

    /* renamed from: B */
    static /* synthetic */ void m23997B(VastView vastView) {
        VastLog.m24015d(vastView.f32719t, "handleImpressions");
        if (vastView.f32717r != null) {
            vastView.f32718s.isImpressionProcessed = true;
            vastView.m23972a(vastView.f32717r.getVastAd().getImpressionUrlList());
        }
    }

    /* renamed from: C */
    private void m23996C() {
        removeCallbacks(this.f32684L);
    }

    /* renamed from: D */
    private void m23994D() {
        this.f32687O.clear();
        this.f32688P = 0;
        this.f32689Q = BitmapDescriptorFactory.HUE_RED;
    }

    /* renamed from: E */
    public void m23992E() {
        if (!m23922s()) {
            return;
        }
        m23940j();
    }

    /* renamed from: a */
    private View m23986a(Context context, C9668f c9668f) {
        boolean m24107b = Utils.m24107b(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Utils.m24117a(context, c9668f.m23842d("width") > 0 ? c9668f.m23842d("width") : m24107b ? 728.0f : 320.0f), Utils.m24117a(context, c9668f.m23842d("height") > 0 ? c9668f.m23842d("height") : m24107b ? 90.0f : 50.0f));
        WebView webView = new WebView(context);
        webView.setId(Utils.m24123a());
        webView.getSettings().setJavaScriptEnabled(true);
        webView.setScrollContainer(false);
        webView.setVerticalScrollBarEnabled(false);
        webView.setHorizontalScrollBarEnabled(false);
        webView.setScrollBarStyle(33554432);
        webView.setFocusableInTouchMode(false);
        webView.setBackgroundColor(0);
        webView.setOnTouchListener(this.f32698ab);
        webView.setWebViewClient(this.f32700ad);
        webView.setWebChromeClient(this.f32699ac);
        String m23855e = c9668f.m23855e();
        if (m23855e != null) {
            webView.loadDataWithBaseURL("", m23855e, Mimetypes.MIMETYPE_HTML, "utf-8", null);
        }
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setId(Utils.m24123a());
        frameLayout.setLayoutParams(layoutParams);
        frameLayout.addView(webView, new FrameLayout.LayoutParams(-1, -1));
        return frameLayout;
    }

    /* renamed from: a */
    private static C9593h m23982a(AbstractC9619a abstractC9619a, C9593h c9593h) {
        if (abstractC9619a == null) {
            return null;
        }
        if (c9593h == null) {
            C9593h c9593h2 = new C9593h();
            c9593h2.f32583a = abstractC9619a.mo23863j();
            c9593h2.f32584b = abstractC9619a.mo23862k();
            return c9593h2;
        }
        if (!c9593h.m24049i()) {
            c9593h.f32583a = abstractC9619a.mo23863j();
        }
        if (!c9593h.m24048j()) {
            c9593h.f32584b = abstractC9619a.mo23862k();
        }
        return c9593h;
    }

    /* renamed from: a */
    private void m23987a(int i) {
        VastRequest vastRequest;
        try {
            VastRequest vastRequest2 = this.f32717r;
            if (vastRequest2 != null) {
                vastRequest2.sendError(i);
            }
        } catch (Exception e) {
            VastLog.m24018a(this.f32719t, e.getMessage());
        }
        AbstractC9652d abstractC9652d = this.f32720u;
        if (abstractC9652d == null || (vastRequest = this.f32717r) == null) {
            return;
        }
        abstractC9652d.mo23901a(vastRequest, i);
    }

    /* renamed from: a */
    public void m23985a(TrackingEvent trackingEvent) {
        VastLog.m24015d(this.f32719t, String.format("Track Event: %s", trackingEvent));
        VastRequest vastRequest = this.f32717r;
        VastAd vastAd = vastRequest != null ? vastRequest.getVastAd() : null;
        if (vastAd != null) {
            m23970a(vastAd.getTrackingEventListMap(), trackingEvent);
        }
    }

    /* renamed from: a */
    private void m23983a(AbstractC9619a abstractC9619a) {
        if (abstractC9619a != null && !abstractC9619a.mo23865h().m24056d().booleanValue()) {
            C9597j c9597j = this.f32708i;
            if (c9597j == null) {
                return;
            }
            c9597j.m24041d();
            return;
        }
        C9593h c9593h = null;
        if (this.f32708i == null) {
            this.f32708i = new C9597j(null);
        }
        if (abstractC9619a != null) {
            c9593h = abstractC9619a.mo23865h();
        }
        this.f32708i.m24045a(getContext(), (ViewGroup) this, m23982a(abstractC9619a, c9593h));
    }

    /* renamed from: a */
    private void m23981a(AbstractC9619a abstractC9619a, boolean z) {
        if (!(!z && (abstractC9619a == null || abstractC9619a.mo23870c().m24056d().booleanValue()))) {
            C9591f c9591f = this.f32710k;
            if (c9591f == null) {
                return;
            }
            c9591f.m24041d();
            return;
        }
        if (this.f32710k == null) {
            C9591f c9591f2 = new C9591f(new View.OnClickListener() { // from class: com.explorestack.iab.vast.activity.VastView.12
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    VastView.this.m23934m();
                }
            });
            this.f32710k = c9591f2;
            this.f32682J.add(c9591f2);
        }
        this.f32710k.m24045a(getContext(), (ViewGroup) this.f32703d, m23982a(abstractC9619a, abstractC9619a != null ? abstractC9619a.mo23870c() : null));
    }

    /* renamed from: a */
    public void m23973a(String str) {
        VastLog.m24015d(this.f32719t, "startPlayback: ".concat(String.valueOf(str)));
        if (!m23922s()) {
            return;
        }
        if (this.f32718s.isCompanionShown) {
            m23953e();
        } else if (!this.f32673A) {
            this.f32674B = true;
        } else {
            if (this.f32675C) {
                m23910y();
                m23950f();
                m24000A();
                m23916v();
                C9653b.m23894a(this, this.f32697aa);
            } else {
                this.f32676D = true;
            }
            if (this.f32701b.getVisibility() == 0) {
                return;
            }
            this.f32701b.setVisibility(0);
        }
    }

    /* renamed from: a */
    private void m23972a(List<String> list) {
        if (!m23922s()) {
            return;
        }
        if (list == null || list.size() == 0) {
            VastLog.m24015d(this.f32719t, "\turl list is null");
        } else {
            this.f32717r.fireUrls(list, null);
        }
    }

    /* renamed from: a */
    private void m23970a(Map<TrackingEvent, List<String>> map, TrackingEvent trackingEvent) {
        if (map == null || map.size() <= 0) {
            VastLog.m24015d(this.f32719t, String.format("Processing Event - fail: %s (tracking event map is null or empty)", trackingEvent));
        } else {
            m23972a(map.get(trackingEvent));
        }
    }

    /* renamed from: a */
    public void m23969a(boolean z) {
        this.f32680H = z;
        m23962c();
    }

    /* renamed from: a */
    static /* synthetic */ boolean m23976a(VastView vastView, C9668f c9668f, String str) {
        return vastView.m23971a(c9668f != null ? c9668f.f32806a : null, str);
    }

    /* renamed from: a */
    private boolean m23971a(List<String> list, String str) {
        VastLog.m24015d(this.f32719t, "processClickThroughEvent: ".concat(String.valueOf(str)));
        this.f32718s.wasClicked = true;
        if (str != null) {
            m23972a(list);
            if (this.f32720u == null || this.f32717r == null) {
                return true;
            }
            m23914w();
            m23954d(true);
            this.f32720u.mo23900a(this.f32717r, this, str);
            return true;
        }
        return false;
    }

    /* renamed from: b */
    private void m23967b(TrackingEvent trackingEvent) {
        VastLog.m24015d(this.f32719t, String.format("Track Banner Event: %s", trackingEvent));
        C9668f c9668f = this.f32713n;
        if (c9668f != null) {
            m23970a(c9668f.f32807b, trackingEvent);
        }
    }

    /* renamed from: b */
    private void m23966b(AbstractC9619a abstractC9619a) {
        if (abstractC9619a != null && !abstractC9619a.mo23868e().m24056d().booleanValue()) {
            C9589d c9589d = this.f32704e;
            if (c9589d == null) {
                return;
            }
            c9589d.m24041d();
            return;
        }
        if (this.f32704e == null) {
            C9589d c9589d2 = new C9589d(new View.OnClickListener() { // from class: com.explorestack.iab.vast.activity.VastView.15
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    if (VastView.this.f32717r == null || !VastView.this.f32717r.isR1() || VastView.this.f32718s.wasClicked || !VastView.this.m23934m()) {
                        if (VastView.this.f32677E) {
                            VastView.this.m23932n();
                        } else {
                            VastView.this.m23988a();
                        }
                    }
                }
            });
            this.f32704e = c9589d2;
            this.f32682J.add(c9589d2);
        }
        this.f32704e.m24045a(getContext(), (ViewGroup) this.f32703d, m23982a(abstractC9619a, abstractC9619a != null ? abstractC9619a.mo23868e() : null));
    }

    /* renamed from: b */
    public void m23963b(boolean z) {
        if (!m23922s()) {
            return;
        }
        if (!z) {
            int measuredWidth = getMeasuredWidth();
            int paddingLeft = getPaddingLeft();
            C9668f companion = this.f32717r.getVastAd().getCompanion((measuredWidth - paddingLeft) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
            if (this.f32714o != companion) {
                if (companion == null || !this.f32717r.shouldUseScreenSizeForCompanionOrientation()) {
                    this.f32723x = this.f32722w;
                } else {
                    this.f32723x = Utils.m24120a(companion.m23842d("width"), companion.m23842d("height"));
                }
                this.f32714o = companion;
                MraidInterstitial mraidInterstitial = this.f32716q;
                if (mraidInterstitial != null) {
                    mraidInterstitial.destroy();
                    this.f32716q = null;
                }
            }
        }
        if (this.f32714o == null) {
            if (this.f32715p == null) {
                this.f32715p = new ImageView(getContext());
            }
            this.f32715p.setAdjustViewBounds(true);
            this.f32715p.setScaleType(ImageView.ScaleType.FIT_CENTER);
        } else if (this.f32716q != null) {
        } else {
            m23947g();
            String m23856d = this.f32714o.m23856d();
            if (m23856d == null) {
                m23928p();
                return;
            }
            C9666d appodealExtension = this.f32717r.getVastAd().getAppodealExtension();
            C9674l c9674l = appodealExtension != null ? appodealExtension.f32788b : null;
            MraidInterstitial.Builder listener = MraidInterstitial.newBuilder().setBaseUrl(null).setPreload(true).setCloseTime(this.f32717r.getCompanionCloseTime()).forceUseNativeCloseButton(this.f32717r.isForceUseNativeCloseTime()).setIsTag(false).setListener(new C9648a());
            if (c9674l != null) {
                listener.setCloseStyle(c9674l.f32824a);
                listener.setCountDownStyle(c9674l.f32825b);
                listener.setLoadingStyle(c9674l.f32826c);
                listener.setProgressStyle(c9674l.f32827d);
                listener.setDurationSec(c9674l.f32830g);
                listener.setProductLink(c9674l.f32828e);
                if (c9674l.f32832i) {
                    listener.forceUseNativeCloseButton(true);
                }
                listener.setR1(c9674l.f32833j);
                listener.setR2(c9674l.f32834k);
            }
            MraidInterstitial build = listener.build(getContext());
            this.f32716q = build;
            build.load(m23856d);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void m23962c() {
        /*
            r3 = this;
            r0 = r3
            boolean r0 = r0.f32680H
            r4 = r0
            r0 = 1
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r4
            if (r0 != 0) goto L15
            r0 = 0
            r7 = r0
        L10:
            r0 = 0
            r5 = r0
            goto L2f
        L15:
            r0 = r3
            boolean r0 = r0.m23920t()
            if (r0 != 0) goto L2c
            r0 = r3
            boolean r0 = r0.f32677E
            if (r0 == 0) goto L26
            goto L2c
        L26:
            r0 = 1
            r7 = r0
            goto L10
        L2c:
            r0 = 0
            r7 = r0
        L2f:
            r0 = r3
            com.explorestack.iab.utils.d r0 = r0.f32704e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L4c
            r0 = r5
            if (r0 == 0) goto L43
            r0 = 0
            r5 = r0
            goto L46
        L43:
            r0 = 8
            r5 = r0
        L46:
            r0 = r8
            r1 = r5
            r0.m24046a(r1)
        L4c:
            r0 = r3
            com.explorestack.iab.utils.e r0 = r0.f32705f
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L6d
            r0 = r7
            if (r0 == 0) goto L62
            r0 = r6
            r7 = r0
            goto L66
        L62:
            r0 = 8
            r7 = r0
        L66:
            r0 = r8
            r1 = r7
            r0.m24046a(r1)
        L6d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.iab.vast.activity.VastView.m23962c():void");
    }

    /* renamed from: c */
    private void m23961c(TrackingEvent trackingEvent) {
        VastLog.m24015d(this.f32719t, String.format("Track Companion Event: %s", trackingEvent));
        C9668f c9668f = this.f32714o;
        if (c9668f != null) {
            m23970a(c9668f.f32807b, trackingEvent);
        }
    }

    /* renamed from: c */
    private void m23960c(AbstractC9619a abstractC9619a) {
        if (abstractC9619a != null && !abstractC9619a.mo23864i().m24056d().booleanValue()) {
            C9590e c9590e = this.f32705f;
            if (c9590e == null) {
                return;
            }
            c9590e.m24041d();
            return;
        }
        C9593h c9593h = null;
        if (this.f32705f == null) {
            C9590e c9590e2 = new C9590e(null);
            this.f32705f = c9590e2;
            this.f32682J.add(c9590e2);
        }
        if (abstractC9619a != null) {
            c9593h = abstractC9619a.mo23864i();
        }
        this.f32705f.m24045a(getContext(), (ViewGroup) this.f32703d, m23982a(abstractC9619a, c9593h));
    }

    /* renamed from: c */
    private void m23958c(boolean z) {
        AbstractC9652d abstractC9652d;
        if (!m23922s() || this.f32677E) {
            return;
        }
        m23963b(z);
        this.f32677E = true;
        this.f32718s.isCompanionShown = true;
        int i = getResources().getConfiguration().orientation;
        int i2 = this.f32723x;
        if (i != i2 && (abstractC9652d = this.f32720u) != null) {
            abstractC9652d.mo23903a(i2);
        }
        C9599l c9599l = this.f32709j;
        if (c9599l != null) {
            c9599l.m24041d();
        }
        C9598k c9598k = this.f32707h;
        if (c9598k != null) {
            c9598k.m24041d();
        }
        C9600m c9600m = this.f32706g;
        if (c9600m != null) {
            c9600m.m24041d();
        }
        m23938k();
        if (this.f32714o == null) {
            m23969a(true);
            if (this.f32715p != null) {
                final WeakReference weakReference = new WeakReference(this.f32715p);
                this.f32721v = new AbstractC9649b(getContext(), this.f32717r.getFileUri(), this.f32717r.getVastAd().getPickedMediaFileTag().getText()) { // from class: com.explorestack.iab.vast.activity.VastView.19
                    @Override // com.explorestack.iab.vast.activity.VastView.AbstractC9649b
                    /* renamed from: a */
                    final void mo23906a(Bitmap bitmap) {
                        ImageView imageView = (ImageView) weakReference.get();
                        if (imageView != null) {
                            if (bitmap == null) {
                                imageView.setOnClickListener(new View.OnClickListener() { // from class: com.explorestack.iab.vast.activity.VastView.19.1
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        VastView.this.m23934m();
                                        VastView.this.m23932n();
                                    }
                                });
                                return;
                            }
                            imageView.setImageBitmap(bitmap);
                            imageView.setAlpha(BitmapDescriptorFactory.HUE_RED);
                            imageView.animate().alpha(1.0f).setDuration(100L).setListener(new AnimatorListenerAdapter() { // from class: com.explorestack.iab.vast.activity.VastView.19.2
                                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                public final void onAnimationEnd(Animator animator) {
                                    super.onAnimationEnd(animator);
                                    VastView.this.f32701b.setVisibility(8);
                                }
                            }).start();
                            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.explorestack.iab.vast.activity.VastView.19.3
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    VastView.this.m23934m();
                                }
                            });
                        }
                    }
                };
            }
            addView(this.f32715p, new FrameLayout.LayoutParams(-1, -1));
        } else {
            m23969a(false);
            this.f32701b.setVisibility(8);
            m23957d();
            C9591f c9591f = this.f32710k;
            if (c9591f != null) {
                c9591f.m24046a(8);
            }
            MraidInterstitial mraidInterstitial = this.f32716q;
            if (mraidInterstitial == null) {
                m23954d(false);
                m23928p();
            } else if (mraidInterstitial.isReady()) {
                m23954d(false);
                this.f32716q.showInView(this, false);
            } else {
                m23954d(true);
            }
        }
        m23910y();
        this.f32703d.bringToFront();
        m23961c(TrackingEvent.creativeView);
    }

    /* renamed from: d */
    private void m23957d() {
        View view = this.f32712m;
        if (view != null) {
            Utils.m24104b(view);
            this.f32712m = null;
        }
    }

    /* renamed from: d */
    private void m23956d(AbstractC9619a abstractC9619a) {
        if (abstractC9619a != null && !abstractC9619a.mo23869d().m24056d().booleanValue()) {
            C9598k c9598k = this.f32707h;
            if (c9598k == null) {
                return;
            }
            c9598k.m24041d();
            return;
        }
        if (this.f32707h == null) {
            C9598k c9598k2 = new C9598k(new View.OnClickListener() { // from class: com.explorestack.iab.vast.activity.VastView.16
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    VastView.m23951e(VastView.this);
                }
            });
            this.f32707h = c9598k2;
            this.f32682J.add(c9598k2);
        }
        this.f32707h.m24045a(getContext(), (ViewGroup) this.f32703d, m23982a(abstractC9619a, abstractC9619a != null ? abstractC9619a.mo23869d() : null));
    }

    /* renamed from: d */
    public void m23954d(boolean z) {
        C9597j c9597j = this.f32708i;
        if (c9597j == null) {
            return;
        }
        if (!z) {
            c9597j.m24046a(8);
            return;
        }
        c9597j.m24046a(0);
        this.f32708i.m24044b();
    }

    /* renamed from: e */
    private void m23953e() {
        m23958c(false);
    }

    /* renamed from: e */
    private void m23952e(AbstractC9619a abstractC9619a) {
        if (abstractC9619a == null || !abstractC9619a.mo23866g().m24056d().booleanValue()) {
            C9600m c9600m = this.f32706g;
            if (c9600m == null) {
                return;
            }
            c9600m.m24041d();
            return;
        }
        if (this.f32706g == null) {
            C9600m c9600m2 = new C9600m(new View.OnClickListener() { // from class: com.explorestack.iab.vast.activity.VastView.17
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    VastView.m23948f(VastView.this);
                }
            });
            this.f32706g = c9600m2;
            this.f32682J.add(c9600m2);
        }
        this.f32706g.m24045a(getContext(), (ViewGroup) this.f32703d, m23982a(abstractC9619a, abstractC9619a != null ? abstractC9619a.mo23866g() : null));
    }

    /* renamed from: e */
    static /* synthetic */ void m23951e(VastView vastView) {
        VastViewState vastViewState = vastView.f32718s;
        vastViewState.isMuted = !vastViewState.isMuted;
        vastView.m23942i();
        vastView.m23985a(vastView.f32718s.isMuted ? TrackingEvent.mute : TrackingEvent.unmute);
    }

    /* renamed from: f */
    private void m23950f() {
        if (this.f32715p != null) {
            m23947g();
        } else {
            MraidInterstitial mraidInterstitial = this.f32716q;
            if (mraidInterstitial != null) {
                mraidInterstitial.destroy();
                this.f32716q = null;
                this.f32714o = null;
            }
        }
        this.f32677E = false;
    }

    /* renamed from: f */
    private void m23949f(AbstractC9619a abstractC9619a) {
        if (abstractC9619a != null && !abstractC9619a.mo23867f().m24056d().booleanValue()) {
            C9599l c9599l = this.f32709j;
            if (c9599l == null) {
                return;
            }
            c9599l.m24041d();
            return;
        }
        C9593h c9593h = null;
        if (this.f32709j == null) {
            C9599l c9599l2 = new C9599l(null);
            this.f32709j = c9599l2;
            this.f32682J.add(c9599l2);
        }
        if (abstractC9619a != null) {
            c9593h = abstractC9619a.mo23867f();
        }
        this.f32709j.m24045a(getContext(), (ViewGroup) this.f32703d, m23982a(abstractC9619a, c9593h));
        this.f32709j.m24038a(BitmapDescriptorFactory.HUE_RED, 0, 0);
    }

    /* renamed from: f */
    static /* synthetic */ void m23948f(VastView vastView) {
        if (vastView.m23922s()) {
            vastView.f32718s.isCompanionShown = false;
            vastView.f32718s.currentVideoPosition = 0;
            vastView.m23950f();
            vastView.m23946g(vastView.f32717r.getVastAd().getAppodealExtension());
            vastView.m23973a("restartPlayback");
        }
    }

    /* renamed from: g */
    private void m23947g() {
        if (this.f32715p != null) {
            m23944h();
            removeView(this.f32715p);
            this.f32715p = null;
        }
    }

    /* renamed from: g */
    private void m23946g(AbstractC9619a abstractC9619a) {
        C9593h c9593h;
        C9593h m24068a = abstractC9619a != null ? Assets.defVideoStyle.m24068a(abstractC9619a.mo23871b()) : Assets.defVideoStyle;
        if (abstractC9619a == null || !abstractC9619a.mo23859n()) {
            this.f32701b.setOnClickListener(null);
            this.f32701b.setClickable(false);
        } else {
            this.f32701b.setOnClickListener(new View.OnClickListener() { // from class: com.explorestack.iab.vast.activity.VastView.18
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    VastView.this.m23934m();
                }
            });
        }
        this.f32701b.setBackgroundColor(m24068a.m24064b().intValue());
        m23957d();
        if (this.f32713n == null || this.f32718s.isCompanionShown) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(13);
            this.f32701b.setLayoutParams(layoutParams);
            return;
        }
        this.f32712m = m23986a(getContext(), this.f32713n);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(this.f32712m.getLayoutParams());
        if ("inline".equals(m24068a.f32589g)) {
            c9593h = Assets.defInlineBannerStyle;
            if (getResources().getConfiguration().orientation == 2) {
                layoutParams2.addRule(15);
                layoutParams3.height = -1;
                layoutParams3.addRule(10);
                layoutParams3.addRule(12);
                if (m24068a.m24054e().intValue() == 3) {
                    layoutParams2.addRule(9);
                    layoutParams2.addRule(0, this.f32712m.getId());
                    layoutParams3.addRule(11);
                } else {
                    layoutParams2.addRule(11);
                    layoutParams2.addRule(1, this.f32712m.getId());
                    layoutParams3.addRule(9);
                }
            } else {
                layoutParams2.addRule(14);
                layoutParams3.width = -1;
                layoutParams3.addRule(9);
                layoutParams3.addRule(11);
                if (m24068a.m24052f().intValue() == 48) {
                    layoutParams2.addRule(10);
                    layoutParams2.addRule(2, this.f32712m.getId());
                    layoutParams3.addRule(12);
                } else {
                    layoutParams2.addRule(12);
                    layoutParams2.addRule(3, this.f32712m.getId());
                    layoutParams3.addRule(10);
                }
            }
        } else {
            c9593h = Assets.defBannerStyle;
            layoutParams2.addRule(13);
        }
        C9593h c9593h2 = c9593h;
        if (abstractC9619a != null) {
            c9593h2 = c9593h.m24068a(abstractC9619a.mo23870c());
        }
        c9593h2.m24071a(getContext(), this.f32712m);
        c9593h2.m24070a(getContext(), layoutParams3);
        c9593h2.m24069a(layoutParams3);
        this.f32712m.setBackgroundColor(c9593h2.m24064b().intValue());
        m24068a.m24071a(getContext(), this.f32701b);
        m24068a.m24070a(getContext(), layoutParams2);
        this.f32701b.setLayoutParams(layoutParams2);
        addView(this.f32712m, layoutParams3);
        m23967b(TrackingEvent.creativeView);
    }

    /* renamed from: h */
    private void m23944h() {
        AbstractC9649b abstractC9649b = this.f32721v;
        if (abstractC9649b != null) {
            abstractC9649b.f32754c = true;
            this.f32721v = null;
        }
    }

    /* renamed from: i */
    public void m23942i() {
        C9598k c9598k;
        if (!m23968b() || (c9598k = this.f32707h) == null) {
            return;
        }
        c9598k.f32614e = this.f32718s.isMuted;
        c9598k.m24047a();
        if (this.f32718s.isMuted) {
            this.f32711l.setVolume(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
        } else {
            this.f32711l.setVolume(1.0f, 1.0f);
        }
    }

    /* renamed from: j */
    public void m23940j() {
        for (AbstractC9594i<? extends View> abstractC9594i : this.f32682J) {
            abstractC9594i.m24040e();
        }
    }

    /* renamed from: k */
    private void m23938k() {
        for (AbstractC9594i<? extends View> abstractC9594i : this.f32682J) {
            abstractC9594i.m24039f();
        }
    }

    /* renamed from: l */
    private void m23936l() {
        AbstractC9652d abstractC9652d;
        VastLog.m24018a(this.f32719t, "performVideoCloseClick");
        m23910y();
        if (this.f32679G) {
            m23932n();
            return;
        }
        if (!this.f32718s.isCompleted) {
            m23985a(TrackingEvent.skip);
        }
        VastRequest vastRequest = this.f32717r;
        if (vastRequest != null && vastRequest.getMaxDurationMillis() > 0 && this.f32717r.getVideoType() == VideoType.Rewarded && (abstractC9652d = this.f32720u) != null) {
            abstractC9652d.mo23898b(this.f32717r);
        }
        m23924r();
    }

    /* renamed from: l */
    static /* synthetic */ void m23935l(VastView vastView) {
        VastLog.m24015d(vastView.f32719t, "handleComplete");
        vastView.f32718s.isSkipEnabled = true;
        if (!vastView.f32679G && !vastView.f32718s.isCompleted) {
            vastView.f32718s.isCompleted = true;
            AbstractC9652d abstractC9652d = vastView.f32720u;
            if (abstractC9652d != null) {
                abstractC9652d.mo23898b(vastView.f32717r);
            }
            VastRequest vastRequest = vastView.f32717r;
            if (vastRequest != null && vastRequest.isR2() && !vastView.f32718s.wasClicked) {
                vastView.m23934m();
            }
            vastView.m23985a(TrackingEvent.complete);
        }
        if (vastView.f32718s.isCompleted) {
            vastView.m23924r();
        }
    }

    /* renamed from: m */
    public boolean m23934m() {
        VastLog.m24018a(this.f32719t, "handleInfoClicked");
        VastRequest vastRequest = this.f32717r;
        if (vastRequest != null) {
            return m23971a(vastRequest.getVastAd().getClickTrackingUrlList(), this.f32717r.getVastAd().getClickThroughUrl());
        }
        return false;
    }

    /* renamed from: n */
    public void m23932n() {
        VastRequest vastRequest;
        VastLog.m24018a(this.f32719t, "handleClose");
        m23985a(TrackingEvent.close);
        AbstractC9652d abstractC9652d = this.f32720u;
        if (abstractC9652d == null || (vastRequest = this.f32717r) == null) {
            return;
        }
        abstractC9652d.mo23899a(vastRequest, m23918u());
    }

    /* renamed from: o */
    static /* synthetic */ int m23929o(VastView vastView) {
        int i = vastView.f32688P;
        vastView.f32688P = i + 1;
        return i;
    }

    /* renamed from: o */
    public void m23930o() {
        VastRequest vastRequest;
        VastLog.m24018a(this.f32719t, "handleCompanionClose");
        m23961c(TrackingEvent.close);
        AbstractC9652d abstractC9652d = this.f32720u;
        if (abstractC9652d == null || (vastRequest = this.f32717r) == null) {
            return;
        }
        abstractC9652d.mo23899a(vastRequest, m23918u());
    }

    /* renamed from: p */
    public void m23928p() {
        VastRequest vastRequest;
        VastLog.m24018a(this.f32719t, "handleCompanionShowError");
        m23987a(600);
        if (this.f32714o != null) {
            m23950f();
            m23958c(true);
            return;
        }
        AbstractC9652d abstractC9652d = this.f32720u;
        if (abstractC9652d == null || (vastRequest = this.f32717r) == null) {
            return;
        }
        abstractC9652d.mo23899a(vastRequest, m23918u());
    }

    /* renamed from: q */
    public void m23926q() {
        VastLog.m24018a(this.f32719t, "handlePlaybackError");
        this.f32679G = true;
        m23987a(VastError.ERROR_CODE_ERROR_SHOWING);
        m23924r();
    }

    /* renamed from: r */
    private void m23924r() {
        VastLog.m24015d(this.f32719t, "finishVideoPlaying");
        m23910y();
        VastRequest vastRequest = this.f32717r;
        if (vastRequest == null || vastRequest.isAutoClose() || (this.f32717r.getVastAd().getAppodealExtension() != null && !this.f32717r.getVastAd().getAppodealExtension().f32788b.f32831h)) {
            m23932n();
            return;
        }
        if (m23920t()) {
            m23985a(TrackingEvent.close);
        }
        m23954d(false);
        m23957d();
        m23958c(false);
    }

    /* renamed from: s */
    private boolean m23922s() {
        VastRequest vastRequest = this.f32717r;
        return (vastRequest == null || vastRequest.getVastAd() == null) ? false : true;
    }

    /* renamed from: t */
    private boolean m23920t() {
        return this.f32718s.isSkipEnabled || this.f32718s.skipTime == BitmapDescriptorFactory.HUE_RED;
    }

    /* renamed from: u */
    private boolean m23918u() {
        VastRequest vastRequest = this.f32717r;
        if (vastRequest != null) {
            if (vastRequest.getCompanionCloseTime() == BitmapDescriptorFactory.HUE_RED && this.f32718s.isCompleted) {
                return true;
            }
            return this.f32717r.getCompanionCloseTime() > BitmapDescriptorFactory.HUE_RED && this.f32718s.isCompanionShown;
        }
        return false;
    }

    /* renamed from: v */
    private void m23916v() {
        try {
            if (!m23922s() || this.f32718s.isCompanionShown) {
                return;
            }
            boolean z = false;
            if (this.f32711l == null) {
                MediaPlayer mediaPlayer = new MediaPlayer();
                this.f32711l = mediaPlayer;
                mediaPlayer.setLooping(false);
                this.f32711l.setAudioStreamType(3);
                this.f32711l.setOnCompletionListener(this.f32692T);
                this.f32711l.setOnErrorListener(this.f32693U);
                this.f32711l.setOnPreparedListener(this.f32694V);
                this.f32711l.setOnVideoSizeChangedListener(this.f32695W);
            }
            if (this.f32717r.getFileUri() == null) {
                z = true;
            }
            m23954d(z);
            this.f32711l.setSurface(this.f32702c);
            if (this.f32717r.getFileUri() == null) {
                this.f32711l.setDataSource(this.f32717r.getVastAd().getPickedMediaFileTag().getText());
            } else {
                this.f32711l.setDataSource(getContext(), this.f32717r.getFileUri());
            }
            this.f32711l.prepareAsync();
        } catch (Exception e) {
            VastLog.m24017a(this.f32719t, e.getMessage(), e);
            m23926q();
        }
    }

    /* renamed from: w */
    public void m23914w() {
        if (!m23968b() || this.f32718s.isPaused) {
            return;
        }
        VastLog.m24015d(this.f32719t, "pausePlayback");
        this.f32718s.isPaused = true;
        this.f32718s.currentVideoPosition = this.f32711l.getCurrentPosition();
        this.f32711l.pause();
        m23996C();
        m23938k();
        m23985a(TrackingEvent.pause);
    }

    /* renamed from: x */
    public void m23912x() {
        if (!this.f32718s.isPaused || !this.f32673A) {
            return;
        }
        VastLog.m24015d(this.f32719t, "resumePlayback");
        this.f32718s.isPaused = false;
        if (!m23968b()) {
            if (this.f32718s.isCompanionShown) {
                return;
            }
            m23973a("resumePlayback");
            return;
        }
        this.f32711l.start();
        m23992E();
        m23998B();
        m23954d(false);
        m23985a(TrackingEvent.resume);
    }

    /* renamed from: y */
    private void m23910y() {
        this.f32718s.isPaused = false;
        if (this.f32711l != null) {
            VastLog.m24015d(this.f32719t, "stopPlayback");
            if (this.f32711l.isPlaying()) {
                this.f32711l.stop();
            }
            this.f32711l.release();
            this.f32711l = null;
            this.f32678F = false;
            this.f32679G = false;
            m23996C();
            C9653b.m23895a(this);
        }
    }

    /* renamed from: z */
    public void m23908z() {
        if (!this.f32673A || !C9653b.m23896a(getContext())) {
            m23914w();
        } else if (this.f32674B) {
            this.f32674B = false;
            m23973a("onWindowFocusChanged");
        } else if (!this.f32718s.isCompanionShown) {
            m23912x();
        } else {
            m23954d(false);
        }
    }

    /* renamed from: a */
    public final void m23988a() {
        if (!m23920t()) {
            return;
        }
        if (!this.f32718s.isCompanionShown) {
            m23936l();
            return;
        }
        VastRequest vastRequest = this.f32717r;
        if (vastRequest == null || vastRequest.getVideoType() != VideoType.NonRewarded) {
            return;
        }
        if (this.f32714o == null) {
            m23932n();
            return;
        }
        MraidInterstitial mraidInterstitial = this.f32716q;
        if (mraidInterstitial != null) {
            mraidInterstitial.dispatchClose();
        } else {
            m23930o();
        }
    }

    /* renamed from: a */
    public final boolean m23984a(VastRequest vastRequest, boolean z) {
        m23910y();
        if (!z) {
            this.f32718s = new VastViewState();
        }
        if (!Utils.m24118a(getContext())) {
            this.f32717r = null;
            m23932n();
            VastLog.m24018a(this.f32719t, "vastRequest.getVastAd() is null. Stop playing...");
            return false;
        }
        this.f32717r = vastRequest;
        if (vastRequest == null || vastRequest.getVastAd() == null) {
            m23932n();
            VastLog.m24018a(this.f32719t, "vastRequest.getVastAd() is null. Stop playing...");
            return false;
        }
        VastAd vastAd = vastRequest.getVastAd();
        C9666d appodealExtension = vastAd.getAppodealExtension();
        this.f32722w = vastRequest.getPreferredVideoOrientation();
        if (appodealExtension == null || !appodealExtension.f32787a.m24056d().booleanValue()) {
            this.f32713n = null;
        } else {
            this.f32713n = appodealExtension.f32789c;
        }
        if (this.f32713n == null) {
            this.f32713n = vastAd.getBanner(getContext());
        }
        m23946g(vastAd.getAppodealExtension());
        m23981a(appodealExtension, this.f32712m != null);
        m23966b(appodealExtension);
        m23960c(appodealExtension);
        m23956d(appodealExtension);
        m23952e(appodealExtension);
        m23949f(appodealExtension);
        m23983a(appodealExtension);
        m23954d(false);
        AbstractC9652d abstractC9652d = this.f32720u;
        if (abstractC9652d != null) {
            abstractC9652d.mo23903a(this.f32718s.isCompanionShown ? this.f32723x : this.f32722w);
        }
        if (!z) {
            if (!vastRequest.isForceUseNativeCloseTime() && vastAd.getSkipOffsetSec() > 0) {
                this.f32718s.skipTime = vastAd.getSkipOffsetSec();
            } else if (vastRequest.getVideoCloseTime() >= BitmapDescriptorFactory.HUE_RED) {
                this.f32718s.skipTime = vastRequest.getVideoCloseTime();
            } else {
                this.f32718s.skipTime = 5.0f;
            }
            AbstractC9652d abstractC9652d2 = this.f32720u;
            if (abstractC9652d2 != null) {
                abstractC9652d2.mo23902a(vastRequest);
            }
        }
        boolean z2 = false;
        if (vastRequest.getVideoType() != VideoType.Rewarded) {
            z2 = true;
        }
        m23969a(z2);
        m23973a("load (restoring: " + z + ")");
        return true;
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        super.addView(view);
        this.f32703d.bringToFront();
    }

    /* renamed from: b */
    public final boolean m23968b() {
        return this.f32711l != null && this.f32678F;
    }

    @Override // com.explorestack.iab.utils.AbstractC9588c
    public void clickHandleCanceled() {
        if (this.f32718s.isCompanionShown) {
            m23954d(false);
        } else {
            m23912x();
        }
    }

    @Override // com.explorestack.iab.utils.AbstractC9588c
    public void clickHandled() {
        if (this.f32718s.isCompanionShown) {
            m23954d(false);
        } else if (!this.f32673A) {
            m23914w();
        } else {
            m23912x();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.f32673A) {
            m23973a("onAttachedToWindow");
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (m23922s()) {
            m23946g(this.f32717r.getVastAd().getAppodealExtension());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m23910y();
    }

    @Override // android.view.View
    protected void onRestoreInstanceState(Parcelable parcelable) {
        if (!(parcelable instanceof SavedState)) {
            super.onRestoreInstanceState(parcelable);
            return;
        }
        SavedState savedState = (SavedState) parcelable;
        super.onRestoreInstanceState(savedState.getSuperState());
        if (savedState.vastViewState != null) {
            this.f32718s = savedState.vastViewState;
        }
        if (savedState.vastRequest == null) {
            return;
        }
        m23984a(savedState.vastRequest, true);
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        if (m23968b()) {
            this.f32718s.currentVideoPosition = this.f32711l.getCurrentPosition();
        }
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.vastViewState = this.f32718s;
        savedState.vastRequest = this.f32717r;
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        removeCallbacks(this.f32683K);
        post(this.f32683K);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        VastLog.m24015d(this.f32719t, "onWindowFocusChanged: ".concat(String.valueOf(z)));
        this.f32673A = z;
        m23908z();
    }

    public void setListener(AbstractC9652d abstractC9652d) {
        this.f32720u = abstractC9652d;
    }
}
