package com.iab.omid.library.mopub.p435g.p436a;

import android.os.AsyncTask;
import java.util.concurrent.ThreadPoolExecutor;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.mopub.g.a.b */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/g/a/b.class */
public abstract class AbstractAsyncTaskC16396b extends AsyncTask<Object, Void, String> {

    /* renamed from: d */
    AbstractC16397a f57866d;

    /* renamed from: e */
    protected final AbstractC16398b f57867e;

    /* renamed from: com.iab.omid.library.mopub.g.a.b$a */
    /* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/g/a/b$a.class */
    public interface AbstractC16397a {
        /* renamed from: a */
        void mo7294a();
    }

    /* renamed from: com.iab.omid.library.mopub.g.a.b$b */
    /* loaded from: classes4-dex2jar.jar:com/iab/omid/library/mopub/g/a/b$b.class */
    public interface AbstractC16398b {
        /* renamed from: a */
        JSONObject mo7288a();

        /* renamed from: a */
        void mo7287a(JSONObject jSONObject);
    }

    public AbstractAsyncTaskC16396b(AbstractC16398b abstractC16398b) {
        this.f57867e = abstractC16398b;
    }

    /* renamed from: a */
    public void onPostExecute(String str) {
        AbstractC16397a abstractC16397a = this.f57866d;
        if (abstractC16397a != null) {
            abstractC16397a.mo7294a();
        }
    }

    /* renamed from: a */
    public final void m7295a(ThreadPoolExecutor threadPoolExecutor) {
        executeOnExecutor(threadPoolExecutor, new Object[0]);
    }
}
