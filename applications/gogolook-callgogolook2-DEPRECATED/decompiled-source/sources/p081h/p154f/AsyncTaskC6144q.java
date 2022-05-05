package p081h.p154f;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import com.facebook.GraphRequest;
import com.facebook.internal.C2408g0;
import java.net.HttpURLConnection;
import java.util.List;
/* renamed from: h.f.q */
/* loaded from: classes-dex2jar.jar:h/f/q.class */
public class AsyncTaskC6144q extends AsyncTask<Void, Void, List<C6148s>> {

    /* renamed from: d */
    public static final String f15266d = AsyncTaskC6144q.class.getCanonicalName();

    /* renamed from: a */
    public final HttpURLConnection f15267a;

    /* renamed from: b */
    public final C6145r f15268b;

    /* renamed from: c */
    public Exception f15269c;

    public AsyncTaskC6144q(C6145r rVar) {
        this(null, rVar);
    }

    public AsyncTaskC6144q(HttpURLConnection httpURLConnection, C6145r rVar) {
        this.f15268b = rVar;
        this.f15267a = httpURLConnection;
    }

    /* renamed from: a */
    public List<C6148s> doInBackground(Void... voidArr) {
        try {
            return this.f15267a == null ? this.f15268b.m23718b() : GraphRequest.m35447a(this.f15267a, this.f15268b);
        } catch (Exception e) {
            this.f15269c = e;
            return null;
        }
    }

    /* renamed from: a */
    public void onPostExecute(List<C6148s> list) {
        super.onPostExecute(list);
        Exception exc = this.f15269c;
        if (exc != null) {
            C2408g0.m34821c(f15266d, String.format("onPostExecute: exception encountered during request: %s", exc.getMessage()));
        }
    }

    @Override // android.os.AsyncTask
    public void onPreExecute() {
        super.onPreExecute();
        if (C6135n.m23732s()) {
            C2408g0.m34821c(f15266d, String.format("execute async task: %s", this));
        }
        if (this.f15268b.m23712t() == null) {
            this.f15268b.m23721a(Thread.currentThread() instanceof HandlerThread ? new Handler() : new Handler(Looper.getMainLooper()));
        }
    }

    public String toString() {
        return "{RequestAsyncTask:  connection: " + this.f15267a + ", requests: " + this.f15268b + CssParser.BLOCK_END;
    }
}
