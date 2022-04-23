package com.iab.omid.library.pubnativenet.c;

import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import com.iab.omid.library.pubnativenet.c.a;
import com.iab.omid.library.pubnativenet.d.b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/c/d.class */
public final class d implements a {

    /* renamed from: a  reason: collision with root package name */
    private final int[] f33380a = new int[2];

    @Override // com.iab.omid.library.pubnativenet.c.a
    public final JSONObject a(View view) {
        if (view == null) {
            return b.a(0, 0, 0, 0);
        }
        int width = view.getWidth();
        int height = view.getHeight();
        view.getLocationOnScreen(this.f33380a);
        int[] iArr = this.f33380a;
        return b.a(iArr[0], iArr[1], width, height);
    }

    @Override // com.iab.omid.library.pubnativenet.c.a
    public final void a(View view, JSONObject jSONObject, a.AbstractC0534a aVar, boolean z) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int i = 0;
            if (z) {
                if (Build.VERSION.SDK_INT < 21) {
                    i = 0;
                } else {
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
                            aVar.a((View) it3.next(), this, jSONObject);
                        }
                    }
                    return;
                }
            }
            while (i < viewGroup.getChildCount()) {
                aVar.a(viewGroup.getChildAt(i), this, jSONObject);
                i++;
            }
        }
    }
}
