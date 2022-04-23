package com.bytedance.sdk.openadsdk.core;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.a.a.a.a.a.c;
import com.a.a.a.a.a.d;
import com.bytedance.sdk.openadsdk.TTNativeAd;
import com.bytedance.sdk.openadsdk.core.EmptyView;
import com.bytedance.sdk.openadsdk.core.b.a;
import com.bytedance.sdk.openadsdk.core.b.b;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.d.e;
import com.bytedance.sdk.openadsdk.utils.af;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/m.class */
public class m {

    /* renamed from: a  reason: collision with root package name */
    private final i f8995a;

    /* renamed from: b  reason: collision with root package name */
    private c f8996b;

    /* renamed from: c  reason: collision with root package name */
    private final Context f8997c;

    /* renamed from: d  reason: collision with root package name */
    private final TTNativeAd f8998d;
    private List<View> e = new ArrayList();
    private String f;
    private TTNativeAd.AdInteractionListener g;
    private long h;

    public m(Context context, TTNativeAd tTNativeAd, i iVar, String str) {
        this.f = "embeded_ad";
        this.f8998d = tTNativeAd;
        this.f8995a = iVar;
        this.f8997c = context;
        this.f = str;
        if (iVar.D() == 4) {
            this.f8996b = d.a(context, iVar, this.f);
        }
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

    public void a(View view, int i) {
        TTNativeAd.AdInteractionListener adInteractionListener = this.g;
        if (adInteractionListener != null) {
            adInteractionListener.onAdCreativeClick(view, this.f8998d);
        }
    }

    public void a(final ViewGroup viewGroup, List<View> list, List<View> list2, List<View> list3, View view, final TTNativeAd.AdInteractionListener adInteractionListener) {
        this.g = adInteractionListener;
        this.e = list;
        e.a(this.f8995a);
        EmptyView a2 = a(viewGroup);
        EmptyView emptyView = a2;
        if (a2 == null) {
            emptyView = new EmptyView(this.f8997c, viewGroup);
            viewGroup.addView(emptyView);
        }
        emptyView.a();
        emptyView.setRefClickViews(list2);
        emptyView.setRefCreativeViews(list3);
        Context context = this.f8997c;
        i iVar = this.f8995a;
        String str = this.f;
        b bVar = new b(context, iVar, str, af.a(str));
        bVar.a(viewGroup);
        bVar.b(view);
        bVar.a(this.f8996b);
        bVar.a(this.f8998d);
        bVar.a(new b.a() { // from class: com.bytedance.sdk.openadsdk.core.m.1
            @Override // com.bytedance.sdk.openadsdk.core.b.b.a
            public void a(View view2, int i) {
                TTNativeAd.AdInteractionListener adInteractionListener2 = adInteractionListener;
                if (adInteractionListener2 != null) {
                    adInteractionListener2.onAdClicked(view2, m.this.f8998d);
                }
            }
        });
        Context context2 = this.f8997c;
        i iVar2 = this.f8995a;
        String str2 = this.f;
        a aVar = new a(context2, iVar2, str2, af.a(str2));
        aVar.a(viewGroup);
        aVar.b(view);
        aVar.a(this.f8996b);
        aVar.a(this.f8998d);
        aVar.a(new b.a() { // from class: com.bytedance.sdk.openadsdk.core.m.2
            @Override // com.bytedance.sdk.openadsdk.core.b.b.a
            public void a(View view2, int i) {
                TTNativeAd.AdInteractionListener adInteractionListener2 = adInteractionListener;
                if (adInteractionListener2 != null) {
                    adInteractionListener2.onAdCreativeClick(view2, m.this.f8998d);
                }
            }
        });
        emptyView.a(list2, bVar);
        emptyView.a(list3, aVar);
        emptyView.setCallback(new EmptyView.a() { // from class: com.bytedance.sdk.openadsdk.core.m.3
            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.a
            public void a() {
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.a
            public void a(View view2) {
                m.this.h = System.currentTimeMillis();
                HashMap hashMap = new HashMap();
                if (m.this.e != null) {
                    JSONArray jSONArray = new JSONArray();
                    for (View view3 : m.this.e) {
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
                e.a(m.this.f8997c, m.this.f8995a, m.this.f, hashMap);
                TTNativeAd.AdInteractionListener adInteractionListener2 = adInteractionListener;
                if (adInteractionListener2 != null) {
                    adInteractionListener2.onAdShow(m.this.f8998d);
                }
                if (m.this.f8995a.Y()) {
                    af.a(m.this.f8995a, view2);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.a
            public void a(boolean z) {
                if (!z) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(System.currentTimeMillis() - m.this.h);
                    e.a(sb.toString(), m.this.f8995a, m.this.f);
                    m.this.h = 0L;
                    return;
                }
                m.this.h = System.currentTimeMillis();
            }

            @Override // com.bytedance.sdk.openadsdk.core.EmptyView.a
            public void b() {
                if (m.this.h > 0) {
                    StringBuilder sb = new StringBuilder();
                    sb.append(System.currentTimeMillis() - m.this.h);
                    e.a(sb.toString(), m.this.f8995a, m.this.f);
                    m.this.h = 0L;
                }
            }
        });
        emptyView.setNeedCheckingShow(true);
    }
}
