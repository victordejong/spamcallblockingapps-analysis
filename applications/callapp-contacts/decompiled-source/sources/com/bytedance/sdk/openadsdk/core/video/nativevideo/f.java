package com.bytedance.sdk.openadsdk.core.video.nativevideo;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.SurfaceTexture;
import android.media.MediaPlayer;
import android.os.Build;
import android.os.SystemClock;
import android.text.TextUtils;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.SurfaceHolder;
import android.view.SurfaceView;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.bytedance.sdk.openadsdk.TTDrawFeedAd;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.video.d.d;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.b;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.c;
import com.bytedance.sdk.openadsdk.core.video.renderview.b;
import com.bytedance.sdk.openadsdk.core.widget.e;
import com.bytedance.sdk.openadsdk.core.x;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.ah;
import com.bytedance.sdk.openadsdk.utils.q;
import com.bytedance.sdk.openadsdk.utils.t;
import com.mopub.mobileads.VastIconXmlManager;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/nativevideo/f.class */
public class f implements c, d, ah.a {
    private WeakReference<c.AbstractC0169c> E;
    private WeakReference<a> F;
    private int G;
    private int H;
    private long T;
    private int V;

    /* renamed from: b  reason: collision with root package name */
    private h f9222b;

    /* renamed from: c  reason: collision with root package name */
    private final WeakReference<ViewGroup> f9223c;
    private d g;
    private c.a h;
    private long k;
    private List<Runnable> l;
    private boolean m;
    private final WeakReference<Context> n;
    private final boolean o;
    private final i r;
    private String u;
    private boolean v;
    private boolean w;
    private WeakReference<e> x;

    /* renamed from: d  reason: collision with root package name */
    private final ah f9224d = new ah(this);
    private long e = 0;
    private long f = 0;
    private long i = 0;
    private long j = 0;
    private boolean p = false;
    private boolean q = false;
    private boolean s = true;
    private boolean t = false;
    private long y = 0;
    private boolean z = false;
    private boolean A = false;
    private boolean B = false;
    private boolean C = false;
    private boolean D = true;
    private int I = 0;
    private boolean J = false;
    private boolean K = true;
    private final Runnable L = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.f.3
        @Override // java.lang.Runnable
        public void run() {
            if (f.this.g != null) {
                f.this.g.e();
            }
        }
    };
    private final Runnable M = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.f.4
        @Override // java.lang.Runnable
        public void run() {
            if (f.this.h != null) {
                f.this.h.a();
            }
        }
    };
    private final Runnable N = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.f.5
        @Override // java.lang.Runnable
        public void run() {
            if (f.this.g != null) {
                if (f.this.k <= 0) {
                    f.this.g.e();
                }
                f.this.g.f();
            }
            f.this.f9224d.postDelayed(this, 200L);
        }
    };
    private int O = 0;
    private long P = 0;

    /* renamed from: a  reason: collision with root package name */
    Runnable f9221a = new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.f.6
        @Override // java.lang.Runnable
        public void run() {
            if (f.this.f9222b != null) {
                f.this.f9222b.a(f.this.r, f.this.n, false);
                f.this.f9222b.w();
                f.this.d(true);
                q.e("NativeVideoController", "出错后展示结果页、、、、、、、showAdCard");
            }
        }
    };
    private long Q = 0;
    private long R = 0;
    private boolean S = false;
    private final BroadcastReceiver U = new BroadcastReceiver() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.f.7
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            if ("android.intent.action.SCREEN_OFF".equals(action)) {
                f.this.i();
            } else if ("android.net.conn.CONNECTIVITY_CHANGE".equals(action)) {
                f.this.d(context);
            }
        }
    };
    private boolean W = false;

    /* renamed from: com.bytedance.sdk.openadsdk.core.video.nativevideo.f$8  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/nativevideo/f$8.class */
    static /* synthetic */ class AnonymousClass8 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f9233a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:10:0x002f -> B:16:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x002b -> B:12:0x0014). Please submit an issue!!! */
        static {
            int[] iArr = new int[e.a.values().length];
            f9233a = iArr;
            try {
                iArr[e.a.PAUSE_VIDEO.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f9233a[e.a.RELEASE_VIDEO.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f9233a[e.a.START_VIDEO.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/nativevideo/f$a.class */
    public interface a {
        void a(int i);

        void g();
    }

    public f(Context context, ViewGroup viewGroup, i iVar, String str, boolean z, boolean z2) {
        boolean z3 = false;
        this.u = "embeded_ad";
        this.v = false;
        this.w = true;
        this.G = 0;
        this.H = 0;
        this.V = 1;
        this.V = t.c(context);
        try {
            this.G = viewGroup.getWidth();
            this.H = viewGroup.getHeight();
        } catch (Throwable th) {
        }
        this.f9223c = new WeakReference<>(viewGroup);
        this.u = str;
        this.n = new WeakReference<>(context);
        this.r = iVar;
        b(context);
        this.o = Build.VERSION.SDK_INT >= 17 ? true : z3;
        this.v = z;
        this.w = z2;
    }

    public f(Context context, ViewGroup viewGroup, i iVar, String str, boolean z, boolean z2, boolean z3) {
        boolean z4 = false;
        this.u = "embeded_ad";
        this.v = false;
        this.w = true;
        this.G = 0;
        this.H = 0;
        this.V = 1;
        this.V = t.c(context);
        b(z);
        this.u = str;
        try {
            this.G = viewGroup.getWidth();
            this.H = viewGroup.getHeight();
        } catch (Throwable th) {
        }
        this.f9223c = new WeakReference<>(viewGroup);
        this.n = new WeakReference<>(context);
        this.r = iVar;
        b(context);
        this.o = Build.VERSION.SDK_INT >= 17 ? true : z4;
        this.v = z2;
        this.w = z3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void A() {
        B();
        this.f9224d.postDelayed(this.N, 800L);
    }

    private void B() {
        this.f9224d.removeCallbacks(this.N);
    }

    private boolean C() {
        WeakReference<Context> weakReference = this.n;
        return (weakReference == null || weakReference.get() == null) ? false : true;
    }

    private void D() {
        List<Runnable> list = this.l;
        if (list != null && !list.isEmpty()) {
            Iterator it2 = new ArrayList(this.l).iterator();
            while (it2.hasNext()) {
                ((Runnable) it2.next()).run();
            }
            this.l.clear();
        }
    }

    private void E() {
        d dVar = this.g;
        if (dVar != null) {
            dVar.a(false, this.i, !this.t);
            A();
        }
        if (this.p) {
            com.bytedance.sdk.openadsdk.d.e.a(this.n.get(), this.r, this.u, "feed_continue", p(), r(), c());
        }
    }

    private void F() {
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.Q;
        this.R = elapsedRealtime;
        if (!this.p) {
            Map<String, Object> a2 = af.a(elapsedRealtime, this.r, u());
            if (this.D) {
                com.bytedance.sdk.openadsdk.d.e.b(this.n.get(), this.r, this.u, "feed_auto_play", a2);
            } else if (this.i <= 0) {
                com.bytedance.sdk.openadsdk.d.e.b(this.n.get(), this.r, this.u, "feed_play", a2);
            }
            this.p = true;
        }
    }

    private void G() {
        if (this.f9223c.get() != null && !x.a(this.f9223c.get(), 20, 0)) {
            q.e("NativeVideoController", "onStateError 出错后展示结果页、、、、、、、");
            this.f9222b.a(this.r, this.n, false);
            d(true);
            m();
        }
    }

    private void H() {
        q.b("NativeVideoController", "before auseWhenInvisible、、、、、、、");
        if (this.f9223c.get() != null && !x.a(this.f9223c.get(), 20, 0)) {
            q.b("NativeVideoController", "in pauseWhenInvisible、、、、、、、");
            d();
        }
    }

    private void I() {
        d dVar;
        WeakReference<ViewGroup> weakReference;
        int i;
        int i2;
        q.b("ChangeVideoSize", "[step-0]  TAG is 'ChangeVideoSize' ....... start  changeVideoSize >>>>>>>>>>>>>>>>>>>>>>>");
        try {
            WeakReference<Context> weakReference2 = this.n;
            if (!(weakReference2 == null || weakReference2.get() == null || J() == null || (dVar = this.g) == null || dVar.a() == null || (weakReference = this.f9223c) == null || weakReference.get() == null)) {
                MediaPlayer a2 = this.g.a();
                int videoWidth = a2.getVideoWidth();
                int videoHeight = a2.getVideoHeight();
                int width = this.f9223c.get().getWidth();
                int height = this.f9223c.get().getHeight();
                if (width <= 0 || height <= 0 || videoHeight <= 0 || videoWidth <= 0) {
                    q.b("ChangeVideoSize", " container or video exist size <= 0");
                    return;
                }
                if (videoWidth == videoHeight) {
                    i = width > height ? height : width;
                    i2 = i;
                } else if (videoWidth > videoHeight) {
                    i = (int) ((width * 1.0d) / ((videoWidth * 1.0f) / videoHeight));
                    i2 = width;
                } else {
                    i2 = (int) ((height * 1.0d) / ((videoHeight * 1.0f) / videoWidth));
                    i = height;
                }
                int i3 = height;
                if (i <= height) {
                    i3 = i <= 0 ? height : i;
                }
                int i4 = width;
                if (i2 <= width) {
                    i4 = i2 <= 0 ? width : i2;
                }
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i4, i3);
                layoutParams.addRule(13);
                if (J() instanceof TextureView) {
                    ((TextureView) J()).setLayoutParams(layoutParams);
                    q.b("ChangeVideoSize", "[step-9] >>>>> setLayoutParams to TextureView complete ! >>>>>>>");
                    return;
                } else if (J() instanceof SurfaceView) {
                    ((SurfaceView) J()).setLayoutParams(layoutParams);
                    q.b("ChangeVideoSize", "[step-9] >>>>> setLayoutParams to SurfaceView complete !>>>>>>>");
                    return;
                } else {
                    return;
                }
            }
            StringBuilder sb = new StringBuilder("[step-1] >>>>> mContextRef=");
            sb.append(this.n);
            sb.append(",mContextRef.get()=");
            WeakReference<Context> weakReference3 = this.n;
            sb.append(weakReference3 != null ? weakReference3.get() : null);
            sb.append(",getIRenderView() =");
            sb.append(J());
            q.b("ChangeVideoSize", sb.toString());
            StringBuilder sb2 = new StringBuilder("[step-1] >>>>> mMediaPlayerProxy == null:");
            boolean z = true;
            sb2.append(this.g == null);
            sb2.append(",mMediaPlayerProxy.getMediaPlayer() == null:");
            d dVar2 = this.g;
            if (dVar2 == null || dVar2.a() != null) {
                z = false;
            }
            sb2.append(z);
            q.b("ChangeVideoSize", sb2.toString());
        } catch (Throwable th) {
            q.b("ChangeVideoSize", "[step-11] >>>>> changeVideoSize error !!!!! ：" + th.toString());
        }
    }

    private b J() {
        h hVar;
        WeakReference<Context> weakReference = this.n;
        if (weakReference == null || weakReference.get() == null || this.n.get().getResources().getConfiguration().orientation != 1 || (hVar = this.f9222b) == null) {
            return null;
        }
        return hVar.o();
    }

    private void K() {
        if (C()) {
            h(!this.S);
            if (!(this.n.get() instanceof Activity)) {
                q.b("NativeVideoController", "context is not activity, not support this function.");
                return;
            }
            h hVar = this.f9222b;
            if (hVar != null) {
                hVar.b(this.f9223c.get());
                this.f9222b.b(false);
            }
            a(1);
            WeakReference<e> weakReference = this.x;
            e eVar = weakReference != null ? weakReference.get() : null;
            if (eVar != null) {
                eVar.a(this.S);
            }
        }
    }

    private void L() {
        h hVar = this.f9222b;
        if (hVar != null) {
            hVar.c(0);
            this.f9222b.a(false, false);
            this.f9222b.b(false);
            this.f9222b.b();
            this.f9222b.d();
        }
    }

    private void M() {
        i iVar = this.r;
        if (iVar != null) {
            n.g().a(com.bytedance.sdk.openadsdk.m.e.a(iVar.L(), true, this.r));
        }
    }

    private void N() {
        com.bytedance.sdk.openadsdk.d.e.b(this.n.get(), this.r, this.u, "play_start", af.a(this.R, this.r, u()));
    }

    private void a(long j, long j2) {
        this.i = j;
        this.k = j2;
        this.f9222b.a(j, j2);
        this.f9222b.a(com.bytedance.sdk.openadsdk.core.video.e.a.a(j, j2));
        try {
            c.a aVar = this.h;
            if (aVar != null) {
                aVar.a(j, j2);
            }
        } catch (Throwable th) {
            q.c("NativeVideoController", "onProgressUpdate error: ", th);
        }
    }

    private void a(long j, boolean z) {
        if (this.g != null) {
            if (z) {
                L();
            }
            this.g.a(j);
        }
    }

    private void a(Context context, int i) {
        if (C() && context != null && this.V != i) {
            this.V = i;
            if (!(i == 4 || i == 0)) {
                this.A = false;
            }
            if (!this.A && !w() && this.v) {
                d(2);
            }
            WeakReference<a> weakReference = this.F;
            if (weakReference != null && weakReference.get() != null) {
                this.F.get().a(this.V);
            }
        }
    }

    private void a(Runnable runnable) {
        if (runnable != null) {
            if (!this.f9222b.k() || !this.m) {
                b(runnable);
            } else {
                runnable.run();
            }
        }
    }

    private void a(String str) {
        q.b("tag_video_play", "[video] NativeVideoController#playVideo has invoke !");
        if (this.g != null) {
            com.bytedance.sdk.openadsdk.core.video.a.a aVar = new com.bytedance.sdk.openadsdk.core.video.a.a();
            aVar.f9150a = str;
            i iVar = this.r;
            if (iVar != null) {
                if (iVar.B() != null) {
                    aVar.f9153d = this.r.B().k();
                }
                aVar.f9151b = String.valueOf(af.d(this.r.S()));
            }
            aVar.f9152c = 0;
            this.g.a(aVar);
            q.b("tag_video_play", "[video] MediaPlayerProxy has setDataSource !");
        }
        this.e = System.currentTimeMillis();
        if (!TextUtils.isEmpty(str)) {
            this.f9222b.d(8);
            this.f9222b.d(0);
            a(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.f.2
                @Override // java.lang.Runnable
                public void run() {
                    f.this.e = System.currentTimeMillis();
                    f.this.f9222b.c(0);
                    if (f.this.g != null && f.this.i == 0) {
                        f.this.g.a(true, 0L, !f.this.t);
                    } else if (f.this.g != null) {
                        f.this.g.a(true, f.this.i, !f.this.t);
                    }
                    if (f.this.f9224d != null) {
                        f.this.f9224d.postDelayed(f.this.L, 100L);
                    }
                    f.this.A();
                }
            });
        }
        if (this.s) {
            g();
        }
    }

    private void b(int i) {
        h hVar;
        this.O++;
        if (C() && (hVar = this.f9222b) != null) {
            hVar.w();
            c.a aVar = this.h;
            if (aVar != null) {
                aVar.a(this.f, com.bytedance.sdk.openadsdk.core.video.e.a.a(this.i, this.k));
            }
            this.f = System.currentTimeMillis() - this.e;
            if (!af.b(this.r) || this.O >= 2) {
                this.f9222b.a(this.r, this.n, true);
            }
            if (!this.q) {
                com.bytedance.sdk.openadsdk.d.e.a(this.n.get(), this.r, this.u, "feed_over", p(), 100, c());
                this.q = true;
                long j = this.k;
                a(j, j);
                long j2 = this.k;
                this.i = j2;
                this.j = j2;
            }
            if (!this.s && this.S) {
                e(this.f9222b, null);
            }
            this.B = true;
            if (af.b(this.r) && this.O < 2) {
                h();
            }
        }
    }

    private void b(int i, int i2) {
        if (this.r != null) {
            boolean f = f();
            String str = f ? "play_error" : "play_start_error";
            Map<String, Object> a2 = af.a(this.r, i, i2, u());
            if (f) {
                a2.put(VastIconXmlManager.DURATION, Long.valueOf(p()));
                a2.put("percent", Integer.valueOf(r()));
                a2.put("buffers_time", Long.valueOf(o()));
            }
            com.bytedance.sdk.openadsdk.d.e.c(this.n.get(), this.r, this.u, str, a2);
        }
    }

    private void b(Context context) {
        EnumSet noneOf = EnumSet.noneOf(b.a.class);
        noneOf.add(b.a.hideCloseBtn);
        noneOf.add(b.a.hideBackBtn);
        View c2 = this.s ? c(context) : LayoutInflater.from(context.getApplicationContext()).inflate(com.bytedance.sdk.openadsdk.utils.x.f(context, "tt_video_detail_layout"), (ViewGroup) null, false);
        if (c2 != null) {
            if (this.s) {
                this.f9222b = new h(context, c2, true, noneOf, this.r, this, a());
            } else {
                this.f9222b = new g(context, c2, true, noneOf, this.r, this, false);
            }
            this.f9222b.a(this);
        }
    }

    private void b(Runnable runnable) {
        if (this.l == null) {
            this.l = Collections.synchronizedList(new ArrayList());
        }
        this.l.add(runnable);
    }

    private View c(Context context) {
        Resources resources = context.getResources();
        RelativeLayout relativeLayout = new RelativeLayout(context);
        relativeLayout.setId(com.bytedance.sdk.openadsdk.utils.x.e(context, "tt_root_view"));
        relativeLayout.setBackgroundColor(-16777216);
        RelativeLayout relativeLayout2 = new RelativeLayout(context);
        ViewGroup.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        relativeLayout2.setId(com.bytedance.sdk.openadsdk.utils.x.e(context, "tt_video_loading_retry_layout"));
        relativeLayout2.setBackgroundColor(0);
        relativeLayout2.setGravity(17);
        relativeLayout2.setLayoutParams(layoutParams);
        relativeLayout.addView(relativeLayout2);
        ImageView imageView = new ImageView(context);
        RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-1, -1);
        imageView.setId(com.bytedance.sdk.openadsdk.utils.x.e(context, "tt_video_loading_cover_image"));
        imageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        imageView.setLayoutParams(layoutParams2);
        relativeLayout2.addView(imageView);
        ProgressBar progressBar = new ProgressBar(context);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams((int) TypedValue.applyDimension(1, 60.0f, resources.getDisplayMetrics()), (int) TypedValue.applyDimension(1, 60.0f, resources.getDisplayMetrics()));
        progressBar.setId(com.bytedance.sdk.openadsdk.utils.x.e(context, "tt_video_loading_progress"));
        layoutParams3.addRule(13, -1);
        progressBar.setLayoutParams(layoutParams3);
        progressBar.setIndeterminateDrawable(com.bytedance.sdk.openadsdk.utils.x.c(context, "tt_video_loading_progress_bar"));
        relativeLayout2.addView(progressBar);
        ImageView imageView2 = new ImageView(context);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        imageView2.setId(com.bytedance.sdk.openadsdk.utils.x.e(context, "tt_video_play"));
        layoutParams4.addRule(13, -1);
        imageView2.setScaleType(ImageView.ScaleType.CENTER);
        imageView2.setImageResource(com.bytedance.sdk.openadsdk.utils.x.d(context, "tt_play_movebar_textpage"));
        imageView2.setVisibility(8);
        imageView2.setLayoutParams(layoutParams4);
        relativeLayout.addView(imageView2);
        ProgressBar progressBar2 = new ProgressBar(context, null, com.bytedance.sdk.openadsdk.utils.x.g(context, "tt_Widget_ProgressBar_Horizontal"));
        RelativeLayout.LayoutParams layoutParams5 = new RelativeLayout.LayoutParams(-1, (int) TypedValue.applyDimension(1, 1.5f, resources.getDisplayMetrics()));
        progressBar2.setMax(100);
        progressBar2.setId(com.bytedance.sdk.openadsdk.utils.x.e(context, "tt_video_progress"));
        progressBar2.setBackgroundColor(0);
        progressBar2.setIndeterminateDrawable(null);
        progressBar2.setProgressDrawable(com.bytedance.sdk.openadsdk.utils.x.c(context, "tt_video_progress_drawable"));
        progressBar2.setVisibility(8);
        layoutParams5.addRule(12, -1);
        progressBar2.setLayoutParams(layoutParams5);
        relativeLayout.addView(progressBar2);
        ViewStub viewStub = new ViewStub(context);
        RelativeLayout.LayoutParams layoutParams6 = new RelativeLayout.LayoutParams(-1, -1);
        viewStub.setId(com.bytedance.sdk.openadsdk.utils.x.e(context, "tt_video_ad_cover"));
        viewStub.setLayoutParams(layoutParams6);
        viewStub.setLayoutResource(com.bytedance.sdk.openadsdk.utils.x.f(context, "tt_video_ad_cover_layout"));
        relativeLayout.addView(viewStub);
        ViewStub viewStub2 = new ViewStub(context);
        RelativeLayout.LayoutParams layoutParams7 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams7.addRule(13, -1);
        viewStub2.setId(com.bytedance.sdk.openadsdk.utils.x.e(context, "tt_video_draw_layout_viewStub"));
        viewStub2.setLayoutParams(layoutParams7);
        viewStub2.setLayoutResource(com.bytedance.sdk.openadsdk.utils.x.f(context, "tt_video_draw_btn_layout"));
        relativeLayout.addView(viewStub2);
        return relativeLayout;
    }

    private boolean c(int i) {
        return this.f9222b.b(i);
    }

    private boolean c(int i, int i2) {
        q.b("TTVideoLandingPage", "OnError - Error code: " + i + " Extra code: " + i2);
        boolean z = i == -1010 || i == -1007 || i == -1004 || i == -110 || i == 100 || i == 200;
        z = true;
        if (i2 != 1) {
            z = true;
            if (i2 != 700) {
                z = true;
                if (i2 != 800) {
                }
            }
        }
        return z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(Context context) {
        int c2 = t.c(context);
        a(context, c2);
        if (c2 == 4) {
            this.z = false;
        }
    }

    private boolean d(int i) {
        i iVar;
        int c2 = t.c(n.a());
        if (c2 == 0) {
            i();
            this.z = true;
            h hVar = this.f9222b;
            if (hVar != null) {
                hVar.a(this.r, this.n, false);
            }
        }
        if (c2 != 4 && c2 != 0) {
            h hVar2 = this.f9222b;
            if (hVar2 != null) {
                hVar2.e();
            }
            i();
            this.z = true;
            this.A = false;
            h hVar3 = this.f9222b;
            if (hVar3 == null || (iVar = this.r) == null) {
                return true;
            }
            return hVar3.a(i, iVar.B(), this.w);
        } else if (c2 != 4) {
            return true;
        } else {
            this.z = false;
            h hVar4 = this.f9222b;
            if (hVar4 == null) {
                return true;
            }
            hVar4.q();
            return true;
        }
    }

    private void h(boolean z) {
        this.S = z;
    }

    private boolean z() {
        q.b("NativeVideoController", "retryCount=" + this.I);
        int i = this.I;
        if (i > 0) {
            h hVar = this.f9222b;
            if (hVar == null) {
                return false;
            }
            hVar.w();
            this.f9222b.a(this.r, this.n, false);
            return false;
        } else if (this.g == null) {
            return false;
        } else {
            this.I = i + 1;
            q.b("NativeVideoController", "isPlaying=" + this.g.g() + ",isPaused=" + this.g.i() + ",isPrepared=" + this.g.k() + ",isStarted=" + this.g.h());
            return !this.g.g() || !this.g.i() || !this.g.k() || !this.g.h();
        }
    }

    public void a(int i) {
        if (C()) {
            boolean z = i == 0 || i == 8;
            Context context = this.n.get();
            if (context instanceof Activity) {
                Activity activity = (Activity) context;
                try {
                    activity.setRequestedOrientation(i);
                } catch (Throwable th) {
                }
                if (!z) {
                    activity.getWindow().setFlags(1024, 1024);
                } else {
                    activity.getWindow().clearFlags(1024);
                }
            }
        }
    }

    public void a(int i, int i2) {
        if (i != 0 && i2 != 0) {
            this.G = i;
            this.H = i2;
            q.b("NativeVideoController", "width=" + i + "height=" + i2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(long r6) {
        /*
            r5 = this;
            r0 = r5
            r1 = r6
            r0.i = r1
            r0 = r5
            long r0 = r0.j
            r8 = r0
            r0 = r6
            r10 = r0
            r0 = r8
            r1 = r6
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0016
            r0 = r8
            r10 = r0
        L_0x0016:
            r0 = r5
            r1 = r10
            r0.j = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.video.nativevideo.f.a(long):void");
    }

    public void a(Context context) {
        int c2 = t.c(context);
        a(context, c2);
        if (c2 == 4) {
            this.z = false;
            k();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v27, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0, types: [com.bytedance.sdk.openadsdk.core.video.nativevideo.f] */
    /* JADX WARN: Type inference failed for: r18v1, types: [long] */
    /* JADX WARN: Type inference failed for: r18v2 */
    /* JADX WARN: Type inference failed for: r18v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // com.bytedance.sdk.openadsdk.utils.ah.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(android.os.Message r12) {
        /*
            Method dump skipped, instructions count: 853
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.video.nativevideo.f.a(android.os.Message):void");
    }

    public void a(TTDrawFeedAd.DrawVideoListener drawVideoListener) {
        h hVar = this.f9222b;
        if (hVar != null) {
            hVar.a(drawVideoListener);
        }
    }

    public void a(final NativeVideoTsView.b bVar) {
        h hVar;
        if (this.s && (hVar = this.f9222b) != null) {
            hVar.a(new NativeVideoTsView.b() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.f.1
                @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.b
                public void a(View view, int i) {
                    NativeVideoTsView.b bVar2 = bVar;
                    if (bVar2 != null) {
                        bVar2.a(view, i);
                    }
                }
            });
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.a
    public void a(b bVar, int i) {
        if (this.g != null) {
            A();
            a(this.T, c(i));
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.a
    public void a(b bVar, int i, boolean z) {
        if (C()) {
            long l = (((float) (i * this.k)) * 1.0f) / com.bytedance.sdk.openadsdk.utils.x.l(this.n.get(), "tt_video_progress_max");
            if (this.k > 0) {
                this.T = (int) l;
            } else {
                this.T = 0L;
            }
            h hVar = this.f9222b;
            if (hVar != null) {
                hVar.a(this.T);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.a
    public void a(b bVar, SurfaceTexture surfaceTexture) {
        this.m = true;
        d dVar = this.g;
        if (dVar != null) {
            dVar.a(surfaceTexture);
            D();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.a
    public void a(b bVar, SurfaceHolder surfaceHolder) {
        this.m = true;
        d dVar = this.g;
        if (dVar != null) {
            dVar.a(surfaceHolder);
            D();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.a
    public void a(b bVar, SurfaceHolder surfaceHolder, int i, int i2, int i3) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.a
    public void a(b bVar, View view) {
        if (this.g != null && C()) {
            if (this.g.g()) {
                i();
                this.f9222b.b(true, false);
                this.f9222b.c();
            } else if (!this.g.i()) {
                h hVar = this.f9222b;
                if (hVar != null) {
                    hVar.c(this.f9223c.get());
                }
                d(this.i);
                h hVar2 = this.f9222b;
                if (hVar2 != null) {
                    hVar2.b(false, false);
                }
            } else {
                g(false);
                h hVar3 = this.f9222b;
                if (hVar3 != null) {
                    hVar3.b(false, false);
                }
            }
        }
    }

    public void a(b bVar, View view, boolean z) {
        K();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.a
    public void a(b bVar, View view, boolean z, boolean z2) {
        if (this.s) {
            i();
        }
        if (z && !this.s && !e()) {
            this.f9222b.b(!f(), false);
            this.f9222b.a(z2, true, false);
        }
        d dVar = this.g;
        if (dVar == null || !dVar.g()) {
            this.f9222b.c();
            return;
        }
        this.f9222b.c();
        this.f9222b.b();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public void a(c.a aVar) {
        this.h = aVar;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public void a(c.AbstractC0169c cVar) {
        this.E = new WeakReference<>(cVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public void a(e eVar) {
        this.x = new WeakReference<>(eVar);
    }

    public void a(a aVar) {
        this.F = new WeakReference<>(aVar);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.d
    public void a(e.a aVar, String str) {
        int i = AnonymousClass8.f9233a[aVar.ordinal()];
        if (i == 1) {
            i();
        } else if (i == 2) {
            a(true);
        } else if (i == 3) {
            k();
            this.z = false;
            this.A = true;
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public void a(Map<String, Object> map) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public void a(boolean z) {
        if (this.s) {
            this.P = p();
        }
        if (!this.q && this.p) {
            if (z) {
                com.bytedance.sdk.openadsdk.d.e.a(this.n.get(), this.r, this.u, "feed_break", this.P, r(), c());
                this.q = false;
            } else {
                com.bytedance.sdk.openadsdk.d.e.a(this.n.get(), this.r, this.u, "feed_pause", this.P, r(), c());
            }
        }
        m();
    }

    public boolean a() {
        return this.s;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v38, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(java.lang.String r6, java.lang.String r7, int r8, int r9, java.util.List<java.lang.String> r10, java.lang.String r11, long r12, boolean r14) {
        /*
            Method dump skipped, instructions count: 250
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.video.nativevideo.f.a(java.lang.String, java.lang.String, int, int, java.util.List, java.lang.String, long, boolean):boolean");
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public void b(long j) {
        this.y = j;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.a
    public void b(b bVar, int i) {
        if (this.g != null) {
            B();
        }
        h hVar = this.f9222b;
        if (hVar != null) {
            hVar.c();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.a
    public void b(b bVar, SurfaceTexture surfaceTexture) {
        this.m = false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.a
    public void b(b bVar, SurfaceHolder surfaceHolder) {
        this.m = false;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.a
    public void b(b bVar, View view) {
        b(bVar, view, false, false);
    }

    public void b(b bVar, View view, boolean z, boolean z2) {
        if (C()) {
            h(!this.S);
            if (!(this.n.get() instanceof Activity)) {
                q.b("NativeVideoController", "context is not activity, not support this function.");
                return;
            }
            if (this.S) {
                a(z ? 8 : 0);
                h hVar = this.f9222b;
                if (hVar != null) {
                    hVar.a(this.f9223c.get());
                    this.f9222b.b(false);
                }
            } else {
                a(1);
                h hVar2 = this.f9222b;
                if (hVar2 != null) {
                    hVar2.b(this.f9223c.get());
                    this.f9222b.b(false);
                }
            }
            WeakReference<e> weakReference = this.x;
            e eVar = weakReference != null ? weakReference.get() : null;
            if (eVar != null) {
                eVar.a(this.S);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public void b(boolean z) {
        this.s = z;
        h hVar = this.f9222b;
        if (hVar != null) {
            hVar.c(z);
        }
    }

    public boolean b() {
        return this.t;
    }

    protected Map<String, Object> c() {
        return af.a(this.r, o(), u());
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public void c(long j) {
        this.k = j;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.a
    public void c(b bVar, View view) {
        h hVar = this.f9222b;
        if (hVar != null) {
            hVar.g();
        }
        a(true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public void c(boolean z) {
        this.t = z;
        d dVar = this.g;
        if (dVar != null) {
            dVar.a(z);
        }
    }

    public void d() {
        d dVar = this.g;
        if (dVar != null) {
            dVar.b();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Unknown variable types count: 1 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void d(long r8) {
        /*
            r7 = this;
            r0 = r7
            r1 = r8
            r0.i = r1
            r0 = r7
            long r0 = r0.j
            r10 = r0
            r0 = r8
            r12 = r0
            r0 = r10
            r1 = r8
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 <= 0) goto L_0x0016
            r0 = r10
            r12 = r0
        L_0x0016:
            r0 = r7
            r1 = r12
            r0.j = r1
            r0 = r7
            com.bytedance.sdk.openadsdk.core.video.nativevideo.h r0 = r0.f9222b
            r14 = r0
            r0 = r14
            if (r0 == 0) goto L_0x002c
            r0 = r14
            r0.e()
        L_0x002c:
            r0 = r7
            com.bytedance.sdk.openadsdk.core.video.d.d r0 = r0.g
            r14 = r0
            r0 = r14
            if (r0 == 0) goto L_0x004b
            r0 = r14
            r1 = 1
            r2 = r7
            long r2 = r2.i
            r3 = r7
            boolean r3 = r3.t
            r4 = 1
            r3 = r3 ^ r4
            r0.a(r1, r2, r3)
            r0 = r7
            r0.A()
        L_0x004b:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.video.nativevideo.f.d(long):void");
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.a
    public void d(b bVar, View view) {
        if (this.S) {
            h(false);
            h hVar = this.f9222b;
            if (hVar != null) {
                hVar.b(this.f9223c.get());
            }
            a(1);
            return;
        }
        a(true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public void d(boolean z) {
        this.B = z;
    }

    public void e(long j) {
        this.P = j;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.a
    public void e(b bVar, View view) {
        a(bVar, view, false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public void e(boolean z) {
        this.D = z;
    }

    public boolean e() {
        d dVar = this.g;
        return dVar == null || dVar.l();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.a
    public void f(b bVar, View view) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public void f(boolean z) {
        this.K = z;
    }

    public boolean f() {
        d dVar = this.g;
        return dVar != null && dVar.g();
    }

    public void g() {
        if (!this.W && this.K) {
            Context applicationContext = n.a().getApplicationContext();
            this.W = true;
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            try {
                applicationContext.registerReceiver(this.U, intentFilter);
            } catch (Exception e) {
            }
        }
    }

    public void g(boolean z) {
        h hVar = this.f9222b;
        if (hVar != null) {
            hVar.e();
        }
        h hVar2 = this.f9222b;
        if (hVar2 != null && z) {
            hVar2.u();
        }
        E();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.a
    public void h() {
        if (t.c(n.a()) != 0) {
            m();
            a(this.r.B().h(), this.r.P(), this.G, this.H, null, this.r.S(), 0L, b());
            d(false);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public void i() {
        d dVar = this.g;
        if (dVar != null) {
            dVar.b();
        }
        if (!this.q && this.p) {
            if (com.bytedance.sdk.openadsdk.multipro.b.b()) {
                if (com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_single_app_data_class", "IsCanLoadPauseLog", true)) {
                    com.bytedance.sdk.openadsdk.d.e.a(this.n.get(), this.r, this.u, "feed_pause", p(), r(), c());
                }
                com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_single_app_data_class", "IsCanLoadPauseLog", Boolean.TRUE);
                return;
            }
            if (com.bytedance.sdk.openadsdk.core.t.a().b()) {
                com.bytedance.sdk.openadsdk.d.e.a(this.n.get(), this.r, this.u, "feed_pause", p(), r(), c());
            }
            com.bytedance.sdk.openadsdk.core.t.a().a(true);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public void j() {
        d dVar = this.g;
        if (dVar != null) {
            dVar.d();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public void k() {
        h hVar = this.f9222b;
        if (hVar != null) {
            hVar.e();
        }
        h hVar2 = this.f9222b;
        if (hVar2 != null) {
            hVar2.u();
        }
        E();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public void l() {
        a(true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public void m() {
        d dVar = this.g;
        if (dVar != null) {
            dVar.c();
            this.g = null;
        }
        if (!af.b(this.r) || this.O == 2) {
            this.f9222b.a(this.r, this.n, true);
        }
        ah ahVar = this.f9224d;
        if (ahVar != null) {
            ahVar.removeCallbacks(this.N);
            this.f9224d.removeCallbacks(this.M);
            this.f9224d.removeCallbacks(this.L);
            this.f9224d.removeCallbacksAndMessages(null);
        }
        B();
        List<Runnable> list = this.l;
        if (list != null) {
            list.clear();
        }
        if (this.s) {
            y();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public long n() {
        return this.i;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public long o() {
        if (u() == null) {
            return 0L;
        }
        return u().n();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public long p() {
        d dVar = this.g;
        if (dVar == null) {
            return 0L;
        }
        return dVar.o() + this.y;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public long q() {
        return 0L;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public int r() {
        return com.bytedance.sdk.openadsdk.core.video.e.a.a(this.j, this.k);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public long s() {
        return this.k;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public boolean t() {
        return this.z;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public d u() {
        return this.g;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public h v() {
        return this.f9222b;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public boolean w() {
        return this.B;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c
    public boolean x() {
        return this.J;
    }

    public void y() {
        if (this.W && this.K) {
            Context applicationContext = n.a().getApplicationContext();
            this.W = false;
            try {
                applicationContext.unregisterReceiver(this.U);
            } catch (Exception e) {
            }
        }
    }
}
