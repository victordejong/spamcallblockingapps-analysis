package com.facebook;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.facebook.internal.C2079x;
import java.net.HttpURLConnection;
import java.util.List;
/* renamed from: com.facebook.l */
/* loaded from: classes-dex2jar.jar:com/facebook/l.class */
public class AsyncTaskC2115l extends AsyncTask<Void, Void, List<C2194n>> {

    /* renamed from: a */
    private static final String f6220a = AsyncTaskC2115l.class.getCanonicalName();

    /* renamed from: b */
    private final HttpURLConnection f6221b;

    /* renamed from: c */
    private final C2191m f6222c;

    /* renamed from: d */
    private Exception f6223d;

    public AsyncTaskC2115l(C2191m c2191m) {
        this(null, c2191m);
    }

    public AsyncTaskC2115l(HttpURLConnection httpURLConnection, C2191m c2191m) {
        this.f6222c = c2191m;
        this.f6221b = httpURLConnection;
    }

    /* renamed from: a */
    public List<C2194n> doInBackground(Void... voidArr) {
        List<C2194n> list;
        try {
            list = this.f6221b == null ? this.f6222c.m14993g() : C2102k.m15324a(this.f6221b, this.f6222c);
        } catch (Exception e) {
            this.f6223d = e;
            list = null;
        }
        return list;
    }

    /* renamed from: a */
    public void onPostExecute(List<C2194n> list) {
        super.onPostExecute(list);
        if (this.f6223d != null) {
            C2079x.m15449b(f6220a, String.format("onPostExecute: exception encountered during request: %s", this.f6223d.getMessage()));
        }
    }

    @Override // android.os.AsyncTask
    protected void onPreExecute() {
        super.onPreExecute();
        if (C2095j.m15364d()) {
            C2079x.m15449b(f6220a, String.format("execute async task: %s", this));
        }
        if (this.f6222c.m14997c() == null) {
            this.f6222c.m15003a(Thread.currentThread() instanceof HandlerThread ? new Handler() : new Handler(Looper.getMainLooper()));
        }
    }

    public String toString() {
        return "{RequestAsyncTask:  connection: " + this.f6221b + ", requests: " + this.f6222c + "}";
    }
}
