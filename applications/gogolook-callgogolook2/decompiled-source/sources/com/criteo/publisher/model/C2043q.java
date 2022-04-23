package com.criteo.publisher.model;

import android.content.Context;
import android.text.TextUtils;
import android.util.Log;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.UiThread;
import androidx.annotation.VisibleForTesting;
import com.criteo.publisher.p020a0.FutureC1919j;
import java.util.concurrent.Executor;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.criteo.publisher.model.q */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/q.class */
public class C2043q {

    /* renamed from: e */
    public static final String f2256e = "q";

    /* renamed from: a */
    public final Context f2257a;

    /* renamed from: b */
    public final Executor f2258b;

    /* renamed from: c */
    public final FutureC1919j<String> f2259c = new FutureC1919j<>();

    /* renamed from: d */
    public final AtomicBoolean f2260d = new AtomicBoolean(false);

    /* renamed from: com.criteo.publisher.model.q$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/q$a.class */
    public class RunnableC2044a implements Runnable {
        public RunnableC2044a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C2043q.this.f2260d.compareAndSet(false, true)) {
                C2043q.this.f2259c.m36021a((FutureC1919j) C2043q.this.m35826c());
            }
        }
    }

    /* renamed from: com.criteo.publisher.model.q$b */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/model/q$b.class */
    public class RunnableC2045b implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Runnable f2262a;

        public RunnableC2045b(C2043q qVar, Runnable runnable) {
            this.f2262a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                this.f2262a.run();
            } catch (Throwable th) {
                Log.e(C2043q.f2256e, "Internal error while setting user-agent.", th);
            }
        }
    }

    public C2043q(Context context, Executor executor) {
        this.f2257a = context;
        this.f2258b = executor;
    }

    /* renamed from: a */
    private void m35829a(Runnable runnable) {
        this.f2258b.execute(new RunnableC2045b(this, runnable));
    }

    @NonNull
    /* renamed from: e */
    public static String m35824e() {
        String str;
        try {
            str = System.getProperty("http.agent");
        } catch (Throwable th) {
            Log.e(f2256e, "Unable to retrieve system user-agent.", th);
            str = null;
        }
        if (str == null) {
            str = "";
        }
        return str;
    }

    @UiThread
    /* renamed from: f */
    private String m35823f() {
        WebView webView = new WebView(this.f2257a);
        String userAgentString = webView.getSettings().getUserAgentString();
        webView.destroy();
        return userAgentString;
    }

    @NonNull
    /* renamed from: a */
    public Future<String> mo35831a() {
        mo35828b();
        return this.f2259c;
    }

    /* renamed from: b */
    public void mo35828b() {
        m35829a(new RunnableC2044a());
    }

    @NonNull
    @UiThread
    @VisibleForTesting
    /* renamed from: c */
    public String m35826c() {
        String str;
        try {
            str = m35823f();
        } catch (Throwable th) {
            str = null;
        }
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = m35824e();
        }
        return str2;
    }
}
