package p131c.p372f.p373a.p374a.p375a.p379k;

import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import org.json.JSONObject;
import p131c.p372f.p373a.p374a.p375a.p379k.AbstractC6423d;
import p131c.p372f.p373a.p374a.p375a.p385n.C6454b;
/* renamed from: c.f.a.a.a.k.c */
/* loaded from: classes2-dex2jar.jar:c/f/a/a/a/k/c.class */
public class C6422c implements AbstractC6423d {

    /* renamed from: a */
    public final int[] f20104a = new int[2];

    @Override // p131c.p372f.p373a.p374a.p375a.p379k.AbstractC6423d
    /* renamed from: a */
    public void mo20908a(View view, JSONObject jSONObject, AbstractC6423d.AbstractC6424a aVar, boolean z) {
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (!z || Build.VERSION.SDK_INT < 21) {
                m20910a(viewGroup, jSONObject, aVar);
            } else {
                m20909b(viewGroup, jSONObject, aVar);
            }
        }
    }

    /* renamed from: a */
    public final void m20910a(ViewGroup viewGroup, JSONObject jSONObject, AbstractC6423d.AbstractC6424a aVar) {
        for (int i = 0; i < viewGroup.getChildCount(); i++) {
            aVar.mo20907a(viewGroup.getChildAt(i), this, jSONObject);
        }
    }

    /* renamed from: b */
    public final void m20909b(ViewGroup viewGroup, JSONObject jSONObject, AbstractC6423d.AbstractC6424a aVar) {
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
                aVar.mo20907a((View) it2.next(), this, jSONObject);
            }
        }
    }

    @Override // p131c.p372f.p373a.p374a.p375a.p379k.AbstractC6423d
    public JSONObject getState(View view) {
        int width = view.getWidth();
        int height = view.getHeight();
        view.getLocationOnScreen(this.f20104a);
        int[] iArr = this.f20104a;
        return C6454b.m20837a(iArr[0], iArr[1], width, height);
    }
}
