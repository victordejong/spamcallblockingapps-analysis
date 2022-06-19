package com.iab.omid.library.pubmatic.walking.p016a;

import com.iab.omid.library.pubmatic.adsession.C1753a;
import com.iab.omid.library.pubmatic.p012b.C1755a;
import com.iab.omid.library.pubmatic.walking.p016a.AbstractAsyncTaskC1788b;
import java.util.HashSet;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.pubmatic.walking.a.e */
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/walking/a/e.class */
public class AsyncTaskC1793e extends AbstractAsyncTaskC1787a {
    public AsyncTaskC1793e(AbstractAsyncTaskC1788b.AbstractC1790b abstractC1790b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(abstractC1790b, hashSet, jSONObject, j);
    }

    /* renamed from: b */
    private void m1139b(String str) {
        C1755a m1306a = C1755a.m1306a();
        if (m1306a != null) {
            for (C1753a c1753a : m1306a.m1304b()) {
                if (this.f307a.contains(c1753a.getAdSessionId())) {
                    c1753a.getAdSessionStatePublisher().m1195b(str, this.f309c);
                }
            }
        }
    }

    /* renamed from: a */
    public String doInBackground(Object... objArr) {
        return this.f308b.toString();
    }

    @Override // com.iab.omid.library.pubmatic.walking.p016a.AbstractAsyncTaskC1788b
    /* renamed from: a */
    public void onPostExecute(String str) {
        m1139b(str);
        super.onPostExecute(str);
    }
}
