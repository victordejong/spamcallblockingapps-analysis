package com.iab.omid.library.verizonmedia.g.a;

import android.text.TextUtils;
import com.iab.omid.library.verizonmedia.adsession.k;
import com.iab.omid.library.verizonmedia.b.a;
import com.iab.omid.library.verizonmedia.b.e;
import com.iab.omid.library.verizonmedia.f.a;
import com.iab.omid.library.verizonmedia.g.a.b;
import java.util.Collections;
import java.util.HashSet;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/g/a/f.class */
public final class f extends a {
    public f(b.AbstractC0539b bVar, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(bVar, hashSet, jSONObject, j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.iab.omid.library.verizonmedia.g.a.b
    /* renamed from: a */
    public final void onPostExecute(String str) {
        a a2;
        if (!TextUtils.isEmpty(str) && (a2 = a.a()) != null) {
            for (k kVar : Collections.unmodifiableCollection(a2.f33451a)) {
                if (this.f33501a.contains(kVar.f)) {
                    com.iab.omid.library.verizonmedia.f.a aVar = kVar.f33447c;
                    if (this.f33503c >= aVar.e) {
                        aVar.f33489d = a.EnumC0538a.f33491b;
                        e.a().b(aVar.c(), str);
                    }
                }
            }
        }
        super.onPostExecute(str);
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ String doInBackground(Object[] objArr) {
        if (com.iab.omid.library.verizonmedia.d.b.b(this.f33502b, this.e.a())) {
            return null;
        }
        this.e.a(this.f33502b);
        return this.f33502b.toString();
    }
}
