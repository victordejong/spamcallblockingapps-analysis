package com.criteo.publisher.model;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebView;
import com.criteo.publisher.e.c;
import com.criteo.publisher.m0.h;
import com.criteo.publisher.m0.o;
import com.criteo.publisher.v;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/u.class */
public class u {

    /* renamed from: a  reason: collision with root package name */
    private final Context f17640a;

    /* renamed from: b  reason: collision with root package name */
    private final c f17641b;

    /* renamed from: c  reason: collision with root package name */
    private final h<String> f17642c = new h<>();

    /* renamed from: d  reason: collision with root package name */
    private final AtomicBoolean f17643d = new AtomicBoolean(false);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/u$a.class */
    public class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (u.this.f17643d.compareAndSet(false, true)) {
                u.this.f17642c.b((h) u.this.e());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/u$b.class */
    public class b extends v {

        /* renamed from: c  reason: collision with root package name */
        final /* synthetic */ Runnable f17645c;

        b(u uVar, Runnable runnable) {
            this.f17645c = runnable;
        }

        @Override // com.criteo.publisher.v
        public void a() {
            this.f17645c.run();
        }
    }

    public u(Context context, c cVar) {
        com.criteo.publisher.logging.h.a(getClass());
        this.f17640a = context;
        this.f17641b = cVar;
    }

    private String a() {
        String str;
        try {
            str = System.getProperty("http.agent");
        } catch (Throwable th) {
            o.a(th);
            str = null;
        }
        if (str == null) {
            str = "";
        }
        return str;
    }

    private void a(Runnable runnable) {
        this.f17641b.a(new b(this, runnable));
    }

    private String c() {
        WebView webView = new WebView(this.f17640a);
        String userAgentString = webView.getSettings().getUserAgentString();
        webView.destroy();
        return userAgentString;
    }

    public Future<String> b() {
        d();
        return this.f17642c;
    }

    public void d() {
        a(new a());
    }

    String e() {
        String str;
        try {
            str = c();
        } catch (Throwable th) {
            str = null;
        }
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = a();
        }
        return str2;
    }
}
