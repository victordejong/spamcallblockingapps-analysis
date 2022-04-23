package com.iab.omid.library.pubnativenet.g.a;

import android.text.TextUtils;
import com.iab.omid.library.pubnativenet.adsession.k;
import com.iab.omid.library.pubnativenet.b.a;
import com.iab.omid.library.pubnativenet.b.e;
import com.iab.omid.library.pubnativenet.f.a;
import com.iab.omid.library.pubnativenet.g.a.b;
import java.util.Collections;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/g/a/f.class */
public final class f extends a {
    public f(b.AbstractC0536b bVar, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(bVar, hashSet, jSONObject, j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.iab.omid.library.pubnativenet.g.a.b
    /* renamed from: a */
    public final void onPostExecute(String str) {
        a a2;
        if (!TextUtils.isEmpty(str) && (a2 = a.a()) != null) {
            for (k kVar : Collections.unmodifiableCollection(a2.f33356a)) {
                if (this.f33405a.contains(kVar.f)) {
                    com.iab.omid.library.pubnativenet.f.a aVar = kVar.f33352c;
                    if (this.f33407c >= aVar.f33393d) {
                        aVar.f33392c = a.EnumC0535a.f33395b;
                        e.a().b(aVar.c(), str);
                    }
                }
            }
        }
        super.onPostExecute(str);
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ String doInBackground(Object[] objArr) {
        if (com.iab.omid.library.pubnativenet.d.b.b(this.f33406b, this.e.a())) {
            return null;
        }
        this.e.a(this.f33406b);
        return this.f33406b.toString();
    }
}
