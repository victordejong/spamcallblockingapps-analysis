package com.iab.omid.library.mopub.g.a;

import android.text.TextUtils;
import com.iab.omid.library.mopub.adsession.k;
import com.iab.omid.library.mopub.b.a;
import com.iab.omid.library.mopub.b.e;
import com.iab.omid.library.mopub.f.a;
import com.iab.omid.library.mopub.g.a.b;
import java.util.Collections;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/g/a/f.class */
public final class f extends a {
    public f(b.AbstractC0533b bVar, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(bVar, hashSet, jSONObject, j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.iab.omid.library.mopub.g.a.b
    /* renamed from: a */
    public final void onPostExecute(String str) {
        a a2;
        if (!TextUtils.isEmpty(str) && (a2 = a.a()) != null) {
            for (k kVar : Collections.unmodifiableCollection(a2.f33260a)) {
                if (this.f33310a.contains(kVar.f)) {
                    com.iab.omid.library.mopub.f.a aVar = kVar.f33256c;
                    if (this.f33312c >= aVar.e) {
                        aVar.f33298d = a.EnumC0532a.f33300b;
                        e.a().b(aVar.c(), str);
                    }
                }
            }
        }
        super.onPostExecute(str);
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ String doInBackground(Object[] objArr) {
        if (com.iab.omid.library.mopub.d.b.b(this.f33311b, this.e.a())) {
            return null;
        }
        this.e.a(this.f33311b);
        return this.f33311b.toString();
    }
}
