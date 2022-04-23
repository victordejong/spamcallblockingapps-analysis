package com.iab.omid.library.pubnativenet.g.a;

import com.iab.omid.library.pubnativenet.adsession.k;
import com.iab.omid.library.pubnativenet.b.a;
import com.iab.omid.library.pubnativenet.f.a;
import com.iab.omid.library.pubnativenet.g.a.b;
import java.util.Collections;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/g/a/e.class */
public final class e extends a {
    public e(b.AbstractC0536b bVar, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(bVar, hashSet, jSONObject, j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.iab.omid.library.pubnativenet.g.a.b
    /* renamed from: a */
    public final void onPostExecute(String str) {
        a a2 = a.a();
        if (a2 != null) {
            for (k kVar : Collections.unmodifiableCollection(a2.f33356a)) {
                if (this.f33405a.contains(kVar.f)) {
                    com.iab.omid.library.pubnativenet.f.a aVar = kVar.f33352c;
                    if (this.f33407c >= aVar.f33393d && aVar.f33392c != a.EnumC0535a.f33396c) {
                        aVar.f33392c = a.EnumC0535a.f33396c;
                        com.iab.omid.library.pubnativenet.b.e.a().b(aVar.c(), str);
                    }
                }
            }
        }
        super.onPostExecute(str);
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ String doInBackground(Object[] objArr) {
        return this.f33406b.toString();
    }
}
