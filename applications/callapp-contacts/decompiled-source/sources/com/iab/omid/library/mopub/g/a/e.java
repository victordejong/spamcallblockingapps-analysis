package com.iab.omid.library.mopub.g.a;

import com.iab.omid.library.mopub.adsession.k;
import com.iab.omid.library.mopub.b.a;
import com.iab.omid.library.mopub.f.a;
import com.iab.omid.library.mopub.g.a.b;
import java.util.Collections;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/g/a/e.class */
public final class e extends a {
    public e(b.AbstractC0533b bVar, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(bVar, hashSet, jSONObject, j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.iab.omid.library.mopub.g.a.b
    /* renamed from: a */
    public final void onPostExecute(String str) {
        a a2 = a.a();
        if (a2 != null) {
            for (k kVar : Collections.unmodifiableCollection(a2.f33260a)) {
                if (this.f33310a.contains(kVar.f)) {
                    com.iab.omid.library.mopub.f.a aVar = kVar.f33256c;
                    if (this.f33312c >= aVar.e && aVar.f33298d != a.EnumC0532a.f33301c) {
                        aVar.f33298d = a.EnumC0532a.f33301c;
                        com.iab.omid.library.mopub.b.e.a().b(aVar.c(), str);
                    }
                }
            }
        }
        super.onPostExecute(str);
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ String doInBackground(Object[] objArr) {
        return this.f33311b.toString();
    }
}
