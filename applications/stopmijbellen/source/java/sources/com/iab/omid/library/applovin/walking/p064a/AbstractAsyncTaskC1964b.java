package com.iab.omid.library.applovin.walking.p064a;

import android.os.AsyncTask;
import java.util.concurrent.ThreadPoolExecutor;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.applovin.walking.a.b */
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/applovin/walking/a/b.class */
public abstract class AbstractAsyncTaskC1964b extends AsyncTask<Object, Void, String> {

    /* renamed from: a */
    private AbstractC1965a f7244a;

    /* renamed from: d */
    public final AbstractC1966b f7245d;

    /* renamed from: com.iab.omid.library.applovin.walking.a.b$a */
    /* loaded from: classes2-dex2jar.jar:com/iab/omid/library/applovin/walking/a/b$a.class */
    public interface AbstractC1965a {
        /* renamed from: a */
        void mo4002a(AbstractAsyncTaskC1964b abstractAsyncTaskC1964b);
    }

    /* renamed from: com.iab.omid.library.applovin.walking.a.b$b */
    /* loaded from: classes2-dex2jar.jar:com/iab/omid/library/applovin/walking/a/b$b.class */
    public interface AbstractC1966b {
        /* renamed from: a */
        void mo3993a(JSONObject jSONObject);

        /* renamed from: b */
        JSONObject mo3991b();
    }

    public AbstractAsyncTaskC1964b(AbstractC1966b abstractC1966b) {
        this.f7245d = abstractC1966b;
    }

    /* renamed from: a */
    public void m4005a(AbstractC1965a abstractC1965a) {
        this.f7244a = abstractC1965a;
    }

    /* renamed from: a */
    public void onPostExecute(String str) {
        AbstractC1965a abstractC1965a = this.f7244a;
        if (abstractC1965a != null) {
            abstractC1965a.mo4002a(this);
        }
    }

    /* renamed from: a */
    public void m4004a(ThreadPoolExecutor threadPoolExecutor) {
        executeOnExecutor(threadPoolExecutor, new Object[0]);
    }
}
