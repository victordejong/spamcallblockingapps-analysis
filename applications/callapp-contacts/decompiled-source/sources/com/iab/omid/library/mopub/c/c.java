package com.iab.omid.library.mopub.c;

import android.view.View;
import com.iab.omid.library.mopub.adsession.k;
import com.iab.omid.library.mopub.c.a;
import com.iab.omid.library.mopub.d.b;
import com.iab.omid.library.mopub.d.e;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/c/c.class */
public final class c implements a {

    /* renamed from: a  reason: collision with root package name */
    private final a f33284a;

    public c(a aVar) {
        this.f33284a = aVar;
    }

    @Override // com.iab.omid.library.mopub.c.a
    public final JSONObject a(View view) {
        return b.a(0, 0, 0, 0);
    }

    @Override // com.iab.omid.library.mopub.c.a
    public final void a(View view, JSONObject jSONObject, a.AbstractC0531a aVar, boolean z) {
        View rootView;
        ArrayList arrayList = new ArrayList();
        com.iab.omid.library.mopub.b.a a2 = com.iab.omid.library.mopub.b.a.a();
        if (a2 != null) {
            Collection<k> unmodifiableCollection = Collections.unmodifiableCollection(a2.f33261b);
            IdentityHashMap identityHashMap = new IdentityHashMap((unmodifiableCollection.size() * 2) + 3);
            for (k kVar : unmodifiableCollection) {
                View d2 = kVar.d();
                if (d2 != null && e.b(d2) && (rootView = d2.getRootView()) != null && !identityHashMap.containsKey(rootView)) {
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
            aVar.a((View) it2.next(), this.f33284a, jSONObject);
        }
    }
}
