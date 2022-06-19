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
import com.bytedance.sdk.openadsdk.core.C4570g;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.C4801x;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c;
import com.bytedance.sdk.openadsdk.core.video.nativevideo.C4725f;
import com.bytedance.sdk.openadsdk.multipro.p192d.C5106a;
import com.bytedance.sdk.openadsdk.p164d.C4811e;
import com.bytedance.sdk.openadsdk.p174j.C4959e;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.utils.C5482t;
import com.bytedance.sdk.openadsdk.utils.C5486x;
import com.bytedance.sdk.openadsdk.utils.HandlerC5446ah;
import java.lang.ref.WeakReference;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView.class */
public class NativeVideoTsView extends FrameLayout implements AbstractC4719c.AbstractC4720a, C4725f.AbstractC4734a, HandlerC5446ah.AbstractC5447a {

    /* renamed from: A */
    private AbstractC4719c.AbstractC4721b f17193A;

    /* renamed from: B */
    private final AtomicBoolean f17194B;

    /* renamed from: C */
    private boolean f17195C;

    /* renamed from: D */
    private AtomicBoolean f17196D;

    /* renamed from: a */
    protected final C4557i f17197a;

    /* renamed from: b */
    protected AbstractC4719c f17198b;

    /* renamed from: c */
    protected FrameLayout f17199c;

    /* renamed from: d */
    protected boolean f17200d;

    /* renamed from: e */
    protected RelativeLayout f17201e;

    /* renamed from: f */
    protected ImageView f17202f;

    /* renamed from: g */
    protected ImageView f17203g;

    /* renamed from: h */
    protected ImageView f17204h;

    /* renamed from: i */
    protected boolean f17205i;

    /* renamed from: j */
    protected String f17206j;

    /* renamed from: k */
    protected int f17207k;

    /* renamed from: l */
    AtomicBoolean f17208l;

    /* renamed from: m */
    boolean f17209m;

    /* renamed from: n */
    public AbstractC4714a f17210n;

    /* renamed from: o */
    private final Context f17211o;

    /* renamed from: p */
    private ViewGroup f17212p;

    /* renamed from: q */
    private boolean f17213q;

    /* renamed from: r */
    private boolean f17214r;

    /* renamed from: s */
    private boolean f17215s;

    /* renamed from: t */
    private boolean f17216t;

    /* renamed from: u */
    private boolean f17217u;

    /* renamed from: v */
    private long f17218v;

    /* renamed from: w */
    private final HandlerC5446ah f17219w;

    /* renamed from: x */
    private boolean f17220x;

    /* renamed from: y */
    private final String f17221y;

    /* renamed from: z */
    private ViewStub f17222z;

    /* renamed from: com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$a.class */
    public interface AbstractC4714a {
        /* renamed from: a */
        void mo34366a(boolean z, long j, long j2, long j3, boolean z2);
    }

    /* renamed from: com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/video/nativevideo/NativeVideoTsView$b.class */
    public interface AbstractC4715b {
        /* renamed from: a */
        void mo34243a(View view, int i);
    }

    public NativeVideoTsView(Context context, C4557i c4557i) {
        this(context, c4557i, false);
    }

    public NativeVideoTsView(Context context, C4557i c4557i, String str, boolean z, boolean z2) {
        this(context, c4557i, false, str, z, z2);
    }

    public NativeVideoTsView(Context context, C4557i c4557i, boolean z) {
        this(context, c4557i, z, "embeded_ad", false, false);
    }

    public NativeVideoTsView(Context context, C4557i c4557i, boolean z, String str, boolean z2, boolean z3) {
        super(context);
        this.f17213q = true;
        this.f17200d = true;
        this.f17214r = false;
        this.f17215s = false;
        this.f17216t = true;
        this.f17205i = true;
        this.f17206j = "embeded_ad";
        this.f17207k = 50;
        this.f17217u = true;
        this.f17208l = new AtomicBoolean(false);
        this.f17219w = new HandlerC5446ah(this);
        this.f17220x = false;
        this.f17221y = Build.MODEL;
        this.f17209m = false;
        this.f17194B = new AtomicBoolean(false);
        this.f17195C = true;
        this.f17196D = new AtomicBoolean(false);
        this.f17206j = str;
        this.f17211o = context;
        this.f17197a = c4557i;
        this.f17214r = z;
        setContentDescription("NativeVideoAdView");
        this.f17215s = z2;
        this.f17216t = z3;
        mo34388c();
        m34384f();
    }

    /* renamed from: a */
    private View m34392a(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
        frameLayout.setId(C5486x.m32066e(this.f17211o, "tt_native_video_layout"));
        layoutParams.gravity = 17;
        frameLayout.setVisibility(8);
        this.f17212p = frameLayout;
        FrameLayout frameLayout2 = new FrameLayout(context);
        FrameLayout.LayoutParams layoutParams2 = new FrameLayout.LayoutParams(-1, -1);
        frameLayout2.setId(C5486x.m32066e(this.f17211o, "tt_native_video_frame"));
        layoutParams2.gravity = 17;
        frameLayout2.setLayoutParams(layoutParams2);
        frameLayout.addView(frameLayout2);
        this.f17199c = frameLayout2;
        ViewStub viewStub = new ViewStub(context);
        FrameLayout.LayoutParams layoutParams3 = new FrameLayout.LayoutParams(-1, -1);
        viewStub.setId(C5486x.m32066e(this.f17211o, "tt_native_video_img_cover_viewStub"));
        viewStub.setLayoutResource(C5486x.m32065f(this.f17211o, "tt_native_video_img_cover_layout"));
        viewStub.setLayoutParams(layoutParams3);
        frameLayout.addView(viewStub);
        this.f17222z = viewStub;
        return frameLayout;
    }

    /* renamed from: c */
    private void m34387c(boolean z) {
        if (this.f17197a == null || this.f17198b == null) {
            return;
        }
        boolean m34373r = m34373r();
        m34372s();
        if (m34373r && this.f17198b.mo34247w()) {
            C5478q.m32112b("NativeVideoAdView", "changeVideoStatus---isFromDetailPage()=" + m34373r + "，mNativeVideoController.isPlayComplete()=" + this.f17198b.mo34247w());
            m34389b(true);
            m34385e();
        } else if (!z || this.f17198b.mo34247w() || this.f17198b.mo34250t()) {
            if (this.f17198b.mo34249u() == null || !this.f17198b.mo34249u().m34423g()) {
                return;
            }
            this.f17198b.mo34264i();
            AbstractC4719c.AbstractC4721b abstractC4721b = this.f17193A;
            if (abstractC4721b == null) {
                return;
            }
            abstractC4721b.mo34358d();
        } else if (this.f17198b.mo34249u() == null || !this.f17198b.mo34249u().m34421i()) {
            if (!this.f17213q || this.f17198b.mo34249u() != null) {
                return;
            }
            if (!this.f17194B.get()) {
                this.f17194B.set(true);
            }
            this.f17196D.set(false);
            m34377n();
        } else if (!this.f17213q) {
        } else {
            if ("ALP-AL00".equals(this.f17221y)) {
                this.f17198b.mo34260k();
            } else {
                ((C4725f) this.f17198b).m34268g(m34373r);
            }
            AbstractC4719c.AbstractC4721b abstractC4721b2 = this.f17193A;
            if (abstractC4721b2 == null) {
                return;
            }
            abstractC4721b2.mo34359c();
        }
    }

    /* renamed from: e */
    private void m34385e() {
        mo34364a(0L, 0);
        this.f17193A = null;
    }

    /* renamed from: f */
    private void m34384f() {
        addView(m34392a(this.f17211o));
        m34379l();
    }

    /* renamed from: k */
    private void m34380k() {
        if (!(this instanceof NativeDrawVideoTsView) || this.f17208l.get() || C4570g.m35020b().m34991q() == null) {
            return;
        }
        this.f17204h.setImageBitmap(C4570g.m35020b().m34991q());
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) this.f17204h.getLayoutParams();
        int m32232a = (int) C5443ag.m32232a(getContext(), this.f17207k);
        layoutParams.width = m32232a;
        layoutParams.height = m32232a;
        this.f17204h.setLayoutParams(layoutParams);
        this.f17208l.set(true);
    }

    /* renamed from: l */
    private void m34379l() {
        this.f17198b = new C4725f(this.f17211o, this.f17199c, this.f17197a, this.f17206j, !m34368w(), this.f17215s, this.f17216t);
        m34378m();
        this.f17212p.getViewTreeObserver().addOnGlobalLayoutListener(new ViewTreeObserver.OnGlobalLayoutListener() { // from class: com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.1
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                ((C4725f) NativeVideoTsView.this.f17198b).m34336a(NativeVideoTsView.this.f17212p.getWidth(), NativeVideoTsView.this.f17212p.getHeight());
                NativeVideoTsView.this.f17212p.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            }
        });
    }

    /* renamed from: m */
    private void m34378m() {
        AbstractC4719c abstractC4719c = this.f17198b;
        if (abstractC4719c == null) {
            return;
        }
        abstractC4719c.mo34275e(this.f17213q);
        ((C4725f) this.f17198b).m34317a((C4725f.AbstractC4734a) this);
        this.f17198b.mo34320a(this);
    }

    /* renamed from: n */
    private void m34377n() {
        AbstractC4719c abstractC4719c = this.f17198b;
        if (abstractC4719c == null) {
            m34379l();
        } else if ((abstractC4719c instanceof C4725f) && !m34368w()) {
            ((C4725f) this.f17198b).m34270g();
        }
        if (this.f17198b == null || !this.f17194B.get()) {
            return;
        }
        this.f17194B.set(false);
        mo34388c();
        if (m34382i()) {
            C5443ag.m32228a((View) this.f17201e, 8);
            ImageView imageView = this.f17203g;
            if (imageView != null) {
                C5443ag.m32228a((View) imageView, 8);
            }
            C4557i c4557i = this.f17197a;
            if (c4557i != null && c4557i.m35245B() != null) {
                this.f17198b.mo34310a(this.f17197a.m35245B().m35043h(), this.f17197a.m35231P(), this.f17212p.getWidth(), this.f17212p.getHeight(), null, this.f17197a.m35228S(), 0L, m34369v());
            }
            this.f17198b.mo34280d(false);
        } else if (!this.f17198b.mo34247w()) {
            C5478q.m32109c("NativeVideoAdView", "attachTask.......mRlImgCover.....VISIBLE");
            m34383h();
            C5443ag.m32228a((View) this.f17201e, 0);
        } else {
            C5478q.m32112b("NativeVideoAdView", "attachTask-mNativeVideoController.isPlayComplete()=" + this.f17198b.mo34247w());
            m34389b(true);
        }
    }

    /* renamed from: o */
    private void m34376o() {
        this.f17210n = null;
        m34381j();
        m34375p();
    }

    /* renamed from: p */
    private void m34375p() {
        if (!this.f17194B.get()) {
            this.f17194B.set(true);
            AbstractC4719c abstractC4719c = this.f17198b;
            if (abstractC4719c != null) {
                abstractC4719c.mo34308a(true);
            }
        }
        this.f17196D.set(false);
    }

    /* renamed from: q */
    private void m34374q() {
        m34387c(C4801x.m33911a(this, 50, 5));
        this.f17219w.sendEmptyMessageDelayed(1, 500L);
    }

    /* renamed from: r */
    private boolean m34373r() {
        if (m34368w()) {
            return false;
        }
        return C5106a.m33039a("sp_multi_native_video_data", "key_video_is_from_detail_page", false) || C5106a.m33039a("sp_multi_native_video_data", "key_video_isfromvideodetailpage", false);
    }

    /* renamed from: s */
    private void m34372s() {
        if (m34368w()) {
            return;
        }
        C5106a.m33045a("sp_multi_native_video_data", "key_video_isfromvideodetailpage", Boolean.FALSE);
        C5106a.m33045a("sp_multi_native_video_data", "key_video_is_from_detail_page", Boolean.FALSE);
    }

    /* renamed from: t */
    private void m34371t() {
        if (this.f17198b == null || m34368w() || !C5106a.m33039a("sp_multi_native_video_data", "key_video_is_update_flag", false)) {
            return;
        }
        boolean m33039a = C5106a.m33039a("sp_multi_native_video_data", "key_native_video_complete", false);
        long m33046a = C5106a.m33046a("sp_multi_native_video_data", "key_video_current_play_position", 0L);
        long m33046a2 = C5106a.m33046a("sp_multi_native_video_data", "key_video_total_play_duration", this.f17198b.mo34254p());
        long m33046a3 = C5106a.m33046a("sp_multi_native_video_data", "key_video_duration", this.f17198b.mo34251s());
        this.f17198b.mo34280d(m33039a);
        this.f17198b.mo34335a(m33046a);
        this.f17198b.mo34304b(m33046a2);
        this.f17198b.mo34291c(m33046a3);
        C5106a.m33045a("sp_multi_native_video_data", "key_video_is_update_flag", Boolean.FALSE);
        C5478q.m32106e("MultiProcess", "onResumeFeedNativeVideoControllerData-isComplete=" + m33039a + ",position=" + m33046a + ",totalPlayDuration=" + m33046a2 + ",duration=" + m33046a3);
    }

    /* renamed from: u */
    private boolean m34370u() {
        return 2 == C4600n.m34805h().m34902c(C5438af.m32278d(this.f17197a.m35228S()));
    }

    /* renamed from: v */
    private boolean m34369v() {
        return this.f17200d;
    }

    /* renamed from: w */
    private boolean m34368w() {
        return this.f17214r;
    }

    /* renamed from: x */
    private void m34367x() {
        C5443ag.m32210f(this.f17203g);
        C5443ag.m32210f(this.f17201e);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c.AbstractC4720a
    /* renamed from: a */
    public void mo34365a() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.C4725f.AbstractC4734a
    /* renamed from: a */
    public void mo34242a(int i) {
        mo34388c();
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c.AbstractC4720a
    /* renamed from: a */
    public void mo34364a(long j, int i) {
        AbstractC4719c.AbstractC4721b abstractC4721b = this.f17193A;
        if (abstractC4721b != null) {
            abstractC4721b.mo34357d_();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c.AbstractC4720a
    /* renamed from: a */
    public void mo34363a(long j, long j2) {
        AbstractC4719c.AbstractC4721b abstractC4721b = this.f17193A;
        if (abstractC4721b != null) {
            abstractC4721b.mo34360a(j, j2);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.utils.HandlerC5446ah.AbstractC5447a
    /* renamed from: a */
    public void mo32205a(Message message) {
        if (message.what != 1) {
            return;
        }
        m34374q();
    }

    /* renamed from: a */
    protected void mo34390a(boolean z) {
        if (this.f17203g == null) {
            this.f17203g = new ImageView(getContext());
            if (C4570g.m35020b().m34991q() != null) {
                this.f17203g.setImageBitmap(C4570g.m35020b().m34991q());
            } else {
                this.f17203g.setImageResource(C5486x.m32067d(C4600n.m34815a(), "tt_new_play_video"));
            }
            this.f17203g.setScaleType(ImageView.ScaleType.FIT_XY);
            int m32232a = (int) C5443ag.m32232a(getContext(), this.f17207k);
            int m32232a2 = (int) C5443ag.m32232a(getContext(), 10.0f);
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(m32232a, m32232a);
            layoutParams.gravity = 17;
            layoutParams.rightMargin = m32232a2;
            layoutParams.bottomMargin = m32232a2;
            this.f17212p.addView(this.f17203g, layoutParams);
        }
        if (z) {
            this.f17203g.setVisibility(0);
        } else {
            this.f17203g.setVisibility(8);
        }
    }

    /* renamed from: a */
    public boolean m34393a(long j, boolean z, boolean z2) {
        AbstractC4719c abstractC4719c;
        this.f17212p.setVisibility(0);
        if (this.f17198b == null) {
            this.f17198b = new C4725f(this.f17211o, this.f17199c, this.f17197a, this.f17206j, this.f17215s, this.f17216t);
            m34378m();
        }
        this.f17218v = j;
        if (m34368w()) {
            this.f17198b.mo34295b(false);
            C4557i c4557i = this.f17197a;
            boolean z3 = false;
            if (c4557i != null) {
                z3 = false;
                if (c4557i.m35245B() != null) {
                    z3 = this.f17198b.mo34310a(this.f17197a.m35245B().m35043h(), this.f17197a.m35231P(), this.f17212p.getWidth(), this.f17212p.getHeight(), null, this.f17197a.m35228S(), j, m34369v());
                }
            }
            int i = (j > 0L ? 1 : (j == 0L ? 0 : -1));
            if (((i > 0 && !z && !z2) || (i > 0 && z)) && (abstractC4719c = this.f17198b) != null) {
                C4811e.m33880a(this.f17211o, this.f17197a, this.f17206j, "feed_continue", abstractC4719c.mo34254p(), this.f17198b.mo34252r(), C5438af.m32304a(this.f17197a, this.f17198b.mo34255o(), this.f17198b.mo34249u()));
            }
            return z3;
        }
        return true;
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c.AbstractC4720a
    /* renamed from: b */
    public void mo34362b() {
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.AbstractC4719c.AbstractC4720a
    /* renamed from: b */
    public void mo34361b(long j, int i) {
    }

    /* renamed from: b */
    public void m34389b(boolean z) {
        AbstractC4719c abstractC4719c = this.f17198b;
        if (abstractC4719c != null) {
            abstractC4719c.mo34280d(z);
            C4743h mo34248v = this.f17198b.mo34248v();
            if (mo34248v == null) {
                return;
            }
            mo34248v.m34185w();
            View m34189s = mo34248v.m34189s();
            if (m34189s == null) {
                return;
            }
            if (m34189s.getParent() != null) {
                ((ViewGroup) m34189s.getParent()).removeView(m34189s);
            }
            m34189s.setVisibility(0);
            addView(m34189s);
            mo34248v.mo34224a(this.f17197a, new WeakReference<>(this.f17211o), false);
        }
    }

    /* renamed from: c */
    public void mo34388c() {
        C4557i c4557i = this.f17197a;
        if (c4557i == null) {
            return;
        }
        int m32278d = C5438af.m32278d(c4557i.m35228S());
        int m34902c = C4600n.m34805h().m34902c(m32278d);
        if (m34902c == 1) {
            this.f17213q = C5482t.m32087d(this.f17211o);
        } else if (m34902c == 2) {
            this.f17213q = C5482t.m32086e(this.f17211o) || C5482t.m32087d(this.f17211o);
        } else if (m34902c == 3) {
            this.f17213q = false;
        } else if (m34902c == 4) {
            this.f17209m = true;
        }
        if (!this.f17214r) {
            this.f17200d = C4600n.m34805h().m34914a(m32278d);
        } else {
            this.f17200d = false;
        }
        if ("splash_ad".equals(this.f17206j)) {
            this.f17213q = true;
            this.f17200d = true;
        }
        AbstractC4719c abstractC4719c = this.f17198b;
        if (abstractC4719c == null) {
            return;
        }
        abstractC4719c.mo34275e(this.f17213q);
    }

    /* renamed from: d */
    public void mo34386d() {
        if (C5482t.m32088c(C4600n.m34815a()) == 0) {
            return;
        }
        if (this.f17198b.mo34249u() != null) {
            if (this.f17198b.mo34249u().m34423g()) {
                m34387c(false);
                HandlerC5446ah handlerC5446ah = this.f17219w;
                if (handlerC5446ah != null) {
                    handlerC5446ah.removeMessages(1);
                }
                mo34390a(true);
                return;
            } else if (this.f17198b.mo34249u().m34421i()) {
                this.f17213q = true;
                m34387c(true);
                mo34388c();
                HandlerC5446ah handlerC5446ah2 = this.f17219w;
                if (handlerC5446ah2 != null) {
                    handlerC5446ah2.sendEmptyMessageDelayed(1, 500L);
                }
                mo34390a(false);
                return;
            }
        }
        if (m34382i() || this.f17196D.get()) {
            return;
        }
        this.f17196D.set(true);
        m34367x();
        C4557i c4557i = this.f17197a;
        if (c4557i != null && c4557i.m35245B() != null) {
            this.f17198b.mo34310a(this.f17197a.m35245B().m35043h(), this.f17197a.m35231P(), this.f17212p.getWidth(), this.f17212p.getHeight(), null, this.f17197a.m35228S(), this.f17218v, m34369v());
        }
        HandlerC5446ah handlerC5446ah3 = this.f17219w;
        if (handlerC5446ah3 != null) {
            handlerC5446ah3.sendEmptyMessageDelayed(1, 500L);
        }
        mo34390a(false);
    }

    @Override // com.bytedance.sdk.openadsdk.core.video.nativevideo.C4725f.AbstractC4734a
    /* renamed from: g */
    public void mo34241g() {
        AbstractC4719c.AbstractC4721b abstractC4721b = this.f17193A;
        if (abstractC4721b != null) {
            abstractC4721b.mo34356e();
        }
    }

    public AbstractC4719c getNativeVideoController() {
        return this.f17198b;
    }

    /* renamed from: h */
    public void m34383h() {
        ViewStub viewStub;
        if (this.f17211o == null || (viewStub = this.f17222z) == null || viewStub.getParent() == null || this.f17197a == null || this.f17201e != null) {
            return;
        }
        this.f17201e = (RelativeLayout) this.f17222z.inflate();
        this.f17202f = (ImageView) findViewById(C5486x.m32066e(this.f17211o, "tt_native_video_img_id"));
        ImageView imageView = (ImageView) findViewById(C5486x.m32066e(this.f17211o, "tt_native_video_play"));
        this.f17204h = imageView;
        if (this.f17205i) {
            C5443ag.m32228a((View) imageView, 0);
        }
        if (this.f17197a.m35245B() != null && this.f17197a.m35245B().m35044g() != null) {
            C4959e.m33434c().m33439a(this.f17197a.m35245B().m35044g(), this.f17202f);
        }
        m34380k();
    }

    /* renamed from: i */
    public boolean m34382i() {
        return this.f17213q;
    }

    /* renamed from: j */
    public void m34381j() {
        C4743h mo34248v;
        AbstractC4719c abstractC4719c = this.f17198b;
        if (abstractC4719c == null || (mo34248v = abstractC4719c.mo34248v()) == null) {
            return;
        }
        mo34248v.mo34201e();
        View m34189s = mo34248v.m34189s();
        if (m34189s == null) {
            return;
        }
        m34189s.setVisibility(8);
        if (m34189s.getParent() == null) {
            return;
        }
        ((ViewGroup) m34189s.getParent()).removeView(m34189s);
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onAttachedToWindow() {
        super.onAttachedToWindow();
        m34377n();
    }

    @Override // android.view.ViewGroup, android.view.View
    protected void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        m34376o();
    }

    @Override // android.view.View
    public void onFinishTemporaryDetach() {
        super.onFinishTemporaryDetach();
        m34377n();
    }

    @Override // android.view.ViewGroup
    public boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        AbstractC4714a abstractC4714a;
        AbstractC4719c abstractC4719c;
        if (!this.f17214r && (abstractC4714a = this.f17210n) != null && (abstractC4719c = this.f17198b) != null) {
            abstractC4714a.mo34366a(abstractC4719c.mo34247w(), this.f17198b.mo34251s(), this.f17198b.mo34254p(), this.f17198b.mo34256n(), this.f17213q);
        }
        return super.onInterceptTouchEvent(motionEvent);
    }

    @Override // android.view.View
    public void onStartTemporaryDetach() {
        super.onStartTemporaryDetach();
        m34376o();
    }

    @Override // android.view.View
    public void onWindowFocusChanged(boolean z) {
        AbstractC4719c abstractC4719c;
        AbstractC4719c abstractC4719c2;
        AbstractC4719c abstractC4719c3;
        AbstractC4719c abstractC4719c4;
        super.onWindowFocusChanged(z);
        m34371t();
        if (m34373r() && (abstractC4719c4 = this.f17198b) != null && abstractC4719c4.mo34247w()) {
            m34372s();
            C5443ag.m32228a((View) this.f17201e, 8);
            m34389b(true);
            m34385e();
            return;
        }
        mo34388c();
        if (!m34368w() && m34382i() && (abstractC4719c2 = this.f17198b) != null && !abstractC4719c2.mo34250t()) {
            if (this.f17219w == null) {
                return;
            }
            if (z && (abstractC4719c3 = this.f17198b) != null && !abstractC4719c3.mo34247w()) {
                this.f17219w.obtainMessage(1).sendToTarget();
                return;
            }
            this.f17219w.removeMessages(1);
            m34387c(false);
        } else if (m34382i()) {
        } else {
            if (!z && (abstractC4719c = this.f17198b) != null && abstractC4719c.mo34249u() != null && this.f17198b.mo34249u().m34423g()) {
                this.f17219w.removeMessages(1);
                m34387c(false);
            } else if (!z) {
            } else {
                this.f17219w.obtainMessage(1).sendToTarget();
            }
        }
    }

    @Override // android.view.View
    public void onWindowVisibilityChanged(int i) {
        AbstractC4719c abstractC4719c;
        C4557i c4557i;
        AbstractC4719c abstractC4719c2;
        AbstractC4719c abstractC4719c3;
        super.onWindowVisibilityChanged(i);
        m34371t();
        if (this.f17195C) {
            this.f17195C = i == 0;
        }
        if (m34373r() && (abstractC4719c3 = this.f17198b) != null && abstractC4719c3.mo34247w()) {
            m34372s();
            C5443ag.m32228a((View) this.f17201e, 8);
            m34389b(true);
            m34385e();
            return;
        }
        mo34388c();
        if (m34368w() || !m34382i() || (abstractC4719c = this.f17198b) == null || abstractC4719c.mo34250t() || (c4557i = this.f17197a) == null) {
            return;
        }
        if (this.f17217u) {
            if (c4557i.m35245B() != null) {
                this.f17198b.mo34310a(this.f17197a.m35245B().m35043h(), this.f17197a.m35231P(), this.f17212p.getWidth(), this.f17212p.getHeight(), null, this.f17197a.m35228S(), this.f17218v, m34369v());
            }
            this.f17217u = false;
            C5443ag.m32228a((View) this.f17201e, 8);
        }
        if (i != 0 || this.f17219w == null || (abstractC4719c2 = this.f17198b) == null || abstractC4719c2.mo34247w()) {
            return;
        }
        this.f17219w.obtainMessage(1).sendToTarget();
    }

    public void setControllerStatusCallBack(AbstractC4714a abstractC4714a) {
        this.f17210n = abstractC4714a;
    }

    public void setDrawVideoListener(TTDrawFeedAd.DrawVideoListener drawVideoListener) {
        AbstractC4719c abstractC4719c = this.f17198b;
        if (abstractC4719c != null) {
            ((C4725f) abstractC4719c).m34330a(drawVideoListener);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0038, code lost:
        if (m34370u() == false) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0047, code lost:
        if (com.bytedance.sdk.openadsdk.utils.C5482t.m32087d(r4.f17211o) == false) goto L15;
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
            boolean r0 = r0.f17220x
            if (r0 == 0) goto L8
            return
        L8:
            r0 = r4
            com.bytedance.sdk.openadsdk.core.e.i r0 = r0.f17197a
            java.lang.String r0 = r0.m35228S()
            int r0 = com.bytedance.sdk.openadsdk.utils.C5438af.m32278d(r0)
            r6 = r0
            com.bytedance.sdk.openadsdk.core.h.e r0 = com.bytedance.sdk.openadsdk.core.C4600n.m34805h()
            r1 = r6
            int r0 = r0.m34902c(r1)
            r6 = r0
            r0 = r5
            r7 = r0
            r0 = r5
            if (r0 == 0) goto L4c
            r0 = r5
            r7 = r0
            r0 = r6
            r1 = 4
            if (r0 == r1) goto L4c
            r0 = r4
            android.content.Context r0 = r0.f17211o
            boolean r0 = com.bytedance.sdk.openadsdk.utils.C5482t.m32086e(r0)
            if (r0 == 0) goto L3e
            r0 = r5
            r7 = r0
            r0 = r4
            boolean r0 = r0.m34370u()
            if (r0 != 0) goto L4c
            goto L4a
        L3e:
            r0 = r5
            r7 = r0
            r0 = r4
            android.content.Context r0 = r0.f17211o
            boolean r0 = com.bytedance.sdk.openadsdk.utils.C5482t.m32087d(r0)
            if (r0 != 0) goto L4c
        L4a:
            r0 = 0
            r7 = r0
        L4c:
            r0 = r4
            r1 = r7
            r0.f17213q = r1
            r0 = r4
            com.bytedance.sdk.openadsdk.core.video.nativevideo.c r0 = r0.f17198b
            r8 = r0
            r0 = r8
            if (r0 == 0) goto L64
            r0 = r8
            r1 = r7
            r0.mo34275e(r1)
        L64:
            r0 = r4
            boolean r0 = r0.f17213q
            if (r0 != 0) goto Laa
            r0 = r4
            r0.m34383h()
            r0 = r4
            android.widget.RelativeLayout r0 = r0.f17201e
            r8 = r0
            r0 = r8
            if (r0 == 0) goto Lb3
            r0 = r8
            r1 = 0
            com.bytedance.sdk.openadsdk.utils.C5443ag.m32228a(r0, r1)
            r0 = r4
            com.bytedance.sdk.openadsdk.core.e.i r0 = r0.f17197a
            r8 = r0
            r0 = r8
            if (r0 == 0) goto Lb3
            r0 = r8
            com.bytedance.sdk.openadsdk.core.e.o r0 = r0.m35245B()
            if (r0 == 0) goto Lb3
            com.bytedance.sdk.openadsdk.j.e r0 = com.bytedance.sdk.openadsdk.p174j.C4959e.m33434c()
            r1 = r4
            com.bytedance.sdk.openadsdk.core.e.i r1 = r1.f17197a
            com.bytedance.sdk.openadsdk.core.e.o r1 = r1.m35245B()
            java.lang.String r1 = r1.m35044g()
            r2 = r4
            android.widget.ImageView r2 = r2.f17202f
            r0.m33439a(r1, r2)
            goto Lb3
        Laa:
            r0 = r4
            android.widget.RelativeLayout r0 = r0.f17201e
            r1 = 8
            com.bytedance.sdk.openadsdk.utils.C5443ag.m32228a(r0, r1)
        Lb3:
            r0 = r4
            r1 = 1
            r0.f17220x = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.video.nativevideo.NativeVideoTsView.setIsAutoPlay(boolean):void");
    }

    public void setIsQuiet(boolean z) {
        this.f17200d = z;
        AbstractC4719c abstractC4719c = this.f17198b;
        if (abstractC4719c != null) {
            abstractC4719c.mo34287c(z);
        }
    }

    public void setNativeVideoAdListener(AbstractC4719c.AbstractC4720a abstractC4720a) {
        AbstractC4719c abstractC4719c = this.f17198b;
        if (abstractC4719c != null) {
            abstractC4719c.mo34320a(abstractC4720a);
        }
    }

    public void setNativeVideoController(AbstractC4719c abstractC4719c) {
        this.f17198b = abstractC4719c;
    }

    public void setNeedNativeVideoPlayBtnVisible(boolean z) {
        this.f17205i = z;
    }

    public void setVideoAdClickListener(AbstractC4715b abstractC4715b) {
        AbstractC4719c abstractC4719c = this.f17198b;
        if (abstractC4719c != null) {
            ((C4725f) abstractC4719c).m34329a(abstractC4715b);
        }
    }

    public void setVideoAdInteractionListener(AbstractC4719c.AbstractC4721b abstractC4721b) {
        this.f17193A = abstractC4721b;
    }

    public void setVideoAdLoadListener(AbstractC4719c.AbstractC4722c abstractC4722c) {
        AbstractC4719c abstractC4719c = this.f17198b;
        if (abstractC4719c != null) {
            abstractC4719c.mo34319a(abstractC4722c);
        }
    }

    @Override // android.view.View
    public void setVisibility(int i) {
        super.setVisibility(i);
        if (i == 4 || i == 8) {
            m34375p();
        }
    }
}
