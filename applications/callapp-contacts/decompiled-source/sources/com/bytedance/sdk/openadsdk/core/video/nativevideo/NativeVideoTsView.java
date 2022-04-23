package com.bytedance.sdk.openadsdk.core.video.nativevideo;

import android.content.Context;
import android.os.Build;
import android.os.Message;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewStub;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.bytedance.sdk.openadsdk.TTDrawFeedAd;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.g;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.c;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.f;
import com.bytedance.sdk.openadsdk.d.e;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.ag;
import com.bytedance.sdk.openadsdk.utils.ah;
import com.bytedance.sdk.openadsdk.utils.q;
import com.bytedance.sdk.openadsdk.utils.t;
import com.bytedance.sdk.openadsdk.utils.x;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView.class */
public class NativeVideoTsView extends FrameLayout implements c.a, f.a, ah.a {
    private c.b A;
    private final AtomicBoolean B;
    private boolean C;
    private AtomicBoolean D;

    /* renamed from: a  reason: collision with root package name */
    protected final i f9212a;

    /* renamed from: b  reason: collision with root package name */
    protected c f9213b;

    /* renamed from: c  reason: collision with root package name */
    protected FrameLayout f9214c;

    /* renamed from: d  reason: collision with root package name */
    protected boolean f9215d;
    protected RelativeLayout e;
    protected ImageView f;
    protected ImageView g;
    protected ImageView h;
    protected boolean i;
    protected String j;
    protected int k;
    AtomicBoolean l;
    boolean m;
    public a n;
    private final Context o;
    private ViewGroup p;
    private boolean q;
    private boolean r;
    private boolean s;
    private boolean t;
    private boolean u;
    private long v;
    private final ah w;
    private boolean x;
    private final String y;
    private ViewStub z;

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$a.class */
    public interface a {
        void a(boolean z, long j, long j2, long j3, boolean z2);
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$b.class */
    public interface b {
        void a(View view, int i);
    }

    public NativeVideoTsView(Context context, i iVar) {
        this(context, iVar, false);
    }

    public NativeVideoTsView(Context context, i iVar, String str, boolean z, boolean z2) {
        this(context, iVar, false, str, z, z2);
    }

    public NativeVideoTsView(Context context, i iVar, boolean z) {
        this(context, iVar, z, "embeded_ad", false, false);
    }

    public NativeVideoTsView(Context context, i iVar, boolean z, String str, boolean z2, boolean z3) {
        super(context);
        this.q = true;
        this.f9215d = true;
        this.r = false;
        this.s = false;
        this.t = true;
        this.i = true;
        this.j = "embeded_ad";
        this.k = 50;
        this.u = true;
        this.l = new AtomicBoolean(false);
        this.w = new ah(this);
        this.x = false;
        this.y = Build.MODEL;
        this.m = false;
        this.B = new AtomicBoolean(false);
        this.C = true;
        this.D = new AtomicBoolean(false);
        this.j = str;
        this.o = context;
        this.f9212a = iVar;
        this.r = z;
        setContentDescription("NativeVideoAdView");
        this.s = z2;
        this.t = z3;
        c();
        f();
    }

    private View a(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        frameLayout.setId(x.e(this.o, "tt_native_video_layout"));
        layoutParams.gravity = 17;
        frameLayout.setVisibility(8);
        this.p = frameLayout;
        FrameLayout frameLayout2 = new FrameLayout(context);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
        frameLayout2.setId(x.e(this.o, "tt_native_video_frame"));
        layoutParams2.gravity = 17;
        frameLayout2.setLayoutParams(layoutParams2);
        frameLayout.addView(frameLayout2);
        this.f9214c = frameLayout2;
        ViewStub viewStub = new ViewStub(context);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -1);
        viewStub.setId(x.e(this.o, "tt_native_video_img_cover_viewStub"));
        viewStub.setLayoutResource(x.f(this.o, "tt_native_video_img_cover_layout"));
        viewStub.setLayoutParams(layoutParams3);
        frameLayout.addView(viewStub);
        this.z = viewStub;
        return frameLayout;
    }

    private void c(boolean z) {
        if (this.f9212a != null && this.f9213b != null) {
            boolean r = r();
            s();
            if (r && this.f9213b.w()) {
                q.b("NativeVideoAdView", "changeVideoStatus---isFromDetailPage()=" + r + "，mNativeVideoController.isPlayComplete()=" + this.f9213b.w());
                b(true);
                e();
            } else if (!z || this.f9213b.w() || this.f9213b.t()) {
                if (this.f9213b.u() != null && this.f9213b.u().g()) {
                    this.f9213b.i();
                    c.b bVar = this.A;
                    if (bVar != null) {
                        bVar.d();
                    }
                }
            } else if (this.f9213b.u() == null || !this.f9213b.u().i()) {
                if (this.q && this.f9213b.u() == null) {
                    if (!this.B.get()) {
                        this.B.set(true);
                    }
                    this.D.set(false);
                    n();
                }
            } else if (this.q) {
                if ("ALP-AL00".equals(this.y)) {
                    this.f9213b.k();
                } else {
                    ((f) this.f9213b).g(r);
                }
                c.b bVar2 = this.A;
                if (bVar2 != null) {
                    bVar2.c();
                }
            }
        }
    }

    private void e() {
        a(0L, 0);
        this.A = null;
    }

    private void f() {
        addView(a(this.o));
        l();
    }

    private void k() {
        if ((this instanceof NativeDrawVideoTsView) && !this.l.get() && g.b().q() != null) {
            this.h.setImageBitmap(g.b().q());
            RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.h.getLayoutParams();
            int a2 = (int) ag.a(getContext(), this.k);
            layoutParams.width = a2;
            layoutParams.height = a2;
            this.h.setLayoutParams(layoutParams);
            this.l.set(true);
        }
    }

    private void l() {
        this.f9213b = new f(this.o, this.f9214c, this.f9212a, this.j, !w(), this.s, this.t);
        m();
        this.p.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                ((f) NativeVideoTsView.this.f9213b).a(NativeVideoTsView.this.p.getWidth(), NativeVideoTsView.this.p.getHeight());
                NativeVideoTsView.this.p.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            }
        });
    }

    private void m() {
        c cVar = this.f9213b;
        if (cVar != null) {
            cVar.e(this.q);
            ((f) this.f9213b).a((f.a) this);
            this.f9213b.a(this);
        }
    }

    private void n() {
        c cVar = this.f9213b;
        if (cVar == null) {
            l();
        } else if ((cVar instanceof f) && !w()) {
            ((f) this.f9213b).g();
        }
        if (this.f9213b != null && this.B.get()) {
            this.B.set(false);
            c();
            if (i()) {
                ag.a((View) this.e, 8);
                ImageView imageView = this.g;
                if (imageView != null) {
                    ag.a((View) imageView, 8);
                }
                i iVar = this.f9212a;
                if (!(iVar == null || iVar.B() == null)) {
                    this.f9213b.a(this.f9212a.B().h(), this.f9212a.P(), this.p.getWidth(), this.p.getHeight(), null, this.f9212a.S(), 0L, v());
                }
                this.f9213b.d(false);
            } else if (this.f9213b.w()) {
                q.b("NativeVideoAdView", "attachTask-mNativeVideoController.isPlayComplete()=" + this.f9213b.w());
                b(true);
            } else {
                q.c("NativeVideoAdView", "attachTask.......mRlImgCover.....VISIBLE");
                h();
                ag.a((View) this.e, 0);
            }
        }
    }

    private void o() {
        this.n = null;
        j();
        p();
    }

    private void p() {
        if (!this.B.get()) {
            this.B.set(true);
            c cVar = this.f9213b;
            if (cVar != null) {
                cVar.a(true);
            }
        }
        this.D.set(false);
    }

    private void q() {
        c(com.bytedance.sdk.openadsdk.core.x.a(this, 50, 5));
        this.w.sendEmptyMessageDelayed(1, 500L);
    }

    private boolean r() {
        if (w()) {
            return false;
        }
        return com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_native_video_data", "key_video_is_from_detail_page", false) || com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_native_video_data", "key_video_isfromvideodetailpage", false);
    }

    private void s() {
        if (!w()) {
            com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_native_video_data", "key_video_isfromvideodetailpage", Boolean.FALSE);
            com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_native_video_data", "key_video_is_from_detail_page", Boolean.FALSE);
        }
    }

    private void t() {
        if (!(this.f9213b == null || w() || !com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_native_video_data", "key_video_is_update_flag", false))) {
            boolean a2 = com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_native_video_data", "key_native_video_complete", false);
            long a3 = com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_native_video_data", "key_video_current_play_position", 0L);
            long a4 = com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_native_video_data", "key_video_total_play_duration", this.f9213b.p());
            long a5 = com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_native_video_data", "key_video_duration", this.f9213b.s());
            this.f9213b.d(a2);
            this.f9213b.a(a3);
            this.f9213b.b(a4);
            this.f9213b.c(a5);
            com.bytedance.sdk.openadsdk.multipro.d.a.a("sp_multi_native_video_data", "key_video_is_update_flag", Boolean.FALSE);
            q.e("MultiProcess", "onResumeFeedNativeVideoControllerData-isComplete=" + a2 + ",position=" + a3 + ",totalPlayDuration=" + a4 + ",duration=" + a5);
        }
    }

    private boolean u() {
        return 2 == n.h().c(af.d(this.f9212a.S()));
    }

    private boolean v() {
        return this.f9215d;
    }

    private boolean w() {
        return this.r;
    }

    private void x() {
        ag.f(this.g);
        ag.f(this.e);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c.a
    public void a() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.f.a
    public void a(int i) {
        c();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c.a
    public void a(long j, int i) {
        c.b bVar = this.A;
        if (bVar != null) {
            bVar.d_();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c.a
    public void a(long j, long j2) {
        c.b bVar = this.A;
        if (bVar != null) {
            bVar.a(j, j2);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.utils.ah.a
    public void a(Message message) {
        if (message.what == 1) {
            q();
        }
    }

    protected void a(boolean z) {
        if (this.g == null) {
            this.g = new ImageView(getContext());
            if (g.b().q() != null) {
                this.g.setImageBitmap(g.b().q());
            } else {
                this.g.setImageResource(x.d(n.a(), "tt_new_play_video"));
            }
            this.g.setScaleType(ImageView.ScaleType.FIT_XY);
            int a2 = (int) ag.a(getContext(), this.k);
            int a3 = (int) ag.a(getContext(), 10.0f);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(a2, a2);
            layoutParams.gravity = 17;
            layoutParams.rightMargin = a3;
            layoutParams.bottomMargin = a3;
            this.p.addView(this.g, layoutParams);
        }
        if (z) {
            this.g.setVisibility(0);
        } else {
            this.g.setVisibility(8);
        }
    }

    public boolean a(long j, boolean z, boolean z2) {
        c cVar;
        this.p.setVisibility(0);
        if (this.f9213b == null) {
            this.f9213b = new f(this.o, this.f9214c, this.f9212a, this.j, this.s, this.t);
            m();
        }
        this.v = j;
        if (!w()) {
            return true;
        }
        this.f9213b.b(false);
        i iVar = this.f9212a;
        boolean z3 = false;
        if (iVar != null) {
            z3 = false;
            if (iVar.B() != null) {
                z3 = this.f9213b.a(this.f9212a.B().h(), this.f9212a.P(), this.p.getWidth(), this.p.getHeight(), null, this.f9212a.S(), j, v());
            }
        }
        int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
        if (((i > 0 && !z && !z2) || (i > 0 && z)) && (cVar = this.f9213b) != null) {
            e.a(this.o, this.f9212a, this.j, "feed_continue", cVar.p(), this.f9213b.r(), af.a(this.f9212a, this.f9213b.o(), this.f9213b.u()));
        }
        return z3;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c.a
    public void b() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.c.a
    public void b(long j, int i) {
    }

    public void b(boolean z) {
        c cVar = this.f9213b;
        if (cVar != null) {
            cVar.d(z);
            h v = this.f9213b.v();
            if (v != null) {
                v.w();
                View s = v.s();
                if (s != null) {
                    if (s.getParent() != null) {
                        ((ViewGroup) s.getParent()).removeView(s);
                    }
                    s.setVisibility(0);
                    addView(s);
                    v.a(this.f9212a, new WeakReference<>(this.o), false);
                }
            }
        }
    }

    public void c() {
        i iVar = this.f9212a;
        if (iVar != null) {
            int d2 = af.d(iVar.S());
            int c2 = n.h().c(d2);
            if (c2 == 1) {
                this.q = t.d(this.o);
            } else if (c2 == 2) {
                this.q = t.e(this.o) || t.d(this.o);
            } else if (c2 == 3) {
                this.q = false;
            } else if (c2 == 4) {
                this.m = true;
            }
            if (!this.r) {
                this.f9215d = n.h().a(d2);
            } else {
                this.f9215d = false;
            }
            if ("splash_ad".equals(this.j)) {
                this.q = true;
                this.f9215d = true;
            }
            c cVar = this.f9213b;
            if (cVar != null) {
                cVar.e(this.q);
            }
        }
    }

    public void d() {
        if (t.c(n.a()) != 0) {
            if (this.f9213b.u() != null) {
                if (this.f9213b.u().g()) {
                    c(false);
                    ah ahVar = this.w;
                    if (ahVar != null) {
                        ahVar.removeMessages(1);
                    }
                    a(true);
                    return;
                } else if (this.f9213b.u().i()) {
                    this.q = true;
                    c(true);
                    c();
                    ah ahVar2 = this.w;
                    if (ahVar2 != null) {
                        ahVar2.sendEmptyMessageDelayed(1, 500L);
                    }
                    a(false);
                    return;
                }
            }
            if (!i() && !this.D.get()) {
                this.D.set(true);
                x();
                i iVar = this.f9212a;
                if (!(iVar == null || iVar.B() == null)) {
                    this.f9213b.a(this.f9212a.B().h(), this.f9212a.P(), this.p.getWidth(), this.p.getHeight(), null, this.f9212a.S(), this.v, v());
                }
                ah ahVar3 = this.w;
                if (ahVar3 != null) {
                    ahVar3.sendEmptyMessageDelayed(1, 500L);
                }
                a(false);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.f.a
    public void g() {
        c.b bVar = this.A;
        if (bVar != null) {
            bVar.e();
        }
    }

    public c getNativeVideoController() {
        return this.f9213b;
    }

    public void h() {
        ViewStub viewStub;
        if (this.o != null && (viewStub = this.z) != null && viewStub.getParent() != null && this.f9212a != null && this.e == null) {
            this.e = (RelativeLayout) this.z.inflate();
            this.f = (ImageView) findViewById(x.e(this.o, "tt_native_video_img_id"));
            ImageView imageView = (ImageView) findViewById(x.e(this.o, "tt_native_video_play"));
            this.h = imageView;
            if (this.i) {
                ag.a((View) imageView, 0);
            }
            if (!(this.f9212a.B() == null || this.f9212a.B().g() == null)) {
                com.bytedance.sdk.openadsdk.j.e.c().a(this.f9212a.B().g(), this.f);
            }
            k();
        }
    }

    public boolean i() {
        return this.q;
    }

    public void j() {
        h v;
        c cVar = this.f9213b;
        if (cVar != null && (v = cVar.v()) != null) {
            v.e();
            View s = v.s();
            if (s != null) {
                s.setVisibility(8);
                if (s.getParent() != null) {
                    ((ViewGroup) s.getParent()).removeView(s);
                }
            }
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        n();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        o();
    }

    @Override // android.view.View
    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
        n();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        a aVar;
        c cVar;
        if (!(this.r || (aVar = this.n) == null || (cVar = this.f9213b) == null)) {
            aVar.a(cVar.w(), this.f9213b.s(), this.f9213b.p(), this.f9213b.n(), this.q);
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
        o();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        c cVar;
        c cVar2;
        c cVar3;
        c cVar4;
        super.onWindowFocusChanged(z);
        t();
        if (!r() || (cVar4 = this.f9213b) == null || !cVar4.w()) {
            c();
            if (w() || !i() || (cVar2 = this.f9213b) == null || cVar2.t()) {
                if (i()) {
                    return;
                }
                if (!z && (cVar = this.f9213b) != null && cVar.u() != null && this.f9213b.u().g()) {
                    this.w.removeMessages(1);
                    c(false);
                } else if (z) {
                    this.w.obtainMessage(1).sendToTarget();
                }
            } else if (this.w == null) {
            } else {
                if (!z || (cVar3 = this.f9213b) == null || cVar3.w()) {
                    this.w.removeMessages(1);
                    c(false);
                    return;
                }
                this.w.obtainMessage(1).sendToTarget();
            }
        } else {
            s();
            ag.a((View) this.e, 8);
            b(true);
            e();
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        c cVar;
        i iVar;
        c cVar2;
        c cVar3;
        super.onWindowVisibilityChanged(i);
        t();
        if (this.C) {
            this.C = i == 0;
        }
        if (!r() || (cVar3 = this.f9213b) == null || !cVar3.w()) {
            c();
            if (!w() && i() && (cVar = this.f9213b) != null && !cVar.t() && (iVar = this.f9212a) != null) {
                if (this.u) {
                    if (iVar.B() != null) {
                        this.f9213b.a(this.f9212a.B().h(), this.f9212a.P(), this.p.getWidth(), this.p.getHeight(), null, this.f9212a.S(), this.v, v());
                    }
                    this.u = false;
                    ag.a((View) this.e, 8);
                }
                if (i == 0 && this.w != null && (cVar2 = this.f9213b) != null && !cVar2.w()) {
                    this.w.obtainMessage(1).sendToTarget();
                    return;
                }
                return;
            }
            return;
        }
        s();
        ag.a((View) this.e, 8);
        b(true);
        e();
    }

    public void setControllerStatusCallBack(a aVar) {
        this.n = aVar;
    }

    public void setDrawVideoListener(TTDrawFeedAd.DrawVideoListener drawVideoListener) {
        c cVar = this.f9213b;
        if (cVar != null) {
            ((f) cVar).a(drawVideoListener);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0038, code lost:
        if (u() == false) goto L_0x004a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0047, code lost:
        if (com.bytedance.sdk.openadsdk.utils.t.d(r4.o) == false) goto L_0x004a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x004a, code lost:
        r7 = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setIsAutoPlay(boolean r5) {
        /*
            r4 = this;
            r0 = r4
            boolean r0 = r0.x
            if (r0 == 0) goto L_0x0008
            return
        L_0x0008:
            r0 = r4
            com.bytedance.sdk.openadsdk.core.e.i r0 = r0.f9212a
            java.lang.String r0 = r0.S()
            int r0 = com.bytedance.sdk.openadsdk.utils.af.d(r0)
            r6 = r0
            com.bytedance.sdk.openadsdk.core.h.e r0 = com.bytedance.sdk.openadsdk.core.n.h()
            r1 = r6
            int r0 = r0.c(r1)
            r6 = r0
            r0 = r5
            r7 = r0
            r0 = r5
            if (r0 == 0) goto L_0x004c
            r0 = r5
            r7 = r0
            r0 = r6
            r1 = 4
            if (r0 == r1) goto L_0x004c
            r0 = r4
            android.content.Context r0 = r0.o
            boolean r0 = com.bytedance.sdk.openadsdk.utils.t.e(r0)
            if (r0 == 0) goto L_0x003e
            r0 = r5
            r7 = r0
            r0 = r4
            boolean r0 = r0.u()
            if (r0 != 0) goto L_0x004c
            goto L_0x004a
        L_0x003e:
            r0 = r5
            r7 = r0
            r0 = r4
            android.content.Context r0 = r0.o
            boolean r0 = com.bytedance.sdk.openadsdk.utils.t.d(r0)
            if (r0 != 0) goto L_0x004c
        L_0x004a:
            r0 = 0
            r7 = r0
        L_0x004c:
            r0 = r4
            r1 = r7
            r0.q = r1
            r0 = r4
            com.bytedance.sdk.openadsdk.core.video.nativevideo.c r0 = r0.f9213b
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0064
            r0 = r8
            r1 = r7
            r0.e(r1)
        L_0x0064:
            r0 = r4
            boolean r0 = r0.q
            if (r0 != 0) goto L_0x00aa
            r0 = r4
            r0.h()
            r0 = r4
            android.widget.RelativeLayout r0 = r0.e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x00b3
            r0 = r8
            r1 = 0
            com.bytedance.sdk.openadsdk.utils.ag.a(r0, r1)
            r0 = r4
            com.bytedance.sdk.openadsdk.core.e.i r0 = r0.f9212a
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L_0x00b3
            r0 = r8
            com.bytedance.sdk.openadsdk.core.e.o r0 = r0.B()
            if (r0 == 0) goto L_0x00b3
            com.bytedance.sdk.openadsdk.j.e r0 = com.bytedance.sdk.openadsdk.j.e.c()
            r1 = r4
            com.bytedance.sdk.openadsdk.core.e.i r1 = r1.f9212a
            com.bytedance.sdk.openadsdk.core.e.o r1 = r1.B()
            java.lang.String r1 = r1.g()
            r2 = r4
            android.widget.ImageView r2 = r2.f
            r0.a(r1, r2)
            goto L_0x00b3
        L_0x00aa:
            r0 = r4
            android.widget.RelativeLayout r0 = r0.e
            r1 = 8
            com.bytedance.sdk.openadsdk.utils.ag.a(r0, r1)
        L_0x00b3:
            r0 = r4
            r1 = 1
            r0.x = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.setIsAutoPlay(boolean):void");
    }

    public void setIsQuiet(boolean z) {
        this.f9215d = z;
        c cVar = this.f9213b;
        if (cVar != null) {
            cVar.c(z);
        }
    }

    public void setNativeVideoAdListener(c.a aVar) {
        c cVar = this.f9213b;
        if (cVar != null) {
            cVar.a(aVar);
        }
    }

    public void setNativeVideoController(c cVar) {
        this.f9213b = cVar;
    }

    public void setNeedNativeVideoPlayBtnVisible(boolean z) {
        this.i = z;
    }

    public void setVideoAdClickListener(b bVar) {
        c cVar = this.f9213b;
        if (cVar != null) {
            ((f) cVar).a(bVar);
        }
    }

    public void setVideoAdInteractionListener(c.b bVar) {
        this.A = bVar;
    }

    public void setVideoAdLoadListener(c.AbstractC0169c cVar) {
        c cVar2 = this.f9213b;
        if (cVar2 != null) {
            cVar2.a(cVar);
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (i == 4 || i == 8) {
            p();
        }
    }
}
