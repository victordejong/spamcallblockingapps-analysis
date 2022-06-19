package com.iab.omid.library.pubnativenet.p444g.p445a;

import com.iab.omid.library.pubnativenet.adsession.C16427k;
import com.iab.omid.library.pubnativenet.p439b.C16429a;
import com.iab.omid.library.pubnativenet.p439b.C16434e;
import com.iab.omid.library.pubnativenet.p443f.AbstractC16452a;
import com.iab.omid.library.pubnativenet.p444g.p445a.AbstractAsyncTaskC16462b;
import java.util.Collections;
import java.util.HashSet;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.pubnativenet.g.a.e */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/g/a/e.class */
public final class AsyncTaskC16467e extends AbstractAsyncTaskC16461a {
    public AsyncTaskC16467e(AbstractAsyncTaskC16462b.AbstractC16464b abstractC16464b, HashSet<String> hashSet, JSONObject jSONObject, long j) {
        super(abstractC16464b, hashSet, jSONObject, j);
    }

    @Override // com.iab.omid.library.pubnativenet.p444g.p445a.AbstractAsyncTaskC16462b
    /* renamed from: a */
    public final void onPostExecute(String str) {
        C16429a m7263a = C16429a.m7263a();
        if (m7263a != null) {
            for (C16427k c16427k : Collections.unmodifiableCollection(m7263a.f57926a)) {
                if (this.f57992a.contains(c16427k.f57919f)) {
                    AbstractC16452a abstractC16452a = c16427k.f57916c;
                    if (this.f57994c >= abstractC16452a.f57968d && abstractC16452a.f57967c != AbstractC16452a.EnumC16453a.f57972c) {
                        abstractC16452a.f57967c = AbstractC16452a.EnumC16453a.f57972c;
                        C16434e.m7257a().m7249b(abstractC16452a.m7208c(), str);
                    }
                }
            }
        }
        super.onPostExecute(str);
    }

    @Override // android.os.AsyncTask
    protected final /* synthetic */ String doInBackground(Object[] objArr) {
        return this.f57993b.toString();
    }
}
