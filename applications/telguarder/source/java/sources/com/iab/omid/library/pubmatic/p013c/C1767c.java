package com.iab.omid.library.pubmatic.p013c;

import android.view.View;
import com.iab.omid.library.pubmatic.adsession.C1753a;
import com.iab.omid.library.pubmatic.p012b.C1755a;
import com.iab.omid.library.pubmatic.p013c.AbstractC1764a;
import com.iab.omid.library.pubmatic.p014d.C1770b;
import com.iab.omid.library.pubmatic.p014d.C1775f;
import java.util.ArrayList;
import java.util.Collection;
import java.util.IdentityHashMap;
import java.util.Iterator;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.pubmatic.c.c */
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/c/c.class */
public class C1767c implements AbstractC1764a {

    /* renamed from: a */
    private final AbstractC1764a f263a;

    public C1767c(AbstractC1764a abstractC1764a) {
        this.f263a = abstractC1764a;
    }

    /* renamed from: a */
    ArrayList<View> m1253a() {
        View rootView;
        ArrayList<View> arrayList = new ArrayList<>();
        C1755a m1306a = C1755a.m1306a();
        if (m1306a != null) {
            Collection<C1753a> m1302c = m1306a.m1302c();
            IdentityHashMap identityHashMap = new IdentityHashMap((m1302c.size() * 2) + 3);
            for (C1753a c1753a : m1302c) {
                View m1321d = c1753a.m1321d();
                if (m1321d != null && C1775f.m1210c(m1321d) && (rootView = m1321d.getRootView()) != null && !identityHashMap.containsKey(rootView)) {
                    identityHashMap.put(rootView, rootView);
                    float m1212a = C1775f.m1212a(rootView);
                    int size = arrayList.size();
                    while (size > 0 && C1775f.m1212a(arrayList.get(size - 1)) > m1212a) {
                        size--;
                    }
                    arrayList.add(size, rootView);
                }
            }
        }
        return arrayList;
    }

    @Override // com.iab.omid.library.pubmatic.p013c.AbstractC1764a
    /* renamed from: a */
    public JSONObject mo1252a(View view) {
        return C1770b.m1243a(0, 0, 0, 0);
    }

    @Override // com.iab.omid.library.pubmatic.p013c.AbstractC1764a
    /* renamed from: a */
    public void mo1251a(View view, JSONObject jSONObject, AbstractC1764a.AbstractC1765a abstractC1765a, boolean z) {
        Iterator<View> it = m1253a().iterator();
        while (it.hasNext()) {
            abstractC1765a.mo1180a(it.next(), this.f263a, jSONObject);
        }
    }
}
