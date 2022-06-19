package androidx.media2.widget;

import android.content.Context;
import android.os.Handler;
import android.util.AttributeSet;
import android.util.Log;
import android.view.Surface;
import android.view.View;
import android.view.ViewGroup;
import androidx.core.content.C0790b;
import androidx.core.view.C0926v;
import androidx.media2.common.AbstractC1354a;
import androidx.media2.common.MediaItem;
import androidx.media2.common.MediaMetadata;
import androidx.media2.common.SessionPlayer;
import androidx.media2.common.SubtitleData;
import androidx.media2.common.VideoSize;
import androidx.media2.session.MediaController;
import androidx.media2.widget.AbstractC2606t;
import androidx.media2.widget.C2572k;
import androidx.media2.widget.C2584m;
import androidx.media2.widget.C2588o;
import com.google.common.util.concurrent.AbstractFutureC15579a;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* loaded from: classes-dex2jar.jar:androidx/media2/widget/VideoView.class */
public class VideoView extends C2584m {

    /* renamed from: a */
    static final boolean f9587a = Log.isLoggable("VideoView", 3);

    /* renamed from: b */
    AbstractC2528a f9588b;

    /* renamed from: c */
    AbstractC2606t f9589c;

    /* renamed from: d */
    AbstractC2606t f9590d;

    /* renamed from: e */
    TextureView$SurfaceTextureListenerC2604s f9591e;

    /* renamed from: f */
    SurfaceHolder$CallbackC2602r f9592f;

    /* renamed from: g */
    C2572k f9593g;

    /* renamed from: h */
    public MediaControlView f9594h;

    /* renamed from: i */
    C2570j f9595i;

    /* renamed from: j */
    C2584m.C2585a f9596j;

    /* renamed from: k */
    int f9597k;

    /* renamed from: l */
    int f9598l;

    /* renamed from: m */
    Map<SessionPlayer.TrackInfo, AbstractC2595p> f9599m;

    /* renamed from: n */
    C2588o f9600n;

    /* renamed from: o */
    SessionPlayer.TrackInfo f9601o;

    /* renamed from: p */
    C2586n f9602p;

    /* renamed from: q */
    private final AbstractC2606t.AbstractC2607a f9603q;

    /* renamed from: androidx.media2.widget.VideoView$a */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/VideoView$a.class */
    public interface AbstractC2528a {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: androidx.media2.widget.VideoView$b */
    /* loaded from: classes-dex2jar.jar:androidx/media2/widget/VideoView$b.class */
    public final class C2529b extends C2572k.AbstractC2574b {
        C2529b() {
            VideoView.this = r4;
        }

        /* renamed from: d */
        private boolean m40736d(C2572k c2572k) {
            if (c2572k != VideoView.this.f9593g) {
                if (!VideoView.f9587a) {
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
            return false;
        }

        @Override // androidx.media2.widget.C2572k.AbstractC2574b
        /* renamed from: a */
        final void mo40617a(C2572k c2572k, int i) {
            boolean z = VideoView.f9587a;
            if (m40736d(c2572k)) {
            }
        }

        @Override // androidx.media2.widget.C2572k.AbstractC2574b
        /* renamed from: a */
        final void mo40615a(C2572k c2572k, MediaItem mediaItem) {
            if (VideoView.f9587a) {
                new StringBuilder("onCurrentMediaItemChanged(): MediaItem: ").append(mediaItem);
            }
            if (m40736d(c2572k)) {
                return;
            }
            VideoView.this.m40740a(mediaItem);
        }

        @Override // androidx.media2.widget.C2572k.AbstractC2574b
        /* renamed from: a */
        final void mo40614a(C2572k c2572k, SessionPlayer.TrackInfo trackInfo) {
            AbstractC2595p abstractC2595p;
            if (VideoView.f9587a) {
                new StringBuilder("onTrackSelected(): selected track: ").append(trackInfo);
            }
            if (!m40736d(c2572k) && (abstractC2595p = VideoView.this.f9599m.get(trackInfo)) != null) {
                VideoView.this.f9600n.m40598a(abstractC2595p);
            }
        }

        @Override // androidx.media2.widget.C2572k.AbstractC2574b
        /* renamed from: a */
        final void mo40613a(C2572k c2572k, SessionPlayer.TrackInfo trackInfo, SubtitleData subtitleData) {
            AbstractC2595p abstractC2595p;
            if (VideoView.f9587a) {
                StringBuilder sb = new StringBuilder("onSubtitleData(): TrackInfo: ");
                sb.append(trackInfo);
                sb.append(", getCurrentPosition: ");
                sb.append(c2572k.m40649d());
                sb.append(", getStartTimeUs(): ");
                sb.append(subtitleData.f5057a);
                sb.append(", diff: ");
                sb.append((subtitleData.f5057a / 1000) - c2572k.m40649d());
                sb.append("ms, getDurationUs(): ");
                sb.append(subtitleData.f5058b);
            }
            if (!m40736d(c2572k) && trackInfo.equals(VideoView.this.f9601o) && (abstractC2595p = VideoView.this.f9599m.get(trackInfo)) != null) {
                abstractC2595p.m40587a(subtitleData);
            }
        }

        @Override // androidx.media2.widget.C2572k.AbstractC2574b
        /* renamed from: a */
        final void mo40612a(C2572k c2572k, VideoSize videoSize) {
            List<SessionPlayer.TrackInfo> m40638o;
            if (VideoView.f9587a) {
                new StringBuilder("onVideoSizeChanged(): size: ").append(videoSize);
            }
            if (m40736d(c2572k)) {
                return;
            }
            if (VideoView.this.f9597k == 0 && videoSize.f5067b > 0 && videoSize.f5066a > 0) {
                VideoView videoView = VideoView.this;
                if (((videoView.f9593g == null || videoView.f9593g.m40647f() == 3 || videoView.f9593g.m40647f() == 0) ? false : true) && (m40638o = c2572k.m40638o()) != null) {
                    VideoView.this.m40738a(c2572k, m40638o);
                }
            }
            VideoView.this.f9591e.forceLayout();
            VideoView.this.f9592f.forceLayout();
            VideoView.this.requestLayout();
        }

        @Override // androidx.media2.widget.C2572k.AbstractC2574b
        /* renamed from: a */
        final void mo40611a(C2572k c2572k, List<SessionPlayer.TrackInfo> list) {
            if (VideoView.f9587a) {
                new StringBuilder("onTrackInfoChanged(): tracks: ").append(list);
            }
            if (m40736d(c2572k)) {
                return;
            }
            VideoView.this.m40738a(c2572k, list);
            VideoView.this.m40740a(c2572k.m40641l());
        }

        @Override // androidx.media2.widget.C2572k.AbstractC2574b
        /* renamed from: b */
        final void mo40608b(C2572k c2572k, SessionPlayer.TrackInfo trackInfo) {
            if (VideoView.f9587a) {
                new StringBuilder("onTrackDeselected(): deselected track: ").append(trackInfo);
            }
            if (!m40736d(c2572k) && VideoView.this.f9599m.get(trackInfo) != null) {
                VideoView.this.f9600n.m40598a((AbstractC2595p) null);
            }
        }

        @Override // androidx.media2.widget.C2572k.AbstractC2574b
        /* renamed from: c */
        final void mo40607c(C2572k c2572k) {
            boolean z = VideoView.f9587a;
            if (!m40736d(c2572k) && VideoView.this.f9759ah) {
                VideoView.this.f9590d.mo40567a(VideoView.this.f9593g);
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
        AbstractC2606t.AbstractC2607a abstractC2607a = new AbstractC2606t.AbstractC2607a() { // from class: androidx.media2.widget.VideoView.1
            @Override // androidx.media2.widget.AbstractC2606t.AbstractC2607a
            /* renamed from: a */
            public final void mo40566a(View view) {
                if (VideoView.f9587a) {
                    new StringBuilder("onSurfaceDestroyed(). ").append(view.toString());
                }
            }

            @Override // androidx.media2.widget.AbstractC2606t.AbstractC2607a
            /* renamed from: a */
            public final void mo40565a(View view, int i2, int i3) {
                if (VideoView.f9587a) {
                    StringBuilder sb = new StringBuilder("onSurfaceCreated(), width/height: ");
                    sb.append(i2);
                    sb.append("/");
                    sb.append(i3);
                    sb.append(", ");
                    sb.append(view.toString());
                }
                if (view != VideoView.this.f9590d || !VideoView.this.f9759ah) {
                    return;
                }
                VideoView.this.f9590d.mo40567a(VideoView.this.f9593g);
            }

            @Override // androidx.media2.widget.AbstractC2606t.AbstractC2607a
            /* renamed from: a */
            public final void mo40564a(AbstractC2606t abstractC2606t) {
                if (abstractC2606t != VideoView.this.f9590d) {
                    Log.w("VideoView", "onSurfaceTakeOverDone(). view is not targetView. ignore.: ".concat(String.valueOf(abstractC2606t)));
                    return;
                }
                if (VideoView.f9587a) {
                    new StringBuilder("onSurfaceTakeOverDone(). Now current view is: ").append(abstractC2606t);
                }
                if (abstractC2606t == VideoView.this.f9589c) {
                    return;
                }
                ((View) VideoView.this.f9589c).setVisibility(8);
                VideoView.this.f9589c = abstractC2606t;
            }

            @Override // androidx.media2.widget.AbstractC2606t.AbstractC2607a
            /* renamed from: b */
            public final void mo40563b(View view, int i2, int i3) {
                if (VideoView.f9587a) {
                    StringBuilder sb = new StringBuilder("onSurfaceChanged(). width/height: ");
                    sb.append(i2);
                    sb.append("/");
                    sb.append(i3);
                    sb.append(", ");
                    sb.append(view.toString());
                }
            }
        };
        this.f9603q = abstractC2607a;
        this.f9601o = null;
        setFocusable(true);
        setFocusableInTouchMode(true);
        requestFocus();
        this.f9591e = new TextureView$SurfaceTextureListenerC2604s(context);
        this.f9592f = new SurfaceHolder$CallbackC2602r(context);
        this.f9591e.f9851a = abstractC2607a;
        this.f9592f.f9847a = abstractC2607a;
        addView(this.f9591e);
        addView(this.f9592f);
        C2584m.C2585a c2585a = new C2584m.C2585a();
        this.f9596j = c2585a;
        c2585a.f9783a = true;
        C2586n c2586n = new C2586n(context);
        this.f9602p = c2586n;
        c2586n.setBackgroundColor(0);
        addView(this.f9602p, this.f9596j);
        C2588o c2588o = new C2588o(context, null, new C2588o.AbstractC2592b() { // from class: androidx.media2.widget.VideoView.2
            @Override // androidx.media2.widget.C2588o.AbstractC2592b
            /* renamed from: a */
            public final void mo40592a(AbstractC2595p abstractC2595p) {
                SessionPlayer.TrackInfo trackInfo;
                if (abstractC2595p == null) {
                    VideoView.this.f9601o = null;
                    VideoView.this.f9602p.setVisibility(8);
                    return;
                }
                Iterator<Map.Entry<SessionPlayer.TrackInfo, AbstractC2595p>> it2 = VideoView.this.f9599m.entrySet().iterator();
                while (true) {
                    trackInfo = null;
                    if (!it2.hasNext()) {
                        break;
                    }
                    Map.Entry<SessionPlayer.TrackInfo, AbstractC2595p> next = it2.next();
                    if (next.getValue() == abstractC2595p) {
                        trackInfo = next.getKey();
                        break;
                    }
                }
                if (trackInfo == null) {
                    return;
                }
                VideoView.this.f9601o = trackInfo;
                VideoView.this.f9602p.setVisibility(0);
            }
        });
        this.f9600n = c2588o;
        c2588o.m40599a(new C2540d(context));
        this.f9600n.m40599a(new C2555f(context));
        C2588o c2588o2 = this.f9600n;
        C2586n c2586n2 = this.f9602p;
        if (c2588o2.f9794h != c2586n2) {
            if (c2588o2.f9794h != null) {
                c2588o2.f9794h.mo40593a(null);
            }
            c2588o2.f9794h = c2586n2;
            c2588o2.f9790d = null;
            if (c2588o2.f9794h != null) {
                c2588o2.f9790d = new Handler(c2588o2.f9794h.mo40594a(), c2588o2.f9791e);
                c2588o2.f9794h.mo40593a(c2588o2.m40602a());
            }
        }
        C2570j c2570j = new C2570j(context);
        this.f9595i = c2570j;
        c2570j.setVisibility(8);
        addView(this.f9595i, this.f9596j);
        if (attributeSet == null || attributeSet.getAttributeBooleanValue("http://schemas.android.com/apk/res-auto", "enableControlView", true)) {
            MediaControlView mediaControlView = new MediaControlView(context);
            this.f9594h = mediaControlView;
            mediaControlView.f9522b = true;
            addView(this.f9594h, this.f9596j);
        }
        int attributeIntValue = attributeSet == null ? 0 : attributeSet.getAttributeIntValue("http://schemas.android.com/apk/res-auto", "viewType", 0);
        if (attributeIntValue == 0) {
            this.f9591e.setVisibility(8);
            this.f9592f.setVisibility(0);
            this.f9589c = this.f9592f;
        } else if (attributeIntValue == 1) {
            this.f9591e.setVisibility(0);
            this.f9592f.setVisibility(8);
            this.f9589c = this.f9591e;
        }
        this.f9590d = this.f9589c;
    }

    /* renamed from: a */
    private static String m40739a(MediaMetadata mediaMetadata, String str, String str2) {
        String m43195c = mediaMetadata == null ? str2 : mediaMetadata.m43195c(str);
        return m43195c == null ? str2 : m43195c;
    }

    /* renamed from: a */
    private void m40741a() {
        final AbstractFutureC15579a<? extends AbstractC1354a> m40653a = this.f9593g.m40653a((Surface) null);
        m40653a.mo8638a(new Runnable() { // from class: androidx.media2.widget.VideoView.3
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    int mo41118a = ((AbstractC1354a) m40653a.get()).mo41118a();
                    if (mo41118a == 0) {
                        return;
                    }
                    Log.e("VideoView", "calling setSurface(null) was not successful. ResultCode: ".concat(String.valueOf(mo41118a)));
                } catch (InterruptedException | ExecutionException e) {
                    Log.e("VideoView", "calling setSurface(null) was not successful.", e);
                }
            }
        }, C0790b.m44490e(getContext()));
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0081  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x014d  */
    /* JADX WARN: Type inference failed for: r0v38, types: [androidx.j.a.b$a$1] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final void m40740a(androidx.media2.common.MediaItem r8) {
        /*
            Method dump skipped, instructions count: 367
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.widget.VideoView.m40740a(androidx.media2.common.MediaItem):void");
    }

    /* renamed from: a */
    final void m40738a(C2572k c2572k, List<SessionPlayer.TrackInfo> list) {
        AbstractC2595p m40601a;
        this.f9599m = new LinkedHashMap();
        this.f9597k = 0;
        this.f9598l = 0;
        for (int i = 0; i < list.size(); i++) {
            SessionPlayer.TrackInfo trackInfo = list.get(i);
            int i2 = list.get(i).f5049b;
            if (i2 == 1) {
                this.f9597k++;
            } else if (i2 == 2) {
                this.f9598l++;
            } else if (i2 == 4 && (m40601a = this.f9600n.m40601a(trackInfo.mo41325a())) != null) {
                this.f9599m.put(trackInfo, m40601a);
            }
        }
        this.f9601o = c2572k.m40655a(4);
    }

    @Override // androidx.media2.widget.AbstractC2569i
    /* renamed from: a */
    public final void mo40661a(boolean z) {
        super.mo40661a(z);
        C2572k c2572k = this.f9593g;
        if (c2572k == null) {
            return;
        }
        if (z) {
            this.f9590d.mo40567a(c2572k);
            return;
        }
        if (c2572k != null) {
            if (!(c2572k.f9768a != null && !c2572k.f9768a.m41157b())) {
                try {
                    int mo41118a = this.f9593g.m40653a((Surface) null).get(100L, TimeUnit.MILLISECONDS).mo41118a();
                    if (mo41118a == 0) {
                        return;
                    }
                    Log.e("VideoView", "calling setSurface(null) was not successful. ResultCode: ".concat(String.valueOf(mo41118a)));
                    return;
                } catch (InterruptedException | ExecutionException | TimeoutException e) {
                    Log.e("VideoView", "calling setSurface(null) was not successful.", e);
                    return;
                }
            }
        }
        Log.w("VideoView", "Surface is being destroyed, but player will not be informed as the associated media controller is disconnected.");
    }

    @Override // androidx.media2.widget.C2584m, android.view.ViewGroup
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
        C2572k c2572k = this.f9593g;
        if (c2572k != null) {
            c2572k.m40656a();
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        C2572k c2572k = this.f9593g;
        if (c2572k != null) {
            c2572k.m40651b();
        }
    }

    @Override // androidx.media2.widget.AbstractC2569i, android.view.View
    public /* bridge */ /* synthetic */ void onVisibilityAggregated(boolean z) {
        super.onVisibilityAggregated(z);
    }

    public void setMediaControlView(MediaControlView mediaControlView, long j) {
        MediaControlView mediaControlView2 = this.f9594h;
        if (mediaControlView2 != null) {
            removeView(mediaControlView2);
            this.f9594h.f9522b = false;
        }
        addView(mediaControlView, this.f9596j);
        mediaControlView.f9522b = true;
        this.f9594h = mediaControlView;
        mediaControlView.f9533m = j;
        C2572k c2572k = this.f9593g;
        if (c2572k != null) {
            if (c2572k.f9768a != null) {
                this.f9594h.m40761a(this.f9593g.f9768a);
            } else if (this.f9593g.f9769b == null) {
            } else {
                this.f9594h.m40762a(this.f9593g.f9769b);
            }
        }
    }

    public void setMediaController(MediaController mediaController) {
        Objects.requireNonNull(mediaController, "controller must not be null");
        C2572k c2572k = this.f9593g;
        if (c2572k != null) {
            c2572k.m40651b();
        }
        this.f9593g = new C2572k(mediaController, C0790b.m44490e(getContext()), new C2529b());
        if (C0926v.m44154E(this)) {
            this.f9593g.m40656a();
        }
        if (this.f9759ah) {
            this.f9590d.mo40567a(this.f9593g);
        } else {
            m40741a();
        }
        MediaControlView mediaControlView = this.f9594h;
        if (mediaControlView != null) {
            mediaControlView.m40761a(mediaController);
        }
    }

    public void setOnViewTypeChangedListener(AbstractC2528a abstractC2528a) {
        this.f9588b = abstractC2528a;
    }

    public void setPlayer(SessionPlayer sessionPlayer) {
        Objects.requireNonNull(sessionPlayer, "player must not be null");
        C2572k c2572k = this.f9593g;
        if (c2572k != null) {
            c2572k.m40651b();
        }
        this.f9593g = new C2572k(sessionPlayer, C0790b.m44490e(getContext()), new C2529b());
        if (C0926v.m44154E(this)) {
            this.f9593g.m40656a();
        }
        if (this.f9759ah) {
            this.f9590d.mo40567a(this.f9593g);
        } else {
            m40741a();
        }
        MediaControlView mediaControlView = this.f9594h;
        if (mediaControlView != null) {
            mediaControlView.m40762a(sessionPlayer);
        }
    }

    public void setViewType(int i) {
        TextureView$SurfaceTextureListenerC2604s textureView$SurfaceTextureListenerC2604s;
        if (i == this.f9590d.mo40568a()) {
            StringBuilder sb = new StringBuilder("setViewType with the same type (");
            sb.append(i);
            sb.append(") is ignored.");
            return;
        }
        if (i == 1) {
            textureView$SurfaceTextureListenerC2604s = this.f9591e;
        } else if (i != 0) {
            throw new IllegalArgumentException("Unknown view type: ".concat(String.valueOf(i)));
        } else {
            textureView$SurfaceTextureListenerC2604s = this.f9592f;
        }
        this.f9590d = textureView$SurfaceTextureListenerC2604s;
        if (this.f9759ah) {
            textureView$SurfaceTextureListenerC2604s.mo40567a(this.f9593g);
        }
        ((View) textureView$SurfaceTextureListenerC2604s).setVisibility(0);
        requestLayout();
    }

    @Override // androidx.media2.widget.C2584m, android.view.ViewGroup
    public /* bridge */ /* synthetic */ boolean shouldDelayChildPressedState() {
        return super.shouldDelayChildPressedState();
    }
}
