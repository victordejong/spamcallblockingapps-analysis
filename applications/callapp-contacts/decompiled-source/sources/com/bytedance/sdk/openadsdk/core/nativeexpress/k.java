package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.a.a.a.a.a.c;
import com.a.a.a.a.a.d;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.bytedance.sdk.openadsdk.core.EmptyView;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.d.e;
import com.bytedance.sdk.openadsdk.dislike.b;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.ag;
import com.bytedance.sdk.openadsdk.utils.q;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/nativeexpress/k.class */
public class k extends l {

    /* renamed from: a  reason: collision with root package name */
    protected NativeExpressView f9055a;

    /* renamed from: b  reason: collision with root package name */
    protected final Context f9056b;

    /* renamed from: c  reason: collision with root package name */
    protected i f9057c;
    private TTNativeExpressAd.ExpressAdInteractionListener e;
    private TTAdDislike.DislikeInteractionCallback f;
    private b g;
    private TTDislikeDialogAbstract h;
    private c i;
    private long k = 0;

    /* renamed from: d  reason: collision with root package name */
    protected String f9058d = "embeded_ad";

    public k(Context context, i iVar, AdSlot adSlot) {
        this.f9056b = context;
        this.f9057c = iVar;
        a(context, iVar, adSlot);
    }

    private c a(i iVar) {
        if (iVar.D() == 4) {
            return d.a(this.f9056b, iVar, this.f9058d);
        }
        return null;
    }

    private EmptyView a(ViewGroup viewGroup) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof EmptyView) {
                return (EmptyView) childAt;
            }
        }
        return null;
    }

    private void a(Activity activity, TTAdDislike.DislikeInteractionCallback dislikeInteractionCallback) {
        if (this.g == null) {
            this.g = new b(activity, this.f9057c);
        }
        this.g.setDislikeInteractionCallback(dislikeInteractionCallback);
        NativeExpressView nativeExpressView = this.f9055a;
        if (nativeExpressView != null) {
            nativeExpressView.setDislike(this.g);
        }
    }

    public void a(Context context, i iVar, AdSlot adSlot) {
        NativeExpressView nativeExpressView = new NativeExpressView(context, iVar, adSlot, this.f9058d);
        this.f9055a = nativeExpressView;
        a(nativeExpressView, this.f9057c);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void a(NativeExpressView nativeExpressView, final i iVar) {
        this.f9057c = iVar;
        nativeExpressView.setBackupListener(new c() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.k.1
            @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.c
            public boolean a(NativeExpressView nativeExpressView2, int i) {
                nativeExpressView2.m();
                h hVar = new h(nativeExpressView2.getContext());
                hVar.a(k.this.f9057c, nativeExpressView2, k.this.i);
                hVar.setDislikeInner(k.this.g);
                hVar.setDislikeOuter(k.this.h);
                return true;
            }
        });
        this.i = a(iVar);
        e.a(iVar);
        EmptyView a2 = a(nativeExpressView);
        EmptyView emptyView = a2;
        if (a2 == null) {
            emptyView = new EmptyView(this.f9056b, nativeExpressView);
            nativeExpressView.addView(emptyView);
        }
        emptyView.setCallback(new EmptyView.a() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.k.2
            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.a
            public void a() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.a
            public void a(View view) {
                q.b("TTNativeExpressAd", "ExpressView SHOW");
                k.this.k = System.currentTimeMillis();
                HashMap hashMap = new HashMap();
                hashMap.put("dynamic_show_type", Integer.valueOf(k.this.f9055a.n() ? 1 : 0));
                e.a(k.this.f9056b, iVar, k.this.f9058d, hashMap);
                if (k.this.e != null) {
                    k.this.e.onAdShow(view, iVar.D());
                }
                if (iVar.Y()) {
                    af.a(iVar, view);
                }
                if (!k.this.j.getAndSet(true) && k.this.f9055a != null) {
                    ag.a(k.this.f9056b, k.this.f9057c, k.this.f9058d, k.this.f9055a.getWebView());
                }
                if (k.this.f9055a != null) {
                    k.this.f9055a.j();
                    k.this.f9055a.h();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.a
            public void a(boolean z) {
                if (!z) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(System.currentTimeMillis() - k.this.k);
                    e.a(sb.toString(), iVar, k.this.f9058d);
                    k.this.k = 0L;
                    return;
                }
                k.this.k = System.currentTimeMillis();
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.a
            public void b() {
                if (k.this.k > 0) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(System.currentTimeMillis() - k.this.k);
                    e.a(sb.toString(), iVar, k.this.f9058d);
                    k.this.k = 0L;
                }
            }
        });
        Context context = this.f9056b;
        String str = this.f9058d;
        e eVar = new e(context, iVar, str, af.a(str));
        eVar.a(nativeExpressView);
        eVar.a(this.i);
        eVar.a(this);
        this.f9055a.setClickListener(eVar);
        Context context2 = this.f9056b;
        String str2 = this.f9058d;
        d dVar = new d(context2, iVar, str2, af.a(str2));
        dVar.a(nativeExpressView);
        dVar.a(this.i);
        dVar.a(this);
        this.f9055a.setClickCreativeListener(dVar);
        emptyView.setNeedCheckingShow(true);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void destroy() {
        NativeExpressView nativeExpressView = this.f9055a;
        if (nativeExpressView != null) {
            nativeExpressView.l();
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public View getExpressAdView() {
        return this.f9055a;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public List<FilterWord> getFilterWords() {
        i iVar = this.f9057c;
        if (iVar == null) {
            return null;
        }
        return iVar.U();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public int getImageMode() {
        i iVar = this.f9057c;
        if (iVar == null) {
            return -1;
        }
        return iVar.T();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public int getInteractionType() {
        i iVar = this.f9057c;
        if (iVar == null) {
            return -1;
        }
        return iVar.D();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public Map<String, Object> getMediaExtraInfo() {
        i iVar = this.f9057c;
        if (iVar != null) {
            return iVar.aa();
        }
        return null;
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void render() {
        this.f9055a.i();
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setDislikeCallback(Activity activity, TTAdDislike.DislikeInteractionCallback dislikeInteractionCallback) {
        if (dislikeInteractionCallback != null && activity != null) {
            this.f = dislikeInteractionCallback;
            a(activity, dislikeInteractionCallback);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setDislikeDialog(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
        if (tTDislikeDialogAbstract == null) {
            q.b("dialog is null, please check");
            return;
        }
        this.h = tTDislikeDialogAbstract;
        tTDislikeDialogAbstract.setMaterialMeta(this.f9057c);
        NativeExpressView nativeExpressView = this.f9055a;
        if (nativeExpressView != null) {
            nativeExpressView.setOuterDislike(tTDislikeDialogAbstract);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setExpressInteractionListener(TTNativeExpressAd.AdInteractionListener adInteractionListener) {
        this.e = adInteractionListener;
        this.f9055a.setExpressInteractionListener(adInteractionListener);
    }

    @Override // com.bytedance.sdk.openadsdk.core.nativeexpress.l, com.bytedance.sdk.openadsdk.TTNativeExpressAd
    public void setExpressInteractionListener(TTNativeExpressAd.ExpressAdInteractionListener expressAdInteractionListener) {
        this.e = expressAdInteractionListener;
        this.f9055a.setExpressInteractionListener(expressAdInteractionListener);
    }
}
