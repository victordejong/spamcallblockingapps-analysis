package com.iab.omid.library.verizonmedia.p449c;

import android.view.View;
import com.iab.omid.library.verizonmedia.adsession.C16492k;
import com.iab.omid.library.verizonmedia.p448b.C16494a;
import com.iab.omid.library.verizonmedia.p449c.AbstractC16504a;
import com.iab.omid.library.verizonmedia.p450d.C16511b;
import com.iab.omid.library.verizonmedia.p450d.C16515e;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.verizonmedia.c.c */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/c/c.class */
public final class C16507c implements AbstractC16504a {

    /* renamed from: a */
    private final AbstractC16504a f58083a;

    public C16507c(AbstractC16504a abstractC16504a) {
        this.f58083a = abstractC16504a;
    }

    @Override // com.iab.omid.library.verizonmedia.p449c.AbstractC16504a
    /* renamed from: a */
    public final JSONObject mo7123a(View view) {
        return C16511b.m7115a(0, 0, 0, 0);
    }

    @Override // com.iab.omid.library.verizonmedia.p449c.AbstractC16504a
    /* renamed from: a */
    public final void mo7122a(View view, JSONObject jSONObject, AbstractC16504a.AbstractC16505a abstractC16505a, boolean z) {
        View rootView;
        ArrayList arrayList = new ArrayList();
        C16494a m7145a = C16494a.m7145a();
        if (m7145a != null) {
            Collection<C16492k> unmodifiableCollection = Collections.unmodifiableCollection(m7145a.f58056b);
            IdentityHashMap identityHashMap = new IdentityHashMap((unmodifiableCollection.size() * 2) + 3);
            for (C16492k c16492k : unmodifiableCollection) {
                View m7147e = c16492k.m7147e();
                if (m7147e != null && C16515e.m7096b(m7147e) && (rootView = m7147e.getRootView()) != null && !identityHashMap.containsKey(rootView)) {
                    identityHashMap.put(rootView, rootView);
                    float m7097a = C16515e.m7097a(rootView);
                    int size = arrayList.size();
                    while (size > 0 && C16515e.m7097a((View) arrayList.get(size - 1)) > m7097a) {
                        size--;
                    }
                    arrayList.add(size, rootView);
                }
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            abstractC16505a.mo7082a((View) it2.next(), this.f58083a, jSONObject);
        }
    }
}
