package com.iab.omid.library.verizonmedia.p453g.p454a;

import android.os.AsyncTask;
import java.util.concurrent.ThreadPoolExecutor;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.verizonmedia.g.a.b */
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/g/a/b.class */
public abstract class AbstractAsyncTaskC16528b extends AsyncTask<Object, Void, String> {

    /* renamed from: d */
    AbstractC16529a f58127d;

    /* renamed from: e */
    protected final AbstractC16530b f58128e;

    /* renamed from: com.iab.omid.library.verizonmedia.g.a.b$a */
    /* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/g/a/b$a.class */
    public interface AbstractC16529a {
        /* renamed from: a */
        void mo7072a();
    }

    /* renamed from: com.iab.omid.library.verizonmedia.g.a.b$b */
    /* loaded from: classes4-dex2jar.jar:com/iab/omid/library/verizonmedia/g/a/b$b.class */
    public interface AbstractC16530b {
        /* renamed from: a */
        JSONObject mo7066a();

        /* renamed from: a */
        void mo7065a(JSONObject jSONObject);
    }

    public AbstractAsyncTaskC16528b(AbstractC16530b abstractC16530b) {
        this.f58128e = abstractC16530b;
    }

    /* renamed from: a */
    public void onPostExecute(String str) {
        AbstractC16529a abstractC16529a = this.f58127d;
        if (abstractC16529a != null) {
            abstractC16529a.mo7072a();
        }
    }

    /* renamed from: a */
    public final void m7073a(ThreadPoolExecutor threadPoolExecutor) {
        executeOnExecutor(threadPoolExecutor, new Object[0]);
    }
}
