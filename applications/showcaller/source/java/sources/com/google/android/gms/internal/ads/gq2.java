package com.google.android.gms.internal.ads;

import android.os.Build;
import android.view.View;
import android.view.ViewParent;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/gq2.class */
public final class gq2 implements eq2 {

    /* renamed from: a */
    private final eq2 f23447a;

    public gq2(eq2 eq2Var) {
        this.f23447a = eq2Var;
    }

    @Override // com.google.android.gms.internal.ads.eq2
    /* renamed from: a */
    public final void mo14567a(View view, JSONObject jSONObject, cq2 cq2Var, boolean z) {
        int i;
        ArrayList arrayList = new ArrayList();
        up2 m10275a = up2.m10275a();
        if (m10275a != null) {
            Collection<np2> m10270f = m10275a.m10270f();
            int size = m10270f.size();
            IdentityHashMap identityHashMap = new IdentityHashMap(size + size + 3);
            for (np2 np2Var : m10270f) {
                View m12827i = np2Var.m12827i();
                if (m12827i != null && (Build.VERSION.SDK_INT < 19 || m12827i.isAttachedToWindow())) {
                    if (m12827i.isShown()) {
                        View view2 = m12827i;
                        while (true) {
                            View view3 = view2;
                            if (view3 == null) {
                                View rootView = m12827i.getRootView();
                                if (rootView != null && !identityHashMap.containsKey(rootView)) {
                                    identityHashMap.put(rootView, rootView);
                                    float m12198a = pq2.m12198a(rootView);
                                    int size2 = arrayList.size();
                                    while (true) {
                                        i = size2;
                                        if (i <= 0) {
                                            break;
                                        }
                                        int i2 = i - 1;
                                        if (pq2.m12198a((View) arrayList.get(i2)) <= m12198a) {
                                            break;
                                        }
                                        size2 = i2;
                                    }
                                    arrayList.add(i, rootView);
                                }
                            } else if (view3.getAlpha() != 0.0f) {
                                ViewParent parent = view3.getParent();
                                view2 = parent instanceof View ? (View) parent : null;
                            }
                        }
                    }
                }
            }
        }
        int size3 = arrayList.size();
        for (int i3 = 0; i3 < size3; i3++) {
            cq2Var.mo8733a((View) arrayList.get(i3), this.f23447a, jSONObject);
        }
    }

    @Override // com.google.android.gms.internal.ads.eq2
    /* renamed from: d */
    public final JSONObject mo14566d(View view) {
        throw null;
    }
}
