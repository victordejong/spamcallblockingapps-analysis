package p127i7;

import android.os.AsyncTask;
/* renamed from: i7.b */
/* loaded from: classes-dex2jar.jar:i7/b.class */
public abstract class AbstractAsyncTaskC3127b extends AsyncTask<Object, Void, String> {

    /* renamed from: a */
    public AbstractC3128a f10569a;

    /* renamed from: b */
    public final AbstractC3129b f10570b;

    /* renamed from: i7.b$a */
    /* loaded from: classes-dex2jar.jar:i7/b$a.class */
    public interface AbstractC3128a {
    }

    /* renamed from: i7.b$b */
    /* loaded from: classes-dex2jar.jar:i7/b$b.class */
    public interface AbstractC3129b {
    }

    public AbstractAsyncTaskC3127b(AbstractC3129b abstractC3129b) {
        this.f10570b = abstractC3129b;
    }

    /* renamed from: a */
    public void onPostExecute(String str) {
        AbstractC3128a abstractC3128a = this.f10569a;
        if (abstractC3128a != null) {
            C3130c c3130c = (C3130c) abstractC3128a;
            c3130c.f10573c = null;
            c3130c.m2591a();
        }
    }
}
