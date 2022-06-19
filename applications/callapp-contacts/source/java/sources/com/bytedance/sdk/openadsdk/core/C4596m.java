package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.TTNativeAd;
import com.bytedance.sdk.openadsdk.core.EmptyView;
import com.bytedance.sdk.openadsdk.core.p151b.C4494a;
import com.bytedance.sdk.openadsdk.core.p151b.C4495b;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.p164d.C4811e;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.p094a.p095a.p096a.p097a.p098a.AbstractC3234c;
import com.p094a.p095a.p096a.p097a.p098a.C3235d;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.core.m */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/m.class */
public class C4596m {

    /* renamed from: a */
    private final C4557i f16811a;

    /* renamed from: b */
    private AbstractC3234c f16812b;

    /* renamed from: c */
    private final Context f16813c;

    /* renamed from: d */
    private final TTNativeAd f16814d;

    /* renamed from: e */
    private List<View> f16815e = new ArrayList();

    /* renamed from: f */
    private String f16816f;

    /* renamed from: g */
    private TTNativeAd.AdInteractionListener f16817g;

    /* renamed from: h */
    private long f16818h;

    public C4596m(Context context, TTNativeAd tTNativeAd, C4557i c4557i, String str) {
        this.f16816f = "embeded_ad";
        this.f16814d = tTNativeAd;
        this.f16811a = c4557i;
        this.f16813c = context;
        this.f16816f = str;
        if (c4557i.m35243D() == 4) {
            this.f16812b = C3235d.m39089a(context, c4557i, this.f16816f);
        }
    }

    /* renamed from: a */
    private EmptyView m34824a(ViewGroup viewGroup) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
            if (childAt instanceof EmptyView) {
                return (EmptyView) childAt;
            }
        }
        return null;
    }

    /* renamed from: a */
    public void m34825a(View view, int i) {
        TTNativeAd.AdInteractionListener adInteractionListener = this.f16817g;
        if (adInteractionListener != null) {
            adInteractionListener.onAdCreativeClick(view, this.f16814d);
        }
    }

    /* renamed from: a */
    public void m34823a(final ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, View view, final TTNativeAd.AdInteractionListener adInteractionListener) {
        this.f16817g = adInteractionListener;
        this.f16815e = list;
        C4811e.m33874a(this.f16811a);
        EmptyView m34824a = m34824a(viewGroup);
        EmptyView emptyView = m34824a;
        if (m34824a == null) {
            emptyView = new EmptyView(this.f16813c, viewGroup);
            viewGroup.addView(emptyView);
        }
        emptyView.m35518a();
        emptyView.setRefClickViews(list2);
        emptyView.setRefCreativeViews(list3);
        Context context = this.f16813c;
        C4557i c4557i = this.f16811a;
        String str = this.f16816f;
        C4495b c4495b = new C4495b(context, c4557i, str, C5438af.m32300a(str));
        c4495b.m35481a(viewGroup);
        c4495b.m35472b(view);
        c4495b.m35480a(this.f16812b);
        c4495b.m35479a(this.f16814d);
        c4495b.m35477a(new C4495b.AbstractC4496a() { // from class: com.bytedance.sdk.openadsdk.core.m.1
            @Override // com.bytedance.sdk.openadsdk.core.p151b.C4495b.AbstractC4496a
            /* renamed from: a */
            public void mo34179a(View view2, int i) {
                TTNativeAd.AdInteractionListener adInteractionListener2 = adInteractionListener;
                if (adInteractionListener2 != null) {
                    adInteractionListener2.onAdClicked(view2, C4596m.this.f16814d);
                }
            }
        });
        Context context2 = this.f16813c;
        C4557i c4557i2 = this.f16811a;
        String str2 = this.f16816f;
        C4494a c4494a = new C4494a(context2, c4557i2, str2, C5438af.m32300a(str2));
        c4494a.m35481a(viewGroup);
        c4494a.m35472b(view);
        c4494a.m35480a(this.f16812b);
        c4494a.m35479a(this.f16814d);
        c4494a.m35477a(new C4495b.AbstractC4496a() { // from class: com.bytedance.sdk.openadsdk.core.m.2
            @Override // com.bytedance.sdk.openadsdk.core.p151b.C4495b.AbstractC4496a
            /* renamed from: a */
            public void mo34179a(View view2, int i) {
                TTNativeAd.AdInteractionListener adInteractionListener2 = adInteractionListener;
                if (adInteractionListener2 != null) {
                    adInteractionListener2.onAdCreativeClick(view2, C4596m.this.f16814d);
                }
            }
        });
        emptyView.m35517a(list2, c4495b);
        emptyView.m35517a(list3, c4494a);
        emptyView.setCallback(new EmptyView.AbstractC4461a() { // from class: com.bytedance.sdk.openadsdk.core.m.3
            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.AbstractC4461a
            /* renamed from: a */
            public void mo34692a() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.AbstractC4461a
            /* renamed from: a */
            public void mo34691a(View view2) {
                C4596m.this.f16818h = System.currentTimeMillis();
                HashMap hashMap = new HashMap();
                if (C4596m.this.f16815e != null) {
                    JSONArray jSONArray = new JSONArray();
                    for (View view3 : C4596m.this.f16815e) {
                        if (view3 != null) {
                            JSONObject jSONObject = new JSONObject();
                            try {
                                jSONObject.put("width", view3.getWidth());
                                jSONObject.put("height", view3.getHeight());
                                jSONObject.put("alpha", view3.getAlpha());
                            } catch (Throwable th) {
                            }
                            jSONArray.put(jSONObject);
                        }
                    }
                    hashMap.put("image_view", jSONArray.toString());
                }
                if (viewGroup != null) {
                    JSONObject jSONObject2 = new JSONObject();
                    try {
                        jSONObject2.put("width", viewGroup.getWidth());
                        jSONObject2.put("height", viewGroup.getHeight());
                        jSONObject2.put("alpha", viewGroup.getAlpha());
                    } catch (Throwable th2) {
                    }
                    hashMap.put("root_view", jSONObject2.toString());
                }
                C4811e.m33877a(C4596m.this.f16813c, C4596m.this.f16811a, C4596m.this.f16816f, hashMap);
                TTNativeAd.AdInteractionListener adInteractionListener2 = adInteractionListener;
                if (adInteractionListener2 != null) {
                    adInteractionListener2.onAdShow(C4596m.this.f16814d);
                }
                if (C4596m.this.f16811a.m35222Y()) {
                    C5438af.m32303a(C4596m.this.f16811a, view2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.AbstractC4461a
            /* renamed from: a */
            public void mo34690a(boolean z) {
                if (z) {
                    C4596m.this.f16818h = System.currentTimeMillis();
                    return;
                }
                StringBuilder sb = new StringBuilder();
                sb.append(System.currentTimeMillis() - C4596m.this.f16818h);
                C4811e.m33870a(sb.toString(), C4596m.this.f16811a, C4596m.this.f16816f);
                C4596m.this.f16818h = 0L;
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.AbstractC4461a
            /* renamed from: b */
            public void mo34689b() {
                if (C4596m.this.f16818h > 0) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(System.currentTimeMillis() - C4596m.this.f16818h);
                    C4811e.m33870a(sb.toString(), C4596m.this.f16811a, C4596m.this.f16816f);
                    C4596m.this.f16818h = 0L;
                }
            }
        });
        emptyView.setNeedCheckingShow(true);
    }
}
