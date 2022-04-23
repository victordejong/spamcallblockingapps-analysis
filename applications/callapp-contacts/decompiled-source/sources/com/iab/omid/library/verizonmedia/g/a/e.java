package com.iab.omid.library.verizonmedia.g.a;

import com.iab.omid.library.verizonmedia.adsession.k;
import com.iab.omid.library.verizonmedia.b.a;
import com.iab.omid.library.verizonmedia.f.a;
import com.iab.omid.library.verizonmedia.g.a.b;
import java.util.Collections;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/g/a/e.class */
public final class e extends a {
    public e(b.AbstractC0539b bVar, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(bVar, hashSet, jSONObject, j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.iab.omid.library.verizonmedia.g.a.b
    /* renamed from: a */
    public final void onPostExecute(String str) {
        a a2 = a.a();
        if (a2 != null) {
            for (k kVar : Collections.unmodifiableCollection(a2.f33451a)) {
                if (this.f33501a.contains(kVar.f)) {
                    com.iab.omid.library.verizonmedia.f.a aVar = kVar.f33447c;
                    if (this.f33503c >= aVar.e && aVar.f33489d != a.EnumC0538a.f33492c) {
                        aVar.f33489d = a.EnumC0538a.f33492c;
                        com.iab.omid.library.verizonmedia.b.e.a().b(aVar.c(), str);
                    }
                }
            }
        }
        super.onPostExecute(str);
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ String doInBackground(Object[] objArr) {
        return this.f33502b.toString();
    }
}
