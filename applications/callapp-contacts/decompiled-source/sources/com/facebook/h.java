package com.facebook;

import android.os.AsyncTask;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import com.facebook.internal.ae;
import com.facebook.internal.b.b.a;
import java.net.HttpURLConnection;
import java.util.Collection;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/facebook/h.class */
public class h extends AsyncTask<Void, Void, List<j>> {

    /* renamed from: a  reason: collision with root package name */
    private static final String f19787a = "com.facebook.h";

    /* renamed from: b  reason: collision with root package name */
    private final HttpURLConnection f19788b;

    /* renamed from: c  reason: collision with root package name */
    private final i f19789c;

    /* renamed from: d  reason: collision with root package name */
    private Exception f19790d;

    public h(i iVar) {
        this((HttpURLConnection) null, iVar);
    }

    public h(HttpURLConnection httpURLConnection, i iVar) {
        this.f19789c = iVar;
        this.f19788b = httpURLConnection;
    }

    public h(HttpURLConnection httpURLConnection, Collection<GraphRequest> collection) {
        this(httpURLConnection, new i(collection));
    }

    public h(HttpURLConnection httpURLConnection, GraphRequest... graphRequestArr) {
        this(httpURLConnection, new i(graphRequestArr));
    }

    public h(Collection<GraphRequest> collection) {
        this((HttpURLConnection) null, new i(collection));
    }

    public h(GraphRequest... graphRequestArr) {
        this((HttpURLConnection) null, new i(graphRequestArr));
    }

    private List<j> a() {
        try {
            if (a.a(this)) {
                return null;
            }
            try {
                HttpURLConnection httpURLConnection = this.f19788b;
                return httpURLConnection == null ? GraphRequest.a(this.f19789c) : GraphRequest.a(httpURLConnection, this.f19789c);
            } catch (Exception e) {
                this.f19790d = e;
                return null;
            }
        } catch (Throwable th) {
            a.a(th, this);
            return null;
        }
    }

    @Override // android.os.AsyncTask
    protected /* synthetic */ List<j> doInBackground(Void[] voidArr) {
        if (a.a(this)) {
            return null;
        }
        try {
            return a();
        } catch (Throwable th) {
            a.a(th, this);
            return null;
        }
    }

    @Override // android.os.AsyncTask
    protected /* synthetic */ void onPostExecute(List<j> list) {
        if (!a.a(this)) {
            try {
                List<j> list2 = list;
                if (!a.a(this)) {
                    super.onPostExecute(list2);
                    Exception exc = this.f19790d;
                    if (exc != null) {
                        String.format("onPostExecute: exception encountered during request: %s", exc.getMessage());
                        ae.a();
                    }
                }
            } catch (Throwable th) {
                a.a(th, this);
            }
        }
    }

    @Override // android.os.AsyncTask
    protected void onPreExecute() {
        if (!a.a(this)) {
            try {
                super.onPreExecute();
                if (g.c()) {
                    String.format("execute async task: %s", this);
                    ae.a();
                }
                if (this.f19789c.f19791a == null) {
                    this.f19789c.f19791a = Thread.currentThread() instanceof HandlerThread ? new Handler() : new Handler(Looper.getMainLooper());
                }
            } catch (Throwable th) {
                a.a(th, this);
            }
        }
    }

    public String toString() {
        return "{RequestAsyncTask:  connection: " + this.f19788b + ", requests: " + this.f19789c + "}";
    }
}
