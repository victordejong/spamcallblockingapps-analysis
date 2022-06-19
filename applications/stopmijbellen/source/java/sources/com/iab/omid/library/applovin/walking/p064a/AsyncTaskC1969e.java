package com.iab.omid.library.applovin.walking.p064a;

import com.iab.omid.library.applovin.adsession.C1929a;
import com.iab.omid.library.applovin.p060b.C1931a;
import com.iab.omid.library.applovin.walking.p064a.AbstractAsyncTaskC1964b;
import java.util.HashSet;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.applovin.walking.a.e */
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/applovin/walking/a/e.class */
public class AsyncTaskC1969e extends AbstractAsyncTaskC1963a {
    public AsyncTaskC1969e(AbstractAsyncTaskC1964b.AbstractC1966b abstractC1966b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(abstractC1966b, hashSet, jSONObject, j);
    }

    /* renamed from: b */
    private void m3998b(String str) {
        C1931a m4171a = C1931a.m4171a();
        if (m4171a != null) {
            for (C1929a c1929a : m4171a.m4169b()) {
                if (((AbstractAsyncTaskC1963a) this).f7241a.contains(c1929a.getAdSessionId())) {
                    c1929a.getAdSessionStatePublisher().m4056b(str, this.f7243c);
                }
            }
        }
    }

    /* renamed from: a */
    public String doInBackground(Object... objArr) {
        return this.f7242b.toString();
    }

    @Override // com.iab.omid.library.applovin.walking.p064a.AbstractAsyncTaskC1964b
    /* renamed from: a */
    public void onPostExecute(String str) {
        m3998b(str);
        super.onPostExecute(str);
    }
}
