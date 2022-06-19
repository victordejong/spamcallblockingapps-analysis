package com.iab.omid.library.pubmatic.p013c;

import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import com.iab.omid.library.pubmatic.p013c.AbstractC1764a;
import com.iab.omid.library.pubmatic.p014d.C1770b;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.pubmatic.c.d */
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/c/d.class */
public class C1768d implements AbstractC1764a {

    /* renamed from: a */
    private final int[] f264a = new int[2];

    /* renamed from: a */
    private void m1250a(ViewGroup viewGroup, JSONObject jSONObject, AbstractC1764a.AbstractC1765a abstractC1765a) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            abstractC1765a.mo1180a(viewGroup.getChildAt(i), this, jSONObject);
        }
    }

    /* renamed from: b */
    private void m1249b(ViewGroup viewGroup, JSONObject jSONObject, AbstractC1764a.AbstractC1765a abstractC1765a) {
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
                abstractC1765a.mo1180a((View) it2.next(), this, jSONObject);
            }
        }
    }

    @Override // com.iab.omid.library.pubmatic.p013c.AbstractC1764a
    /* renamed from: a */
    public JSONObject mo1252a(View view) {
        if (view == null) {
            return C1770b.m1243a(0, 0, 0, 0);
        }
        int width = view.getWidth();
        int height = view.getHeight();
        view.getLocationOnScreen(this.f264a);
        int[] iArr = this.f264a;
        return C1770b.m1243a(iArr[0], iArr[1], width, height);
    }

    @Override // com.iab.omid.library.pubmatic.p013c.AbstractC1764a
    /* renamed from: a */
    public void mo1251a(View view, JSONObject jSONObject, AbstractC1764a.AbstractC1765a abstractC1765a, boolean z) {
        if (!(view instanceof ViewGroup)) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        if (!z || Build.VERSION.SDK_INT < 21) {
            m1250a(viewGroup, jSONObject, abstractC1765a);
        } else {
            m1249b(viewGroup, jSONObject, abstractC1765a);
        }
    }
}
