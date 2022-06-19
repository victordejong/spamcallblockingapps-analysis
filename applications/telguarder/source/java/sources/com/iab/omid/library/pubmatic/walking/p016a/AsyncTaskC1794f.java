package com.iab.omid.library.pubmatic.walking.p016a;

import android.text.TextUtils;
import com.iab.omid.library.pubmatic.adsession.C1753a;
import com.iab.omid.library.pubmatic.p012b.C1755a;
import com.iab.omid.library.pubmatic.p014d.C1770b;
import com.iab.omid.library.pubmatic.walking.p016a.AbstractAsyncTaskC1788b;
import java.util.HashSet;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.pubmatic.walking.a.f */
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/walking/a/f.class */
public class AsyncTaskC1794f extends AbstractAsyncTaskC1787a {
    public AsyncTaskC1794f(AbstractAsyncTaskC1788b.AbstractC1790b abstractC1790b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(abstractC1790b, hashSet, jSONObject, j);
    }

    /* renamed from: b */
    private void m1136b(String str) {
        C1755a m1306a = C1755a.m1306a();
        if (m1306a != null) {
            for (C1753a c1753a : m1306a.m1304b()) {
                if (this.f307a.contains(c1753a.getAdSessionId())) {
                    c1753a.getAdSessionStatePublisher().m1199a(str, this.f309c);
                }
            }
        }
    }

    /* renamed from: a */
    public String doInBackground(Object... objArr) {
        if (C1770b.m1233b(this.f308b, this.f311d.mo1132b())) {
            return null;
        }
        this.f311d.mo1134a(this.f308b);
        return this.f308b.toString();
    }

    @Override // com.iab.omid.library.pubmatic.walking.p016a.AbstractAsyncTaskC1788b
    /* renamed from: a */
    public void onPostExecute(String str) {
        if (!TextUtils.isEmpty(str)) {
            m1136b(str);
        }
        super.onPostExecute(str);
    }
}
