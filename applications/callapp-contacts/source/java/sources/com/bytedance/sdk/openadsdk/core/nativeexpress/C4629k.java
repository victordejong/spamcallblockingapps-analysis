package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.bytedance.sdk.openadsdk.core.EmptyView;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.dislike.C4852b;
import com.bytedance.sdk.openadsdk.p164d.C4811e;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.p094a.p095a.p096a.p097a.p098a.AbstractC3234c;
import com.p094a.p095a.p096a.p097a.p098a.C3235d;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* renamed from: com.bytedance.sdk.openadsdk.core.nativeexpress.k */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/nativeexpress/k.class */
public class C4629k extends C4632l {

    /* renamed from: a */
    protected NativeExpressView f16939a;

    /* renamed from: b */
    protected final Context f16940b;

    /* renamed from: c */
    protected C4557i f16941c;

    /* renamed from: e */
    private TTNativeExpressAd.ExpressAdInteractionListener f16943e;

    /* renamed from: f */
    private TTAdDislike.DislikeInteractionCallback f16944f;

    /* renamed from: g */
    private C4852b f16945g;

    /* renamed from: h */
    private TTDislikeDialogAbstract f16946h;

    /* renamed from: i */
    private AbstractC3234c f16947i;

    /* renamed from: k */
    private long f16948k = 0;

    /* renamed from: d */
    protected String f16942d = "embeded_ad";

    public C4629k(Context context, C4557i c4557i, AdSlot adSlot) {
        this.f16940b = context;
        this.f16941c = c4557i;
        mo34688a(context, c4557i, adSlot);
    }

    /* renamed from: a */
    private AbstractC3234c m34701a(C4557i c4557i) {
        if (c4557i.m35243D() == 4) {
            return C3235d.m39089a(this.f16940b, c4557i, this.f16942d);
        }
        return null;
    }

    /* renamed from: a */
    private EmptyView m34702a(ViewGroup viewGroup) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof EmptyView) {
                return (EmptyView) childAt;
            }
        }
        return null;
    }

    /* renamed from: a */
    private void m34703a(Activity activity, TTAdDislike.DislikeInteractionCallback dislikeInteractionCallback) {
        if (this.f16945g == null) {
            this.f16945g = new C4852b(activity, this.f16941c);
        }
        this.f16945g.setDislikeInteractionCallback(dislikeInteractionCallback);
        NativeExpressView nativeExpressView = this.f16939a;
        if (nativeExpressView != null) {
            nativeExpressView.setDislike(this.f16945g);
        }
    }

    /* renamed from: a */
    public void mo34688a(Context context, C4557i c4557i, AdSlot adSlot) {
        NativeExpressView nativeExpressView = new NativeExpressView(context, c4557i, adSlot, this.f16942d);
        this.f16939a = nativeExpressView;
        m34700a(nativeExpressView, this.f16941c);
    }

    /* renamed from: a */
    public void m34700a(NativeExpressView nativeExpressView, final C4557i c4557i) {
        this.f16941c = c4557i;
        nativeExpressView.setBackupListener(new AbstractC4615c() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.k.1
            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.AbstractC4615c
            /* renamed from: a */
            public boolean mo34693a(NativeExpressView nativeExpressView2, int i) {
                nativeExpressView2.m34763m();
                C4620h c4620h = new C4620h(nativeExpressView2.getContext());
                c4620h.m34716a(C4629k.this.f16941c, nativeExpressView2, C4629k.this.f16947i);
                c4620h.setDislikeInner(C4629k.this.f16945g);
                c4620h.setDislikeOuter(C4629k.this.f16946h);
                return true;
            }
        });
        this.f16947i = m34701a(c4557i);
        C4811e.m33874a(c4557i);
        EmptyView m34702a = m34702a(nativeExpressView);
        EmptyView emptyView = m34702a;
        if (m34702a == null) {
            emptyView = new EmptyView(this.f16940b, nativeExpressView);
            nativeExpressView.addView(emptyView);
        }
        emptyView.setCallback(new EmptyView.AbstractC4461a() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.k.2
            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.AbstractC4461a
            /* renamed from: a */
            public void mo34692a() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.AbstractC4461a
            /* renamed from: a */
            public void mo34691a(View view) {
                C5478q.m32112b("TTNativeExpressAd", "ExpressView SHOW");
                C4629k.this.f16948k = System.currentTimeMillis();
                HashMap hashMap = new HashMap();
                hashMap.put("dynamic_show_type", Integer.valueOf(C4629k.this.f16939a.m34762n() ? 1 : 0));
                C4811e.m33877a(C4629k.this.f16940b, c4557i, C4629k.this.f16942d, hashMap);
                if (C4629k.this.f16943e != null) {
                    C4629k.this.f16943e.onAdShow(view, c4557i.m35243D());
                }
                if (c4557i.m35222Y()) {
                    C5438af.m32303a(c4557i, view);
                }
                if (!C4629k.this.f16952j.getAndSet(true) && C4629k.this.f16939a != null) {
                    C5443ag.m32231a(C4629k.this.f16940b, C4629k.this.f16941c, C4629k.this.f16942d, C4629k.this.f16939a.getWebView());
                }
                if (C4629k.this.f16939a != null) {
                    C4629k.this.f16939a.m34766j();
                    C4629k.this.f16939a.m34768h();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.AbstractC4461a
            /* renamed from: a */
            public void mo34690a(boolean z) {
                if (z) {
                    C4629k.this.f16948k = System.currentTimeMillis();
                    return;
                }
                StringBuilder sb = new StringBuilder();
                sb.append(System.currentTimeMillis() - C4629k.this.f16948k);
                C4811e.m33870a(sb.toString(), c4557i, C4629k.this.f16942d);
                C4629k.this.f16948k = 0L;
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.AbstractC4461a
            /* renamed from: b */
            public void mo34689b() {
                if (C4629k.this.f16948k > 0) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(System.currentTimeMillis() - C4629k.this.f16948k);
                    C4811e.m33870a(sb.toString(), c4557i, C4629k.this.f16942d);
                    C4629k.this.f16948k = 0L;
                }
            }
        });
        Context context = this.f16940b;
        String str = this.f16942d;
        C4617e c4617e = new C4617e(context, c4557i, str, C5438af.m32300a(str));
        c4617e.m35481a(nativeExpressView);
        c4617e.m35480a(this.f16947i);
        c4617e.m35478a(this);
        this.f16939a.setClickListener(c4617e);
        Context context2 = this.f16940b;
        String str2 = this.f16942d;
        C4616d c4616d = new C4616d(context2, c4557i, str2, C5438af.m32300a(str2));
        c4616d.m35481a(nativeExpressView);
        c4616d.m35480a(this.f16947i);
        c4616d.m35478a(this);
        this.f16939a.setClickCreativeListener(c4616d);
        emptyView.setNeedCheckingShow(true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void destroy() {
        NativeExpressView nativeExpressView = this.f16939a;
        if (nativeExpressView != null) {
            nativeExpressView.m34764l();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public View getExpressAdView() {
        return this.f16939a;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public List<FilterWord> getFilterWords() {
        C4557i c4557i = this.f16941c;
        if (c4557i == null) {
            return null;
        }
        return c4557i.m35226U();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public int getImageMode() {
        C4557i c4557i = this.f16941c;
        if (c4557i == null) {
            return -1;
        }
        return c4557i.m35227T();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public int getInteractionType() {
        C4557i c4557i = this.f16941c;
        if (c4557i == null) {
            return -1;
        }
        return c4557i.m35243D();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public Map<String, Object> getMediaExtraInfo() {
        C4557i c4557i = this.f16941c;
        if (c4557i != null) {
            return c4557i.m35202aa();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void render() {
        this.f16939a.m34767i();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setDislikeCallback(Activity activity, TTAdDislike.DislikeInteractionCallback dislikeInteractionCallback) {
        if (dislikeInteractionCallback == null || activity == null) {
            return;
        }
        this.f16944f = dislikeInteractionCallback;
        m34703a(activity, dislikeInteractionCallback);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setDislikeDialog(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        if (tTDislikeDialogAbstract == null) {
            C5478q.m32113b("dialog is null, please check");
            return;
        }
        this.f16946h = tTDislikeDialogAbstract;
        tTDislikeDialogAbstract.setMaterialMeta(this.f16941c);
        NativeExpressView nativeExpressView = this.f16939a;
        if (nativeExpressView == null) {
            return;
        }
        nativeExpressView.setOuterDislike(tTDislikeDialogAbstract);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setExpressInteractionListener(TTNativeExpressAd.AdInteractionListener adInteractionListener) {
        this.f16943e = adInteractionListener;
        this.f16939a.setExpressInteractionListener(adInteractionListener);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.C4632l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setExpressInteractionListener(TTNativeExpressAd.ExpressAdInteractionListener expressAdInteractionListener) {
        this.f16943e = expressAdInteractionListener;
        this.f16939a.setExpressInteractionListener(expressAdInteractionListener);
    }
}
