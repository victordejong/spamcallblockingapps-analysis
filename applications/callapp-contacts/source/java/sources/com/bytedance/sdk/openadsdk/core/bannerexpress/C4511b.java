package com.bytedance.sdk.openadsdk.core.bannerexpress;

import android.app.Activity;
import android.content.Context;
import android.os.Looper;
import android.os.Message;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.bytedance.sdk.openadsdk.core.EmptyView;
import com.bytedance.sdk.openadsdk.core.nativeexpress.AbstractC4615c;
import com.bytedance.sdk.openadsdk.core.nativeexpress.C4611b;
import com.bytedance.sdk.openadsdk.core.nativeexpress.C4616d;
import com.bytedance.sdk.openadsdk.core.nativeexpress.C4617e;
import com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l;
import com.bytedance.sdk.openadsdk.core.nativeexpress.NativeExpressView;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.dislike.C4852b;
import com.bytedance.sdk.openadsdk.p164d.C4811e;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.utils.HandlerC5446ah;
import com.p094a.p095a.p096a.p097a.p098a.AbstractC3234c;
import com.p094a.p095a.p096a.p097a.p098a.C3235d;
import java.util.HashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
/* renamed from: com.bytedance.sdk.openadsdk.core.bannerexpress.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/bannerexpress/b.class */
public class C4511b extends C4632l implements HandlerC5446ah.AbstractC5447a {

    /* renamed from: a */
    protected C4507a f16383a;

    /* renamed from: b */
    protected final Context f16384b;

    /* renamed from: c */
    protected C4557i f16385c;

    /* renamed from: d */
    protected AdSlot f16386d;

    /* renamed from: e */
    protected TTNativeExpressAd.ExpressAdInteractionListener f16387e;

    /* renamed from: f */
    TTDislikeDialogAbstract f16388f;

    /* renamed from: g */
    private C4852b f16389g;

    /* renamed from: h */
    private AbstractC3234c f16390h;

    /* renamed from: i */
    private HandlerC5446ah f16391i;

    /* renamed from: k */
    private int f16392k;

    /* renamed from: l */
    private TTAdDislike.DislikeInteractionCallback f16393l;

    /* renamed from: m */
    private Context f16394m;

    /* renamed from: n */
    private final Queue<Long> f16395n = new LinkedList();

    /* renamed from: o */
    private String f16396o = "banner_ad";

    public C4511b(Context context, C4557i c4557i, AdSlot adSlot) {
        this.f16384b = context;
        this.f16385c = c4557i;
        this.f16386d = adSlot;
        mo35419a(context, c4557i, adSlot);
    }

    /* renamed from: a */
    private AbstractC3234c m35433a(C4557i c4557i) {
        if (c4557i.m35243D() == 4) {
            return C3235d.m39089a(this.f16384b, c4557i, this.f16396o);
        }
        return null;
    }

    /* renamed from: a */
    private EmptyView m35437a(ViewGroup viewGroup) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof EmptyView) {
                return (EmptyView) childAt;
            }
        }
        return null;
    }

    /* renamed from: a */
    public void m35439a() {
        HandlerC5446ah handlerC5446ah = this.f16391i;
        if (handlerC5446ah != null) {
            handlerC5446ah.removeCallbacksAndMessages(null);
            this.f16391i.sendEmptyMessageDelayed(112201, this.f16392k);
        }
    }

    /* renamed from: a */
    private void m35438a(Activity activity, TTAdDislike.DislikeInteractionCallback dislikeInteractionCallback) {
        if (this.f16389g == null) {
            this.f16389g = new C4852b(activity, this.f16385c);
        }
        this.f16394m = activity;
        this.f16389g.setDislikeInteractionCallback(dislikeInteractionCallback);
        C4507a c4507a = this.f16383a;
        if (c4507a == null || c4507a.getCurView() == null) {
            return;
        }
        this.f16383a.getCurView().setDislike(this.f16389g);
    }

    /* renamed from: a */
    public void m35431a(boolean z, C4557i c4557i) {
        try {
            if (z) {
                this.f16395n.offer(Long.valueOf(System.currentTimeMillis()));
            } else if (this.f16395n.size() <= 0) {
            } else {
                long longValue = this.f16395n.poll().longValue();
                StringBuilder sb = new StringBuilder();
                sb.append(System.currentTimeMillis() - longValue);
                C4811e.m33870a(sb.toString(), c4557i, this.f16396o);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: b */
    public void m35430b() {
        HandlerC5446ah handlerC5446ah = this.f16391i;
        if (handlerC5446ah != null) {
            handlerC5446ah.removeCallbacksAndMessages(null);
        }
    }

    /* renamed from: b */
    public void m35427b(C4557i c4557i) {
        if (this.f16383a.getNextView() == null || !this.f16383a.mo35446b()) {
            return;
        }
        m35426b(this.f16383a.getNextView(), c4557i);
        m35432a(this.f16383a.getNextView(), c4557i);
    }

    /* renamed from: b */
    private void m35426b(NativeExpressView nativeExpressView, C4557i c4557i) {
        if (nativeExpressView == null || c4557i == null) {
            return;
        }
        if (this.f16393l != null) {
            this.f16389g.m33737a(c4557i);
            if (nativeExpressView != null) {
                nativeExpressView.setDislike(this.f16389g);
            }
        }
        TTDislikeDialogAbstract tTDislikeDialogAbstract = this.f16388f;
        if (tTDislikeDialogAbstract == null) {
            return;
        }
        tTDislikeDialogAbstract.setMaterialMeta(c4557i);
        if (nativeExpressView == null) {
            return;
        }
        nativeExpressView.setOuterDislike(this.f16388f);
    }

    /* renamed from: c */
    private void m35425c() {
        C4611b.m34754a(this.f16384b).m34752a(this.f16386d, 1, null, new C4611b.AbstractC4614a() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.b.3
            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4611b.AbstractC4614a
            /* renamed from: a */
            public void mo34732a() {
                C4511b.this.m35439a();
            }

            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4611b.AbstractC4614a
            /* renamed from: a */
            public void mo34731a(List<C4557i> list) {
                if (list == null || list.isEmpty()) {
                    C4511b.this.m35439a();
                    return;
                }
                C4557i c4557i = list.get(0);
                C4511b.this.f16383a.mo35448a(c4557i, C4511b.this.f16386d);
                C4511b.this.m35427b(c4557i);
                C4511b.this.f16383a.mo35444c();
                C4511b.this.m35439a();
            }
        }, 5000);
    }

    /* renamed from: c */
    public void m35423c(C4557i c4557i) {
        Queue<Long> queue = this.f16395n;
        if (queue == null || queue.size() <= 0 || c4557i == null) {
            return;
        }
        try {
            long longValue = this.f16395n.poll().longValue();
            if (longValue <= 0) {
                return;
            }
            StringBuilder sb = new StringBuilder();
            sb.append(System.currentTimeMillis() - longValue);
            C4811e.m33870a(sb.toString(), c4557i, this.f16396o);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    /* renamed from: a */
    public void mo35419a(Context context, C4557i c4557i, AdSlot adSlot) {
        C4507a c4507a = new C4507a(context, c4557i, adSlot);
        this.f16383a = c4507a;
        m35432a(c4507a.getCurView(), this.f16385c);
    }

    @Override // com.bytedance.sdk.openadsdk.utils.HandlerC5446ah.AbstractC5447a
    /* renamed from: a */
    public void mo32205a(Message message) {
        if (message.what == 112201) {
            m35425c();
        }
    }

    /* renamed from: a */
    public void m35432a(final NativeExpressView nativeExpressView, final C4557i c4557i) {
        if (nativeExpressView == null || c4557i == null) {
            return;
        }
        this.f16385c = c4557i;
        this.f16390h = m35433a(c4557i);
        nativeExpressView.setBackupListener(new AbstractC4615c() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.b.1
            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.AbstractC4615c
            /* renamed from: a */
            public boolean mo34693a(NativeExpressView nativeExpressView2, int i) {
                try {
                    nativeExpressView2.m34763m();
                    BannerExpressBackupView bannerExpressBackupView = new BannerExpressBackupView(nativeExpressView2.getContext());
                    bannerExpressBackupView.m35463a(C4511b.this.f16385c, nativeExpressView2, C4511b.this.f16390h);
                    bannerExpressBackupView.setDislikeInner(C4511b.this.f16389g);
                    bannerExpressBackupView.setDislikeOuter(C4511b.this.f16388f);
                    return true;
                } catch (Exception e) {
                    return false;
                }
            }
        });
        C4811e.m33874a(c4557i);
        EmptyView m35437a = m35437a(nativeExpressView);
        EmptyView emptyView = m35437a;
        if (m35437a == null) {
            emptyView = new EmptyView(this.f16384b, nativeExpressView);
            nativeExpressView.addView(emptyView);
        }
        emptyView.setCallback(new EmptyView.AbstractC4461a() { // from class: com.bytedance.sdk.openadsdk.core.bannerexpress.b.2
            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.AbstractC4461a
            /* renamed from: a */
            public void mo34692a() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.AbstractC4461a
            /* renamed from: a */
            public void mo34691a(View view) {
                C5478q.m32112b("TTBannerExpressAd", "ExpressView SHOW");
                if (C4511b.this.f16395n != null) {
                    C4511b.this.f16395n.offer(Long.valueOf(System.currentTimeMillis()));
                }
                HashMap hashMap = new HashMap();
                hashMap.put("dynamic_show_type", Integer.valueOf(nativeExpressView.m34762n() ? 1 : 0));
                C4811e.m33877a(C4511b.this.f16384b, c4557i, C4511b.this.f16396o, hashMap);
                if (C4511b.this.f16387e != null) {
                    C4511b.this.f16387e.onAdShow(view, c4557i.m35243D());
                }
                if (c4557i.m35222Y()) {
                    C5438af.m32303a(c4557i, view);
                }
                C4511b.this.m35439a();
                if (!C4511b.this.f16952j.getAndSet(true) && C4511b.this.f16383a != null && C4511b.this.f16383a.getCurView() != null) {
                    C5443ag.m32231a(C4511b.this.f16384b, C4511b.this.f16385c, C4511b.this.f16396o, C4511b.this.f16383a.getCurView().getWebView());
                }
                if (C4511b.this.f16383a == null || C4511b.this.f16383a.getCurView() == null) {
                    return;
                }
                C4511b.this.f16383a.getCurView().m34766j();
                C4511b.this.f16383a.getCurView().m34768h();
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.AbstractC4461a
            /* renamed from: a */
            public void mo34690a(boolean z) {
                if (z) {
                    C4511b.this.m35439a();
                    C5478q.m32112b("TTBannerExpressAd", "获得焦点，开始计时");
                } else {
                    C5478q.m32112b("TTBannerExpressAd", "失去焦点，停止计时");
                    C4511b.this.m35430b();
                }
                C4511b.this.m35431a(z, c4557i);
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.AbstractC4461a
            /* renamed from: b */
            public void mo34689b() {
                C4511b.this.m35423c(c4557i);
            }
        });
        C4617e c4617e = new C4617e(this.f16384b, c4557i, this.f16396o, 2);
        c4617e.m35481a(nativeExpressView);
        c4617e.m35478a(this);
        c4617e.m35480a(this.f16390h);
        nativeExpressView.setClickListener(c4617e);
        C4616d c4616d = new C4616d(this.f16384b, c4557i, this.f16396o, 2);
        c4616d.m35481a(nativeExpressView);
        c4617e.m35478a(this);
        c4616d.m35480a(this.f16390h);
        nativeExpressView.setClickCreativeListener(c4616d);
        emptyView.setNeedCheckingShow(true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void destroy() {
        C4507a c4507a = this.f16383a;
        if (c4507a != null) {
            c4507a.mo35443d();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public View getExpressAdView() {
        return this.f16383a;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public List<FilterWord> getFilterWords() {
        C4557i c4557i = this.f16385c;
        if (c4557i == null) {
            return null;
        }
        return c4557i.m35226U();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public int getImageMode() {
        C4557i c4557i = this.f16385c;
        if (c4557i == null) {
            return -1;
        }
        return c4557i.m35227T();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public int getInteractionType() {
        C4557i c4557i = this.f16385c;
        if (c4557i == null) {
            return -1;
        }
        return c4557i.m35243D();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public Map<String, Object> getMediaExtraInfo() {
        C4557i c4557i = this.f16385c;
        if (c4557i != null) {
            return c4557i.m35202aa();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void render() {
        this.f16383a.mo35442e();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setDislikeCallback(Activity activity, TTAdDislike.DislikeInteractionCallback dislikeInteractionCallback) {
        if (dislikeInteractionCallback == null || activity == null) {
            return;
        }
        this.f16393l = dislikeInteractionCallback;
        m35438a(activity, dislikeInteractionCallback);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setDislikeDialog(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        if (tTDislikeDialogAbstract == null) {
            C5478q.m32113b("dialog is null, please check");
            return;
        }
        this.f16388f = tTDislikeDialogAbstract;
        tTDislikeDialogAbstract.setMaterialMeta(this.f16385c);
        C4507a c4507a = this.f16383a;
        if (c4507a == null || c4507a.getCurView() == null) {
            return;
        }
        this.f16383a.getCurView().setOuterDislike(tTDislikeDialogAbstract);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setExpressInteractionListener(TTNativeExpressAd.AdInteractionListener adInteractionListener) {
        this.f16387e = adInteractionListener;
        this.f16383a.setExpressInteractionListener(adInteractionListener);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setExpressInteractionListener(TTNativeExpressAd.ExpressAdInteractionListener expressAdInteractionListener) {
        this.f16387e = expressAdInteractionListener;
        this.f16383a.setExpressInteractionListener(expressAdInteractionListener);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setSlideIntervalTime(int i) {
        int i2;
        if (i <= 0) {
            return;
        }
        this.f16396o = "slide_banner_ad";
        m35432a(this.f16383a.getCurView(), this.f16385c);
        this.f16383a.setDuration(1000);
        if (i < 30000) {
            i2 = 30000;
        } else {
            i2 = i;
            if (i > 120000) {
                i2 = 120000;
            }
        }
        this.f16392k = i2;
        this.f16391i = new HandlerC5446ah(Looper.getMainLooper(), this);
    }
}
