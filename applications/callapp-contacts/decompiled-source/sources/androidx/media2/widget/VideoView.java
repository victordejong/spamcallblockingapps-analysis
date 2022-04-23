package androidx.media2.widget;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Surface;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.view.v;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.SubtitleData;
import androidx.media2.common.VideoSize;
import androidx.media2.session.MediaController;
import androidx.media2.widget.k;
import androidx.media2.widget.m;
import androidx.media2.widget.o;
import androidx.media2.widget.t;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/VideoView.class */
public class VideoView extends m {

    /* renamed from: a  reason: collision with root package name */
    static final boolean f5148a = Log.isLoggable("VideoView", 3);

    /* renamed from: b  reason: collision with root package name */
    a f5149b;

    /* renamed from: c  reason: collision with root package name */
    t f5150c;

    /* renamed from: d  reason: collision with root package name */
    t f5151d;
    s e;
    r f;
    k g;
    public MediaControlView h;
    j i;
    m.a j;
    int k;
    int l;
    Map<SessionPlayer.TrackInfo, p> m;
    o n;
    SessionPlayer.TrackInfo o;
    n p;
    private final t.a q;

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/VideoView$a.class */
    public interface a {
    }

    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/VideoView$b.class */
    final class b extends k.b {
        b() {
        }

        private boolean d(k kVar) {
            if (kVar == VideoView.this.g) {
                return false;
            }
            if (!VideoView.f5148a) {
                return true;
            }
            try {
                String methodName = new Throwable().getStackTrace()[1].getMethodName();
                Log.w("VideoView", methodName + " should be ignored. player is already gone.");
                return true;
            } catch (IndexOutOfBoundsException e) {
                Log.w("VideoView", "A PlayerCallback should be ignored. player is already gone.");
                return true;
            }
        }

        @Override // androidx.media2.widget.k.b
        final void a(k kVar, int i) {
            boolean z = VideoView.f5148a;
            if (d(kVar)) {
            }
        }

        @Override // androidx.media2.widget.k.b
        final void a(k kVar, MediaItem mediaItem) {
            if (VideoView.f5148a) {
                new StringBuilder("onCurrentMediaItemChanged(): MediaItem: ").append(mediaItem);
            }
            if (!d(kVar)) {
                VideoView.this.a(mediaItem);
            }
        }

        @Override // androidx.media2.widget.k.b
        final void a(k kVar, SessionPlayer.TrackInfo trackInfo) {
            p pVar;
            if (VideoView.f5148a) {
                new StringBuilder("onTrackSelected(): selected track: ").append(trackInfo);
            }
            if (!d(kVar) && (pVar = VideoView.this.m.get(trackInfo)) != null) {
                VideoView.this.n.a(pVar);
            }
        }

        @Override // androidx.media2.widget.k.b
        final void a(k kVar, SessionPlayer.TrackInfo trackInfo, SubtitleData subtitleData) {
            p pVar;
            if (VideoView.f5148a) {
                StringBuilder sb = new StringBuilder("onSubtitleData(): TrackInfo: ");
                sb.append(trackInfo);
                sb.append(", getCurrentPosition: ");
                sb.append(kVar.d());
                sb.append(", getStartTimeUs(): ");
                sb.append(subtitleData.f2761a);
                sb.append(", diff: ");
                sb.append((subtitleData.f2761a / 1000) - kVar.d());
                sb.append("ms, getDurationUs(): ");
                sb.append(subtitleData.f2762b);
            }
            if (!d(kVar) && trackInfo.equals(VideoView.this.o) && (pVar = VideoView.this.m.get(trackInfo)) != null) {
                pVar.a(subtitleData);
            }
        }

        @Override // androidx.media2.widget.k.b
        final void a(k kVar, VideoSize videoSize) {
            List<SessionPlayer.TrackInfo> o;
            if (VideoView.f5148a) {
                new StringBuilder("onVideoSizeChanged(): size: ").append(videoSize);
            }
            if (!d(kVar)) {
                if (VideoView.this.k == 0 && videoSize.f2771b > 0 && videoSize.f2770a > 0) {
                    VideoView videoView = VideoView.this;
                    if (((videoView.g == null || videoView.g.f() == 3 || videoView.g.f() == 0) ? false : true) && (o = kVar.o()) != null) {
                        VideoView.this.a(kVar, o);
                    }
                }
                VideoView.this.e.forceLayout();
                VideoView.this.f.forceLayout();
                VideoView.this.requestLayout();
            }
        }

        @Override // androidx.media2.widget.k.b
        final void a(k kVar, List<SessionPlayer.TrackInfo> list) {
            if (VideoView.f5148a) {
                new StringBuilder("onTrackInfoChanged(): tracks: ").append(list);
            }
            if (!d(kVar)) {
                VideoView.this.a(kVar, list);
                VideoView.this.a(kVar.l());
            }
        }

        @Override // androidx.media2.widget.k.b
        final void b(k kVar, SessionPlayer.TrackInfo trackInfo) {
            if (VideoView.f5148a) {
                new StringBuilder("onTrackDeselected(): deselected track: ").append(trackInfo);
            }
            if (!d(kVar) && VideoView.this.m.get(trackInfo) != null) {
                VideoView.this.n.a((p) null);
            }
        }

        @Override // androidx.media2.widget.k.b
        final void c(k kVar) {
            boolean z = VideoView.f5148a;
            if (!d(kVar) && VideoView.this.ah) {
                VideoView.this.f5151d.a(VideoView.this.g);
            }
        }
    }

    public VideoView(Context context) {
        this(context, null);
    }

    public VideoView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public VideoView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        t.a aVar = new t.a() { // from class: androidx.media2.widget.VideoView.1
            @Override // androidx.media2.widget.t.a
            public final void a(View view) {
                if (VideoView.f5148a) {
                    new StringBuilder("onSurfaceDestroyed(). ").append(view.toString());
                }
            }

            @Override // androidx.media2.widget.t.a
            public final void a(View view, int i2, int i3) {
                if (VideoView.f5148a) {
                    StringBuilder sb = new StringBuilder("onSurfaceCreated(), width/height: ");
                    sb.append(i2);
                    sb.append("/");
                    sb.append(i3);
                    sb.append(", ");
                    sb.append(view.toString());
                }
                if (view == VideoView.this.f5151d && VideoView.this.ah) {
                    VideoView.this.f5151d.a(VideoView.this.g);
                }
            }

            @Override // androidx.media2.widget.t.a
            public final void a(t tVar) {
                if (tVar != VideoView.this.f5151d) {
                    Log.w("VideoView", "onSurfaceTakeOverDone(). view is not targetView. ignore.: ".concat(String.valueOf(tVar)));
                    return;
                }
                if (VideoView.f5148a) {
                    new StringBuilder("onSurfaceTakeOverDone(). Now current view is: ").append(tVar);
                }
                if (tVar != VideoView.this.f5150c) {
                    ((View) VideoView.this.f5150c).setVisibility(8);
                    VideoView.this.f5150c = tVar;
                }
            }

            @Override // androidx.media2.widget.t.a
            public final void b(View view, int i2, int i3) {
                if (VideoView.f5148a) {
                    StringBuilder sb = new StringBuilder("onSurfaceChanged(). width/height: ");
                    sb.append(i2);
                    sb.append("/");
                    sb.append(i3);
                    sb.append(", ");
                    sb.append(view.toString());
                }
            }
        };
        this.q = aVar;
        this.o = null;
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        this.e = new s(context);
        this.f = new r(context);
        this.e.f5292a = aVar;
        this.f.f5288a = aVar;
        addView(this.e);
        addView(this.f);
        m.a aVar2 = new m.a();
        this.j = aVar2;
        aVar2.f5260a = true;
        n nVar = new n(context);
        this.p = nVar;
        nVar.setBackgroundColor(0);
        addView(this.p, this.j);
        o oVar = new o(context, null, new o.b() { // from class: androidx.media2.widget.VideoView.2
            @Override // androidx.media2.widget.o.b
            public final void a(p pVar) {
                SessionPlayer.TrackInfo trackInfo = null;
                if (pVar == null) {
                    VideoView.this.o = null;
                    VideoView.this.p.setVisibility(8);
                    return;
                }
                Iterator<Map.Entry<SessionPlayer.TrackInfo, p>> it2 = VideoView.this.m.entrySet().iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        break;
                    }
                    Map.Entry<SessionPlayer.TrackInfo, p> next = it2.next();
                    if (next.getValue() == pVar) {
                        trackInfo = next.getKey();
                        break;
                    }
                }
                if (trackInfo != null) {
                    VideoView.this.o = trackInfo;
                    VideoView.this.p.setVisibility(0);
                }
            }
        });
        this.n = oVar;
        oVar.a(new d(context));
        this.n.a(new f(context));
        o oVar2 = this.n;
        n nVar2 = this.p;
        if (oVar2.h != nVar2) {
            if (oVar2.h != null) {
                oVar2.h.a(null);
            }
            oVar2.h = nVar2;
            oVar2.f5267d = null;
            if (oVar2.h != null) {
                oVar2.f5267d = new Handler(oVar2.h.a(), oVar2.e);
                oVar2.h.a(oVar2.a());
            }
        }
        j jVar = new j(context);
        this.i = jVar;
        jVar.setVisibility(8);
        addView(this.i, this.j);
        if (attributeSet == null || attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res-auto", "enableControlView", true)) {
            MediaControlView mediaControlView = new MediaControlView(context);
            this.h = mediaControlView;
            mediaControlView.f5105b = true;
            addView(this.h, this.j);
        }
        int attributeIntValue = attributeSet == null ? 0 : attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res-auto", "viewType", 0);
        if (attributeIntValue == 0) {
            this.e.setVisibility(8);
            this.f.setVisibility(0);
            this.f5150c = this.f;
        } else if (attributeIntValue == 1) {
            this.e.setVisibility(0);
            this.f.setVisibility(8);
            this.f5150c = this.e;
        }
        this.f5151d = this.f5150c;
    }

    private static String a(MediaMetadata mediaMetadata, String str, String str2) {
        String c2 = mediaMetadata == null ? str2 : mediaMetadata.c(str);
        return c2 == null ? str2 : c2;
    }

    private void a() {
        final com.google.common.util.concurrent.a<? extends androidx.media2.common.a> a2 = this.g.a((Surface) null);
        a2.a(new Runnable() { // from class: androidx.media2.widget.VideoView.3
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    int a3 = ((androidx.media2.common.a) a2.get()).a();
                    if (a3 != 0) {
                        Log.e("VideoView", "calling setSurface(null) was not successful. ResultCode: ".concat(String.valueOf(a3)));
                    }
                } catch (InterruptedException | ExecutionException e) {
                    Log.e("VideoView", "calling setSurface(null) was not successful.", e);
                }
            }
        }, androidx.core.content.b.e(getContext()));
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x014d  */
    /* JADX WARN: Type inference failed for: r0v38, types: [androidx.j.a.b$a$1] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void a(androidx.media2.common.MediaItem r8) {
        /*
            Method dump skipped, instructions count: 367
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.widget.VideoView.a(androidx.media2.common.MediaItem):void");
    }

    final void a(k kVar, List<SessionPlayer.TrackInfo> list) {
        p a2;
        this.m = new LinkedHashMap();
        this.k = 0;
        this.l = 0;
        for (int i = 0; i < list.size(); i++) {
            SessionPlayer.TrackInfo trackInfo = list.get(i);
            int i2 = list.get(i).f2755b;
            if (i2 == 1) {
                this.k++;
            } else if (i2 == 2) {
                this.l++;
            } else if (i2 == 4 && (a2 = this.n.a(trackInfo.a())) != null) {
                this.m.put(trackInfo, a2);
            }
        }
        this.o = kVar.a(4);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // androidx.media2.widget.i
    public final void a(boolean z) {
        super.a(z);
        k kVar = this.g;
        if (kVar != null) {
            if (z) {
                this.f5151d.a(kVar);
                return;
            }
            if (kVar != null) {
                if (!(kVar.f5254a != null && !kVar.f5254a.b())) {
                    try {
                        int a2 = ((androidx.media2.common.a) this.g.a((Surface) null).get(100L, TimeUnit.MILLISECONDS)).a();
                        if (a2 != 0) {
                            Log.e("VideoView", "calling setSurface(null) was not successful. ResultCode: ".concat(String.valueOf(a2)));
                            return;
                        }
                        return;
                    } catch (InterruptedException | ExecutionException | TimeoutException e) {
                        Log.e("VideoView", "calling setSurface(null) was not successful.", e);
                        return;
                    }
                }
            }
            Log.w("VideoView", "Surface is being destroyed, but player will not be informed as the associated media controller is disconnected.");
        }
    }

    @Override // androidx.media2.widget.m, android.view.ViewGroup
    public /* bridge */ /* synthetic */ ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return super.generateLayoutParams(attributeSet);
    }

    @Override // android.view.ViewGroup, android.view.View
    public CharSequence getAccessibilityClassName() {
        return "androidx.media2.widget.VideoView";
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        k kVar = this.g;
        if (kVar != null) {
            kVar.a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        k kVar = this.g;
        if (kVar != null) {
            kVar.b();
        }
    }

    @Override // androidx.media2.widget.i, android.view.View
    public /* bridge */ /* synthetic */ void onVisibilityAggregated(boolean z) {
        super.onVisibilityAggregated(z);
    }

    public void setMediaControlView(MediaControlView mediaControlView, long j) {
        MediaControlView mediaControlView2 = this.h;
        if (mediaControlView2 != null) {
            removeView(mediaControlView2);
            this.h.f5105b = false;
        }
        addView(mediaControlView, this.j);
        mediaControlView.f5105b = true;
        this.h = mediaControlView;
        mediaControlView.m = j;
        k kVar = this.g;
        if (kVar == null) {
            return;
        }
        if (kVar.f5254a != null) {
            this.h.a(this.g.f5254a);
        } else if (this.g.f5255b != null) {
            this.h.a(this.g.f5255b);
        }
    }

    public void setMediaController(MediaController mediaController) {
        Objects.requireNonNull(mediaController, "controller must not be null");
        k kVar = this.g;
        if (kVar != null) {
            kVar.b();
        }
        this.g = new k(mediaController, androidx.core.content.b.e(getContext()), new b());
        if (v.E(this)) {
            this.g.a();
        }
        if (this.ah) {
            this.f5151d.a(this.g);
        } else {
            a();
        }
        MediaControlView mediaControlView = this.h;
        if (mediaControlView != null) {
            mediaControlView.a(mediaController);
        }
    }

    public void setOnViewTypeChangedListener(a aVar) {
        this.f5149b = aVar;
    }

    public void setPlayer(SessionPlayer sessionPlayer) {
        Objects.requireNonNull(sessionPlayer, "player must not be null");
        k kVar = this.g;
        if (kVar != null) {
            kVar.b();
        }
        this.g = new k(sessionPlayer, androidx.core.content.b.e(getContext()), new b());
        if (v.E(this)) {
            this.g.a();
        }
        if (this.ah) {
            this.f5151d.a(this.g);
        } else {
            a();
        }
        MediaControlView mediaControlView = this.h;
        if (mediaControlView != null) {
            mediaControlView.a(sessionPlayer);
        }
    }

    public void setViewType(int i) {
        t tVar;
        if (i == this.f5151d.a()) {
            StringBuilder sb = new StringBuilder("setViewType with the same type (");
            sb.append(i);
            sb.append(") is ignored.");
            return;
        }
        if (i == 1) {
            tVar = this.e;
        } else if (i == 0) {
            tVar = this.f;
        } else {
            throw new IllegalArgumentException("Unknown view type: ".concat(String.valueOf(i)));
        }
        this.f5151d = tVar;
        if (this.ah) {
            tVar.a(this.g);
        }
        ((View) tVar).setVisibility(0);
        requestLayout();
    }

    @Override // androidx.media2.widget.m, android.view.ViewGroup
    public /* bridge */ /* synthetic */ boolean shouldDelayChildPressedState() {
        return super.shouldDelayChildPressedState();
    }
}
