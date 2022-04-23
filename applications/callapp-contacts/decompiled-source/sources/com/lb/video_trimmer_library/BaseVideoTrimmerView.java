package com.lb.video_trimmer_library;

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
import com.lb.video_trimmer_library.b.a;
import com.lb.video_trimmer_library.view.RangeSeekBarView;
import com.lb.video_trimmer_library.view.TimeLineView;
import com.mopub.mobileads.VastIconXmlManager;
import java.io.File;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.TypeCastException;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.p;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u008a\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\r\n\u0002\u0010\u0007\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0014\b&\u0018�� V2\u00020\u0001:\u0002VWB!\b\u0007\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\b\b\u0002\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010(\u001a\u00020\u0017H&J\b\u0010)\u001a\u00020\u0019H&J\b\u0010*\u001a\u00020\u0017H&J\b\u0010+\u001a\u00020!H&J\b\u0010,\u001a\u00020&H&J\b\u0010-\u001a\u00020\u0017H&J\b\u0010.\u001a\u00020/H&J\b\u00100\u001a\u00020/H\u0007J\u0010\u00101\u001a\u00020/2\u0006\u00102\u001a\u00020\u001bH\u0002J\b\u00103\u001a\u00020/H\u0002J\b\u00104\u001a\u00020/H\u0014J\u0010\u00105\u001a\u00020/2\u0006\u00106\u001a\u00020\u0015H&J\u0018\u00107\u001a\u00020/2\u0006\u00108\u001a\u00020\u00072\u0006\u00109\u001a\u00020\u0007H&J\u0018\u0010:\u001a\u00020/2\u0006\u0010;\u001a\u00020\u00072\u0006\u0010<\u001a\u00020=H\u0002J\b\u0010>\u001a\u00020/H\u0002J\b\u0010?\u001a\u00020/H\u0002J\u0010\u0010@\u001a\u00020/2\u0006\u0010A\u001a\u00020\u0007H&J\u0010\u0010B\u001a\u00020/2\u0006\u0010C\u001a\u00020DH\u0003J\u0006\u0010E\u001a\u00020/J\u000e\u0010F\u001a\u00020/2\u0006\u0010G\u001a\u00020\nJ\u000e\u0010H\u001a\u00020/2\u0006\u0010\u0011\u001a\u00020\u0007J\u000e\u0010I\u001a\u00020/2\u0006\u0010J\u001a\u00020$J\u0010\u0010K\u001a\u00020/2\u0006\u0010L\u001a\u00020\u0007H\u0002J\b\u0010M\u001a\u00020/H\u0002J\b\u0010N\u001a\u00020/H\u0003J\b\u0010O\u001a\u00020/H\u0002J\u000e\u0010P\u001a\u00020/2\u0006\u0010Q\u001a\u00020\u001bJ\u000e\u0010R\u001a\u00020/2\u0006\u0010S\u001a\u00020\u001dJ\u0010\u0010T\u001a\u00020/2\u0006\u0010U\u001a\u00020\u0007H\u0002R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��R\u001e\u0010\r\u001a\u0012\u0012\u0004\u0012\u00020\u000f0\u000ej\b\u0012\u0004\u0012\u00020\u000f`\u0010X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u001a\u001a\u00020\u001bX\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u001e\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u001f\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010 \u001a\u00020!X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\"\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n��R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010%\u001a\u00020&X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010'\u001a\u00020\u0017X\u0082\u0004¢\u0006\u0002\n��¨\u0006X"}, d2 = {"Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;", "Landroid/widget/FrameLayout;", "context", "Landroid/content/Context;", "attrs", "Landroid/util/AttributeSet;", "defStyleAttr", "", "(Landroid/content/Context;Landroid/util/AttributeSet;I)V", "dstFile", "Ljava/io/File;", VastIconXmlManager.DURATION, "endPosition", "listeners", "Ljava/util/ArrayList;", "Lcom/lb/video_trimmer_library/interfaces/OnProgressVideoListener;", "Lkotlin/collections/ArrayList;", "maxDurationInMs", "messageHandler", "Lcom/lb/video_trimmer_library/BaseVideoTrimmerView$MessageHandler;", "originSizeFile", "", "playView", "Landroid/view/View;", "rangeSeekBarView", "Lcom/lb/video_trimmer_library/view/RangeSeekBarView;", "resetSeekBar", "", "src", "Landroid/net/Uri;", "startPosition", "timeInfoContainer", "timeLineView", "Lcom/lb/video_trimmer_library/view/TimeLineView;", "timeVideo", "videoTrimmingListener", "Lcom/lb/video_trimmer_library/interfaces/VideoTrimmingListener;", "videoView", "Landroid/widget/VideoView;", "videoViewContainer", "getPlayView", "getRangeSeekBarView", "getTimeInfoContainer", "getTimeLineView", "getVideoView", "getVideoViewContainer", "initRootView", "", "initiateTrimming", "notifyProgressUpdate", "all", "onClickVideoPlayPause", "onDetachedFromWindow", "onGotVideoFileSize", "videoFileSize", "onRangeUpdated", "startTimeInMs", "endTimeInMs", "onSeekThumbs", "index", "value", "", "onStopSeekThumbs", "onVideoCompleted", "onVideoPlaybackReachingTime", "timeInMs", "onVideoPrepared", "mp", "Landroid/media/MediaPlayer;", "pauseVideo", "setDestinationFile", "dst", "setMaxDurationInMs", "setOnK4LVideoListener", "onK4LVideoListener", "setProgressBarPosition", "position", "setSeekBarPosition", "setUpListeners", "setUpMargins", "setVideoInformationVisibility", "visible", "setVideoURI", "videoURI", "updateVideoProgress", "time", "Companion", "MessageHandler", "video_trimmer_library_release"}, k = 1, mv = {1, 1, 13})
/* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/BaseVideoTrimmerView.class */
public abstract class BaseVideoTrimmerView extends FrameLayout {
    public static final a f = new a(null);

    /* renamed from: a  reason: collision with root package name */
    public Uri f33608a;

    /* renamed from: b  reason: collision with root package name */
    public com.lb.video_trimmer_library.a.c f33609b;

    /* renamed from: c  reason: collision with root package name */
    public int f33610c;

    /* renamed from: d  reason: collision with root package name */
    public int f33611d;
    public int e;
    private final RangeSeekBarView g;
    private final View h;
    private final View i;
    private final VideoView j;
    private final View k;
    private final TimeLineView l;
    private File m;
    private int n;
    private ArrayList<com.lb.video_trimmer_library.a.a> o;
    private int p;
    private long q;
    private boolean r;
    private final b s;

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��¨\u0006\u0006"}, d2 = {"Lcom/lb/video_trimmer_library/BaseVideoTrimmerView$Companion;", "", "()V", "MIN_TIME_FRAME", "", "SHOW_PROGRESS", "video_trimmer_library_release"}, k = 1, mv = {1, 1, 13})
    /* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/BaseVideoTrimmerView$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\b\u0002\u0018��2\u00020\u0001B\u000f\b��\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0012\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\nH\u0016R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00030\u0006X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u000b"}, d2 = {"Lcom/lb/video_trimmer_library/BaseVideoTrimmerView$MessageHandler;", "Landroid/os/Handler;", "view", "Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;", "(Lcom/lb/video_trimmer_library/BaseVideoTrimmerView;)V", "mView", "Ljava/lang/ref/WeakReference;", "handleMessage", "", "msg", "Landroid/os/Message;", "video_trimmer_library_release"}, k = 1, mv = {1, 1, 13})
    /* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/BaseVideoTrimmerView$b.class */
    public static final class b extends Handler {

        /* renamed from: a  reason: collision with root package name */
        private final WeakReference<BaseVideoTrimmerView> f33612a;

        public b(BaseVideoTrimmerView view) {
            p.c(view, "view");
            this.f33612a = new WeakReference<>(view);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            BaseVideoTrimmerView baseVideoTrimmerView = this.f33612a.get();
            if ((baseVideoTrimmerView != null ? baseVideoTrimmerView.j : null) != null) {
                BaseVideoTrimmerView.b(baseVideoTrimmerView);
                if (baseVideoTrimmerView.j.isPlaying()) {
                    sendEmptyMessageDelayed(0, 10L);
                }
            }
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0011\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0016¨\u0006\u0004"}, d2 = {"com/lb/video_trimmer_library/BaseVideoTrimmerView$initiateTrimming$1", "Lcom/lb/video_trimmer_library/utils/BackgroundExecutor$Task;", "execute", "", "video_trimmer_library_release"}, k = 1, mv = {1, 1, 13})
    /* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/BaseVideoTrimmerView$c.class */
    public static final class c extends a.AbstractRunnableC0542a {
        public c(String str, long j, String str2) {
            super(str, j, str2);
        }

        @Override // com.lb.video_trimmer_library.b.a.AbstractRunnableC0542a
        public final void a() {
            try {
                Context context = BaseVideoTrimmerView.this.getContext();
                p.a((Object) context, "context");
                Uri uri = BaseVideoTrimmerView.this.f33608a;
                if (uri == null) {
                    p.a();
                }
                File file = BaseVideoTrimmerView.this.m;
                if (file == null) {
                    p.a();
                }
                long j = BaseVideoTrimmerView.this.f33611d;
                long j2 = BaseVideoTrimmerView.this.e;
                long j3 = BaseVideoTrimmerView.this.p;
                com.lb.video_trimmer_library.a.c cVar = BaseVideoTrimmerView.this.f33609b;
                if (cVar == null) {
                    p.a();
                }
                com.lb.video_trimmer_library.b.c.a(context, uri, file, j, j2, j3, cVar);
            } catch (Throwable th) {
                Thread.getDefaultUncaughtExceptionHandler().uncaughtException(Thread.currentThread(), th);
            }
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u001f\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0007\n��*\u0001��\b\n\u0018��2\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0007\u001a\u00020\bH\u0016¨\u0006\t"}, d2 = {"com/lb/video_trimmer_library/BaseVideoTrimmerView$setUpListeners$1", "Lcom/lb/video_trimmer_library/interfaces/OnProgressVideoListener;", "updateProgress", "", "time", "", "max", "scale", "", "video_trimmer_library_release"}, k = 1, mv = {1, 1, 13})
    /* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/BaseVideoTrimmerView$d.class */
    public static final class d implements com.lb.video_trimmer_library.a.a {
        d() {
        }

        @Override // com.lb.video_trimmer_library.a.a
        public final void a(int i) {
            BaseVideoTrimmerView.a(BaseVideoTrimmerView.this, i);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u0006H\n¢\u0006\u0002\b\b"}, d2 = {"<anonymous>", "", "<anonymous parameter 0>", "Landroid/media/MediaPlayer;", "kotlin.jvm.PlatformType", "what", "", "extra", "onError"}, k = 3, mv = {1, 1, 13})
    /* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/BaseVideoTrimmerView$e.class */
    static final class e implements MediaPlayer.OnErrorListener {
        e() {
        }

        @Override // android.media.MediaPlayer.OnErrorListener
        public final boolean onError(MediaPlayer mediaPlayer, int i, int i2) {
            if (BaseVideoTrimmerView.this.f33609b == null) {
                return false;
            }
            com.lb.video_trimmer_library.a.c cVar = BaseVideoTrimmerView.this.f33609b;
            if (cVar == null) {
                p.a();
            }
            cVar.a();
            return false;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0016\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u00032\u000e\u0010\u0005\u001a\n \u0004*\u0004\u0018\u00010\u00060\u0006H\n¢\u0006\u0002\b\u0007"}, d2 = {"<anonymous>", "", "v", "Landroid/view/View;", "kotlin.jvm.PlatformType", "event", "Landroid/view/MotionEvent;", "onTouch"}, k = 3, mv = {1, 1, 13})
    /* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/BaseVideoTrimmerView$f.class */
    static final class f implements View.OnTouchListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ GestureDetector f33616a;

        f(GestureDetector gestureDetector) {
            this.f33616a = gestureDetector;
        }

        @Override // android.view.View.OnTouchListener
        public final boolean onTouch(View view, MotionEvent motionEvent) {
            this.f33616a.onTouchEvent(motionEvent);
            return true;
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��%\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010\u0007\n\u0002\b\u0004*\u0001��\b\n\u0018��2\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J \u0010\n\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J \u0010\u000b\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016J \u0010\f\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\b\u001a\u00020\tH\u0016¨\u0006\r"}, d2 = {"com/lb/video_trimmer_library/BaseVideoTrimmerView$setUpListeners$4", "Lcom/lb/video_trimmer_library/interfaces/OnRangeSeekBarListener;", "onCreate", "", "rangeSeekBarView", "Lcom/lb/video_trimmer_library/view/RangeSeekBarView;", "index", "", "value", "", "onSeek", "onSeekStart", "onSeekStop", "video_trimmer_library_release"}, k = 1, mv = {1, 1, 13})
    /* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/BaseVideoTrimmerView$g.class */
    public static final class g implements com.lb.video_trimmer_library.a.b {
        g() {
        }

        @Override // com.lb.video_trimmer_library.a.b
        public final void a(RangeSeekBarView rangeSeekBarView) {
            p.c(rangeSeekBarView, "rangeSeekBarView");
        }

        @Override // com.lb.video_trimmer_library.a.b
        public final void a(RangeSeekBarView rangeSeekBarView, int i, float f) {
            p.c(rangeSeekBarView, "rangeSeekBarView");
            BaseVideoTrimmerView.a(BaseVideoTrimmerView.this, i, f);
        }

        @Override // com.lb.video_trimmer_library.a.b
        public final void b(RangeSeekBarView rangeSeekBarView) {
            p.c(rangeSeekBarView, "rangeSeekBarView");
        }

        @Override // com.lb.video_trimmer_library.a.b
        public final void c(RangeSeekBarView rangeSeekBarView) {
            p.c(rangeSeekBarView, "rangeSeekBarView");
            BaseVideoTrimmerView.e(BaseVideoTrimmerView.this);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Landroid/media/MediaPlayer;", "kotlin.jvm.PlatformType", "onPrepared"}, k = 3, mv = {1, 1, 13})
    /* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/BaseVideoTrimmerView$h.class */
    static final class h implements MediaPlayer.OnPreparedListener {
        h() {
        }

        @Override // android.media.MediaPlayer.OnPreparedListener
        public final void onPrepared(MediaPlayer it2) {
            BaseVideoTrimmerView baseVideoTrimmerView = BaseVideoTrimmerView.this;
            p.a((Object) it2, "it");
            BaseVideoTrimmerView.a(baseVideoTrimmerView, it2);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010��\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Landroid/media/MediaPlayer;", "kotlin.jvm.PlatformType", "onCompletion"}, k = 3, mv = {1, 1, 13})
    /* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/BaseVideoTrimmerView$i.class */
    static final class i implements MediaPlayer.OnCompletionListener {
        i() {
        }

        @Override // android.media.MediaPlayer.OnCompletionListener
        public final void onCompletion(MediaPlayer mediaPlayer) {
            BaseVideoTrimmerView.f(BaseVideoTrimmerView.this);
        }
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0017\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n��\n\u0002\u0018\u0002\n��*\u0001��\b\n\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0006"}, d2 = {"com/lb/video_trimmer_library/BaseVideoTrimmerView$setUpListeners$gestureDetector$1", "Landroid/view/GestureDetector$SimpleOnGestureListener;", "onSingleTapConfirmed", "", "e", "Landroid/view/MotionEvent;", "video_trimmer_library_release"}, k = 1, mv = {1, 1, 13})
    /* loaded from: classes4-dex2jar.jar:com/lb/video_trimmer_library/BaseVideoTrimmerView$j.class */
    public static final class j extends GestureDetector.SimpleOnGestureListener {
        j() {
        }

        @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnDoubleTapListener
        public final boolean onSingleTapConfirmed(MotionEvent e) {
            p.c(e, "e");
            BaseVideoTrimmerView.c(BaseVideoTrimmerView.this);
            return true;
        }
    }

    public BaseVideoTrimmerView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0, 4, null);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public BaseVideoTrimmerView(Context context, AttributeSet attrs, int i2) {
        super(context, attrs, i2);
        p.c(context, "context");
        p.c(attrs, "attrs");
        this.o = new ArrayList<>();
        this.r = true;
        this.s = new b(this);
        a();
        RangeSeekBarView rangeSeekBarView = getRangeSeekBarView();
        this.g = rangeSeekBarView;
        this.h = getVideoViewContainer();
        VideoView videoView = getVideoView();
        this.j = videoView;
        this.k = getPlayView();
        this.i = getTimeInfoContainer();
        TimeLineView timeLineView = getTimeLineView();
        this.l = timeLineView;
        this.o.add(new d());
        GestureDetector gestureDetector = new GestureDetector(getContext(), new j());
        videoView.setOnErrorListener(new e());
        videoView.setOnTouchListener(new f(gestureDetector));
        g listener = new g();
        p.c(listener, "listener");
        rangeSeekBarView.f33640b.add(listener);
        videoView.setOnPreparedListener(new h());
        videoView.setOnCompletionListener(new i());
        int i3 = rangeSeekBarView.f33642d;
        ViewGroup.LayoutParams layoutParams = timeLineView.getLayoutParams();
        if (layoutParams != null) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            marginLayoutParams.setMargins(i3, marginLayoutParams.topMargin, i3, marginLayoutParams.bottomMargin);
            timeLineView.setLayoutParams(marginLayoutParams);
            return;
        }
        throw new TypeCastException("null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams");
    }

    public /* synthetic */ BaseVideoTrimmerView(Context context, AttributeSet attributeSet, int i2, int i3, DefaultConstructorMarker defaultConstructorMarker) {
        this(context, attributeSet, (i3 & 4) != 0 ? 0 : i2);
    }

    public static final /* synthetic */ void a(BaseVideoTrimmerView baseVideoTrimmerView, int i2) {
        if (i2 >= baseVideoTrimmerView.e) {
            baseVideoTrimmerView.s.removeMessages(2);
            baseVideoTrimmerView.b();
            baseVideoTrimmerView.r = true;
            return;
        }
        baseVideoTrimmerView.setProgressBarPosition(i2);
        baseVideoTrimmerView.a(i2);
    }

    public static final /* synthetic */ void a(BaseVideoTrimmerView baseVideoTrimmerView, int i2, float f2) {
        if (i2 == RangeSeekBarView.b.LEFT.getIndex()) {
            int i3 = (int) ((baseVideoTrimmerView.p * f2) / 100.0f);
            baseVideoTrimmerView.f33611d = i3;
            baseVideoTrimmerView.j.seekTo(i3);
        } else if (i2 == RangeSeekBarView.b.RIGHT.getIndex()) {
            baseVideoTrimmerView.e = (int) ((baseVideoTrimmerView.p * f2) / 100.0f);
        }
        baseVideoTrimmerView.setProgressBarPosition(baseVideoTrimmerView.f33611d);
        baseVideoTrimmerView.a(baseVideoTrimmerView.f33611d, baseVideoTrimmerView.e);
        baseVideoTrimmerView.f33610c = baseVideoTrimmerView.e - baseVideoTrimmerView.f33611d;
    }

    public static final /* synthetic */ void a(BaseVideoTrimmerView baseVideoTrimmerView, MediaPlayer mediaPlayer) {
        float videoWidth = mediaPlayer.getVideoWidth() / mediaPlayer.getVideoHeight();
        int width = baseVideoTrimmerView.h.getWidth();
        int height = baseVideoTrimmerView.h.getHeight();
        float f2 = width;
        float f3 = height;
        float f4 = f2 / f3;
        ViewGroup.LayoutParams layoutParams = baseVideoTrimmerView.j.getLayoutParams();
        if (videoWidth > f4) {
            layoutParams.width = width;
            layoutParams.height = (int) (f2 / videoWidth);
        } else {
            layoutParams.width = (int) (videoWidth * f3);
            layoutParams.height = height;
        }
        baseVideoTrimmerView.j.setLayoutParams(layoutParams);
        baseVideoTrimmerView.k.setVisibility(0);
        int duration = baseVideoTrimmerView.j.getDuration();
        baseVideoTrimmerView.p = duration;
        int i2 = baseVideoTrimmerView.n;
        if (duration >= i2) {
            int i3 = (duration / 2) - (i2 / 2);
            baseVideoTrimmerView.f33611d = i3;
            baseVideoTrimmerView.e = (duration / 2) + (i2 / 2);
            baseVideoTrimmerView.g.setThumbValue(0, (i3 * 100.0f) / duration);
            baseVideoTrimmerView.g.setThumbValue(1, (baseVideoTrimmerView.e * 100.0f) / baseVideoTrimmerView.p);
        } else {
            baseVideoTrimmerView.f33611d = 0;
            baseVideoTrimmerView.e = duration;
        }
        baseVideoTrimmerView.setProgressBarPosition(baseVideoTrimmerView.f33611d);
        baseVideoTrimmerView.j.seekTo(baseVideoTrimmerView.f33611d);
        baseVideoTrimmerView.f33610c = baseVideoTrimmerView.p;
        RangeSeekBarView rangeSeekBarView = baseVideoTrimmerView.g;
        rangeSeekBarView.f33641c = rangeSeekBarView.f33639a[RangeSeekBarView.b.RIGHT.getIndex()].f33644b - rangeSeekBarView.f33639a[RangeSeekBarView.b.LEFT.getIndex()].f33644b;
        RangeSeekBarView.b.LEFT.getIndex();
        RangeSeekBarView.b.LEFT.getIndex();
        rangeSeekBarView.a(rangeSeekBarView);
        RangeSeekBarView.b.RIGHT.getIndex();
        RangeSeekBarView.b.RIGHT.getIndex();
        rangeSeekBarView.a(rangeSeekBarView);
        baseVideoTrimmerView.a(baseVideoTrimmerView.f33611d, baseVideoTrimmerView.e);
        baseVideoTrimmerView.a(0);
        com.lb.video_trimmer_library.a.c cVar = baseVideoTrimmerView.f33609b;
        if (cVar != null && cVar == null) {
            p.a();
        }
    }

    public static final /* synthetic */ void b(BaseVideoTrimmerView baseVideoTrimmerView) {
        if (baseVideoTrimmerView.p != 0) {
            int currentPosition = baseVideoTrimmerView.j.getCurrentPosition();
            Iterator<com.lb.video_trimmer_library.a.a> it2 = baseVideoTrimmerView.o.iterator();
            while (it2.hasNext()) {
                it2.next().a(currentPosition);
            }
        }
    }

    public static final /* synthetic */ void c(BaseVideoTrimmerView baseVideoTrimmerView) {
        if (baseVideoTrimmerView.j.isPlaying()) {
            baseVideoTrimmerView.s.removeMessages(2);
            baseVideoTrimmerView.b();
            return;
        }
        baseVideoTrimmerView.k.setVisibility(8);
        if (baseVideoTrimmerView.r) {
            baseVideoTrimmerView.r = false;
            baseVideoTrimmerView.j.seekTo(baseVideoTrimmerView.f33611d);
        }
        baseVideoTrimmerView.s.sendEmptyMessage(2);
        baseVideoTrimmerView.j.start();
    }

    public static final /* synthetic */ void e(BaseVideoTrimmerView baseVideoTrimmerView) {
        baseVideoTrimmerView.s.removeMessages(2);
        baseVideoTrimmerView.b();
    }

    public static final /* synthetic */ void f(BaseVideoTrimmerView baseVideoTrimmerView) {
        baseVideoTrimmerView.j.seekTo(baseVideoTrimmerView.f33611d);
    }

    private final void setProgressBarPosition(int i2) {
    }

    public abstract void a();

    public abstract void a(int i2);

    public abstract void a(int i2, int i3);

    public abstract void a(long j2);

    public final void b() {
        this.j.pause();
        this.k.setVisibility(0);
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
        com.lb.video_trimmer_library.b.a.f33621a.a("");
        com.lb.video_trimmer_library.b.d dVar = com.lb.video_trimmer_library.b.d.f33635b;
        com.lb.video_trimmer_library.b.d.b("");
    }

    public final void setDestinationFile(File dst) {
        p.c(dst, "dst");
        this.m = dst;
    }

    public final void setMaxDurationInMs(int i2) {
        this.n = i2;
    }

    public final void setOnK4LVideoListener(com.lb.video_trimmer_library.a.c onK4LVideoListener) {
        p.c(onK4LVideoListener, "onK4LVideoListener");
        this.f33609b = onK4LVideoListener;
    }

    public final void setVideoInformationVisibility(boolean z) {
        this.i.setVisibility(z ? 0 : 8);
    }

    public final void setVideoURI(Uri videoURI) {
        p.c(videoURI, "videoURI");
        this.f33608a = videoURI;
        if (this.q == 0) {
            Context context = getContext();
            p.a((Object) context, "context");
            Cursor query = context.getContentResolver().query(videoURI, null, null, null, null);
            if (query != null) {
                int columnIndex = query.getColumnIndex("_size");
                query.moveToFirst();
                this.q = query.getLong(columnIndex);
                query.close();
                a(this.q);
            }
        }
        this.j.setVideoURI(this.f33608a);
        this.j.requestFocus();
        TimeLineView timeLineView = this.l;
        Uri uri = this.f33608a;
        if (uri == null) {
            p.a();
        }
        timeLineView.setVideo(uri);
    }
}
