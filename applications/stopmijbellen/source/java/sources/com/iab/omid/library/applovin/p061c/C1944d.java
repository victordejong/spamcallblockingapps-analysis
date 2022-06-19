package com.iab.omid.library.applovin.p061c;

import android.annotation.TargetApi;
import android.view.View;
import android.view.ViewGroup;
import com.iab.omid.library.applovin.p061c.AbstractC1940a;
import com.iab.omid.library.applovin.p062d.C1946b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.applovin.c.d */
/* loaded from: classes-dex2jar.jar:com/iab/omid/library/applovin/c/d.class */
public class C1944d implements AbstractC1940a {

    /* renamed from: a */
    private final int[] f7195a = new int[2];

    /* renamed from: a */
    private void m4113a(ViewGroup viewGroup, JSONObject jSONObject, AbstractC1940a.AbstractC1941a abstractC1941a, boolean z) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            abstractC1941a.mo4040a(viewGroup.getChildAt(i), this, jSONObject, z);
        }
    }

    @TargetApi(21)
    /* renamed from: b */
    private void m4112b(ViewGroup viewGroup, JSONObject jSONObject, AbstractC1940a.AbstractC1941a abstractC1941a, boolean z) {
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
        Iterator it2 = arrayList3.iterator();
        while (it2.hasNext()) {
            Iterator it3 = ((ArrayList) hashMap.get((Float) it2.next())).iterator();
            while (it3.hasNext()) {
                abstractC1941a.mo4040a((View) it3.next(), this, jSONObject, z);
            }
        }
    }

    @Override // com.iab.omid.library.applovin.p061c.AbstractC1940a
    /* renamed from: a */
    public JSONObject mo4115a(View view) {
        if (view == null) {
            return C1946b.m4106a(0, 0, 0, 0);
        }
        int width = view.getWidth();
        int height = view.getHeight();
        view.getLocationOnScreen(this.f7195a);
        int[] iArr = this.f7195a;
        return C1946b.m4106a(iArr[0], iArr[1], width, height);
    }

    @Override // com.iab.omid.library.applovin.p061c.AbstractC1940a
    /* renamed from: a */
    public void mo4114a(View view, JSONObject jSONObject, AbstractC1940a.AbstractC1941a abstractC1941a, boolean z, boolean z2) {
        if (!(view instanceof ViewGroup)) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        if (z) {
            m4112b(viewGroup, jSONObject, abstractC1941a, z2);
        } else {
            m4113a(viewGroup, jSONObject, abstractC1941a, z2);
        }
    }
}
