package com.google.android.gms.internal.ads;

import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/hq2.class */
public final class hq2 implements eq2 {

    /* renamed from: a */
    private final int[] f24017a = new int[2];

    @Override // com.google.android.gms.internal.ads.eq2
    /* renamed from: a */
    public final void mo14567a(View view, JSONObject jSONObject, cq2 cq2Var, boolean z) {
        if (!(view instanceof ViewGroup)) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        int i = 0;
        if (z) {
            if (Build.VERSION.SDK_INT >= 21) {
                HashMap hashMap = new HashMap();
                for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                    View childAt = viewGroup.getChildAt(i2);
                    ArrayList arrayList = (ArrayList) hashMap.get(Float.valueOf(childAt.getZ()));
                    ArrayList arrayList2 = arrayList;
                    if (arrayList == null) {
                        arrayList2 = new ArrayList();
                        hashMap.put(Float.valueOf(childAt.getZ()), arrayList2);
                    }
                    arrayList2.add(childAt);
                }
                ArrayList arrayList3 = new ArrayList(hashMap.keySet());
                Collections.sort(arrayList3);
                int size = arrayList3.size();
                for (int i3 = 0; i3 < size; i3++) {
                    ArrayList arrayList4 = (ArrayList) hashMap.get((Float) arrayList3.get(i3));
                    int size2 = arrayList4.size();
                    for (int i4 = 0; i4 < size2; i4++) {
                        cq2Var.mo8733a((View) arrayList4.get(i4), this, jSONObject);
                    }
                }
                return;
            }
            i = 0;
        }
        while (i < viewGroup.getChildCount()) {
            cq2Var.mo8733a(viewGroup.getChildAt(i), this, jSONObject);
            i++;
        }
    }

    @Override // com.google.android.gms.internal.ads.eq2
    /* renamed from: d */
    public final JSONObject mo14566d(View view) {
        if (view == null) {
            return mq2.m13114b(0, 0, 0, 0);
        }
        int width = view.getWidth();
        int height = view.getHeight();
        view.getLocationOnScreen(this.f24017a);
        int[] iArr = this.f24017a;
        return mq2.m13114b(iArr[0], iArr[1], width, height);
    }
}
