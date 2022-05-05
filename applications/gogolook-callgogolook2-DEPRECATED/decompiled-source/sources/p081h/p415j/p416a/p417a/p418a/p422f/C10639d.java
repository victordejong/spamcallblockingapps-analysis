package p081h.p415j.p416a.p417a.p418a.p422f;

import android.annotation.TargetApi;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;
import p081h.p415j.p416a.p417a.p418a.p422f.AbstractC10635a;
import p081h.p415j.p416a.p417a.p418a.p423g.C10641b;
/* renamed from: h.j.a.a.a.f.d */
/* loaded from: classes2-dex2jar.jar:h/j/a/a/a/f/d.class */
public class C10639d implements AbstractC10635a {

    /* renamed from: a */
    public final int[] f24224a = new int[2];

    @Override // p081h.p415j.p416a.p417a.p418a.p422f.AbstractC10635a
    /* renamed from: a */
    public JSONObject mo11110a(View view) {
        int width = view.getWidth();
        int height = view.getHeight();
        view.getLocationOnScreen(this.f24224a);
        int[] iArr = this.f24224a;
        return C10641b.m11101a(iArr[0], iArr[1], width, height);
    }

    @Override // p081h.p415j.p416a.p417a.p418a.p422f.AbstractC10635a
    /* renamed from: a */
    public void mo11109a(View view, JSONObject jSONObject, AbstractC10635a.AbstractC10636a aVar, boolean z) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (!z || Build.VERSION.SDK_INT < 21) {
                m11108a(viewGroup, jSONObject, aVar);
            } else {
                m11107b(viewGroup, jSONObject, aVar);
            }
        }
    }

    /* renamed from: a */
    public final void m11108a(ViewGroup viewGroup, JSONObject jSONObject, AbstractC10635a.AbstractC10636a aVar) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            aVar.mo11052a(viewGroup.getChildAt(i), this, jSONObject);
        }
    }

    @TargetApi(21)
    /* renamed from: b */
    public final void m11107b(ViewGroup viewGroup, JSONObject jSONObject, AbstractC10635a.AbstractC10636a aVar) {
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
                aVar.mo11052a((View) it2.next(), this, jSONObject);
            }
        }
    }
}
