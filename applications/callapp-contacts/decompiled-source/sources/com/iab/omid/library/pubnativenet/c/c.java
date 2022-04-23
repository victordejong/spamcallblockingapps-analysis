package com.iab.omid.library.pubnativenet.c;

import android.view.View;
import com.iab.omid.library.pubnativenet.adsession.k;
import com.iab.omid.library.pubnativenet.c.a;
import com.iab.omid.library.pubnativenet.d.b;
import com.iab.omid.library.pubnativenet.d.e;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/c/c.class */
public final class c implements a {

    /* renamed from: a  reason: collision with root package name */
    private final a f33379a;

    public c(a aVar) {
        this.f33379a = aVar;
    }

    @Override // com.iab.omid.library.pubnativenet.c.a
    public final JSONObject a(View view) {
        return b.a(0, 0, 0, 0);
    }

    @Override // com.iab.omid.library.pubnativenet.c.a
    public final void a(View view, JSONObject jSONObject, a.AbstractC0534a aVar, boolean z) {
        View rootView;
        ArrayList arrayList = new ArrayList();
        com.iab.omid.library.pubnativenet.b.a a2 = com.iab.omid.library.pubnativenet.b.a.a();
        if (a2 != null) {
            Collection<k> unmodifiableCollection = Collections.unmodifiableCollection(a2.f33357b);
            IdentityHashMap identityHashMap = new IdentityHashMap((unmodifiableCollection.size() * 2) + 3);
            for (k kVar : unmodifiableCollection) {
                View e = kVar.e();
                if (e != null && e.b(e) && (rootView = e.getRootView()) != null && !identityHashMap.containsKey(rootView)) {
                    identityHashMap.put(rootView, rootView);
                    float a3 = e.a(rootView);
                    int size = arrayList.size();
                    while (size > 0 && e.a((View) arrayList.get(size - 1)) > a3) {
                        size--;
                    }
                    arrayList.add(size, rootView);
                }
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            aVar.a((View) it2.next(), this.f33379a, jSONObject);
        }
    }
}
