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
import com.bytedance.sdk.openadsdk.TTDrawFeedAd;
import com.bytedance.sdk.openadsdk.core.C4570g;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.p151b.C4494a;
import com.bytedance.sdk.openadsdk.core.p151b.C4495b;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.p154e.C4565o;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4717b;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView;
import com.bytedance.sdk.openadsdk.core.video.p162e.C4709b;
import com.bytedance.sdk.openadsdk.core.video.renderview.AbstractC4750a;
import com.bytedance.sdk.openadsdk.core.video.renderview.AbstractC4751b;
import com.bytedance.sdk.openadsdk.core.video.renderview.SSRenderSurfaceView;
import com.bytedance.sdk.openadsdk.core.video.renderview.SSRenderTextureView;
import com.bytedance.sdk.openadsdk.core.widget.C4778d;
import com.bytedance.sdk.openadsdk.core.widget.C4781e;
import com.bytedance.sdk.openadsdk.core.widget.RoundImageView;
import com.bytedance.sdk.openadsdk.p174j.C4959e;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.utils.C5482t;
import com.bytedance.sdk.openadsdk.utils.C5486x;
import com.bytedance.sdk.openadsdk.utils.HandlerC5446ah;
import com.mopub.common.AdType;
import com.p094a.p095a.p096a.p097a.p098a.AbstractC3234c;
import com.p094a.p095a.p096a.p097a.p098a.C3235d;
import java.lang.ref.WeakReference;
import java.util.EnumSet;
/* renamed from: com.bytedance.sdk.openadsdk.core.video.nativevideo.h */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/nativevideo/h.class */
public class C4743h implements AbstractC4717b, AbstractC4750a, C4778d.AbstractC4780a, C4781e.AbstractC4784b, HandlerC5446ah.AbstractC5447a {

    /* renamed from: A */
    C4781e f17342A;

    /* renamed from: B */
    AbstractC4723d f17343B;

    /* renamed from: C */
    boolean f17344C;

    /* renamed from: D */
    AbstractC3234c f17345D;

    /* renamed from: E */
    AbstractC4719c f17346E;

    /* renamed from: F */
    C4494a f17347F;

    /* renamed from: G */
    C4494a f17348G;

    /* renamed from: H */
    TTDrawFeedAd.DrawVideoListener f17349H;

    /* renamed from: I */
    boolean f17350I;

    /* renamed from: J */
    private View f17351J;

    /* renamed from: K */
    private TextView f17352K;

    /* renamed from: L */
    private TextView f17353L;

    /* renamed from: M */
    private NativeVideoTsView.AbstractC4715b f17354M;

    /* renamed from: N */
    private final String f17355N;

    /* renamed from: a */
    View f17356a;

    /* renamed from: b */
    AbstractC4751b f17357b;

    /* renamed from: c */
    ImageView f17358c;

    /* renamed from: d */
    View f17359d;

    /* renamed from: e */
    View f17360e;

    /* renamed from: f */
    ImageView f17361f;

    /* renamed from: g */
    ViewStub f17362g;

    /* renamed from: h */
    View f17363h;

    /* renamed from: i */
    ImageView f17364i;

    /* renamed from: j */
    View f17365j;

    /* renamed from: k */
    RoundImageView f17366k;

    /* renamed from: l */
    TextView f17367l;

    /* renamed from: m */
    TextView f17368m;

    /* renamed from: n */
    TextView f17369n;

    /* renamed from: o */
    ProgressBar f17370o;

    /* renamed from: p */
    ViewStub f17371p;

    /* renamed from: q */
    int f17372q;

    /* renamed from: r */
    int f17373r;

    /* renamed from: s */
    int f17374s;

    /* renamed from: t */
    int f17375t;

    /* renamed from: u */
    boolean f17376u;

    /* renamed from: v */
    boolean f17377v;

    /* renamed from: w */
    int f17378w;

    /* renamed from: x */
    EnumSet<AbstractC4717b.EnumC4718a> f17379x;

    /* renamed from: y */
    C4557i f17380y;

    /* renamed from: z */
    Context f17381z;

    public C4743h(Context context, View view, boolean z, EnumSet<AbstractC4717b.EnumC4718a> enumSet, C4557i c4557i, AbstractC4719c abstractC4719c) {
        this(context, view, z, enumSet, c4557i, abstractC4719c, true);
    }

    public C4743h(Context context, View view, boolean z, EnumSet<AbstractC4717b.EnumC4718a> enumSet, C4557i c4557i, AbstractC4719c abstractC4719c, boolean z2) {
        this.f17376u = true;
        this.f17344C = true;
        this.f17350I = true;
        this.f17355N = Build.MODEL;
        if (this instanceof C4735g) {
            return;
        }
        this.f17381z = C4600n.m34815a().getApplicationContext();
        m34205c(z2);
        this.f17356a = view;
        this.f17376u = z;
        this.f17379x = enumSet == null ? EnumSet.noneOf(AbstractC4717b.EnumC4718a.class) : enumSet;
        this.f17346E = abstractC4719c;
        this.f17380y = c4557i;
        mo34208c(8);
        mo34228a(context, this.f17356a);
        mo34234a();
        m34194n();
    }

    /* renamed from: A */
    private boolean m34235A() {
        return "C8817D".equals(this.f17355N) || "M5".equals(this.f17355N) || "R7t".equals(this.f17355N);
    }

    /* renamed from: b */
    private void m34213b(View view, Context context) {
        ViewStub viewStub;
        if (view == null || context == null || (viewStub = this.f17371p) == null || viewStub.getParent() == null || this.f17351J != null) {
            return;
        }
        this.f17371p.inflate();
        this.f17351J = view.findViewById(C5486x.m32066e(context, "tt_video_ad_cover_center_layout_draw"));
        this.f17352K = (TextView) view.findViewById(C5486x.m32066e(context, "tt_video_ad_button_draw"));
        this.f17353L = (TextView) view.findViewById(C5486x.m32066e(context, "tt_video_ad_replay"));
    }

    /* renamed from: e */
    private int m34200e(int i) {
        if (this.f17374s <= 0 || this.f17375t <= 0) {
            return 0;
        }
        int dimensionPixelSize = this.f17381z.getResources().getDimensionPixelSize(C5486x.m32063h(this.f17381z, "tt_video_container_maxheight"));
        int dimensionPixelSize2 = this.f17381z.getResources().getDimensionPixelSize(C5486x.m32063h(this.f17381z, "tt_video_container_minheight"));
        int i2 = (int) (this.f17375t * ((i * 1.0f) / this.f17374s));
        if (i2 > dimensionPixelSize) {
            i2 = dimensionPixelSize;
        } else if (i2 < dimensionPixelSize2) {
            i2 = dimensionPixelSize2;
        }
        return i2;
    }

    /* renamed from: f */
    private void m34198f(int i) {
        C5443ag.m32228a(this.f17365j, i);
        C5443ag.m32228a(this.f17351J, i);
    }

    /* renamed from: y */
    private boolean m34183y() {
        return C4557i.m35180d(this.f17380y) && this.f17380y.m35134z() == null && this.f17380y.m35169h() == 1;
    }

    /* renamed from: z */
    private void m34182z() {
        if (this.f17381z == null || this.f17356a == null) {
            return;
        }
        View view = new View(this.f17381z) { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.h.3
            /* renamed from: a */
            private void m34178a() {
            }

            /* renamed from: b */
            private void m34177b() {
            }

            @Override // android.view.View
            protected void onDetachedFromWindow() {
                super.onDetachedFromWindow();
                m34177b();
            }

            @Override // android.view.View
            public void onFinishTemporaryDetach() {
                super.onFinishTemporaryDetach();
                m34178a();
            }

            @Override // android.view.View
            public void onStartTemporaryDetach() {
                super.onStartTemporaryDetach();
                m34177b();
            }
        };
        View view2 = this.f17356a;
        if (!(view2 instanceof ViewGroup)) {
            return;
        }
        ((ViewGroup) view2).addView(view, 0, new RelativeLayout.LayoutParams(0, 0));
    }

    /* renamed from: a */
    public void mo34234a() {
        this.f17357b.mo34166a(this);
        this.f17358c.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.h.4
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (C4743h.this.m34190r()) {
                    if (C4743h.this.f17369n != null && C4743h.this.f17369n.getVisibility() == 0) {
                        return;
                    }
                    C4743h.this.f17343B.mo34323a(C4743h.this, view);
                }
            }
        });
    }

    /* renamed from: a */
    public void mo34233a(int i) {
        C5478q.m32109c("Progress", "setSeekProgress-percent=".concat(String.valueOf(i)));
        C5443ag.m32228a((View) this.f17370o, 0);
        this.f17370o.setProgress(i);
    }

    /* renamed from: a */
    public void m34232a(int i, int i2) {
        int i3 = i;
        if (i == -1) {
            i3 = C5443ag.m32218c(this.f17381z);
        }
        if (i3 <= 0) {
            return;
        }
        this.f17372q = i3;
        if (mo34196i() || mo33995h() || this.f17379x.contains(AbstractC4717b.EnumC4718a.fixedSize)) {
            this.f17373r = i2;
        } else {
            this.f17373r = m34200e(i3);
        }
        m34214b(this.f17372q, this.f17373r);
    }

    /* renamed from: a */
    public void mo34230a(long j) {
    }

    /* renamed from: a */
    public void mo34229a(long j, long j2) {
    }

    /* renamed from: a */
    public void mo34228a(Context context, View view) {
        SSRenderTextureView sSRenderTextureView;
        long currentTimeMillis = System.currentTimeMillis();
        String m32309a = C5438af.m32309a(context);
        if (m32309a == null) {
            m32309a = "0";
        }
        boolean z = Build.VERSION.SDK_INT != 20 || Integer.valueOf(m32309a).intValue() >= 1572864;
        if (m34235A() || !z || !C4570g.m35020b().m34992p() || Build.VERSION.SDK_INT < 14) {
            sSRenderTextureView = new SSRenderSurfaceView(this.f17381z);
            C5478q.m32112b("NewLiveViewLayout", "use SurfaceView......");
        } else {
            sSRenderTextureView = new SSRenderTextureView(this.f17381z);
            C5478q.m32112b("NewLiveViewLayout", "use TextureView......");
        }
        if (view instanceof RelativeLayout) {
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(13);
            ((RelativeLayout) view).addView(sSRenderTextureView, 0, layoutParams);
        }
        C5443ag.m32228a(sSRenderTextureView, 8);
        this.f17357b = (AbstractC4751b) sSRenderTextureView;
        this.f17358c = (ImageView) view.findViewById(C5486x.m32066e(context, "tt_video_play"));
        this.f17370o = (ProgressBar) view.findViewById(C5486x.m32066e(context, "tt_video_progress"));
        this.f17359d = view.findViewById(C5486x.m32066e(context, "tt_video_loading_retry_layout"));
        this.f17360e = view.findViewById(C5486x.m32066e(context, "tt_video_loading_progress"));
        this.f17361f = (ImageView) view.findViewById(C5486x.m32066e(context, "tt_video_loading_cover_image"));
        this.f17362g = (ViewStub) view.findViewById(C5486x.m32066e(context, "tt_video_ad_cover"));
        this.f17371p = (ViewStub) view.findViewById(C5486x.m32066e(context, "tt_video_draw_layout_viewStub"));
        C5478q.m32112b("useTime", "NativeVideoLayout**findViews use time :" + (System.currentTimeMillis() - currentTimeMillis));
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.renderview.AbstractC4750a
    /* renamed from: a */
    public void mo34173a(SurfaceTexture surfaceTexture, int i, int i2) {
        this.f17377v = true;
        if (m34190r()) {
            this.f17343B.mo34326a(this, surfaceTexture);
        }
    }

    /* renamed from: a */
    public void mo32205a(Message message) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.renderview.AbstractC4750a
    /* renamed from: a */
    public void mo34172a(SurfaceHolder surfaceHolder) {
        if (surfaceHolder != this.f17357b.getHolder()) {
            return;
        }
        this.f17377v = true;
        if (!m34190r()) {
            return;
        }
        this.f17343B.mo34325a(this, surfaceHolder);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.renderview.AbstractC4750a
    /* renamed from: a */
    public void mo34171a(SurfaceHolder surfaceHolder, int i, int i2, int i3) {
        if (surfaceHolder == this.f17357b.getHolder() && m34190r()) {
            this.f17343B.mo34324a(this, surfaceHolder, i, i2, i3);
        }
    }

    /* renamed from: a */
    public void m34227a(View view, Context context) {
        ViewStub viewStub;
        if (view == null || context == null || (viewStub = this.f17362g) == null || viewStub.getParent() == null || this.f17363h != null) {
            return;
        }
        this.f17363h = this.f17362g.inflate();
        this.f17364i = (ImageView) view.findViewById(C5486x.m32066e(context, "tt_video_ad_finish_cover_image"));
        this.f17365j = view.findViewById(C5486x.m32066e(context, "tt_video_ad_cover_center_layout"));
        this.f17366k = (RoundImageView) view.findViewById(C5486x.m32066e(context, "tt_video_ad_logo_image"));
        this.f17367l = (TextView) view.findViewById(C5486x.m32066e(context, "tt_video_btn_ad_image_tv"));
        this.f17368m = (TextView) view.findViewById(C5486x.m32066e(context, "tt_video_ad_name"));
        this.f17369n = (TextView) view.findViewById(C5486x.m32066e(context, "tt_video_ad_button"));
    }

    /* renamed from: a */
    public void mo34011a(View view, boolean z) {
    }

    /* renamed from: a */
    public void mo34226a(ViewGroup viewGroup) {
    }

    /* renamed from: a */
    public void m34225a(TTDrawFeedAd.DrawVideoListener drawVideoListener) {
        this.f17349H = drawVideoListener;
        C4494a c4494a = this.f17347F;
        if (c4494a != null) {
            c4494a.m35491a(drawVideoListener);
        }
    }

    /* renamed from: a */
    public void mo34224a(C4557i c4557i, WeakReference<Context> weakReference, boolean z) {
        C4557i c4557i2;
        C4557i c4557i3;
        C4557i c4557i4;
        if (c4557i == null) {
            return;
        }
        mo34218a(false, this.f17376u);
        m34227a(this.f17356a, C4600n.m34815a());
        View view = this.f17363h;
        if (view != null) {
            C5443ag.m32228a(view, 0);
        }
        ImageView imageView = this.f17364i;
        if (imageView != null) {
            C5443ag.m32228a((View) imageView, 0);
        }
        if (C5438af.m32291b(this.f17380y)) {
            m34213b(this.f17356a, C4600n.m34815a());
            C5443ag.m32228a(this.f17365j, 8);
            C5443ag.m32228a((View) this.f17364i, 0);
            C5443ag.m32228a(this.f17351J, 0);
            C5443ag.m32228a((View) this.f17352K, 0);
            C5443ag.m32228a((View) this.f17353L, 0);
            if (this.f17353L != null && C5482t.m32088c(C4600n.m34815a()) == 0) {
                C5443ag.m32228a((View) this.f17353L, 8);
            }
            View view2 = this.f17363h;
            if (view2 != null) {
                view2.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.h.5
                    @Override // android.view.View.OnClickListener
                    public void onClick(View view3) {
                        if (C4743h.this.f17346E != null) {
                            ((AbstractC4716a) C4743h.this.f17346E).mo34267h();
                            if (C4743h.this.f17349H == null) {
                                return;
                            }
                            C4743h.this.f17349H.onClickRetry();
                        }
                    }
                });
            }
            if (this.f17364i != null && (c4557i4 = this.f17380y) != null && c4557i4.m35245B() != null && this.f17380y.m35245B().m35044g() != null) {
                C4709b.m34400a((long) this.f17380y.m35245B().m35049e(), this.f17380y.m35245B().m35043h(), new C4709b.AbstractC4711b() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.h.6
                    @Override // com.bytedance.sdk.openadsdk.core.video.p162e.C4709b.AbstractC4711b
                    /* renamed from: a */
                    public void mo34176a(Bitmap bitmap) {
                        if (bitmap == null) {
                            C4959e.m33434c().m33439a(C4743h.this.f17380y.m35245B().m35044g(), C4743h.this.f17364i);
                            return;
                        }
                        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) C4743h.this.f17364i.getLayoutParams();
                        if (bitmap.getWidth() > bitmap.getHeight()) {
                            layoutParams.width = C5443ag.m32218c(C4600n.m34815a());
                            layoutParams.height = (bitmap.getHeight() * C5443ag.m32218c(C4600n.m34815a())) / bitmap.getWidth();
                            layoutParams.addRule(13);
                            C4743h.this.f17364i.setLayoutParams(layoutParams);
                        }
                        C4743h.this.f17364i.setImageBitmap(bitmap);
                    }
                });
            }
        } else {
            C5443ag.m32228a(this.f17365j, 0);
            if (this.f17364i != null && (c4557i3 = this.f17380y) != null && c4557i3.m35245B() != null && this.f17380y.m35245B().m35044g() != null) {
                C4959e.m33434c().m33439a(this.f17380y.m35245B().m35044g(), this.f17364i);
            }
        }
        String m35244C = !TextUtils.isEmpty(c4557i.m35244C()) ? c4557i.m35244C() : !TextUtils.isEmpty(c4557i.m35234M()) ? c4557i.m35234M() : !TextUtils.isEmpty(c4557i.m35233N()) ? c4557i.m35233N() : "";
        if (this.f17366k != null && (c4557i2 = this.f17380y) != null && c4557i2.m35242E() != null && this.f17380y.m35242E().m35254a() != null) {
            C5443ag.m32228a((View) this.f17366k, 0);
            C5443ag.m32228a((View) this.f17367l, 4);
            C4959e.m33434c().m33439a(this.f17380y.m35242E().m35254a(), this.f17366k);
            if (m34183y()) {
                this.f17366k.setOnClickListener(this.f17348G);
                this.f17366k.setOnTouchListener(this.f17348G);
            } else {
                this.f17366k.setOnClickListener(this.f17347F);
                this.f17366k.setOnTouchListener(this.f17347F);
            }
        } else if (!TextUtils.isEmpty(m35244C)) {
            C5443ag.m32228a((View) this.f17366k, 4);
            C5443ag.m32228a((View) this.f17367l, 0);
            TextView textView = this.f17367l;
            if (textView != null) {
                textView.setText(m35244C.substring(0, 1));
                if (m34183y()) {
                    this.f17367l.setOnClickListener(this.f17348G);
                    this.f17367l.setOnTouchListener(this.f17348G);
                } else {
                    this.f17367l.setOnClickListener(this.f17347F);
                    this.f17367l.setOnTouchListener(this.f17347F);
                }
            }
        }
        if (this.f17368m != null && !TextUtils.isEmpty(m35244C)) {
            this.f17368m.setText(m35244C);
        }
        C5443ag.m32228a((View) this.f17368m, 0);
        C5443ag.m32228a((View) this.f17369n, 0);
        String m35232O = c4557i.m35232O();
        String str = m35232O;
        if (TextUtils.isEmpty(m35232O)) {
            int m35243D = c4557i.m35243D();
            str = (m35243D == 2 || m35243D == 3) ? C5486x.m32071a(this.f17381z, "tt_video_mobile_go_detail") : m35243D != 4 ? m35243D != 5 ? C5486x.m32071a(this.f17381z, "tt_video_mobile_go_detail") : C5486x.m32071a(this.f17381z, "tt_video_dial_phone") : C5486x.m32071a(this.f17381z, "tt_video_download_apk");
        }
        TextView textView2 = this.f17369n;
        if (textView2 != null) {
            textView2.setText(str);
            this.f17369n.setOnClickListener(this.f17347F);
            this.f17369n.setOnTouchListener(this.f17347F);
        }
        TextView textView3 = this.f17352K;
        if (textView3 != null) {
            textView3.setText(str);
            this.f17352K.setOnClickListener(this.f17347F);
            this.f17352K.setOnTouchListener(this.f17347F);
        }
        if (this.f17350I) {
            return;
        }
        m34198f(4);
    }

    /* renamed from: a */
    public void m34223a(NativeVideoTsView.AbstractC4715b abstractC4715b) {
        this.f17354M = abstractC4715b;
    }

    /* renamed from: a */
    public void m34222a(AbstractC4716a abstractC4716a) {
        if (abstractC4716a instanceof AbstractC4723d) {
            this.f17343B = (AbstractC4723d) abstractC4716a;
            m34192p();
        }
    }

    /* renamed from: a */
    public void mo34220a(String str) {
    }

    /* renamed from: a */
    public void mo34219a(boolean z) {
    }

    /* renamed from: a */
    public void mo34218a(boolean z, boolean z2) {
        C5443ag.m32228a((View) this.f17370o, z ? 0 : 8);
        C5443ag.m32228a((View) this.f17358c, 8);
    }

    /* renamed from: a */
    public void mo34217a(boolean z, boolean z2, boolean z3) {
        int i = 0;
        C5443ag.m32228a((View) this.f17370o, 0);
        ImageView imageView = this.f17358c;
        if (!z || this.f17359d.getVisibility() == 0) {
            i = 8;
        }
        C5443ag.m32228a((View) imageView, i);
    }

    /* renamed from: a */
    public boolean m34231a(int i, C4565o c4565o, boolean z) {
        C4781e c4781e = this.f17342A;
        return c4781e == null || c4781e.m34006a(i, c4565o, z);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.renderview.AbstractC4750a
    /* renamed from: a */
    public boolean mo34174a(SurfaceTexture surfaceTexture) {
        this.f17377v = false;
        if (m34190r()) {
            this.f17343B.mo34301b(this, surfaceTexture);
            return true;
        }
        return true;
    }

    /* renamed from: b */
    public void mo34216b() {
    }

    /* renamed from: b */
    public void m34214b(int i, int i2) {
        ViewGroup.LayoutParams layoutParams = this.f17356a.getLayoutParams();
        if (i == -1 || i == -2 || i > 0) {
            layoutParams.width = i;
        }
        if (i2 == -1 || i2 == -2 || i2 > 0) {
            layoutParams.height = i2;
        }
        this.f17356a.setLayoutParams(layoutParams);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.renderview.AbstractC4750a
    /* renamed from: b */
    public void mo34170b(SurfaceTexture surfaceTexture) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.renderview.AbstractC4750a
    /* renamed from: b */
    public void mo34169b(SurfaceTexture surfaceTexture, int i, int i2) {
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.renderview.AbstractC4750a
    /* renamed from: b */
    public void mo34168b(SurfaceHolder surfaceHolder) {
        if (surfaceHolder != this.f17357b.getHolder()) {
            return;
        }
        this.f17377v = false;
        if (!m34190r()) {
            return;
        }
        this.f17343B.mo34300b(this, surfaceHolder);
    }

    /* renamed from: b */
    public void mo34212b(ViewGroup viewGroup) {
    }

    /* renamed from: b */
    public void mo34211b(boolean z) {
    }

    /* renamed from: b */
    public void m34210b(boolean z, boolean z2) {
        ImageView imageView = this.f17358c;
        if (imageView != null) {
            if (z) {
                imageView.setImageResource(C5486x.m32067d(this.f17381z, "tt_play_movebar_textpage"));
            } else {
                imageView.setImageResource(C5486x.m32067d(this.f17381z, "tt_stop_movebar_textpage"));
            }
        }
    }

    /* renamed from: b */
    public boolean mo34215b(int i) {
        return false;
    }

    /* renamed from: c */
    public void mo34209c() {
    }

    /* renamed from: c */
    public void mo34208c(int i) {
        this.f17378w = i;
        C5443ag.m32228a(this.f17356a, i);
    }

    /* renamed from: c */
    public void m34207c(int i, int i2) {
        this.f17374s = i;
        this.f17375t = i2;
    }

    /* renamed from: c */
    public void m34206c(ViewGroup viewGroup) {
        if (viewGroup == null) {
            return;
        }
        if (this.f17356a.getParent() != null) {
            ((ViewGroup) this.f17356a.getParent()).removeView(this.f17356a);
        }
        viewGroup.addView(this.f17356a);
        mo34208c(0);
    }

    /* renamed from: c */
    public void m34205c(boolean z) {
        this.f17344C = z;
        if (z) {
            C4494a c4494a = this.f17347F;
            if (c4494a != null) {
                c4494a.m35490a(true);
            }
            C4494a c4494a2 = this.f17348G;
            if (c4494a2 == null) {
                return;
            }
            c4494a2.m35490a(true);
            return;
        }
        C4494a c4494a3 = this.f17347F;
        if (c4494a3 != null) {
            c4494a3.m35490a(false);
        }
        C4494a c4494a4 = this.f17348G;
        if (c4494a4 == null) {
            return;
        }
        c4494a4.m35490a(false);
    }

    /* renamed from: d */
    public void mo34204d() {
        C4557i c4557i;
        C5443ag.m32208g(this.f17359d);
        C5443ag.m32208g(this.f17360e);
        if (this.f17361f != null && (c4557i = this.f17380y) != null && c4557i.m35245B() != null && this.f17380y.m35245B().m35044g() != null) {
            C5443ag.m32208g(this.f17361f);
            C4959e.m33434c().m33439a(this.f17380y.m35245B().m35044g(), this.f17361f);
        }
        if (this.f17358c.getVisibility() == 0) {
            C5443ag.m32228a((View) this.f17358c, 8);
        }
    }

    /* renamed from: d */
    public void m34203d(int i) {
        C5443ag.m32228a(this.f17356a, 0);
        AbstractC4751b abstractC4751b = this.f17357b;
        if (abstractC4751b != null) {
            abstractC4751b.setVisibility(i);
        }
    }

    /* renamed from: d */
    public void m34202d(boolean z) {
        this.f17350I = z;
    }

    /* renamed from: e */
    public void mo34201e() {
        mo34218a(false, this.f17376u);
        m34186v();
    }

    /* renamed from: f */
    public void mo34199f() {
        C5443ag.m32210f(this.f17359d);
    }

    /* renamed from: g */
    public void mo34197g() {
        this.f17370o.setProgress(0);
        this.f17370o.setSecondaryProgress(0);
        mo34208c(8);
        if (m34184x()) {
            this.f17357b.setVisibility(8);
        }
        ImageView imageView = this.f17361f;
        if (imageView != null) {
            imageView.setImageDrawable(null);
        }
        mo34208c(8);
        C5443ag.m32228a(this.f17363h, 8);
        C5443ag.m32228a((View) this.f17364i, 8);
        C5443ag.m32228a(this.f17365j, 8);
        C5443ag.m32228a((View) this.f17366k, 8);
        C5443ag.m32228a((View) this.f17367l, 8);
        C5443ag.m32228a((View) this.f17368m, 8);
        C4781e c4781e = this.f17342A;
        if (c4781e != null) {
            c4781e.m34000a(true);
        }
    }

    /* renamed from: h */
    public boolean mo33995h() {
        return false;
    }

    /* renamed from: i */
    public boolean mo34196i() {
        return this.f17376u;
    }

    /* renamed from: j */
    public void mo33994j() {
        mo34218a(true, false);
    }

    /* renamed from: k */
    public boolean mo34195k() {
        return this.f17377v;
    }

    /* renamed from: l */
    public void mo34010l() {
    }

    /* renamed from: m */
    public boolean mo34009m() {
        C4781e c4781e = this.f17342A;
        return c4781e != null && c4781e.m34008a();
    }

    /* renamed from: n */
    public void m34194n() {
        int i;
        C4494a c4494a;
        String str = this.f17344C ? "embeded_ad" : "embeded_ad_landingpage";
        if (C5438af.m32291b(this.f17380y)) {
            str = this.f17344C ? "draw_ad" : "draw_ad_landingpage";
            i = 6;
        } else if (C5438af.m32279d(this.f17380y)) {
            str = AdType.REWARDED_VIDEO;
            i = 7;
        } else if (C5438af.m32274e(this.f17380y)) {
            str = "fullscreen_interstitial_ad";
            i = 5;
        } else {
            i = 1;
        }
        if (this.f17380y.m35243D() == 4) {
            this.f17345D = C3235d.m39089a(this.f17381z, this.f17380y, str);
        }
        m34182z();
        C4494a c4494a2 = new C4494a(this.f17381z, this.f17380y, str, i);
        this.f17347F = c4494a2;
        c4494a2.m35488b(true);
        if (this.f17344C) {
            this.f17347F.m35490a(true);
        } else {
            this.f17347F.m35490a(false);
            this.f17347F.m35486c(true);
        }
        this.f17347F.m35475a(this.f17346E);
        this.f17347F.m35470d(true);
        AbstractC3234c abstractC3234c = this.f17345D;
        if (abstractC3234c != null && (c4494a = this.f17347F) != null) {
            c4494a.m35480a(abstractC3234c);
        }
        if (m34183y()) {
            C4494a c4494a3 = new C4494a(this.f17381z, this.f17380y, str, i) { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.h.1
                @Override // com.bytedance.sdk.openadsdk.core.p151b.C4494a
                /* renamed from: b */
                public boolean mo34181b() {
                    boolean m34008a = C4743h.this.f17342A != null ? C4743h.this.f17342A.m34008a() : false;
                    StringBuilder sb = new StringBuilder("isVisible=");
                    sb.append(m34008a);
                    sb.append(",mPlayBtn.getVisibility() == VISIBLE->");
                    sb.append(C4743h.this.f17358c.getVisibility() == 0);
                    C5478q.m32109c("ClickCreativeListener", sb.toString());
                    return m34008a || C4743h.this.f17358c.getVisibility() == 0;
                }

                @Override // com.bytedance.sdk.openadsdk.core.p151b.C4494a
                /* renamed from: c */
                public boolean mo34180c() {
                    if (C4743h.this.f17363h == null || C4743h.this.f17363h.getVisibility() != 0) {
                        if (C4743h.this.f17365j != null && C4743h.this.f17365j.getVisibility() == 0) {
                            return true;
                        }
                        if (C4743h.this.f17366k != null && C4743h.this.f17366k.getVisibility() == 0) {
                            return true;
                        }
                        return C4743h.this.f17367l != null && C4743h.this.f17367l.getVisibility() == 0;
                    }
                    return true;
                }
            };
            this.f17348G = c4494a3;
            c4494a3.m35477a(new C4495b.AbstractC4496a() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.h.2
                @Override // com.bytedance.sdk.openadsdk.core.p151b.C4495b.AbstractC4496a
                /* renamed from: a */
                public void mo34179a(View view, int i2) {
                    if (C4743h.this.f17354M != null) {
                        C4743h.this.f17354M.mo34243a(view, i2);
                    }
                }
            });
            this.f17348G.m35488b(true);
            if (this.f17344C) {
                this.f17348G.m35490a(true);
            } else {
                this.f17348G.m35490a(false);
            }
            this.f17348G.m35475a(this.f17346E);
            this.f17348G.m35470d(true);
            AbstractC3234c abstractC3234c2 = this.f17345D;
            if (abstractC3234c2 != null) {
                this.f17348G.m35480a(abstractC3234c2);
            }
            View view = this.f17356a;
            if (view == null) {
                return;
            }
            view.setOnClickListener(this.f17348G);
            this.f17356a.setOnTouchListener(this.f17348G);
        }
    }

    /* renamed from: o */
    public AbstractC4751b m34193o() {
        return this.f17357b;
    }

    /* renamed from: p */
    void m34192p() {
        if (this.f17343B == null || this.f17342A != null) {
            return;
        }
        long currentTimeMillis = System.currentTimeMillis();
        C4781e c4781e = new C4781e();
        this.f17342A = c4781e;
        c4781e.m34005a(this.f17381z, this.f17356a);
        this.f17342A.m34002a(this.f17343B, this);
        C5478q.m32112b("useTime", "mVideoTrafficTipLayout use time :" + (System.currentTimeMillis() - currentTimeMillis));
    }

    /* renamed from: q */
    public void m34191q() {
        C4781e c4781e = this.f17342A;
        if (c4781e != null) {
            c4781e.m34000a(false);
        }
    }

    /* renamed from: r */
    public boolean m34190r() {
        if (this.f17343B == null) {
            C5478q.m32106e("NewLiveViewLayout", "callback is null");
            return false;
        }
        return true;
    }

    /* renamed from: s */
    public View m34189s() {
        return this.f17356a;
    }

    /* renamed from: t */
    public void m34188t() {
        C5443ag.m32208g(this.f17359d);
        C5443ag.m32208g(this.f17360e);
        if (this.f17358c.getVisibility() == 0) {
            C5443ag.m32228a((View) this.f17358c, 8);
        }
    }

    /* renamed from: u */
    public void m34187u() {
        C5443ag.m32228a(this.f17356a, 0);
        AbstractC4751b abstractC4751b = this.f17357b;
        if (abstractC4751b != null) {
            View view = abstractC4751b.getView();
            if (view instanceof TextureView) {
                ViewParent parent = view.getParent();
                if (parent instanceof ViewGroup) {
                    ViewGroup viewGroup = (ViewGroup) parent;
                    int indexOfChild = viewGroup.indexOfChild(view);
                    viewGroup.removeView(view);
                    viewGroup.addView(view, indexOfChild);
                }
            }
            C5443ag.m32228a(view, 8);
            C5443ag.m32228a(view, 0);
        }
    }

    /* renamed from: v */
    public void m34186v() {
        C5443ag.m32228a(this.f17363h, 8);
        C5443ag.m32228a((View) this.f17364i, 8);
        C5443ag.m32228a(this.f17365j, 8);
        C5443ag.m32228a((View) this.f17366k, 8);
        C5443ag.m32228a((View) this.f17367l, 8);
        C5443ag.m32228a((View) this.f17368m, 8);
        C5443ag.m32228a((View) this.f17369n, 8);
    }

    /* renamed from: w */
    public void m34185w() {
        C5443ag.m32210f(this.f17359d);
        C5443ag.m32210f(this.f17360e);
        ImageView imageView = this.f17361f;
        if (imageView != null) {
            C5443ag.m32210f(imageView);
        }
    }

    /* renamed from: x */
    public boolean m34184x() {
        return !this.f17379x.contains(AbstractC4717b.EnumC4718a.alwayShowMediaView) || this.f17376u;
    }
}
