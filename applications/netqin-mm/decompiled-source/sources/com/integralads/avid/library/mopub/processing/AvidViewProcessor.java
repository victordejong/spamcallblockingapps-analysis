package com.integralads.avid.library.mopub.processing;

import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import com.integralads.avid.library.mopub.processing.IAvidNodeProcessor;
import com.integralads.avid.library.mopub.utils.AvidJSONUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;
/* loaded from: classes2-dex2jar.jar:com/integralads/avid/library/mopub/processing/AvidViewProcessor.class */
public class AvidViewProcessor implements IAvidNodeProcessor {

    /* renamed from: a */
    public final int[] f33046a = new int[2];

    /* renamed from: a */
    public final void m5394a(ViewGroup viewGroup, JSONObject jSONObject, IAvidNodeProcessor.IAvidViewWalker iAvidViewWalker) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            iAvidViewWalker.walkView(viewGroup.getChildAt(i), this, jSONObject);
        }
    }

    /* renamed from: b */
    public final void m5393b(ViewGroup viewGroup, JSONObject jSONObject, IAvidNodeProcessor.IAvidViewWalker iAvidViewWalker) {
        HashMap hashMap = new HashMap();
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            View childAt = viewGroup.getChildAt(i);
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
        Iterator it = arrayList3.iterator();
        while (it.hasNext()) {
            Iterator it2 = ((ArrayList) hashMap.get((Float) it.next())).iterator();
            while (it2.hasNext()) {
                iAvidViewWalker.walkView((View) it2.next(), this, jSONObject);
            }
        }
    }

    @Override // com.integralads.avid.library.mopub.processing.IAvidNodeProcessor
    public JSONObject getState(View view) {
        int width = view.getWidth();
        int height = view.getHeight();
        view.getLocationOnScreen(this.f33046a);
        int[] iArr = this.f33046a;
        return AvidJSONUtil.getViewState(iArr[0], iArr[1], width, height);
    }

    @Override // com.integralads.avid.library.mopub.processing.IAvidNodeProcessor
    public void iterateChildren(View view, JSONObject jSONObject, IAvidNodeProcessor.IAvidViewWalker iAvidViewWalker, boolean z) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (!z || Build.VERSION.SDK_INT < 21) {
                m5394a(viewGroup, jSONObject, iAvidViewWalker);
            } else {
                m5393b(viewGroup, jSONObject, iAvidViewWalker);
            }
        }
    }
}
