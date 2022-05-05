package p081h.p415j.p416a.p417a.p418a.p426j.p427b;

import android.os.AsyncTask;
import java.util.concurrent.ThreadPoolExecutor;
import org.json.JSONObject;
/* renamed from: h.j.a.a.a.j.b.b */
/* loaded from: classes2-dex2jar.jar:h/j/a/a/a/j/b/b.class */
public abstract class AbstractAsyncTaskC10660b extends AsyncTask<Object, Void, String> {

    /* renamed from: a */
    public AbstractC10661a f24258a;

    /* renamed from: b */
    public final AbstractC10662b f24259b;

    /* renamed from: h.j.a.a.a.j.b.b$a */
    /* loaded from: classes2-dex2jar.jar:h/j/a/a/a/j/b/b$a.class */
    public interface AbstractC10661a {
        /* renamed from: a */
        void mo11030a(AbstractAsyncTaskC10660b bVar);
    }

    /* renamed from: h.j.a.a.a.j.b.b$b */
    /* loaded from: classes2-dex2jar.jar:h/j/a/a/a/j/b/b$b.class */
    public interface AbstractC10662b {
        /* renamed from: a */
        void mo11010a(JSONObject jSONObject);

        /* renamed from: b */
        JSONObject mo11008b();
    }

    public AbstractAsyncTaskC10660b(AbstractC10662b bVar) {
        this.f24259b = bVar;
    }

    /* renamed from: a */
    public void m11033a(AbstractC10661a aVar) {
        this.f24258a = aVar;
    }

    /* renamed from: a */
    public void onPostExecute(String str) {
        AbstractC10661a aVar = this.f24258a;
        if (aVar != null) {
            aVar.mo11030a(this);
        }
    }

    /* renamed from: a */
    public void m11032a(ThreadPoolExecutor threadPoolExecutor) {
        executeOnExecutor(threadPoolExecutor, new Object[0]);
    }
}
