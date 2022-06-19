package p072d7;

import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;
import p072d7.AbstractC2482a;
import p082e7.C2604a;
import p116h7.C3015a;
/* renamed from: d7.c */
/* loaded from: classes-dex2jar.jar:d7/c.class */
public class C2485c implements AbstractC2482a {

    /* renamed from: a */
    public final int[] f8732a = new int[2];

    @Override // p072d7.AbstractC2482a
    /* renamed from: a */
    public JSONObject mo3516a(View view) {
        if (view == null) {
            return C2604a.m3390b(0, 0, 0, 0);
        }
        int width = view.getWidth();
        int height = view.getHeight();
        view.getLocationOnScreen(this.f8732a);
        int[] iArr = this.f8732a;
        return C2604a.m3390b(iArr[0], iArr[1], width, height);
    }

    @Override // p072d7.AbstractC2482a
    /* renamed from: a */
    public void mo3515a(View view, JSONObject jSONObject, AbstractC2482a.AbstractC2483a abstractC2483a, boolean z) {
        if (!(view instanceof ViewGroup)) {
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        if (!z) {
            for (int i = 0; i < viewGroup.getChildCount(); i++) {
                ((C3015a) abstractC2483a).m2736a(viewGroup.getChildAt(i), this, jSONObject);
            }
            return;
        }
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
                ((C3015a) abstractC2483a).m2736a((View) it3.next(), this, jSONObject);
            }
        }
    }
}
