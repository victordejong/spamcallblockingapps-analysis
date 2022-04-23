package com.iab.omid.library.pubnativenet.g.a;

import android.os.AsyncTask;
import java.util.concurrent.ThreadPoolExecutor;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/g/a/b.class */
public abstract class b extends AsyncTask<Object, Void, String> {

    /* renamed from: d  reason: collision with root package name */
    a f33408d;
    protected final AbstractC0536b e;

    /* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/g/a/b$a.class */
    public interface a {
        void a();
    }

    /* renamed from: com.iab.omid.library.pubnativenet.g.a.b$b  reason: collision with other inner class name */
    /* loaded from: classes4-dex2jar.jar:com/iab/omid/library/pubnativenet/g/a/b$b.class */
    public interface AbstractC0536b {
        JSONObject a();

        void a(JSONObject jSONObject);
    }

    public b(AbstractC0536b bVar) {
        this.e = bVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public void onPostExecute(String str) {
        a aVar = this.f33408d;
        if (aVar != null) {
            aVar.a();
        }
    }

    public final void a(ThreadPoolExecutor threadPoolExecutor) {
        executeOnExecutor(threadPoolExecutor, new Object[0]);
    }
}
