package com.bytedance.sdk.openadsdk.component.p147a;

import android.content.Context;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTBannerAd;
import com.bytedance.sdk.openadsdk.component.p147a.C4355b;
import com.bytedance.sdk.openadsdk.core.EmptyView;
import com.bytedance.sdk.openadsdk.core.p151b.C4494a;
import com.bytedance.sdk.openadsdk.core.p151b.C4495b;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.dislike.C4852b;
import com.bytedance.sdk.openadsdk.p164d.C4811e;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.utils.HandlerC5446ah;
import com.p094a.p095a.p096a.p097a.p098a.AbstractC3234c;
import com.p094a.p095a.p096a.p097a.p098a.C3235d;
import java.util.Map;
/* renamed from: com.bytedance.sdk.openadsdk.component.a.e */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/a/e.class */
public class C4365e implements TTBannerAd, HandlerC5446ah.AbstractC5447a {

    /* renamed from: a */
    private final C4362d f16036a;

    /* renamed from: b */
    private final C4354a f16037b;

    /* renamed from: c */
    private final Context f16038c;

    /* renamed from: d */
    private HandlerC5446ah f16039d;

    /* renamed from: e */
    private int f16040e;

    /* renamed from: f */
    private C4557i f16041f;

    /* renamed from: g */
    private TTBannerAd.AdInteractionListener f16042g;

    /* renamed from: h */
    private C4852b f16043h;

    /* renamed from: i */
    private final C4355b f16044i;

    /* renamed from: j */
    private AbstractC3234c f16045j;

    /* renamed from: k */
    private String f16046k = "banner_ad";

    /* renamed from: l */
    private AdSlot f16047l;

    public C4365e(Context context, C4354a c4354a, AdSlot adSlot) {
        this.f16038c = context;
        this.f16037b = c4354a;
        this.f16047l = adSlot;
        this.f16041f = c4354a.m35733b();
        C4362d c4362d = new C4362d(context);
        this.f16036a = c4362d;
        this.f16044i = C4355b.m35732a(context);
        m35696a(c4362d.m35712b(), c4354a);
    }

    /* renamed from: a */
    private AbstractC3234c m35693a(C4557i c4557i) {
        if (c4557i.m35243D() == 4) {
            return C3235d.m39089a(this.f16038c, c4557i, this.f16046k);
        }
        return null;
    }

    /* renamed from: a */
    private EmptyView m35699a(ViewGroup viewGroup) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof EmptyView) {
                return (EmptyView) childAt;
            }
        }
        return null;
    }

    /* renamed from: a */
    private void m35700a() {
        this.f16044i.m35730a(this.f16047l, new C4355b.AbstractC4360a() { // from class: com.bytedance.sdk.openadsdk.component.a.e.1
            @Override // com.bytedance.sdk.openadsdk.component.p147a.C4355b.AbstractC4360a
            /* renamed from: a */
            public void mo35684a() {
                C4365e.this.m35692b();
            }

            @Override // com.bytedance.sdk.openadsdk.component.p147a.C4355b.AbstractC4360a
            /* renamed from: a */
            public void mo35683a(C4354a c4354a) {
                C4365e.this.m35697a(c4354a);
                C4365e.this.f16036a.m35707e();
                C4365e.this.m35692b();
            }
        });
    }

    /* renamed from: a */
    private void m35698a(TTAdDislike.DislikeInteractionCallback dislikeInteractionCallback) {
        m35691b(dislikeInteractionCallback);
        this.f16036a.m35713a(this.f16043h);
    }

    /* renamed from: a */
    public void m35697a(C4354a c4354a) {
        if (this.f16036a.m35709c() == null || this.f16036a.m35706f()) {
            return;
        }
        m35696a(this.f16036a.m35709c(), c4354a);
    }

    /* renamed from: a */
    private void m35696a(C4361c c4361c, C4354a c4354a) {
        c4361c.m35724a(c4354a.m35734a());
        final C4557i m35733b = c4354a.m35733b();
        this.f16041f = m35733b;
        this.f16043h = new C4852b(this.f16038c, m35733b);
        c4361c.m35723a(m35733b);
        this.f16045j = m35693a(m35733b);
        C4811e.m33874a(m35733b);
        View m35699a = m35699a(c4361c);
        View view = m35699a;
        if (m35699a == null) {
            view = new EmptyView(this.f16038c, c4361c);
            c4361c.addView(view);
        }
        view.setCallback(new EmptyView.AbstractC4461a() { // from class: com.bytedance.sdk.openadsdk.component.a.e.2
            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.AbstractC4461a
            /* renamed from: a */
            public void mo34692a() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.AbstractC4461a
            /* renamed from: a */
            public void mo34691a(View view2) {
                C4365e.this.m35692b();
                C5478q.m32112b("TTBannerAd", "BANNER SHOW");
                C4811e.m33877a(C4365e.this.f16038c, m35733b, C4365e.this.f16046k, (Map<String, Object>) null);
                if (C4365e.this.f16042g != null) {
                    C4365e.this.f16042g.onAdShow(view2, m35733b.m35243D());
                }
                if (m35733b.m35222Y()) {
                    C5438af.m32303a(m35733b, view2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.AbstractC4461a
            /* renamed from: a */
            public void mo34690a(boolean z) {
                if (z) {
                    C4365e.this.m35692b();
                    C5478q.m32112b("TTBannerAd", "获得焦点，开始计时");
                    return;
                }
                C5478q.m32112b("TTBannerAd", "失去焦点，停止计时");
                C4365e.this.m35689c();
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.AbstractC4461a
            /* renamed from: b */
            public void mo34689b() {
                C4365e.this.m35689c();
            }
        });
        C4494a c4494a = new C4494a(this.f16038c, m35733b, this.f16046k, 2);
        c4494a.m35481a(c4361c);
        c4494a.m35472b(this.f16036a.m35708d());
        c4494a.m35480a(this.f16045j);
        c4494a.m35477a(new C4495b.AbstractC4496a() { // from class: com.bytedance.sdk.openadsdk.component.a.e.3
            @Override // com.bytedance.sdk.openadsdk.core.p151b.C4495b.AbstractC4496a
            /* renamed from: a */
            public void mo34179a(View view2, int i) {
                if (C4365e.this.f16042g != null) {
                    C4365e.this.f16042g.onAdClicked(view2, i);
                }
            }
        });
        c4361c.setOnClickListener(c4494a);
        c4361c.setOnTouchListener(c4494a);
        view.setNeedCheckingShow(true);
    }

    /* renamed from: b */
    public void m35692b() {
        HandlerC5446ah handlerC5446ah = this.f16039d;
        if (handlerC5446ah != null) {
            handlerC5446ah.removeCallbacksAndMessages(null);
            this.f16039d.sendEmptyMessageDelayed(1, this.f16040e);
        }
    }

    /* renamed from: b */
    private void m35691b(TTAdDislike.DislikeInteractionCallback dislikeInteractionCallback) {
        if (this.f16043h == null) {
            this.f16043h = new C4852b(this.f16038c, this.f16041f);
        }
        this.f16043h.setDislikeInteractionCallback(dislikeInteractionCallback);
    }

    /* renamed from: c */
    public void m35689c() {
        HandlerC5446ah handlerC5446ah = this.f16039d;
        if (handlerC5446ah != null) {
            handlerC5446ah.removeCallbacksAndMessages(null);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.utils.HandlerC5446ah.AbstractC5447a
    /* renamed from: a */
    public void mo32205a(Message message) {
        if (message.what == 1) {
            m35700a();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.TTBannerAd
    public View getBannerView() {
        return this.f16036a;
    }

    @Override // com.bytedance.sdk.openadsdk.TTBannerAd
    public TTAdDislike getDislikeDialog(TTAdDislike.DislikeInteractionCallback dislikeInteractionCallback) {
        if (dislikeInteractionCallback == null) {
            return null;
        }
        m35691b(dislikeInteractionCallback);
        return this.f16043h;
    }

    @Override // com.bytedance.sdk.openadsdk.TTBannerAd
    public int getInteractionType() {
        C4557i c4557i = this.f16041f;
        if (c4557i == null) {
            return -1;
        }
        return c4557i.m35243D();
    }

    @Override // com.bytedance.sdk.openadsdk.TTBannerAd
    public Map<String, Object> getMediaExtraInfo() {
        C4557i c4557i = this.f16041f;
        if (c4557i != null) {
            return c4557i.m35202aa();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.TTBannerAd
    public void setBannerInteractionListener(TTBannerAd.AdInteractionListener adInteractionListener) {
        this.f16042g = adInteractionListener;
    }

    @Override // com.bytedance.sdk.openadsdk.TTBannerAd
    public void setShowDislikeIcon(TTAdDislike.DislikeInteractionCallback dislikeInteractionCallback) {
        if (dislikeInteractionCallback == null) {
            return;
        }
        m35698a(dislikeInteractionCallback);
    }

    @Override // com.bytedance.sdk.openadsdk.TTBannerAd
    public void setSlideIntervalTime(int i) {
        int i2;
        if (i <= 0) {
            return;
        }
        this.f16046k = "slide_banner_ad";
        m35696a(this.f16036a.m35712b(), this.f16037b);
        this.f16036a.m35720a();
        this.f16036a.m35719a(1000);
        if (i < 30000) {
            i2 = 30000;
        } else {
            i2 = i;
            if (i > 120000) {
                i2 = 120000;
            }
        }
        this.f16040e = i2;
        this.f16039d = new HandlerC5446ah(Looper.getMainLooper(), this);
    }
}
