package com.iab.omid.library.mopub.p431c;

import android.view.View;
import com.iab.omid.library.mopub.adsession.C16360k;
import com.iab.omid.library.mopub.p430b.C16362a;
import com.iab.omid.library.mopub.p431c.AbstractC16372a;
import com.iab.omid.library.mopub.p432d.C16379b;
import com.iab.omid.library.mopub.p432d.C16383e;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.mopub.c.c */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/c/c.class */
public final class C16375c implements AbstractC16372a {

    /* renamed from: a */
    private final AbstractC16372a f57822a;

    public C16375c(AbstractC16372a abstractC16372a) {
        this.f57822a = abstractC16372a;
    }

    @Override // com.iab.omid.library.mopub.p431c.AbstractC16372a
    /* renamed from: a */
    public final JSONObject mo7346a(View view) {
        return C16379b.m7338a(0, 0, 0, 0);
    }

    @Override // com.iab.omid.library.mopub.p431c.AbstractC16372a
    /* renamed from: a */
    public final void mo7345a(View view, JSONObject jSONObject, AbstractC16372a.AbstractC16373a abstractC16373a, boolean z) {
        View rootView;
        ArrayList arrayList = new ArrayList();
        C16362a m7365a = C16362a.m7365a();
        if (m7365a != null) {
            Collection<C16360k> unmodifiableCollection = Collections.unmodifiableCollection(m7365a.f57795b);
            IdentityHashMap identityHashMap = new IdentityHashMap((unmodifiableCollection.size() * 2) + 3);
            for (C16360k c16360k : unmodifiableCollection) {
                View m7367d = c16360k.m7367d();
                if (m7367d != null && C16383e.m7318b(m7367d) && (rootView = m7367d.getRootView()) != null && !identityHashMap.containsKey(rootView)) {
                    identityHashMap.put(rootView, rootView);
                    float m7319a = C16383e.m7319a(rootView);
                    int size = arrayList.size();
                    while (size > 0 && C16383e.m7319a((View) arrayList.get(size - 1)) > m7319a) {
                        size--;
                    }
                    arrayList.add(size, rootView);
                }
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            abstractC16373a.mo7304a((View) it2.next(), this.f57822a, jSONObject);
        }
    }
}
