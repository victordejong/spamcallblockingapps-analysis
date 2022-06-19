package com.iab.omid.library.pubnativenet.p440c;

import android.view.View;
import com.iab.omid.library.pubnativenet.adsession.C16427k;
import com.iab.omid.library.pubnativenet.p439b.C16429a;
import com.iab.omid.library.pubnativenet.p440c.AbstractC16438a;
import com.iab.omid.library.pubnativenet.p441d.C16445b;
import com.iab.omid.library.pubnativenet.p441d.C16449e;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.pubnativenet.c.c */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/c/c.class */
public final class C16441c implements AbstractC16438a {

    /* renamed from: a */
    private final AbstractC16438a f57951a;

    public C16441c(AbstractC16438a abstractC16438a) {
        this.f57951a = abstractC16438a;
    }

    @Override // com.iab.omid.library.pubnativenet.p440c.AbstractC16438a
    /* renamed from: a */
    public final JSONObject mo7244a(View view) {
        return C16445b.m7236a(0, 0, 0, 0);
    }

    @Override // com.iab.omid.library.pubnativenet.p440c.AbstractC16438a
    /* renamed from: a */
    public final void mo7243a(View view, JSONObject jSONObject, AbstractC16438a.AbstractC16439a abstractC16439a, boolean z) {
        View rootView;
        ArrayList arrayList = new ArrayList();
        C16429a m7263a = C16429a.m7263a();
        if (m7263a != null) {
            Collection<C16427k> unmodifiableCollection = Collections.unmodifiableCollection(m7263a.f57927b);
            IdentityHashMap identityHashMap = new IdentityHashMap((unmodifiableCollection.size() * 2) + 3);
            for (C16427k c16427k : unmodifiableCollection) {
                View m7266e = c16427k.m7266e();
                if (m7266e != null && C16449e.m7216b(m7266e) && (rootView = m7266e.getRootView()) != null && !identityHashMap.containsKey(rootView)) {
                    identityHashMap.put(rootView, rootView);
                    float m7217a = C16449e.m7217a(rootView);
                    int size = arrayList.size();
                    while (size > 0 && C16449e.m7217a((View) arrayList.get(size - 1)) > m7217a) {
                        size--;
                    }
                    arrayList.add(size, rootView);
                }
            }
        }
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            abstractC16439a.mo7200a((View) it2.next(), this.f57951a, jSONObject);
        }
    }
}
