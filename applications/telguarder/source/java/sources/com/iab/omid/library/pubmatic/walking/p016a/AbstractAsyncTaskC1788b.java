package com.iab.omid.library.pubmatic.walking.p016a;

import android.os.AsyncTask;
import java.util.concurrent.ThreadPoolExecutor;
import org.json.JSONObject;
/* renamed from: com.iab.omid.library.pubmatic.walking.a.b */
/* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/walking/a/b.class */
public abstract class AbstractAsyncTaskC1788b extends AsyncTask<Object, Void, String> {

    /* renamed from: a */
    private AbstractC1789a f310a;

    /* renamed from: d */
    protected final AbstractC1790b f311d;

    /* renamed from: com.iab.omid.library.pubmatic.walking.a.b$a */
    /* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/walking/a/b$a.class */
    public interface AbstractC1789a {
        /* renamed from: a */
        void mo1143a(AbstractAsyncTaskC1788b abstractAsyncTaskC1788b);
    }

    /* renamed from: com.iab.omid.library.pubmatic.walking.a.b$b */
    /* loaded from: classes2-dex2jar.jar:com/iab/omid/library/pubmatic/walking/a/b$b.class */
    public interface AbstractC1790b {
        /* renamed from: a */
        void mo1134a(JSONObject jSONObject);

        /* renamed from: b */
        JSONObject mo1132b();
    }

    public AbstractAsyncTaskC1788b(AbstractC1790b abstractC1790b) {
        this.f311d = abstractC1790b;
    }

    /* renamed from: a */
    public void m1146a(AbstractC1789a abstractC1789a) {
        this.f310a = abstractC1789a;
    }

    /* renamed from: a */
    public void onPostExecute(String str) {
        AbstractC1789a abstractC1789a = this.f310a;
        if (abstractC1789a != null) {
            abstractC1789a.mo1143a(this);
        }
    }

    /* renamed from: a */
    public void m1145a(ThreadPoolExecutor threadPoolExecutor) {
        executeOnExecutor(threadPoolExecutor, new Object[0]);
    }
}
