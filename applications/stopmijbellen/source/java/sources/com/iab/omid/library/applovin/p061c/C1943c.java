package com.iab.omid.library.applovin.p061c;

import android.view.View;
import com.iab.omid.library.applovin.adsession.C1929a;
import com.iab.omid.library.applovin.p060b.C1931a;
import com.iab.omid.library.applovin.p061c.AbstractC1940a;
import com.iab.omid.library.applovin.p062d.C1946b;
import com.iab.omid.library.applovin.p062d.C1951f;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.applovin.c.c */
/* loaded from: classes-dex2jar.jar:com/iab/omid/library/applovin/c/c.class */
public class C1943c implements AbstractC1940a {

    /* renamed from: a */
    private final AbstractC1940a f7194a;

    public C1943c(AbstractC1940a abstractC1940a) {
        this.f7194a = abstractC1940a;
    }

    /* renamed from: a */
    public ArrayList<View> m4116a() {
        View rootView;
        ArrayList<View> arrayList = new ArrayList<>();
        C1931a m4171a = C1931a.m4171a();
        if (m4171a != null) {
            Collection<C1929a> m4167c = m4171a.m4167c();
            IdentityHashMap identityHashMap = new IdentityHashMap((m4167c.size() * 2) + 3);
            for (C1929a c1929a : m4167c) {
                View m4185e = c1929a.m4185e();
                if (m4185e != null && C1951f.m4071c(m4185e) && (rootView = m4185e.getRootView()) != null && !identityHashMap.containsKey(rootView)) {
                    identityHashMap.put(rootView, rootView);
                    float m4073a = C1951f.m4073a(rootView);
                    int size = arrayList.size();
                    while (size > 0 && C1951f.m4073a(arrayList.get(size - 1)) > m4073a) {
                        size--;
                    }
                    arrayList.add(size, rootView);
                }
            }
        }
        return arrayList;
    }

    @Override // com.iab.omid.library.applovin.p061c.AbstractC1940a
    /* renamed from: a */
    public JSONObject mo4115a(View view) {
        return C1946b.m4106a(0, 0, 0, 0);
    }

    @Override // com.iab.omid.library.applovin.p061c.AbstractC1940a
    /* renamed from: a */
    public void mo4114a(View view, JSONObject jSONObject, AbstractC1940a.AbstractC1941a abstractC1941a, boolean z, boolean z2) {
        Iterator<View> it2 = m4116a().iterator();
        while (it2.hasNext()) {
            abstractC1941a.mo4040a(it2.next(), this.f7194a, jSONObject, z2);
        }
    }
}
