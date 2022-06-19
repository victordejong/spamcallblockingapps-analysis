package com.iab.omid.library.pubnativenet.p444g.p445a;

import android.os.AsyncTask;
import java.util.concurrent.ThreadPoolExecutor;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.pubnativenet.g.a.b */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/g/a/b.class */
public abstract class AbstractAsyncTaskC16462b extends AsyncTask<Object, Void, String> {

    /* renamed from: d */
    AbstractC16463a f57995d;

    /* renamed from: e */
    protected final AbstractC16464b f57996e;

    /* renamed from: com.iab.omid.library.pubnativenet.g.a.b$a */
    /* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/g/a/b$a.class */
    public interface AbstractC16463a {
        /* renamed from: a */
        void mo7190a();
    }

    /* renamed from: com.iab.omid.library.pubnativenet.g.a.b$b */
    /* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/g/a/b$b.class */
    public interface AbstractC16464b {
        /* renamed from: a */
        JSONObject mo7184a();

        /* renamed from: a */
        void mo7183a(JSONObject jSONObject);
    }

    public AbstractAsyncTaskC16462b(AbstractC16464b abstractC16464b) {
        this.f57996e = abstractC16464b;
    }

    /* renamed from: a */
    public void onPostExecute(String str) {
        AbstractC16463a abstractC16463a = this.f57995d;
        if (abstractC16463a != null) {
            abstractC16463a.mo7190a();
        }
    }

    /* renamed from: a */
    public final void m7191a(ThreadPoolExecutor threadPoolExecutor) {
        executeOnExecutor(threadPoolExecutor, new Object[0]);
    }
}
