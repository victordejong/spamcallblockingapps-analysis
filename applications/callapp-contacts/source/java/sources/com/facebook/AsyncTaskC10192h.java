package com.facebook;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.facebook.internal.C10213ae;
import com.facebook.internal.p299b.p301b.C10249a;
import java.net.HttpURLConnection;
import java.util.Collection;
import java.util.List;
/* renamed from: com.facebook.h */
/* loaded from: classes3-dex2jar.jar:com/facebook/h.class */
public class AsyncTaskC10192h extends AsyncTask<Void, Void, List<C10351j>> {

    /* renamed from: a */
    private static final String f33622a = "com.facebook.h";

    /* renamed from: b */
    private final HttpURLConnection f33623b;

    /* renamed from: c */
    private final C10193i f33624c;

    /* renamed from: d */
    private Exception f33625d;

    public AsyncTaskC10192h(C10193i c10193i) {
        this((HttpURLConnection) null, c10193i);
    }

    public AsyncTaskC10192h(HttpURLConnection httpURLConnection, C10193i c10193i) {
        this.f33624c = c10193i;
        this.f33623b = httpURLConnection;
    }

    public AsyncTaskC10192h(HttpURLConnection httpURLConnection, Collection<GraphRequest> collection) {
        this(httpURLConnection, new C10193i(collection));
    }

    public AsyncTaskC10192h(HttpURLConnection httpURLConnection, GraphRequest... graphRequestArr) {
        this(httpURLConnection, new C10193i(graphRequestArr));
    }

    public AsyncTaskC10192h(Collection<GraphRequest> collection) {
        this((HttpURLConnection) null, new C10193i(collection));
    }

    public AsyncTaskC10192h(GraphRequest... graphRequestArr) {
        this((HttpURLConnection) null, new C10193i(graphRequestArr));
    }

    /* renamed from: a */
    private List<C10351j> m23275a() {
        try {
            if (C10249a.m23108a(this)) {
                return null;
            }
            try {
                HttpURLConnection httpURLConnection = this.f33623b;
                return httpURLConnection == null ? GraphRequest.m23795a(this.f33624c) : GraphRequest.m23787a(httpURLConnection, this.f33624c);
            } catch (Exception e) {
                this.f33625d = e;
                return null;
            }
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
            return null;
        }
    }

    @Override // android.os.AsyncTask
    protected /* synthetic */ List<C10351j> doInBackground(Void[] voidArr) {
        if (C10249a.m23108a(this)) {
            return null;
        }
        try {
            return m23275a();
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
            return null;
        }
    }

    @Override // android.os.AsyncTask
    protected /* synthetic */ void onPostExecute(List<C10351j> list) {
        if (C10249a.m23108a(this)) {
            return;
        }
        try {
            List<C10351j> list2 = list;
            if (C10249a.m23108a(this)) {
                return;
            }
            super.onPostExecute(list2);
            Exception exc = this.f33625d;
            if (exc == null) {
                return;
            }
            String.format("onPostExecute: exception encountered during request: %s", exc.getMessage());
            C10213ae.m23250a();
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
        }
    }

    @Override // android.os.AsyncTask
    protected void onPreExecute() {
        if (C10249a.m23108a(this)) {
            return;
        }
        try {
            super.onPreExecute();
            if (C10181g.m23297c()) {
                String.format("execute async task: %s", this);
                C10213ae.m23250a();
            }
            if (this.f33624c.f33627a != null) {
                return;
            }
            this.f33624c.f33627a = Thread.currentThread() instanceof HandlerThread ? new Handler() : new Handler(Looper.getMainLooper());
        } catch (Throwable th) {
            C10249a.m23106a(th, this);
        }
    }

    public String toString() {
        return "{RequestAsyncTask:  connection: " + this.f33623b + ", requests: " + this.f33624c + "}";
    }
}
