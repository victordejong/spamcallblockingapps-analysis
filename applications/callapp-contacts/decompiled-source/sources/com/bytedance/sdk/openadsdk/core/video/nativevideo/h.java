package com.bytedance.sdk.openadsdk.core.video.nativevideo;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.SurfaceTexture;
import android.os.Build;
import android.os.Message;
import android.text.TextUtils;
import android.view.SurfaceHolder;
import android.view.TextureView;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewStub;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.a.a.a.a.a.c;
import com.bytedance.sdk.openadsdk.TTDrawFeedAd;
import com.bytedance.sdk.openadsdk.core.b.b;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.e.o;
import com.bytedance.sdk.openadsdk.core.g;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.video.e.b;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.b;
import com.bytedance.sdk.openadsdk.core.video.renderview.SSRenderSurfaceView;
import com.bytedance.sdk.openadsdk.core.video.renderview.SSRenderTextureView;
import com.bytedance.sdk.openadsdk.core.video.renderview.a;
import com.bytedance.sdk.openadsdk.core.video.renderview.b;
import com.bytedance.sdk.openadsdk.core.widget.RoundImageView;
import com.bytedance.sdk.openadsdk.core.widget.d;
import com.bytedance.sdk.openadsdk.core.widget.e;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.ag;
import com.bytedance.sdk.openadsdk.utils.ah;
import com.bytedance.sdk.openadsdk.utils.q;
import com.bytedance.sdk.openadsdk.utils.t;
import com.bytedance.sdk.openadsdk.utils.x;
import com.mopub.common.AdType;
import java.lang.ref.WeakReference;
import java.util.EnumSet;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/nativevideo/h.class */
public class h implements b, a, d.a, e.b, ah.a {
    e A;
    d B;
    boolean C;
    c D;
    c E;
    com.bytedance.sdk.openadsdk.core.b.a F;
    com.bytedance.sdk.openadsdk.core.b.a G;
    TTDrawFeedAd.DrawVideoListener H;
    boolean I;
    private View J;
    private TextView K;
    private TextView L;
    private NativeVideoTsView.b M;
    private final String N;

    /* renamed from: a  reason: collision with root package name */
    View f9242a;

    /* renamed from: b  reason: collision with root package name */
    b f9243b;

    /* renamed from: c  reason: collision with root package name */
    ImageView f9244c;

    /* renamed from: d  reason: collision with root package name */
    View f9245d;
    View e;
    ImageView f;
    ViewStub g;
    View h;
    ImageView i;
    View j;
    RoundImageView k;
    TextView l;
    TextView m;
    TextView n;
    ProgressBar o;
    ViewStub p;
    int q;
    int r;
    int s;
    int t;
    boolean u;
    boolean v;
    int w;
    EnumSet<b.a> x;
    i y;
    Context z;

    public h(Context context, View view, boolean z, EnumSet<b.a> enumSet, i iVar, c cVar) {
        this(context, view, z, enumSet, iVar, cVar, true);
    }

    public h(Context context, View view, boolean z, EnumSet<b.a> enumSet, i iVar, c cVar, boolean z2) {
        this.u = true;
        this.C = true;
        this.I = true;
        this.N = Build.MODEL;
        if (!(this instanceof g)) {
            this.z = n.a().getApplicationContext();
            c(z2);
            this.f9242a = view;
            this.u = z;
            this.x = enumSet == null ? EnumSet.noneOf(b.a.class) : enumSet;
            this.E = cVar;
            this.y = iVar;
            c(8);
            a(context, this.f9242a);
            a();
            n();
        }
    }

    private boolean A() {
        return "C8817D".equals(this.N) || "M5".equals(this.N) || "R7t".equals(this.N);
    }

    private void b(View view, Context context) {
        ViewStub viewStub;
        if (view != null && context != null && (viewStub = this.p) != null && viewStub.getParent() != null && this.J == null) {
            this.p.inflate();
            this.J = view.findViewById(x.e(context, "tt_video_ad_cover_center_layout_draw"));
            this.K = (TextView) view.findViewById(x.e(context, "tt_video_ad_button_draw"));
            this.L = (TextView) view.findViewById(x.e(context, "tt_video_ad_replay"));
        }
    }

    private int e(int i) {
        if (this.s <= 0 || this.t <= 0) {
            return 0;
        }
        int dimensionPixelSize = this.z.getResources().getDimensionPixelSize(x.h(this.z, "tt_video_container_maxheight"));
        int dimensionPixelSize2 = this.z.getResources().getDimensionPixelSize(x.h(this.z, "tt_video_container_minheight"));
        int i2 = (int) (this.t * ((i * 1.0f) / this.s));
        if (i2 > dimensionPixelSize) {
            i2 = dimensionPixelSize;
        } else if (i2 < dimensionPixelSize2) {
            i2 = dimensionPixelSize2;
        }
        return i2;
    }

    private void f(int i) {
        ag.a(this.j, i);
        ag.a(this.J, i);
    }

    private boolean y() {
        return i.d(this.y) && this.y.z() == null && this.y.h() == 1;
    }

    private void z() {
        if (this.z != null && this.f9242a != null) {
            View view = new View(this.z) { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.h.3
                private void a() {
                }

                private void b() {
                }

                @Override // android.view.View
                protected void onDetachedFromWindow() {
                    super.onDetachedFromWindow();
                    b();
                }

                @Override // android.view.View
                public void onFinishTemporaryDetach() {
                    super.onFinishTemporaryDetach();
                    a();
                }

                @Override // android.view.View
                public void onStartTemporaryDetach() {
                    super.onStartTemporaryDetach();
                    b();
                }
            };
            View view2 = this.f9242a;
            if (view2 instanceof ViewGroup) {
                ((ViewGroup) view2).addView(view, 0, new RelativeLayout.LayoutParams(0, 0));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.f9243b.a(this);
        this.f9244c.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.h.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (!h.this.r()) {
                    return;
                }
                if (h.this.n == null || h.this.n.getVisibility() != 0) {
                    h.this.B.a(h.this, view);
                }
            }
        });
    }

    public void a(int i) {
        q.c("Progress", "setSeekProgress-percent=".concat(String.valueOf(i)));
        ag.a((View) this.o, 0);
        this.o.setProgress(i);
    }

    public void a(int i, int i2) {
        int i3 = i;
        if (i == -1) {
            i3 = ag.c(this.z);
        }
        if (i3 > 0) {
            this.q = i3;
            if (i() || h() || this.x.contains(b.a.fixedSize)) {
                this.r = i2;
            } else {
                this.r = e(i3);
            }
            b(this.q, this.r);
        }
    }

    public void a(long j) {
    }

    public void a(long j, long j2) {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(Context context, View view) {
        View view2;
        long currentTimeMillis = System.currentTimeMillis();
        String a2 = af.a(context);
        if (a2 == null) {
            a2 = "0";
        }
        boolean z = Build.VERSION.SDK_INT != 20 || Integer.valueOf(a2).intValue() >= 1572864;
        if (A() || !z || !g.b().p() || Build.VERSION.SDK_INT < 14) {
            view2 = new SSRenderSurfaceView(this.z);
            q.b("NewLiveViewLayout", "use SurfaceView......");
        } else {
            view2 = new SSRenderTextureView(this.z);
            q.b("NewLiveViewLayout", "use TextureView......");
        }
        if (view instanceof RelativeLayout) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(13);
            ((RelativeLayout) view).addView(view2, 0, layoutParams);
        }
        ag.a(view2, 8);
        this.f9243b = (com.bytedance.sdk.openadsdk.core.video.renderview.b) view2;
        this.f9244c = (ImageView) view.findViewById(x.e(context, "tt_video_play"));
        this.o = (ProgressBar) view.findViewById(x.e(context, "tt_video_progress"));
        this.f9245d = view.findViewById(x.e(context, "tt_video_loading_retry_layout"));
        this.e = view.findViewById(x.e(context, "tt_video_loading_progress"));
        this.f = (ImageView) view.findViewById(x.e(context, "tt_video_loading_cover_image"));
        this.g = (ViewStub) view.findViewById(x.e(context, "tt_video_ad_cover"));
        this.p = (ViewStub) view.findViewById(x.e(context, "tt_video_draw_layout_viewStub"));
        q.b("useTime", "NativeVideoLayout**findViews use time :" + (System.currentTimeMillis() - currentTimeMillis));
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.renderview.a
    public void a(SurfaceTexture surfaceTexture, int i, int i2) {
        this.v = true;
        if (r()) {
            this.B.a(this, surfaceTexture);
        }
    }

    public void a(Message message) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.renderview.a
    public void a(SurfaceHolder surfaceHolder) {
        if (surfaceHolder == this.f9243b.getHolder()) {
            this.v = true;
            if (r()) {
                this.B.a(this, surfaceHolder);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.renderview.a
    public void a(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        if (surfaceHolder == this.f9243b.getHolder() && r()) {
            this.B.a(this, surfaceHolder, i, i2, i3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(View view, Context context) {
        ViewStub viewStub;
        if (view != null && context != null && (viewStub = this.g) != null && viewStub.getParent() != null && this.h == null) {
            this.h = this.g.inflate();
            this.i = (ImageView) view.findViewById(x.e(context, "tt_video_ad_finish_cover_image"));
            this.j = view.findViewById(x.e(context, "tt_video_ad_cover_center_layout"));
            this.k = (RoundImageView) view.findViewById(x.e(context, "tt_video_ad_logo_image"));
            this.l = (TextView) view.findViewById(x.e(context, "tt_video_btn_ad_image_tv"));
            this.m = (TextView) view.findViewById(x.e(context, "tt_video_ad_name"));
            this.n = (TextView) view.findViewById(x.e(context, "tt_video_ad_button"));
        }
    }

    public void a(View view, boolean z) {
    }

    public void a(ViewGroup viewGroup) {
    }

    public void a(TTDrawFeedAd.DrawVideoListener drawVideoListener) {
        this.H = drawVideoListener;
        com.bytedance.sdk.openadsdk.core.b.a aVar = this.F;
        if (aVar != null) {
            aVar.a(drawVideoListener);
        }
    }

    public void a(i iVar, WeakReference<Context> weakReference, boolean z) {
        i iVar2;
        i iVar3;
        i iVar4;
        if (iVar != null) {
            a(false, this.u);
            a(this.f9242a, n.a());
            View view = this.h;
            if (view != null) {
                ag.a(view, 0);
            }
            ImageView imageView = this.i;
            if (imageView != null) {
                ag.a((View) imageView, 0);
            }
            if (af.b(this.y)) {
                b(this.f9242a, n.a());
                ag.a(this.j, 8);
                ag.a((View) this.i, 0);
                ag.a(this.J, 0);
                ag.a((View) this.K, 0);
                ag.a((View) this.L, 0);
                if (this.L != null && t.c(n.a()) == 0) {
                    ag.a((View) this.L, 8);
                }
                View view2 = this.h;
                if (view2 != null) {
                    view2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.h.5
                        @Override // android.view.View.OnClickListener
                        public void onClick(View view3) {
                            if (h.this.E != null) {
                                ((a) h.this.E).h();
                                if (h.this.H != null) {
                                    h.this.H.onClickRetry();
                                }
                            }
                        }
                    });
                }
                if (!(this.i == null || (iVar4 = this.y) == null || iVar4.B() == null || this.y.B().g() == null)) {
                    com.bytedance.sdk.openadsdk.core.video.e.b.a((long) this.y.B().e(), this.y.B().h(), new b.AbstractC0168b() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.h.6
                        @Override // com.bytedance.sdk.openadsdk.core.video.e.b.AbstractC0168b
                        public void a(Bitmap bitmap) {
                            if (bitmap != null) {
                                RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) h.this.i.getLayoutParams();
                                if (bitmap.getWidth() > bitmap.getHeight()) {
                                    layoutParams.width = ag.c(n.a());
                                    layoutParams.height = (bitmap.getHeight() * ag.c(n.a())) / bitmap.getWidth();
                                    layoutParams.addRule(13);
                                    h.this.i.setLayoutParams(layoutParams);
                                }
                                h.this.i.setImageBitmap(bitmap);
                                return;
                            }
                            com.bytedance.sdk.openadsdk.j.e.c().a(h.this.y.B().g(), h.this.i);
                        }
                    });
                }
            } else {
                ag.a(this.j, 0);
                if (!(this.i == null || (iVar3 = this.y) == null || iVar3.B() == null || this.y.B().g() == null)) {
                    com.bytedance.sdk.openadsdk.j.e.c().a(this.y.B().g(), this.i);
                }
            }
            String C = !TextUtils.isEmpty(iVar.C()) ? iVar.C() : !TextUtils.isEmpty(iVar.M()) ? iVar.M() : !TextUtils.isEmpty(iVar.N()) ? iVar.N() : "";
            if (this.k != null && (iVar2 = this.y) != null && iVar2.E() != null && this.y.E().a() != null) {
                ag.a((View) this.k, 0);
                ag.a((View) this.l, 4);
                com.bytedance.sdk.openadsdk.j.e.c().a(this.y.E().a(), this.k);
                if (y()) {
                    this.k.setOnClickListener(this.G);
                    this.k.setOnTouchListener(this.G);
                } else {
                    this.k.setOnClickListener(this.F);
                    this.k.setOnTouchListener(this.F);
                }
            } else if (!TextUtils.isEmpty(C)) {
                ag.a((View) this.k, 4);
                ag.a((View) this.l, 0);
                TextView textView = this.l;
                if (textView != null) {
                    textView.setText(C.substring(0, 1));
                    if (y()) {
                        this.l.setOnClickListener(this.G);
                        this.l.setOnTouchListener(this.G);
                    } else {
                        this.l.setOnClickListener(this.F);
                        this.l.setOnTouchListener(this.F);
                    }
                }
            }
            if (this.m != null && !TextUtils.isEmpty(C)) {
                this.m.setText(C);
            }
            ag.a((View) this.m, 0);
            ag.a((View) this.n, 0);
            String O = iVar.O();
            String str = O;
            if (TextUtils.isEmpty(O)) {
                int D = iVar.D();
                str = (D == 2 || D == 3) ? x.a(this.z, "tt_video_mobile_go_detail") : D != 4 ? D != 5 ? x.a(this.z, "tt_video_mobile_go_detail") : x.a(this.z, "tt_video_dial_phone") : x.a(this.z, "tt_video_download_apk");
            }
            TextView textView2 = this.n;
            if (textView2 != null) {
                textView2.setText(str);
                this.n.setOnClickListener(this.F);
                this.n.setOnTouchListener(this.F);
            }
            TextView textView3 = this.K;
            if (textView3 != null) {
                textView3.setText(str);
                this.K.setOnClickListener(this.F);
                this.K.setOnTouchListener(this.F);
            }
            if (!this.I) {
                f(4);
            }
        }
    }

    public void a(NativeVideoTsView.b bVar) {
        this.M = bVar;
    }

    public void a(a aVar) {
        if (aVar instanceof d) {
            this.B = (d) aVar;
            p();
        }
    }

    public void a(String str) {
    }

    public void a(boolean z) {
    }

    public void a(boolean z, boolean z2) {
        ag.a((View) this.o, z ? 0 : 8);
        ag.a((View) this.f9244c, 8);
    }

    public void a(boolean z, boolean z2, boolean z3) {
        int i = 0;
        ag.a((View) this.o, 0);
        ImageView imageView = this.f9244c;
        if (!z || this.f9245d.getVisibility() == 0) {
            i = 8;
        }
        ag.a((View) imageView, i);
    }

    public boolean a(int i, o oVar, boolean z) {
        e eVar = this.A;
        return eVar == null || eVar.a(i, oVar, z);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.renderview.a
    public boolean a(SurfaceTexture surfaceTexture) {
        this.v = false;
        if (!r()) {
            return true;
        }
        this.B.b(this, surfaceTexture);
        return true;
    }

    public void b() {
    }

    public void b(int i, int i2) {
        ViewGroup.LayoutParams layoutParams = this.f9242a.getLayoutParams();
        if (i == -1 || i == -2 || i > 0) {
            layoutParams.width = i;
        }
        if (i2 == -1 || i2 == -2 || i2 > 0) {
            layoutParams.height = i2;
        }
        this.f9242a.setLayoutParams(layoutParams);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.renderview.a
    public void b(SurfaceTexture surfaceTexture) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.renderview.a
    public void b(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.renderview.a
    public void b(SurfaceHolder surfaceHolder) {
        if (surfaceHolder == this.f9243b.getHolder()) {
            this.v = false;
            if (r()) {
                this.B.b(this, surfaceHolder);
            }
        }
    }

    public void b(ViewGroup viewGroup) {
    }

    public void b(boolean z) {
    }

    public void b(boolean z, boolean z2) {
        ImageView imageView = this.f9244c;
        if (imageView == null) {
            return;
        }
        if (z) {
            imageView.setImageResource(x.d(this.z, "tt_play_movebar_textpage"));
        } else {
            imageView.setImageResource(x.d(this.z, "tt_stop_movebar_textpage"));
        }
    }

    public boolean b(int i) {
        return false;
    }

    public void c() {
    }

    public void c(int i) {
        this.w = i;
        ag.a(this.f9242a, i);
    }

    public void c(int i, int i2) {
        this.s = i;
        this.t = i2;
    }

    public void c(ViewGroup viewGroup) {
        if (viewGroup != null) {
            if (this.f9242a.getParent() != null) {
                ((ViewGroup) this.f9242a.getParent()).removeView(this.f9242a);
            }
            viewGroup.addView(this.f9242a);
            c(0);
        }
    }

    public void c(boolean z) {
        this.C = z;
        if (z) {
            com.bytedance.sdk.openadsdk.core.b.a aVar = this.F;
            if (aVar != null) {
                aVar.a(true);
            }
            com.bytedance.sdk.openadsdk.core.b.a aVar2 = this.G;
            if (aVar2 != null) {
                aVar2.a(true);
                return;
            }
            return;
        }
        com.bytedance.sdk.openadsdk.core.b.a aVar3 = this.F;
        if (aVar3 != null) {
            aVar3.a(false);
        }
        com.bytedance.sdk.openadsdk.core.b.a aVar4 = this.G;
        if (aVar4 != null) {
            aVar4.a(false);
        }
    }

    public void d() {
        i iVar;
        ag.g(this.f9245d);
        ag.g(this.e);
        if (!(this.f == null || (iVar = this.y) == null || iVar.B() == null || this.y.B().g() == null)) {
            ag.g(this.f);
            com.bytedance.sdk.openadsdk.j.e.c().a(this.y.B().g(), this.f);
        }
        if (this.f9244c.getVisibility() == 0) {
            ag.a((View) this.f9244c, 8);
        }
    }

    public void d(int i) {
        ag.a(this.f9242a, 0);
        com.bytedance.sdk.openadsdk.core.video.renderview.b bVar = this.f9243b;
        if (bVar != null) {
            bVar.setVisibility(i);
        }
    }

    public void d(boolean z) {
        this.I = z;
    }

    public void e() {
        a(false, this.u);
        v();
    }

    public void f() {
        ag.f(this.f9245d);
    }

    public void g() {
        this.o.setProgress(0);
        this.o.setSecondaryProgress(0);
        c(8);
        if (x()) {
            this.f9243b.setVisibility(8);
        }
        ImageView imageView = this.f;
        if (imageView != null) {
            imageView.setImageDrawable(null);
        }
        c(8);
        ag.a(this.h, 8);
        ag.a((View) this.i, 8);
        ag.a(this.j, 8);
        ag.a((View) this.k, 8);
        ag.a((View) this.l, 8);
        ag.a((View) this.m, 8);
        e eVar = this.A;
        if (eVar != null) {
            eVar.a(true);
        }
    }

    public boolean h() {
        return false;
    }

    public boolean i() {
        return this.u;
    }

    public void j() {
        a(true, false);
    }

    public boolean k() {
        return this.v;
    }

    public void l() {
    }

    public boolean m() {
        e eVar = this.A;
        return eVar != null && eVar.a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void n() {
        int i;
        com.bytedance.sdk.openadsdk.core.b.a aVar;
        String str = this.C ? "embeded_ad" : "embeded_ad_landingpage";
        if (af.b(this.y)) {
            str = this.C ? "draw_ad" : "draw_ad_landingpage";
            i = 6;
        } else if (af.d(this.y)) {
            str = AdType.REWARDED_VIDEO;
            i = 7;
        } else if (af.e(this.y)) {
            str = "fullscreen_interstitial_ad";
            i = 5;
        } else {
            i = 1;
        }
        if (this.y.D() == 4) {
            this.D = com.a.a.a.a.a.d.a(this.z, this.y, str);
        }
        z();
        com.bytedance.sdk.openadsdk.core.b.a aVar2 = new com.bytedance.sdk.openadsdk.core.b.a(this.z, this.y, str, i);
        this.F = aVar2;
        aVar2.b(true);
        if (this.C) {
            this.F.a(true);
        } else {
            this.F.a(false);
            this.F.c(true);
        }
        this.F.a(this.E);
        this.F.d(true);
        c cVar = this.D;
        if (!(cVar == null || (aVar = this.F) == null)) {
            aVar.a(cVar);
        }
        if (y()) {
            com.bytedance.sdk.openadsdk.core.b.a aVar3 = new com.bytedance.sdk.openadsdk.core.b.a(this.z, this.y, str, i) { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.h.1
                @Override // com.bytedance.sdk.openadsdk.core.b.a
                public boolean b() {
                    boolean a2 = h.this.A != null ? h.this.A.a() : false;
                    StringBuilder sb = new StringBuilder("isVisible=");
                    sb.append(a2);
                    sb.append(",mPlayBtn.getVisibility() == VISIBLE->");
                    sb.append(h.this.f9244c.getVisibility() == 0);
                    q.c("ClickCreativeListener", sb.toString());
                    return a2 || h.this.f9244c.getVisibility() == 0;
                }

                @Override // com.bytedance.sdk.openadsdk.core.b.a
                public boolean c() {
                    if (h.this.h != null && h.this.h.getVisibility() == 0) {
                        return true;
                    }
                    if (h.this.j != null && h.this.j.getVisibility() == 0) {
                        return true;
                    }
                    if (h.this.k == null || h.this.k.getVisibility() != 0) {
                        return h.this.l != null && h.this.l.getVisibility() == 0;
                    }
                    return true;
                }
            };
            this.G = aVar3;
            aVar3.a(new b.a() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.h.2
                @Override // com.bytedance.sdk.openadsdk.core.b.b.a
                public void a(View view, int i2) {
                    if (h.this.M != null) {
                        h.this.M.a(view, i2);
                    }
                }
            });
            this.G.b(true);
            if (this.C) {
                this.G.a(true);
            } else {
                this.G.a(false);
            }
            this.G.a(this.E);
            this.G.d(true);
            c cVar2 = this.D;
            if (cVar2 != null) {
                this.G.a(cVar2);
            }
            View view = this.f9242a;
            if (view != null) {
                view.setOnClickListener(this.G);
                this.f9242a.setOnTouchListener(this.G);
            }
        }
    }

    public com.bytedance.sdk.openadsdk.core.video.renderview.b o() {
        return this.f9243b;
    }

    void p() {
        if (this.B != null && this.A == null) {
            long currentTimeMillis = System.currentTimeMillis();
            e eVar = new e();
            this.A = eVar;
            eVar.a(this.z, this.f9242a);
            this.A.a(this.B, this);
            q.b("useTime", "mVideoTrafficTipLayout use time :" + (System.currentTimeMillis() - currentTimeMillis));
        }
    }

    public void q() {
        e eVar = this.A;
        if (eVar != null) {
            eVar.a(false);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean r() {
        if (this.B != null) {
            return true;
        }
        q.e("NewLiveViewLayout", "callback is null");
        return false;
    }

    public View s() {
        return this.f9242a;
    }

    public void t() {
        ag.g(this.f9245d);
        ag.g(this.e);
        if (this.f9244c.getVisibility() == 0) {
            ag.a((View) this.f9244c, 8);
        }
    }

    public void u() {
        ag.a(this.f9242a, 0);
        com.bytedance.sdk.openadsdk.core.video.renderview.b bVar = this.f9243b;
        if (bVar != null) {
            View view = bVar.getView();
            if (view instanceof TextureView) {
                ViewParent parent = view.getParent();
                if (parent instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) parent;
                    int indexOfChild = viewGroup.indexOfChild(view);
                    viewGroup.removeView(view);
                    viewGroup.addView(view, indexOfChild);
                }
            }
            ag.a(view, 8);
            ag.a(view, 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void v() {
        ag.a(this.h, 8);
        ag.a((View) this.i, 8);
        ag.a(this.j, 8);
        ag.a((View) this.k, 8);
        ag.a((View) this.l, 8);
        ag.a((View) this.m, 8);
        ag.a((View) this.n, 8);
    }

    public void w() {
        ag.f(this.f9245d);
        ag.f(this.e);
        ImageView imageView = this.f;
        if (imageView != null) {
            ag.f(imageView);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean x() {
        return !this.x.contains(b.a.alwayShowMediaView) || this.u;
    }
}
