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
import com.amazonaws.services.s3.util.Mimetypes;
import com.explorestack.iab.mraid.MraidInterstitial;
import com.explorestack.iab.mraid.MraidInterstitialListener;
import com.explorestack.iab.utils.Assets;
import com.explorestack.iab.utils.Utils;
import com.explorestack.iab.utils.e;
import com.explorestack.iab.utils.f;
import com.explorestack.iab.utils.h;
import com.explorestack.iab.utils.i;
import com.explorestack.iab.utils.j;
import com.explorestack.iab.utils.k;
import com.explorestack.iab.utils.l;
import com.explorestack.iab.utils.m;
import com.explorestack.iab.vast.TrackingEvent;
import com.explorestack.iab.vast.VastError;
import com.explorestack.iab.vast.VastLog;
import com.explorestack.iab.vast.VastRequest;
import com.explorestack.iab.vast.VideoType;
import com.explorestack.iab.vast.b;
import com.explorestack.iab.vast.processor.VastAd;
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
public class VastView extends RelativeLayout implements com.explorestack.iab.utils.c {
    private boolean A;
    private boolean B;
    private boolean C;
    private boolean D;
    private boolean E;
    private boolean F;
    private boolean G;
    private boolean H;
    private final List<View> I;
    private final List<i<? extends View>> J;
    private final Runnable K;
    private final Runnable L;
    private final c M;
    private final c N;
    private final LinkedList<Integer> O;
    private int P;
    private float Q;
    private final c R;
    private final TextureView.SurfaceTextureListener S;
    private final MediaPlayer.OnCompletionListener T;
    private final MediaPlayer.OnErrorListener U;
    private final MediaPlayer.OnPreparedListener V;
    private final MediaPlayer.OnVideoSizeChangedListener W;

    /* renamed from: a  reason: collision with root package name */
    IabVideoTexture f19234a;
    private b.a aa;
    private final View.OnTouchListener ab;
    private final WebChromeClient ac;
    private final WebViewClient ad;

    /* renamed from: b  reason: collision with root package name */
    FrameLayout f19235b;

    /* renamed from: c  reason: collision with root package name */
    Surface f19236c;

    /* renamed from: d  reason: collision with root package name */
    FrameLayout f19237d;
    com.explorestack.iab.utils.d e;
    e f;
    m g;
    k h;
    j i;
    l j;
    f k;
    MediaPlayer l;
    View m;
    com.explorestack.iab.vast.tags.f n;
    com.explorestack.iab.vast.tags.f o;
    ImageView p;
    MraidInterstitial q;
    VastRequest r;
    VastViewState s;
    private final String t;
    private d u;
    private b v;
    private int w;
    private int x;
    private int y;
    private int z;

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

    /* JADX INFO: Access modifiers changed from: package-private */
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
            boolean z = false;
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
            this.wasClicked = parcel.readByte() != 0 ? true : z;
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

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/activity/VastView$a.class */
    public final class a implements MraidInterstitialListener {
        private a() {
        }

        @Override // com.explorestack.iab.mraid.MraidInterstitialListener
        public final void onClose(MraidInterstitial mraidInterstitial) {
            VastView.this.o();
        }

        @Override // com.explorestack.iab.mraid.MraidInterstitialListener
        public final void onError(MraidInterstitial mraidInterstitial, int i) {
            VastView.this.p();
        }

        @Override // com.explorestack.iab.mraid.MraidInterstitialListener
        public final void onLoaded(MraidInterstitial mraidInterstitial) {
            if (VastView.this.s.isCompanionShown) {
                VastView.this.d(false);
                mraidInterstitial.showInView(VastView.this, false);
            }
        }

        @Override // com.explorestack.iab.mraid.MraidInterstitialListener
        public final void onOpenBrowser(MraidInterstitial mraidInterstitial, String str, com.explorestack.iab.utils.c cVar) {
            cVar.clickHandled();
            VastView vastView = VastView.this;
            VastView.a(vastView, vastView.o, str);
        }

        @Override // com.explorestack.iab.mraid.MraidInterstitialListener
        public final void onPlayVideo(MraidInterstitial mraidInterstitial, String str) {
        }

        @Override // com.explorestack.iab.mraid.MraidInterstitialListener
        public final void onShown(MraidInterstitial mraidInterstitial) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/activity/VastView$b.class */
    public static abstract class b extends Thread {

        /* renamed from: a  reason: collision with root package name */
        private WeakReference<Context> f19264a;

        /* renamed from: b  reason: collision with root package name */
        private Uri f19265b;

        /* renamed from: c  reason: collision with root package name */
        boolean f19266c;

        /* renamed from: d  reason: collision with root package name */
        private String f19267d;
        private Bitmap e;

        b(Context context, Uri uri, String str) {
            this.f19264a = new WeakReference<>(context);
            this.f19265b = uri;
            this.f19267d = str;
            if (str != null || (uri != null && !TextUtils.isEmpty(uri.getPath()) && new File(uri.getPath()).exists())) {
                start();
            } else {
                a((Bitmap) null);
            }
        }

        abstract void a(Bitmap bitmap);

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            Context context = this.f19264a.get();
            MediaMetadataRetriever mediaMetadataRetriever = new MediaMetadataRetriever();
            if (context != null) {
                try {
                    Uri uri = this.f19265b;
                    if (uri != null) {
                        mediaMetadataRetriever.setDataSource(context, uri);
                    } else {
                        String str = this.f19267d;
                        if (str != null) {
                            mediaMetadataRetriever.setDataSource(str, new HashMap());
                        }
                    }
                    this.e = mediaMetadataRetriever.getFrameAtTime((Long.parseLong(mediaMetadataRetriever.extractMetadata(9)) / 2) * 1000, 2);
                } catch (Exception e) {
                    VastLog.a("MediaFrameRetriever", e.getMessage());
                }
            }
            mediaMetadataRetriever.release();
            if (!this.f19266c) {
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.explorestack.iab.vast.activity.VastView.b.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        b bVar = b.this;
                        bVar.a(bVar.e);
                    }
                });
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/activity/VastView$c.class */
    interface c {
        void a(int i, int i2, float f);
    }

    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/vast/activity/VastView$d.class */
    public interface d {
        void a(int i);

        void a(VastRequest vastRequest);

        void a(VastRequest vastRequest, int i);

        void a(VastRequest vastRequest, com.explorestack.iab.utils.c cVar, String str);

        void a(VastRequest vastRequest, boolean z);

        void b(VastRequest vastRequest);
    }

    public VastView(Context context) {
        this(context, null);
    }

    public VastView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VastView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.t = "VASTView-" + Integer.toHexString(hashCode());
        this.s = new VastViewState();
        this.w = 0;
        this.x = 0;
        this.A = false;
        this.B = false;
        this.C = false;
        this.D = false;
        this.E = false;
        this.F = false;
        this.G = false;
        this.H = false;
        this.I = new ArrayList();
        this.J = new ArrayList();
        this.K = new Runnable() { // from class: com.explorestack.iab.vast.activity.VastView.20
            @Override // java.lang.Runnable
            public final void run() {
                if (VastView.this.b()) {
                    VastView.this.A();
                }
            }
        };
        this.L = new Runnable() { // from class: com.explorestack.iab.vast.activity.VastView.21
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    if (VastView.this.b() && VastView.this.l.isPlaying()) {
                        int duration = VastView.this.l.getDuration();
                        int currentPosition = VastView.this.l.getCurrentPosition();
                        if (currentPosition > 0) {
                            float f = (currentPosition * 100.0f) / duration;
                            VastView.this.M.a(duration, currentPosition, f);
                            VastView.this.N.a(duration, currentPosition, f);
                            VastView.this.R.a(duration, currentPosition, f);
                            if (f > 105.0f) {
                                VastLog.a(VastView.this.t, "Playback tracking: video hang detected");
                                VastView.l(VastView.this);
                            }
                        }
                    }
                } catch (Exception e) {
                    String str = VastView.this.t;
                    VastLog.a(str, "Playback tracking exception: " + e.getMessage());
                }
                VastView.this.postDelayed(this, 16L);
            }
        };
        this.M = new c() { // from class: com.explorestack.iab.vast.activity.VastView.2
            @Override // com.explorestack.iab.vast.activity.VastView.c
            public final void a(int i2, int i3, float f) {
                if (!VastView.this.s.isSkipEnabled && VastView.this.s.skipTime != BitmapDescriptorFactory.HUE_RED && VastView.this.r.getVideoType() == VideoType.NonRewarded) {
                    float f2 = i3;
                    float f3 = (VastView.this.s.skipTime * 1000.0f) - f2;
                    int i4 = (int) ((f2 * 100.0f) / (VastView.this.s.skipTime * 1000.0f));
                    VastLog.d(VastView.this.t, "Skip percent: ".concat(String.valueOf(i4)));
                    if (i4 < 100 && VastView.this.f != null) {
                        VastView.this.f.a(i4, (int) Math.ceil(f3 / 1000.0d));
                    }
                    if (f3 <= BitmapDescriptorFactory.HUE_RED) {
                        VastView.this.s.skipTime = BitmapDescriptorFactory.HUE_RED;
                        VastView.this.s.isSkipEnabled = true;
                        VastView.this.a(true);
                    }
                }
            }
        };
        this.N = new c() { // from class: com.explorestack.iab.vast.activity.VastView.3
            @Override // com.explorestack.iab.vast.activity.VastView.c
            public final void a(int i2, int i3, float f) {
                if (!VastView.this.s.isCompleted || VastView.this.s.currentQuartile != 3) {
                    if (VastView.this.r.getMaxDurationMillis() > 0 && i3 > VastView.this.r.getMaxDurationMillis() && VastView.this.r.getVideoType() == VideoType.Rewarded) {
                        VastView.this.s.isSkipEnabled = true;
                        VastView.this.a(true);
                    }
                    if (f > VastView.this.s.currentQuartile * 25.0f) {
                        if (VastView.this.s.currentQuartile == 3) {
                            VastLog.d(VastView.this.t, "Video at third quartile: (" + f + "%)");
                            VastView.this.a(TrackingEvent.thirdQuartile);
                        } else if (VastView.this.s.currentQuartile == 0) {
                            VastLog.d(VastView.this.t, "Video at start: (" + f + "%)");
                            VastView.this.a(TrackingEvent.start);
                        } else if (VastView.this.s.currentQuartile == 1) {
                            VastLog.d(VastView.this.t, "Video at first quartile: (" + f + "%)");
                            VastView.this.a(TrackingEvent.firstQuartile);
                        } else if (VastView.this.s.currentQuartile == 2) {
                            VastLog.d(VastView.this.t, "Video at midpoint: (" + f + "%)");
                            VastView.this.a(TrackingEvent.midpoint);
                        }
                        VastView.this.s.currentQuartile++;
                    }
                }
            }
        };
        this.O = new LinkedList<>();
        this.P = 0;
        this.Q = BitmapDescriptorFactory.HUE_RED;
        this.R = new c() { // from class: com.explorestack.iab.vast.activity.VastView.4
            @Override // com.explorestack.iab.vast.activity.VastView.c
            public final void a(int i2, int i3, float f) {
                if (VastView.this.O.size() == 2 && ((Integer) VastView.this.O.getFirst()).intValue() > ((Integer) VastView.this.O.getLast()).intValue()) {
                    VastLog.a(VastView.this.t, "Playing progressing error: seek");
                    VastView.this.O.removeFirst();
                }
                if (VastView.this.O.size() == 19) {
                    int intValue = ((Integer) VastView.this.O.getFirst()).intValue();
                    int intValue2 = ((Integer) VastView.this.O.getLast()).intValue();
                    VastLog.d(VastView.this.t, String.format(Locale.ENGLISH, "Playing progressing position: last=%d, first=%d)", Integer.valueOf(intValue2), Integer.valueOf(intValue)));
                    if (intValue2 > intValue) {
                        VastView.this.O.removeFirst();
                    } else {
                        VastView.o(VastView.this);
                        if (VastView.this.P >= 3) {
                            VastLog.a(VastView.this.t, "Playing progressing error: video hang detected");
                            VastView.this.q();
                            return;
                        }
                    }
                }
                try {
                    VastView.this.O.addLast(Integer.valueOf(i3));
                    if (i2 != 0 && i3 > 0 && VastView.this.j != null) {
                        VastLog.d(VastView.this.t, "Playing progressing percent: ".concat(String.valueOf(f)));
                        if (VastView.this.Q < f) {
                            VastView.this.Q = f;
                            int i4 = i2 / 1000;
                            VastView.this.j.a(f, Math.min(i4, (int) Math.ceil(i3 / 1000.0f)), i4);
                        }
                    }
                } catch (Exception e) {
                }
            }
        };
        TextureView.SurfaceTextureListener surfaceTextureListener = new TextureView.SurfaceTextureListener() { // from class: com.explorestack.iab.vast.activity.VastView.5
            @Override // android.view.TextureView.SurfaceTextureListener
            public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i2, int i3) {
                VastLog.d(VastView.this.t, "onSurfaceTextureAvailable");
                VastView.this.f19236c = new Surface(surfaceTexture);
                VastView.this.C = true;
                if (VastView.this.D) {
                    VastView.this.D = false;
                    VastView.this.a("onSurfaceTextureAvailable");
                } else if (VastView.this.b()) {
                    VastView.this.l.setSurface(VastView.this.f19236c);
                    VastView.this.x();
                }
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
                VastLog.d(VastView.this.t, "onSurfaceTextureDestroyed");
                VastView.this.f19236c = null;
                VastView.this.C = false;
                if (!VastView.this.b()) {
                    return false;
                }
                VastView.this.l.setSurface(null);
                VastView.this.w();
                return false;
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i2, int i3) {
                String str = VastView.this.t;
                VastLog.d(str, "onSurfaceTextureSizeChanged: " + i2 + "/" + i3);
            }

            @Override // android.view.TextureView.SurfaceTextureListener
            public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
            }
        };
        this.S = surfaceTextureListener;
        this.T = new MediaPlayer.OnCompletionListener() { // from class: com.explorestack.iab.vast.activity.VastView.6
            @Override // android.media.MediaPlayer.OnCompletionListener
            public final void onCompletion(MediaPlayer mediaPlayer) {
                VastLog.d(VastView.this.t, "MediaPlayer - onCompletion");
                VastView.l(VastView.this);
            }
        };
        this.U = new MediaPlayer.OnErrorListener() { // from class: com.explorestack.iab.vast.activity.VastView.7
            @Override // android.media.MediaPlayer.OnErrorListener
            public final boolean onError(MediaPlayer mediaPlayer, int i2, int i3) {
                String str = VastView.this.t;
                VastLog.d(str, "MediaPlayer - onError: what=" + i2 + ", extra=" + i3);
                VastView.this.q();
                return true;
            }
        };
        this.V = new MediaPlayer.OnPreparedListener() { // from class: com.explorestack.iab.vast.activity.VastView.8
            @Override // android.media.MediaPlayer.OnPreparedListener
            public final void onPrepared(MediaPlayer mediaPlayer) {
                VastLog.d(VastView.this.t, "MediaPlayer - onPrepared");
                if (!VastView.this.s.isCompanionShown) {
                    VastView.this.a(TrackingEvent.creativeView);
                    VastView.this.a(TrackingEvent.fullscreen);
                    VastView.this.E();
                    VastView.this.d(false);
                    VastView.this.F = true;
                    if (!VastView.this.s.isPaused) {
                        mediaPlayer.start();
                        VastView.this.B();
                    }
                    VastView.this.i();
                    if (VastView.this.s.currentVideoPosition > 0) {
                        mediaPlayer.seekTo(VastView.this.s.currentVideoPosition);
                        VastView.this.a(TrackingEvent.resume);
                    }
                    if (!VastView.this.s.isImpressionProcessed) {
                        VastView.B(VastView.this);
                        if (VastView.this.r.shouldPreloadCompanion()) {
                            VastView.this.b(false);
                        }
                    }
                }
            }
        };
        this.W = new MediaPlayer.OnVideoSizeChangedListener() { // from class: com.explorestack.iab.vast.activity.VastView.9
            @Override // android.media.MediaPlayer.OnVideoSizeChangedListener
            public final void onVideoSizeChanged(MediaPlayer mediaPlayer, int i2, int i3) {
                VastLog.d(VastView.this.t, "onVideoSizeChanged");
                VastView.this.y = i2;
                VastView.this.z = i3;
                VastView.this.A();
            }
        };
        this.aa = new b.a() { // from class: com.explorestack.iab.vast.activity.VastView.10
            @Override // com.explorestack.iab.vast.b.a
            public final void a() {
                VastView.this.z();
            }
        };
        this.ab = new View.OnTouchListener() { // from class: com.explorestack.iab.vast.activity.VastView.11
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                int action = motionEvent.getAction();
                if (action != 0 && action != 1) {
                    return false;
                }
                VastView.this.I.add(view);
                if (view.hasFocus()) {
                    return false;
                }
                view.requestFocus();
                return false;
            }
        };
        this.ac = new WebChromeClient() { // from class: com.explorestack.iab.vast.activity.VastView.13
            @Override // android.webkit.WebChromeClient
            public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
                VastLog.d("JS alert", str2);
                jsResult.cancel();
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public final boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
                VastLog.d("JS confirm", str2);
                jsResult.cancel();
                return true;
            }

            @Override // android.webkit.WebChromeClient
            public final boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
                VastLog.d("JS prompt", str2);
                jsPromptResult.cancel();
                return true;
            }
        };
        this.ad = new WebViewClient() { // from class: com.explorestack.iab.vast.activity.VastView.14
            @Override // android.webkit.WebViewClient
            public final void onPageFinished(WebView webView, String str) {
                webView.setBackgroundColor(0);
                webView.setLayerType(1, null);
            }

            @Override // android.webkit.WebViewClient
            public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
                if (webResourceRequest.hasGesture()) {
                    VastView.this.I.add(webView);
                }
                return shouldOverrideUrlLoading(webView, webResourceRequest.getUrl().toString());
            }

            @Override // android.webkit.WebViewClient
            public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (!VastView.this.I.contains(webView)) {
                    return true;
                }
                VastLog.d(VastView.this.t, "banner clicked");
                VastView vastView = VastView.this;
                VastView.a(vastView, vastView.n, str);
                return true;
            }
        };
        setBackgroundColor(-16777216);
        setOnClickListener(new View.OnClickListener() { // from class: com.explorestack.iab.vast.activity.VastView.1
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                if (VastView.this.b() || VastView.this.s.isCompanionShown) {
                    VastView.this.j();
                }
            }
        });
        IabVideoTexture iabVideoTexture = new IabVideoTexture(context);
        this.f19234a = iabVideoTexture;
        iabVideoTexture.setSurfaceTextureListener(surfaceTextureListener);
        FrameLayout frameLayout = new FrameLayout(context);
        this.f19235b = frameLayout;
        frameLayout.addView(this.f19234a, new FrameLayout.LayoutParams(-1, -1, 17));
        addView(this.f19235b, new RelativeLayout.LayoutParams(-1, -1));
        FrameLayout frameLayout2 = new FrameLayout(context);
        this.f19237d = frameLayout2;
        frameLayout2.setBackgroundColor(0);
        addView(this.f19237d, new ViewGroup.LayoutParams(-1, -1));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A() {
        int i;
        int i2 = this.y;
        if (i2 == 0 || (i = this.z) == 0) {
            VastLog.d(this.t, "configureVideoSurface - skip: videoWidth or videoHeight is 0");
        } else {
            this.f19234a.setVideoSize(i2, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void B() {
        D();
        C();
        this.L.run();
    }

    static /* synthetic */ void B(VastView vastView) {
        VastLog.d(vastView.t, "handleImpressions");
        if (vastView.r != null) {
            vastView.s.isImpressionProcessed = true;
            vastView.a(vastView.r.getVastAd().getImpressionUrlList());
        }
    }

    private void C() {
        removeCallbacks(this.L);
    }

    private void D() {
        this.O.clear();
        this.P = 0;
        this.Q = BitmapDescriptorFactory.HUE_RED;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void E() {
        if (s()) {
            j();
        }
    }

    private View a(Context context, com.explorestack.iab.vast.tags.f fVar) {
        boolean b2 = Utils.b(context);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(Utils.a(context, fVar.d("width") > 0 ? fVar.d("width") : b2 ? 728.0f : 320.0f), Utils.a(context, fVar.d("height") > 0 ? fVar.d("height") : b2 ? 90.0f : 50.0f));
        WebView webView = new WebView(context);
        webView.setId(Utils.a());
        webView.getSettings().setJavaScriptEnabled(true);
        webView.setScrollContainer(false);
        webView.setVerticalScrollBarEnabled(false);
        webView.setHorizontalScrollBarEnabled(false);
        webView.setScrollBarStyle(33554432);
        webView.setFocusableInTouchMode(false);
        webView.setBackgroundColor(0);
        webView.setOnTouchListener(this.ab);
        webView.setWebViewClient(this.ad);
        webView.setWebChromeClient(this.ac);
        String e = fVar.e();
        if (e != null) {
            webView.loadDataWithBaseURL("", e, Mimetypes.MIMETYPE_HTML, "utf-8", null);
        }
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setId(Utils.a());
        frameLayout.setLayoutParams(layoutParams);
        frameLayout.addView(webView, new FrameLayout.LayoutParams(-1, -1));
        return frameLayout;
    }

    private static h a(com.explorestack.iab.vast.a aVar, h hVar) {
        if (aVar == null) {
            return null;
        }
        if (hVar == null) {
            h hVar2 = new h();
            hVar2.f19184a = aVar.j();
            hVar2.f19185b = aVar.k();
            return hVar2;
        }
        if (!hVar.i()) {
            hVar.f19184a = aVar.j();
        }
        if (!hVar.j()) {
            hVar.f19185b = aVar.k();
        }
        return hVar;
    }

    private void a(int i) {
        VastRequest vastRequest;
        try {
            VastRequest vastRequest2 = this.r;
            if (vastRequest2 != null) {
                vastRequest2.sendError(i);
            }
        } catch (Exception e) {
            VastLog.a(this.t, e.getMessage());
        }
        d dVar = this.u;
        if (dVar != null && (vastRequest = this.r) != null) {
            dVar.a(vastRequest, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(TrackingEvent trackingEvent) {
        VastLog.d(this.t, String.format("Track Event: %s", trackingEvent));
        VastRequest vastRequest = this.r;
        VastAd vastAd = vastRequest != null ? vastRequest.getVastAd() : null;
        if (vastAd != null) {
            a(vastAd.getTrackingEventListMap(), trackingEvent);
        }
    }

    private void a(com.explorestack.iab.vast.a aVar) {
        if (aVar == null || aVar.h().d().booleanValue()) {
            h hVar = null;
            if (this.i == null) {
                this.i = new j(null);
            }
            if (aVar != null) {
                hVar = aVar.h();
            }
            this.i.a(getContext(), (ViewGroup) this, a(aVar, hVar));
            return;
        }
        j jVar = this.i;
        if (jVar != null) {
            jVar.d();
        }
    }

    private void a(com.explorestack.iab.vast.a aVar, boolean z) {
        if (!z && (aVar == null || aVar.c().d().booleanValue())) {
            if (this.k == null) {
                f fVar = new f(new View.OnClickListener() { // from class: com.explorestack.iab.vast.activity.VastView.12
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        VastView.this.m();
                    }
                });
                this.k = fVar;
                this.J.add(fVar);
            }
            this.k.a(getContext(), (ViewGroup) this.f19237d, a(aVar, aVar != null ? aVar.c() : null));
            return;
        }
        f fVar2 = this.k;
        if (fVar2 != null) {
            fVar2.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(String str) {
        VastLog.d(this.t, "startPlayback: ".concat(String.valueOf(str)));
        if (s()) {
            if (this.s.isCompanionShown) {
                e();
            } else if (this.A) {
                if (this.C) {
                    y();
                    f();
                    A();
                    v();
                    com.explorestack.iab.vast.b.a(this, this.aa);
                } else {
                    this.D = true;
                }
                if (this.f19235b.getVisibility() != 0) {
                    this.f19235b.setVisibility(0);
                }
            } else {
                this.B = true;
            }
        }
    }

    private void a(List<String> list) {
        if (s()) {
            if (list == null || list.size() == 0) {
                VastLog.d(this.t, "\turl list is null");
            } else {
                this.r.fireUrls(list, null);
            }
        }
    }

    private void a(Map<TrackingEvent, List<String>> map, TrackingEvent trackingEvent) {
        if (map == null || map.size() <= 0) {
            VastLog.d(this.t, String.format("Processing Event - fail: %s (tracking event map is null or empty)", trackingEvent));
        } else {
            a(map.get(trackingEvent));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        this.H = z;
        c();
    }

    static /* synthetic */ boolean a(VastView vastView, com.explorestack.iab.vast.tags.f fVar, String str) {
        return vastView.a(fVar != null ? fVar.f19301a : null, str);
    }

    private boolean a(List<String> list, String str) {
        VastLog.d(this.t, "processClickThroughEvent: ".concat(String.valueOf(str)));
        this.s.wasClicked = true;
        if (str == null) {
            return false;
        }
        a(list);
        if (this.u == null || this.r == null) {
            return true;
        }
        w();
        d(true);
        this.u.a(this.r, this, str);
        return true;
    }

    private void b(TrackingEvent trackingEvent) {
        VastLog.d(this.t, String.format("Track Banner Event: %s", trackingEvent));
        com.explorestack.iab.vast.tags.f fVar = this.n;
        if (fVar != null) {
            a(fVar.f19302b, trackingEvent);
        }
    }

    private void b(com.explorestack.iab.vast.a aVar) {
        if (aVar == null || aVar.e().d().booleanValue()) {
            if (this.e == null) {
                com.explorestack.iab.utils.d dVar = new com.explorestack.iab.utils.d(new View.OnClickListener() { // from class: com.explorestack.iab.vast.activity.VastView.15
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        if (VastView.this.r != null && VastView.this.r.isR1() && !VastView.this.s.wasClicked && VastView.this.m()) {
                            return;
                        }
                        if (VastView.this.E) {
                            VastView.this.n();
                        } else {
                            VastView.this.a();
                        }
                    }
                });
                this.e = dVar;
                this.J.add(dVar);
            }
            this.e.a(getContext(), (ViewGroup) this.f19237d, a(aVar, aVar != null ? aVar.e() : null));
            return;
        }
        com.explorestack.iab.utils.d dVar2 = this.e;
        if (dVar2 != null) {
            dVar2.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(boolean z) {
        if (s()) {
            if (!z) {
                int measuredWidth = getMeasuredWidth();
                int paddingLeft = getPaddingLeft();
                com.explorestack.iab.vast.tags.f companion = this.r.getVastAd().getCompanion((measuredWidth - paddingLeft) - getPaddingRight(), (getMeasuredHeight() - getPaddingTop()) - getPaddingBottom());
                if (this.o != companion) {
                    if (companion == null || !this.r.shouldUseScreenSizeForCompanionOrientation()) {
                        this.x = this.w;
                    } else {
                        this.x = Utils.a(companion.d("width"), companion.d("height"));
                    }
                    this.o = companion;
                    MraidInterstitial mraidInterstitial = this.q;
                    if (mraidInterstitial != null) {
                        mraidInterstitial.destroy();
                        this.q = null;
                    }
                }
            }
            if (this.o == null) {
                if (this.p == null) {
                    this.p = new ImageView(getContext());
                }
                this.p.setAdjustViewBounds(true);
                this.p.setScaleType(ImageView.ScaleType.FIT_CENTER);
            } else if (this.q == null) {
                g();
                String d2 = this.o.d();
                if (d2 != null) {
                    com.explorestack.iab.vast.tags.d appodealExtension = this.r.getVastAd().getAppodealExtension();
                    com.explorestack.iab.vast.tags.l lVar = appodealExtension != null ? appodealExtension.f19296b : null;
                    MraidInterstitial.Builder listener = MraidInterstitial.newBuilder().setBaseUrl(null).setPreload(true).setCloseTime(this.r.getCompanionCloseTime()).forceUseNativeCloseButton(this.r.isForceUseNativeCloseTime()).setIsTag(false).setListener(new a());
                    if (lVar != null) {
                        listener.setCloseStyle(lVar.f19311a);
                        listener.setCountDownStyle(lVar.f19312b);
                        listener.setLoadingStyle(lVar.f19313c);
                        listener.setProgressStyle(lVar.f19314d);
                        listener.setDurationSec(lVar.g);
                        listener.setProductLink(lVar.e);
                        if (lVar.i) {
                            listener.forceUseNativeCloseButton(true);
                        }
                        listener.setR1(lVar.j);
                        listener.setR2(lVar.k);
                    }
                    MraidInterstitial build = listener.build(getContext());
                    this.q = build;
                    build.load(d2);
                    return;
                }
                p();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0057  */
    /* JADX WARN: Removed duplicated region for block: B:27:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void c() {
        /*
            r3 = this;
            r0 = r3
            boolean r0 = r0.H
            r4 = r0
            r0 = 1
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r4
            if (r0 != 0) goto L_0x0015
            r0 = 0
            r7 = r0
        L_0x0010:
            r0 = 0
            r5 = r0
            goto L_0x002f
        L_0x0015:
            r0 = r3
            boolean r0 = r0.t()
            if (r0 != 0) goto L_0x002c
            r0 = r3
            boolean r0 = r0.E
            if (r0 == 0) goto L_0x0026
            goto L_0x002c
        L_0x0026:
            r0 = 1
            r7 = r0
            goto L_0x0010
        L_0x002c:
            r0 = 0
            r7 = r0
        L_0x002f:
            r0 = r3
            com.explorestack.iab.utils.d r0 = r0.e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x004c
            r0 = r5
            if (r0 == 0) goto L_0x0043
            r0 = 0
            r5 = r0
            goto L_0x0046
        L_0x0043:
            r0 = 8
            r5 = r0
        L_0x0046:
            r0 = r8
            r1 = r5
            r0.a(r1)
        L_0x004c:
            r0 = r3
            com.explorestack.iab.utils.e r0 = r0.f
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x006d
            r0 = r7
            if (r0 == 0) goto L_0x0062
            r0 = r6
            r7 = r0
            goto L_0x0066
        L_0x0062:
            r0 = 8
            r7 = r0
        L_0x0066:
            r0 = r8
            r1 = r7
            r0.a(r1)
        L_0x006d:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.explorestack.iab.vast.activity.VastView.c():void");
    }

    private void c(TrackingEvent trackingEvent) {
        VastLog.d(this.t, String.format("Track Companion Event: %s", trackingEvent));
        com.explorestack.iab.vast.tags.f fVar = this.o;
        if (fVar != null) {
            a(fVar.f19302b, trackingEvent);
        }
    }

    private void c(com.explorestack.iab.vast.a aVar) {
        if (aVar == null || aVar.i().d().booleanValue()) {
            h hVar = null;
            if (this.f == null) {
                e eVar = new e(null);
                this.f = eVar;
                this.J.add(eVar);
            }
            if (aVar != null) {
                hVar = aVar.i();
            }
            this.f.a(getContext(), (ViewGroup) this.f19237d, a(aVar, hVar));
            return;
        }
        e eVar2 = this.f;
        if (eVar2 != null) {
            eVar2.d();
        }
    }

    private void c(boolean z) {
        d dVar;
        if (s() && !this.E) {
            b(z);
            this.E = true;
            this.s.isCompanionShown = true;
            int i = getResources().getConfiguration().orientation;
            int i2 = this.x;
            if (!(i == i2 || (dVar = this.u) == null)) {
                dVar.a(i2);
            }
            l lVar = this.j;
            if (lVar != null) {
                lVar.d();
            }
            k kVar = this.h;
            if (kVar != null) {
                kVar.d();
            }
            m mVar = this.g;
            if (mVar != null) {
                mVar.d();
            }
            k();
            if (this.o == null) {
                a(true);
                if (this.p != null) {
                    final WeakReference weakReference = new WeakReference(this.p);
                    this.v = new b(getContext(), this.r.getFileUri(), this.r.getVastAd().getPickedMediaFileTag().getText()) { // from class: com.explorestack.iab.vast.activity.VastView.19
                        @Override // com.explorestack.iab.vast.activity.VastView.b
                        final void a(Bitmap bitmap) {
                            ImageView imageView = (ImageView) weakReference.get();
                            if (imageView == null) {
                                return;
                            }
                            if (bitmap == null) {
                                imageView.setOnClickListener(new View.OnClickListener() { // from class: com.explorestack.iab.vast.activity.VastView.19.1
                                    @Override // android.view.View.OnClickListener
                                    public final void onClick(View view) {
                                        VastView.this.m();
                                        VastView.this.n();
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
                                    VastView.this.f19235b.setVisibility(8);
                                }
                            }).start();
                            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.explorestack.iab.vast.activity.VastView.19.3
                                @Override // android.view.View.OnClickListener
                                public final void onClick(View view) {
                                    VastView.this.m();
                                }
                            });
                        }
                    };
                }
                addView(this.p, new FrameLayout.LayoutParams(-1, -1));
            } else {
                a(false);
                this.f19235b.setVisibility(8);
                d();
                f fVar = this.k;
                if (fVar != null) {
                    fVar.a(8);
                }
                MraidInterstitial mraidInterstitial = this.q;
                if (mraidInterstitial == null) {
                    d(false);
                    p();
                } else if (mraidInterstitial.isReady()) {
                    d(false);
                    this.q.showInView(this, false);
                } else {
                    d(true);
                }
            }
            y();
            this.f19237d.bringToFront();
            c(TrackingEvent.creativeView);
        }
    }

    private void d() {
        View view = this.m;
        if (view != null) {
            Utils.b(view);
            this.m = null;
        }
    }

    private void d(com.explorestack.iab.vast.a aVar) {
        if (aVar == null || aVar.d().d().booleanValue()) {
            if (this.h == null) {
                k kVar = new k(new View.OnClickListener() { // from class: com.explorestack.iab.vast.activity.VastView.16
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        VastView.e(VastView.this);
                    }
                });
                this.h = kVar;
                this.J.add(kVar);
            }
            this.h.a(getContext(), (ViewGroup) this.f19237d, a(aVar, aVar != null ? aVar.d() : null));
            return;
        }
        k kVar2 = this.h;
        if (kVar2 != null) {
            kVar2.d();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(boolean z) {
        j jVar = this.i;
        if (jVar != null) {
            if (z) {
                jVar.a(0);
                this.i.b();
                return;
            }
            jVar.a(8);
        }
    }

    private void e() {
        c(false);
    }

    private void e(com.explorestack.iab.vast.a aVar) {
        if (aVar == null || !aVar.g().d().booleanValue()) {
            m mVar = this.g;
            if (mVar != null) {
                mVar.d();
                return;
            }
            return;
        }
        if (this.g == null) {
            m mVar2 = new m(new View.OnClickListener() { // from class: com.explorestack.iab.vast.activity.VastView.17
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    VastView.f(VastView.this);
                }
            });
            this.g = mVar2;
            this.J.add(mVar2);
        }
        this.g.a(getContext(), (ViewGroup) this.f19237d, a(aVar, aVar != null ? aVar.g() : null));
    }

    static /* synthetic */ void e(VastView vastView) {
        VastViewState vastViewState = vastView.s;
        vastViewState.isMuted = !vastViewState.isMuted;
        vastView.i();
        vastView.a(vastView.s.isMuted ? TrackingEvent.mute : TrackingEvent.unmute);
    }

    private void f() {
        if (this.p != null) {
            g();
        } else {
            MraidInterstitial mraidInterstitial = this.q;
            if (mraidInterstitial != null) {
                mraidInterstitial.destroy();
                this.q = null;
                this.o = null;
            }
        }
        this.E = false;
    }

    private void f(com.explorestack.iab.vast.a aVar) {
        if (aVar == null || aVar.f().d().booleanValue()) {
            h hVar = null;
            if (this.j == null) {
                l lVar = new l(null);
                this.j = lVar;
                this.J.add(lVar);
            }
            if (aVar != null) {
                hVar = aVar.f();
            }
            this.j.a(getContext(), (ViewGroup) this.f19237d, a(aVar, hVar));
            this.j.a(BitmapDescriptorFactory.HUE_RED, 0, 0);
            return;
        }
        l lVar2 = this.j;
        if (lVar2 != null) {
            lVar2.d();
        }
    }

    static /* synthetic */ void f(VastView vastView) {
        if (vastView.s()) {
            vastView.s.isCompanionShown = false;
            vastView.s.currentVideoPosition = 0;
            vastView.f();
            vastView.g(vastView.r.getVastAd().getAppodealExtension());
            vastView.a("restartPlayback");
        }
    }

    private void g() {
        if (this.p != null) {
            h();
            removeView(this.p);
            this.p = null;
        }
    }

    private void g(com.explorestack.iab.vast.a aVar) {
        h hVar;
        h a2 = aVar != null ? Assets.defVideoStyle.a(aVar.b()) : Assets.defVideoStyle;
        if (aVar == null || !aVar.n()) {
            this.f19235b.setOnClickListener(null);
            this.f19235b.setClickable(false);
        } else {
            this.f19235b.setOnClickListener(new View.OnClickListener() { // from class: com.explorestack.iab.vast.activity.VastView.18
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    VastView.this.m();
                }
            });
        }
        this.f19235b.setBackgroundColor(a2.b().intValue());
        d();
        if (this.n == null || this.s.isCompanionShown) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
            layoutParams.addRule(13);
            this.f19235b.setLayoutParams(layoutParams);
            return;
        }
        this.m = a(getContext(), this.n);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(this.m.getLayoutParams());
        if ("inline".equals(a2.g)) {
            hVar = Assets.defInlineBannerStyle;
            if (getResources().getConfiguration().orientation == 2) {
                layoutParams2.addRule(15);
                layoutParams3.height = -1;
                layoutParams3.addRule(10);
                layoutParams3.addRule(12);
                if (a2.e().intValue() == 3) {
                    layoutParams2.addRule(9);
                    layoutParams2.addRule(0, this.m.getId());
                    layoutParams3.addRule(11);
                } else {
                    layoutParams2.addRule(11);
                    layoutParams2.addRule(1, this.m.getId());
                    layoutParams3.addRule(9);
                }
            } else {
                layoutParams2.addRule(14);
                layoutParams3.width = -1;
                layoutParams3.addRule(9);
                layoutParams3.addRule(11);
                if (a2.f().intValue() == 48) {
                    layoutParams2.addRule(10);
                    layoutParams2.addRule(2, this.m.getId());
                    layoutParams3.addRule(12);
                } else {
                    layoutParams2.addRule(12);
                    layoutParams2.addRule(3, this.m.getId());
                    layoutParams3.addRule(10);
                }
            }
        } else {
            hVar = Assets.defBannerStyle;
            layoutParams2.addRule(13);
        }
        h hVar2 = hVar;
        if (aVar != null) {
            hVar2 = hVar.a(aVar.c());
        }
        hVar2.a(getContext(), this.m);
        hVar2.a(getContext(), layoutParams3);
        hVar2.a(layoutParams3);
        this.m.setBackgroundColor(hVar2.b().intValue());
        a2.a(getContext(), this.f19235b);
        a2.a(getContext(), layoutParams2);
        this.f19235b.setLayoutParams(layoutParams2);
        addView(this.m, layoutParams3);
        b(TrackingEvent.creativeView);
    }

    private void h() {
        b bVar = this.v;
        if (bVar != null) {
            bVar.f19266c = true;
            this.v = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i() {
        k kVar;
        if (b() && (kVar = this.h) != null) {
            kVar.e = this.s.isMuted;
            kVar.a();
            if (this.s.isMuted) {
                this.l.setVolume(BitmapDescriptorFactory.HUE_RED, BitmapDescriptorFactory.HUE_RED);
            } else {
                this.l.setVolume(1.0f, 1.0f);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        for (i<? extends View> iVar : this.J) {
            iVar.e();
        }
    }

    private void k() {
        for (i<? extends View> iVar : this.J) {
            iVar.f();
        }
    }

    private void l() {
        d dVar;
        VastLog.a(this.t, "performVideoCloseClick");
        y();
        if (!this.G) {
            if (!this.s.isCompleted) {
                a(TrackingEvent.skip);
            }
            VastRequest vastRequest = this.r;
            if (vastRequest != null && vastRequest.getMaxDurationMillis() > 0 && this.r.getVideoType() == VideoType.Rewarded && (dVar = this.u) != null) {
                dVar.b(this.r);
            }
            r();
            return;
        }
        n();
    }

    static /* synthetic */ void l(VastView vastView) {
        VastLog.d(vastView.t, "handleComplete");
        vastView.s.isSkipEnabled = true;
        if (!vastView.G && !vastView.s.isCompleted) {
            vastView.s.isCompleted = true;
            d dVar = vastView.u;
            if (dVar != null) {
                dVar.b(vastView.r);
            }
            VastRequest vastRequest = vastView.r;
            if (vastRequest != null && vastRequest.isR2() && !vastView.s.wasClicked) {
                vastView.m();
            }
            vastView.a(TrackingEvent.complete);
        }
        if (vastView.s.isCompleted) {
            vastView.r();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean m() {
        VastLog.a(this.t, "handleInfoClicked");
        VastRequest vastRequest = this.r;
        if (vastRequest != null) {
            return a(vastRequest.getVastAd().getClickTrackingUrlList(), this.r.getVastAd().getClickThroughUrl());
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        VastRequest vastRequest;
        VastLog.a(this.t, "handleClose");
        a(TrackingEvent.close);
        d dVar = this.u;
        if (dVar != null && (vastRequest = this.r) != null) {
            dVar.a(vastRequest, u());
        }
    }

    static /* synthetic */ int o(VastView vastView) {
        int i = vastView.P;
        vastView.P = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        VastRequest vastRequest;
        VastLog.a(this.t, "handleCompanionClose");
        c(TrackingEvent.close);
        d dVar = this.u;
        if (dVar != null && (vastRequest = this.r) != null) {
            dVar.a(vastRequest, u());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        VastRequest vastRequest;
        VastLog.a(this.t, "handleCompanionShowError");
        a(600);
        if (this.o != null) {
            f();
            c(true);
            return;
        }
        d dVar = this.u;
        if (dVar != null && (vastRequest = this.r) != null) {
            dVar.a(vastRequest, u());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void q() {
        VastLog.a(this.t, "handlePlaybackError");
        this.G = true;
        a(VastError.ERROR_CODE_ERROR_SHOWING);
        r();
    }

    private void r() {
        VastLog.d(this.t, "finishVideoPlaying");
        y();
        VastRequest vastRequest = this.r;
        if (vastRequest == null || vastRequest.isAutoClose() || (this.r.getVastAd().getAppodealExtension() != null && !this.r.getVastAd().getAppodealExtension().f19296b.h)) {
            n();
            return;
        }
        if (t()) {
            a(TrackingEvent.close);
        }
        d(false);
        d();
        c(false);
    }

    private boolean s() {
        VastRequest vastRequest = this.r;
        return (vastRequest == null || vastRequest.getVastAd() == null) ? false : true;
    }

    private boolean t() {
        return this.s.isSkipEnabled || this.s.skipTime == BitmapDescriptorFactory.HUE_RED;
    }

    private boolean u() {
        VastRequest vastRequest = this.r;
        if (vastRequest == null) {
            return false;
        }
        if (vastRequest.getCompanionCloseTime() != BitmapDescriptorFactory.HUE_RED || !this.s.isCompleted) {
            return this.r.getCompanionCloseTime() > BitmapDescriptorFactory.HUE_RED && this.s.isCompanionShown;
        }
        return true;
    }

    private void v() {
        try {
            if (s() && !this.s.isCompanionShown) {
                boolean z = false;
                if (this.l == null) {
                    MediaPlayer mediaPlayer = new MediaPlayer();
                    this.l = mediaPlayer;
                    mediaPlayer.setLooping(false);
                    this.l.setAudioStreamType(3);
                    this.l.setOnCompletionListener(this.T);
                    this.l.setOnErrorListener(this.U);
                    this.l.setOnPreparedListener(this.V);
                    this.l.setOnVideoSizeChangedListener(this.W);
                }
                if (this.r.getFileUri() == null) {
                    z = true;
                }
                d(z);
                this.l.setSurface(this.f19236c);
                if (this.r.getFileUri() == null) {
                    this.l.setDataSource(this.r.getVastAd().getPickedMediaFileTag().getText());
                } else {
                    this.l.setDataSource(getContext(), this.r.getFileUri());
                }
                this.l.prepareAsync();
            }
        } catch (Exception e) {
            VastLog.a(this.t, e.getMessage(), e);
            q();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void w() {
        if (b() && !this.s.isPaused) {
            VastLog.d(this.t, "pausePlayback");
            this.s.isPaused = true;
            this.s.currentVideoPosition = this.l.getCurrentPosition();
            this.l.pause();
            C();
            k();
            a(TrackingEvent.pause);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void x() {
        if (this.s.isPaused && this.A) {
            VastLog.d(this.t, "resumePlayback");
            this.s.isPaused = false;
            if (b()) {
                this.l.start();
                E();
                B();
                d(false);
                a(TrackingEvent.resume);
            } else if (!this.s.isCompanionShown) {
                a("resumePlayback");
            }
        }
    }

    private void y() {
        this.s.isPaused = false;
        if (this.l != null) {
            VastLog.d(this.t, "stopPlayback");
            if (this.l.isPlaying()) {
                this.l.stop();
            }
            this.l.release();
            this.l = null;
            this.F = false;
            this.G = false;
            C();
            com.explorestack.iab.vast.b.a(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void z() {
        if (!this.A || !com.explorestack.iab.vast.b.a(getContext())) {
            w();
        } else if (this.B) {
            this.B = false;
            a("onWindowFocusChanged");
        } else if (!this.s.isCompanionShown) {
            x();
        } else {
            d(false);
        }
    }

    public final void a() {
        if (t()) {
            if (!this.s.isCompanionShown) {
                l();
                return;
            }
            VastRequest vastRequest = this.r;
            if (vastRequest != null && vastRequest.getVideoType() == VideoType.NonRewarded) {
                if (this.o == null) {
                    n();
                    return;
                }
                MraidInterstitial mraidInterstitial = this.q;
                if (mraidInterstitial != null) {
                    mraidInterstitial.dispatchClose();
                } else {
                    o();
                }
            }
        }
    }

    public final boolean a(VastRequest vastRequest, boolean z) {
        y();
        if (!z) {
            this.s = new VastViewState();
        }
        boolean z2 = false;
        if (!Utils.a(getContext())) {
            this.r = null;
            n();
            VastLog.a(this.t, "vastRequest.getVastAd() is null. Stop playing...");
            return false;
        }
        this.r = vastRequest;
        if (vastRequest == null || vastRequest.getVastAd() == null) {
            n();
            VastLog.a(this.t, "vastRequest.getVastAd() is null. Stop playing...");
            return false;
        }
        VastAd vastAd = vastRequest.getVastAd();
        com.explorestack.iab.vast.tags.d appodealExtension = vastAd.getAppodealExtension();
        this.w = vastRequest.getPreferredVideoOrientation();
        if (appodealExtension == null || !appodealExtension.f19295a.d().booleanValue()) {
            this.n = null;
        } else {
            this.n = appodealExtension.f19297c;
        }
        if (this.n == null) {
            this.n = vastAd.getBanner(getContext());
        }
        g(vastAd.getAppodealExtension());
        a(appodealExtension, this.m != null);
        b(appodealExtension);
        c(appodealExtension);
        d(appodealExtension);
        e(appodealExtension);
        f(appodealExtension);
        a(appodealExtension);
        d(false);
        d dVar = this.u;
        if (dVar != null) {
            dVar.a(this.s.isCompanionShown ? this.x : this.w);
        }
        if (!z) {
            if (!vastRequest.isForceUseNativeCloseTime() && vastAd.getSkipOffsetSec() > 0) {
                this.s.skipTime = vastAd.getSkipOffsetSec();
            } else if (vastRequest.getVideoCloseTime() >= BitmapDescriptorFactory.HUE_RED) {
                this.s.skipTime = vastRequest.getVideoCloseTime();
            } else {
                this.s.skipTime = 5.0f;
            }
            d dVar2 = this.u;
            if (dVar2 != null) {
                dVar2.a(vastRequest);
            }
        }
        if (vastRequest.getVideoType() != VideoType.Rewarded) {
            z2 = true;
        }
        a(z2);
        a("load (restoring: " + z + ")");
        return true;
    }

    @Override // android.view.ViewGroup
    public void addView(View view) {
        super.addView(view);
        this.f19237d.bringToFront();
    }

    public final boolean b() {
        return this.l != null && this.F;
    }

    @Override // com.explorestack.iab.utils.c
    public void clickHandleCanceled() {
        if (this.s.isCompanionShown) {
            d(false);
        } else {
            x();
        }
    }

    @Override // com.explorestack.iab.utils.c
    public void clickHandled() {
        if (this.s.isCompanionShown) {
            d(false);
        } else if (!this.A) {
            w();
        } else {
            x();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (this.A) {
            a("onAttachedToWindow");
        }
    }

    @Override // android.view.View
    protected void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
        if (s()) {
            g(this.r.getVastAd().getAppodealExtension());
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        y();
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
            this.s = savedState.vastViewState;
        }
        if (savedState.vastRequest != null) {
            a(savedState.vastRequest, true);
        }
    }

    @Override // android.view.View
    protected Parcelable onSaveInstanceState() {
        if (b()) {
            this.s.currentVideoPosition = this.l.getCurrentPosition();
        }
        SavedState savedState = new SavedState(super.onSaveInstanceState());
        savedState.vastViewState = this.s;
        savedState.vastRequest = this.r;
        return savedState;
    }

    @Override // android.view.View
    protected void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        removeCallbacks(this.K);
        post(this.K);
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        VastLog.d(this.t, "onWindowFocusChanged: ".concat(String.valueOf(z)));
        this.A = z;
        z();
    }

    public void setListener(d dVar) {
        this.u = dVar;
    }
}
