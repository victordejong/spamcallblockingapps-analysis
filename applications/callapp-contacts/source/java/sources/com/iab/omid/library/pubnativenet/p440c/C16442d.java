package com.iab.omid.library.pubnativenet.p440c;

import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import com.iab.omid.library.pubnativenet.p440c.AbstractC16438a;
import com.iab.omid.library.pubnativenet.p441d.C16445b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.pubnativenet.c.d */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/c/d.class */
public final class C16442d implements AbstractC16438a {

    /* renamed from: a */
    private final int[] f57952a = new int[2];

    @Override // com.iab.omid.library.pubnativenet.p440c.AbstractC16438a
    /* renamed from: a */
    public final JSONObject mo7244a(View view) {
        if (view == null) {
            return C16445b.m7236a(0, 0, 0, 0);
        }
        int width = view.getWidth();
        int height = view.getHeight();
        view.getLocationOnScreen(this.f57952a);
        int[] iArr = this.f57952a;
        return C16445b.m7236a(iArr[0], iArr[1], width, height);
    }

    @Override // com.iab.omid.library.pubnativenet.p440c.AbstractC16438a
    /* renamed from: a */
    public final void mo7243a(View view, JSONObject jSONObject, AbstractC16438a.AbstractC16439a abstractC16439a, boolean z) {
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
                Iterator it2 = arrayList3.iterator();
                while (it2.hasNext()) {
                    Iterator it3 = ((ArrayList) hashMap.get((Float) it2.next())).iterator();
                    while (it3.hasNext()) {
                        abstractC16439a.mo7200a((View) it3.next(), this, jSONObject);
                    }
                }
                return;
            }
            i = 0;
        }
        while (i < viewGroup.getChildCount()) {
            abstractC16439a.mo7200a(viewGroup.getChildAt(i), this, jSONObject);
            i++;
        }
    }
}
