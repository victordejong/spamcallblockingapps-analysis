package com.p456lb.video_trimmer_library;

import android.content.Context;
import android.database.Cursor;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.VideoView;
import com.mopub.mobileads.VastIconXmlManager;
import com.p456lb.video_trimmer_library.p457a.AbstractC16593a;
import com.p456lb.video_trimmer_library.p457a.AbstractC16594b;
import com.p456lb.video_trimmer_library.p457a.AbstractC16595c;
import com.p456lb.video_trimmer_library.p458b.C16596a;
import com.p456lb.video_trimmer_library.p458b.C16599c;
import com.p456lb.video_trimmer_library.p458b.C16601d;
import com.p456lb.video_trimmer_library.view.RangeSeekBarView;
import com.p456lb.video_trimmer_library.view.TimeLineView;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.C18524p;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\r\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0014\b&\u0018�� V2\u00020\u0001:\u0002VWB!\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010(\u001a\u00020\u0017H&J\b\u0010)\u001a\u00020\u0019H&J\b\u0010*\u001a\u00020\u0017H&J\b\u0010+\u001a\u00020!H&J\b\u0010,\u001a\u00020&H&J\b\u0010-\u001a\u00020\u0017H&J\b\u0010.\u001a\u00020/H&J\b\u00100\u001a\u00020/H\u0007J\u0010\u00101\u001a\u00020/2\u0006\u00102\u001a\u00020\u001bH\u0002J\b\u00103\u001a\u00020/H\u0002J\b\u00104\u001a\u00020/H\u0014J\u0010\u00105\u001a\u00020/2\u0006\u00106\u001a\u00020\u0015H&J\u0018\u00107\u001a\u00020/2\u0006\u00108\u001a\u00020\u00072\u0006\u00109\u001a\u00020\u0007H&J\u0018\u0010:\u001a\u00020/2\u0006\u0010;\u001a\u00020\u00072\u0006\u0010<\u001a\u00020=H\u0002J\b\u0010>\u001a\u00020/H\u0002J\b\u0010?\u001a\u00020/H\u0002J\u0010\u0010@\u001a\u00020/2\u0006\u0010A\u001a\u00020\u0007H&J\u0010\u0010B\u001a\u00020/2\u0006\u0010C\u001a\u00020DH\u0003J\u0006\u0010E\u001a\u00020/J\u000e\u0010F\u001a\u00020/2\u0006\u0010G\u001a\u00020\nJ\u000e\u0010H\u001a\u00020/2\u0006\u0010\u0011\u001a\u00020\u0007J\u000e\u0010I\u001a\u00020/2\u0006\u0010J\u001a\u00020$J\u0010\u0010K\u001a\u00020/2\u0006\u0010L\u001a\u00020\u0007H\u0002J\b\u0010M\u001a\u00020/H\u0002J\b\u0010N\u001a\u00020/H\u0003J\b\u0010O\u001a\u00020/H\u0002J\u000e\u0010P\u001a\u00020/2\u0006\u0010Q\u001a\u00020\u001bJ\u000e\u0010R\u001a\u00020/2\u0006\u0010S\u001a\u00020\u001dJ\u0010\u0010T\u001a\u00020/2\u0006\u0010U\u001a\u00020\u0007H\u0002R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��R\u001e\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u000ej\b\u0012\u0004\u0012\u00020\u000f`\u0010X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u001e\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u001f\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010 \u001a\u00020!X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\"\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010%\u001a\u00020&X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010'\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n��¨\u0006X"}, m4298d2 = {"Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "dstFile", "Ljava/io/File;", VastIconXmlManager.DURATION, "endPosition", "listeners", "Ljava/util/ArrayList;", "Lcom/lb/video_trimmer_library/interfaces/OnProgressVideoListener;", "Lkotlin/collections/ArrayList;", "maxDurationInMs", "messageHandler", "Lcom/lb/video_trimmer_library/BaseVideoTrimmerView$MessageHandler;", "originSizeFile", "", "playView", "Landroid/view/View;", "rangeSeekBarView", "Lcom/lb/video_trimmer_library/view/RangeSeekBarView;", "resetSeekBar", "", "src", "Landroid/net/Uri;", "startPosition", "timeInfoContainer", "timeLineView", "Lcom/lb/video_trimmer_library/view/TimeLineView;", "timeVideo", "videoTrimmingListener", "Lcom/lb/video_trimmer_library/interfaces/VideoTrimmingListener;", "videoView", "Landroid/widget/VideoView;", "videoViewContainer", "getPlayView", "getRangeSeekBarView", "getTimeInfoContainer", "getTimeLineView", "getVideoView", "getVideoViewContainer", "initRootView", "", "initiateTrimming", "notifyProgressUpdate", "all", "onClickVideoPlayPause", "onDetachedFromWindow", "onGotVideoFileSize", "videoFileSize", "onRangeUpdated", "startTimeInMs", "endTimeInMs", "onSeekThumbs", "index", "value", "", "onStopSeekThumbs", "onVideoCompleted", "onVideoPlaybackReachingTime", "timeInMs", "onVideoPrepared", "mp", "Landroid/media/MediaPlayer;", "pauseVideo", "setDestinationFile", "dst", "setMaxDurationInMs", "setOnK4LVideoListener", "onK4LVideoListener", "setProgressBarPosition", "position", "setSeekBarPosition", "setUpListeners", "setUpMargins", "setVideoInformationVisibility", "visible", "setVideoURI", "videoURI", "updateVideoProgress", "time", "Companion", "MessageHandler", "video_trimmer_library_release"}, m4297k = 1, m4296mv = {1, 1, 13})
/* renamed from: com.lb.video_trimmer_library.BaseVideoTrimmerView */
/* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/BaseVideoTrimmerView.class */
public abstract class BaseVideoTrimmerView extends FrameLayout {

    /* renamed from: f */
    public static final C16583a f58373f = new C16583a(null);

    /* renamed from: a */
    public Uri f58374a;

    /* renamed from: b */
    public AbstractC16595c f58375b;

    /* renamed from: c */
    public int f58376c;

    /* renamed from: d */
    public int f58377d;

    /* renamed from: e */
    public int f58378e;

    /* renamed from: g */
    private final RangeSeekBarView f58379g;

    /* renamed from: h */
    private final View f58380h;

    /* renamed from: i */
    private final View f58381i;

    /* renamed from: j */
    private final VideoView f58382j;

    /* renamed from: k */
    private final View f58383k;

    /* renamed from: l */
    private final TimeLineView f58384l;

    /* renamed from: m */
    private File f58385m;

    /* renamed from: n */
    private int f58386n;

    /* renamed from: o */
    private ArrayList<AbstractC16593a> f58387o;

    /* renamed from: p */
    private int f58388p;

    /* renamed from: q */
    private long f58389q;

    /* renamed from: r */
    private boolean f58390r;

    /* renamed from: s */
    private final HandlerC16584b f58391s;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0006"}, m4298d2 = {"Lcom/lb/video_trimmer_library/BaseVideoTrimmerView$Companion;", "", "()V", "MIN_TIME_FRAME", "", "SHOW_PROGRESS", "video_trimmer_library_release"}, m4297k = 1, m4296mv = {1, 1, 13})
    /* renamed from: com.lb.video_trimmer_library.BaseVideoTrimmerView$a */
    /* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/BaseVideoTrimmerView$a.class */
    public static final class C16583a {
        private C16583a() {
        }

        public /* synthetic */ C16583a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\b\u0002\u0018��2\u00020\u0001B\u000f\b��\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000b"}, m4298d2 = {"Lcom/lb/video_trimmer_library/BaseVideoTrimmerView$MessageHandler;", "Landroid/os/Handler;", "view", "Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;", "(Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;)V", "mView", "Ljava/lang/ref/WeakReference;", "handleMessage", "", "msg", "Landroid/os/Message;", "video_trimmer_library_release"}, m4297k = 1, m4296mv = {1, 1, 13})
    /* renamed from: com.lb.video_trimmer_library.BaseVideoTrimmerView$b */
    /* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/BaseVideoTrimmerView$b.class */
    public static final class HandlerC16584b extends Handler {

        /* renamed from: a */
        private final WeakReference<BaseVideoTrimmerView> f58392a;

        public HandlerC16584b(BaseVideoTrimmerView view) {
            C18524p.m3841c(view, "view");
            this.f58392a = new WeakReference<>(view);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            BaseVideoTrimmerView baseVideoTrimmerView = this.f58392a.get();
            if ((baseVideoTrimmerView != null ? baseVideoTrimmerView.f58382j : null) == null) {
                return;
            }
            BaseVideoTrimmerView.m6951b(baseVideoTrimmerView);
            if (!baseVideoTrimmerView.f58382j.isPlaying()) {
                return;
            }
            sendEmptyMessageDelayed(0, 10L);
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0011\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, m4298d2 = {"com/lb/video_trimmer_library/BaseVideoTrimmerView$initiateTrimming$1", "Lcom/lb/video_trimmer_library/utils/BackgroundExecutor$Task;", "execute", "", "video_trimmer_library_release"}, m4297k = 1, m4296mv = {1, 1, 13})
    /* renamed from: com.lb.video_trimmer_library.BaseVideoTrimmerView$c */
    /* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/BaseVideoTrimmerView$c.class */
    public static final class C16585c extends C16596a.AbstractRunnableC16597a {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16585c(String str, long j, String str2) {
            super(str, j, str2);
            BaseVideoTrimmerView.this = r7;
        }

        @Override // com.p456lb.video_trimmer_library.p458b.C16596a.AbstractRunnableC16597a
        /* renamed from: a */
        public final void mo6911a() {
            try {
                Context context = BaseVideoTrimmerView.this.getContext();
                C18524p.m3849a((Object) context, "context");
                Uri uri = BaseVideoTrimmerView.this.f58374a;
                if (uri == null) {
                    C18524p.m3855a();
                }
                File file = BaseVideoTrimmerView.this.f58385m;
                if (file == null) {
                    C18524p.m3855a();
                }
                long j = BaseVideoTrimmerView.this.f58377d;
                long j2 = BaseVideoTrimmerView.this.f58378e;
                long j3 = BaseVideoTrimmerView.this.f58388p;
                AbstractC16595c abstractC16595c = BaseVideoTrimmerView.this.f58375b;
                if (abstractC16595c == null) {
                    C18524p.m3855a();
                }
                C16599c.m6925a(context, uri, file, j, j2, j3, abstractC16595c);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001f\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n��*\u0001��\b\n\u0018��2\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, m4298d2 = {"com/lb/video_trimmer_library/BaseVideoTrimmerView$setUpListeners$1", "Lcom/lb/video_trimmer_library/interfaces/OnProgressVideoListener;", "updateProgress", "", "time", "", "max", "scale", "", "video_trimmer_library_release"}, m4297k = 1, m4296mv = {1, 1, 13})
    /* renamed from: com.lb.video_trimmer_library.BaseVideoTrimmerView$d */
    /* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/BaseVideoTrimmerView$d.class */
    public static final class C16586d implements AbstractC16593a {
        C16586d() {
            BaseVideoTrimmerView.this = r4;
        }

        @Override // com.p456lb.video_trimmer_library.p457a.AbstractC16593a
        /* renamed from: a */
        public final void mo6941a(int i) {
            BaseVideoTrimmerView.m6955a(BaseVideoTrimmerView.this, i);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0018\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\n¢\u0006\u0002\b\b"}, m4298d2 = {"<anonymous>", "", "<anonymous parameter 0>", "Landroid/media/MediaPlayer;", "kotlin.jvm.PlatformType", "what", "", "extra", "onError"}, m4297k = 3, m4296mv = {1, 1, 13})
    /* renamed from: com.lb.video_trimmer_library.BaseVideoTrimmerView$e */
    /* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/BaseVideoTrimmerView$e.class */
    public static final class C16587e implements MediaPlayer.OnErrorListener {
        C16587e() {
            BaseVideoTrimmerView.this = r4;
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            if (BaseVideoTrimmerView.this.f58375b != null) {
                AbstractC16595c abstractC16595c = BaseVideoTrimmerView.this.f58375b;
                if (abstractC16595c == null) {
                    C18524p.m3855a();
                }
                abstractC16595c.mo6936a();
                return false;
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0016\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00060\u0006H\n¢\u0006\u0002\b\u0007"}, m4298d2 = {"<anonymous>", "", "v", "Landroid/view/View;", "kotlin.jvm.PlatformType", "event", "Landroid/view/MotionEvent;", "onTouch"}, m4297k = 3, m4296mv = {1, 1, 13})
    /* renamed from: com.lb.video_trimmer_library.BaseVideoTrimmerView$f */
    /* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/BaseVideoTrimmerView$f.class */
    public static final class View$OnTouchListenerC16588f implements View.OnTouchListener {

        /* renamed from: a */
        final /* synthetic */ GestureDetector f58396a;

        View$OnTouchListenerC16588f(GestureDetector gestureDetector) {
            this.f58396a = gestureDetector;
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            this.f58396a.onTouchEvent(motionEvent);
            return true;
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��%\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0007\n\u0002\b\u0004*\u0001��\b\n\u0018��2\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J \u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J \u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J \u0010\f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\r"}, m4298d2 = {"com/lb/video_trimmer_library/BaseVideoTrimmerView$setUpListeners$4", "Lcom/lb/video_trimmer_library/interfaces/OnRangeSeekBarListener;", "onCreate", "", "rangeSeekBarView", "Lcom/lb/video_trimmer_library/view/RangeSeekBarView;", "index", "", "value", "", "onSeek", "onSeekStart", "onSeekStop", "video_trimmer_library_release"}, m4297k = 1, m4296mv = {1, 1, 13})
    /* renamed from: com.lb.video_trimmer_library.BaseVideoTrimmerView$g */
    /* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/BaseVideoTrimmerView$g.class */
    public static final class C16589g implements AbstractC16594b {
        C16589g() {
            BaseVideoTrimmerView.this = r4;
        }

        @Override // com.p456lb.video_trimmer_library.p457a.AbstractC16594b
        /* renamed from: a */
        public final void mo6940a(RangeSeekBarView rangeSeekBarView) {
            C18524p.m3841c(rangeSeekBarView, "rangeSeekBarView");
        }

        @Override // com.p456lb.video_trimmer_library.p457a.AbstractC16594b
        /* renamed from: a */
        public final void mo6939a(RangeSeekBarView rangeSeekBarView, int i, float f) {
            C18524p.m3841c(rangeSeekBarView, "rangeSeekBarView");
            BaseVideoTrimmerView.m6954a(BaseVideoTrimmerView.this, i, f);
        }

        @Override // com.p456lb.video_trimmer_library.p457a.AbstractC16594b
        /* renamed from: b */
        public final void mo6938b(RangeSeekBarView rangeSeekBarView) {
            C18524p.m3841c(rangeSeekBarView, "rangeSeekBarView");
        }

        @Override // com.p456lb.video_trimmer_library.p457a.AbstractC16594b
        /* renamed from: c */
        public final void mo6937c(RangeSeekBarView rangeSeekBarView) {
            C18524p.m3841c(rangeSeekBarView, "rangeSeekBarView");
            BaseVideoTrimmerView.m6948e(BaseVideoTrimmerView.this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"<anonymous>", "", "it", "Landroid/media/MediaPlayer;", "kotlin.jvm.PlatformType", "onPrepared"}, m4297k = 3, m4296mv = {1, 1, 13})
    /* renamed from: com.lb.video_trimmer_library.BaseVideoTrimmerView$h */
    /* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/BaseVideoTrimmerView$h.class */
    public static final class C16590h implements MediaPlayer.OnPreparedListener {
        C16590h() {
            BaseVideoTrimmerView.this = r4;
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public final void onPrepared(MediaPlayer it2) {
            BaseVideoTrimmerView baseVideoTrimmerView = BaseVideoTrimmerView.this;
            C18524p.m3849a((Object) it2, "it");
            BaseVideoTrimmerView.m6953a(baseVideoTrimmerView, it2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, m4298d2 = {"<anonymous>", "", "it", "Landroid/media/MediaPlayer;", "kotlin.jvm.PlatformType", "onCompletion"}, m4297k = 3, m4296mv = {1, 1, 13})
    /* renamed from: com.lb.video_trimmer_library.BaseVideoTrimmerView$i */
    /* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/BaseVideoTrimmerView$i.class */
    public static final class C16591i implements MediaPlayer.OnCompletionListener {
        C16591i() {
            BaseVideoTrimmerView.this = r4;
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public final void onCompletion(MediaPlayer mediaPlayer) {
            BaseVideoTrimmerView.m6947f(BaseVideoTrimmerView.this);
        }
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0017\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, m4298d2 = {"com/lb/video_trimmer_library/BaseVideoTrimmerView$setUpListeners$gestureDetector$1", "Landroid/view/GestureDetector$SimpleOnGestureListener;", "onSingleTapConfirmed", "", "e", "Landroid/view/MotionEvent;", "video_trimmer_library_release"}, m4297k = 1, m4296mv = {1, 1, 13})
    /* renamed from: com.lb.video_trimmer_library.BaseVideoTrimmerView$j */
    /* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/BaseVideoTrimmerView$j.class */
    public static final class C16592j extends GestureDetector.SimpleOnGestureListener {
        C16592j() {
            BaseVideoTrimmerView.this = r4;
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public final boolean onSingleTapConfirmed(MotionEvent e) {
            C18524p.m3841c(e, "e");
            BaseVideoTrimmerView.m6950c(BaseVideoTrimmerView.this);
            return true;
        }
    }

    public BaseVideoTrimmerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseVideoTrimmerView(Context context, AttributeSet attrs, int i) {
        super(context, attrs, i);
        C18524p.m3841c(context, "context");
        C18524p.m3841c(attrs, "attrs");
        this.f58387o = new ArrayList<>();
        this.f58390r = true;
        this.f58391s = new HandlerC16584b(this);
        mo6960a();
        RangeSeekBarView rangeSeekBarView = getRangeSeekBarView();
        this.f58379g = rangeSeekBarView;
        this.f58380h = getVideoViewContainer();
        VideoView videoView = getVideoView();
        this.f58382j = videoView;
        this.f58383k = getPlayView();
        this.f58381i = getTimeInfoContainer();
        TimeLineView timeLineView = getTimeLineView();
        this.f58384l = timeLineView;
        this.f58387o.add(new C16586d());
        GestureDetector gestureDetector = new GestureDetector(getContext(), new C16592j());
        videoView.setOnErrorListener(new C16587e());
        videoView.setOnTouchListener(new View$OnTouchListenerC16588f(gestureDetector));
        C16589g listener = new C16589g();
        C18524p.m3841c(listener, "listener");
        rangeSeekBarView.f58424b.add(listener);
        videoView.setOnPreparedListener(new C16590h());
        videoView.setOnCompletionListener(new C16591i());
        int i2 = rangeSeekBarView.f58426d;
        ViewGroup.LayoutParams layoutParams = timeLineView.getLayoutParams();
        if (layoutParams != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.setMargins(i2, marginLayoutParams.topMargin, i2, marginLayoutParams.bottomMargin);
            timeLineView.setLayoutParams(marginLayoutParams);
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
    }

    public /* synthetic */ BaseVideoTrimmerView(Context context, AttributeSet attributeSet, int i, int i2, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, attributeSet, (i2 & 4) != 0 ? 0 : i);
    }

    /* renamed from: a */
    public static final /* synthetic */ void m6955a(BaseVideoTrimmerView baseVideoTrimmerView, int i) {
        if (i < baseVideoTrimmerView.f58378e) {
            baseVideoTrimmerView.setProgressBarPosition(i);
            baseVideoTrimmerView.mo6959a(i);
            return;
        }
        baseVideoTrimmerView.f58391s.removeMessages(2);
        baseVideoTrimmerView.m6952b();
        baseVideoTrimmerView.f58390r = true;
    }

    /* renamed from: a */
    public static final /* synthetic */ void m6954a(BaseVideoTrimmerView baseVideoTrimmerView, int i, float f) {
        if (i == RangeSeekBarView.EnumC16605b.LEFT.getIndex()) {
            int i2 = (int) ((baseVideoTrimmerView.f58388p * f) / 100.0f);
            baseVideoTrimmerView.f58377d = i2;
            baseVideoTrimmerView.f58382j.seekTo(i2);
        } else if (i == RangeSeekBarView.EnumC16605b.RIGHT.getIndex()) {
            baseVideoTrimmerView.f58378e = (int) ((baseVideoTrimmerView.f58388p * f) / 100.0f);
        }
        baseVideoTrimmerView.setProgressBarPosition(baseVideoTrimmerView.f58377d);
        baseVideoTrimmerView.mo6958a(baseVideoTrimmerView.f58377d, baseVideoTrimmerView.f58378e);
        baseVideoTrimmerView.f58376c = baseVideoTrimmerView.f58378e - baseVideoTrimmerView.f58377d;
    }

    /* renamed from: a */
    public static final /* synthetic */ void m6953a(BaseVideoTrimmerView baseVideoTrimmerView, MediaPlayer mediaPlayer) {
        float videoWidth = mediaPlayer.getVideoWidth() / mediaPlayer.getVideoHeight();
        int width = baseVideoTrimmerView.f58380h.getWidth();
        int height = baseVideoTrimmerView.f58380h.getHeight();
        float f = width;
        float f2 = height;
        float f3 = f / f2;
        ViewGroup.LayoutParams layoutParams = baseVideoTrimmerView.f58382j.getLayoutParams();
        if (videoWidth > f3) {
            layoutParams.width = width;
            layoutParams.height = (int) (f / videoWidth);
        } else {
            layoutParams.width = (int) (videoWidth * f2);
            layoutParams.height = height;
        }
        baseVideoTrimmerView.f58382j.setLayoutParams(layoutParams);
        baseVideoTrimmerView.f58383k.setVisibility(0);
        int duration = baseVideoTrimmerView.f58382j.getDuration();
        baseVideoTrimmerView.f58388p = duration;
        int i = baseVideoTrimmerView.f58386n;
        if (duration >= i) {
            int i2 = (duration / 2) - (i / 2);
            baseVideoTrimmerView.f58377d = i2;
            baseVideoTrimmerView.f58378e = (duration / 2) + (i / 2);
            baseVideoTrimmerView.f58379g.setThumbValue(0, (i2 * 100.0f) / duration);
            baseVideoTrimmerView.f58379g.setThumbValue(1, (baseVideoTrimmerView.f58378e * 100.0f) / baseVideoTrimmerView.f58388p);
        } else {
            baseVideoTrimmerView.f58377d = 0;
            baseVideoTrimmerView.f58378e = duration;
        }
        baseVideoTrimmerView.setProgressBarPosition(baseVideoTrimmerView.f58377d);
        baseVideoTrimmerView.f58382j.seekTo(baseVideoTrimmerView.f58377d);
        baseVideoTrimmerView.f58376c = baseVideoTrimmerView.f58388p;
        RangeSeekBarView rangeSeekBarView = baseVideoTrimmerView.f58379g;
        rangeSeekBarView.f58425c = rangeSeekBarView.f58423a[RangeSeekBarView.EnumC16605b.RIGHT.getIndex()].f58438b - rangeSeekBarView.f58423a[RangeSeekBarView.EnumC16605b.LEFT.getIndex()].f58438b;
        RangeSeekBarView.EnumC16605b.LEFT.getIndex();
        RangeSeekBarView.EnumC16605b.LEFT.getIndex();
        rangeSeekBarView.m6915a(rangeSeekBarView);
        RangeSeekBarView.EnumC16605b.RIGHT.getIndex();
        RangeSeekBarView.EnumC16605b.RIGHT.getIndex();
        rangeSeekBarView.m6915a(rangeSeekBarView);
        baseVideoTrimmerView.mo6958a(baseVideoTrimmerView.f58377d, baseVideoTrimmerView.f58378e);
        baseVideoTrimmerView.mo6959a(0);
        AbstractC16595c abstractC16595c = baseVideoTrimmerView.f58375b;
        if (abstractC16595c == null || abstractC16595c != null) {
            return;
        }
        C18524p.m3855a();
    }

    /* renamed from: b */
    public static final /* synthetic */ void m6951b(BaseVideoTrimmerView baseVideoTrimmerView) {
        if (baseVideoTrimmerView.f58388p != 0) {
            int currentPosition = baseVideoTrimmerView.f58382j.getCurrentPosition();
            Iterator<AbstractC16593a> it2 = baseVideoTrimmerView.f58387o.iterator();
            while (it2.hasNext()) {
                it2.next().mo6941a(currentPosition);
            }
        }
    }

    /* renamed from: c */
    public static final /* synthetic */ void m6950c(BaseVideoTrimmerView baseVideoTrimmerView) {
        if (baseVideoTrimmerView.f58382j.isPlaying()) {
            baseVideoTrimmerView.f58391s.removeMessages(2);
            baseVideoTrimmerView.m6952b();
            return;
        }
        baseVideoTrimmerView.f58383k.setVisibility(8);
        if (baseVideoTrimmerView.f58390r) {
            baseVideoTrimmerView.f58390r = false;
            baseVideoTrimmerView.f58382j.seekTo(baseVideoTrimmerView.f58377d);
        }
        baseVideoTrimmerView.f58391s.sendEmptyMessage(2);
        baseVideoTrimmerView.f58382j.start();
    }

    /* renamed from: e */
    public static final /* synthetic */ void m6948e(BaseVideoTrimmerView baseVideoTrimmerView) {
        baseVideoTrimmerView.f58391s.removeMessages(2);
        baseVideoTrimmerView.m6952b();
    }

    /* renamed from: f */
    public static final /* synthetic */ void m6947f(BaseVideoTrimmerView baseVideoTrimmerView) {
        baseVideoTrimmerView.f58382j.seekTo(baseVideoTrimmerView.f58377d);
    }

    private final void setProgressBarPosition(int i) {
    }

    /* renamed from: a */
    public abstract void mo6960a();

    /* renamed from: a */
    public abstract void mo6959a(int i);

    /* renamed from: a */
    public abstract void mo6958a(int i, int i2);

    /* renamed from: a */
    public abstract void mo6957a(long j);

    /* renamed from: b */
    public final void m6952b() {
        this.f58382j.pause();
        this.f58383k.setVisibility(0);
    }

    public abstract View getPlayView();

    public abstract RangeSeekBarView getRangeSeekBarView();

    public abstract View getTimeInfoContainer();

    public abstract TimeLineView getTimeLineView();

    public abstract VideoView getVideoView();

    public abstract View getVideoViewContainer();

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C16596a.f58401a.m6931a("");
        C16601d c16601d = C16601d.f58419b;
        C16601d.m6919b("");
    }

    public final void setDestinationFile(File dst) {
        C18524p.m3841c(dst, "dst");
        this.f58385m = dst;
    }

    public final void setMaxDurationInMs(int i) {
        this.f58386n = i;
    }

    public final void setOnK4LVideoListener(AbstractC16595c onK4LVideoListener) {
        C18524p.m3841c(onK4LVideoListener, "onK4LVideoListener");
        this.f58375b = onK4LVideoListener;
    }

    public final void setVideoInformationVisibility(boolean z) {
        this.f58381i.setVisibility(z ? 0 : 8);
    }

    public final void setVideoURI(Uri videoURI) {
        C18524p.m3841c(videoURI, "videoURI");
        this.f58374a = videoURI;
        if (this.f58389q == 0) {
            Context context = getContext();
            C18524p.m3849a((Object) context, "context");
            Cursor query = context.getContentResolver().query(videoURI, null, null, null, null);
            if (query != null) {
                int columnIndex = query.getColumnIndex("_size");
                query.moveToFirst();
                this.f58389q = query.getLong(columnIndex);
                query.close();
                mo6957a(this.f58389q);
            }
        }
        this.f58382j.setVideoURI(this.f58374a);
        this.f58382j.requestFocus();
        TimeLineView timeLineView = this.f58384l;
        Uri uri = this.f58374a;
        if (uri == null) {
            C18524p.m3855a();
        }
        timeLineView.setVideo(uri);
    }
}
