package com.iab.omid.library.mopub.walking.p129a;

import android.os.AsyncTask;
import java.util.concurrent.ThreadPoolExecutor;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.mopub.walking.a.b */
/* loaded from: classes3-dex2jar.jar:com/iab/omid/library/mopub/walking/a/b.class */
public abstract class AbstractAsyncTaskC2625b extends AsyncTask<Object, Void, String> {

    /* renamed from: a */
    private AbstractC2626a f8399a;

    /* renamed from: d */
    public final AbstractC2627b f8400d;

    /* renamed from: com.iab.omid.library.mopub.walking.a.b$a */
    /* loaded from: classes3-dex2jar.jar:com/iab/omid/library/mopub/walking/a/b$a.class */
    public interface AbstractC2626a {
        /* renamed from: a */
        void m36341a(AbstractAsyncTaskC2625b abstractAsyncTaskC2625b);
    }

    /* renamed from: com.iab.omid.library.mopub.walking.a.b$b */
    /* loaded from: classes3-dex2jar.jar:com/iab/omid/library/mopub/walking/a/b$b.class */
    public interface AbstractC2627b {
        /* renamed from: a */
        void m36340a(JSONObject jSONObject);

        /* renamed from: b */
        JSONObject m36339b();
    }

    public AbstractAsyncTaskC2625b(AbstractC2627b abstractC2627b) {
        this.f8400d = abstractC2627b;
    }

    /* renamed from: a */
    public void m36344a(AbstractC2626a abstractC2626a) {
        this.f8399a = abstractC2626a;
    }

    /* renamed from: a */
    public void onPostExecute(String str) {
        AbstractC2626a abstractC2626a = this.f8399a;
        if (abstractC2626a != null) {
            abstractC2626a.m36341a(this);
        }
    }

    /* renamed from: a */
    public void m36342a(ThreadPoolExecutor threadPoolExecutor) {
        executeOnExecutor(threadPoolExecutor, new Object[0]);
    }
}
