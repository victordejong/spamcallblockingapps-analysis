package com.criteo.publisher.model;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.WebView;
import com.criteo.publisher.AbstractRunnableC8529v;
import com.criteo.publisher.logging.C8404h;
import com.criteo.publisher.p245e.ExecutorC8277c;
import com.criteo.publisher.p256m0.C8444o;
import com.criteo.publisher.p256m0.FutureC8434h;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.criteo.publisher.model.u */
/* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/u.class */
public class C8509u {

    /* renamed from: a */
    private final Context f30364a;

    /* renamed from: b */
    private final ExecutorC8277c f30365b;

    /* renamed from: c */
    private final FutureC8434h<String> f30366c = new FutureC8434h<>();

    /* renamed from: d */
    private final AtomicBoolean f30367d = new AtomicBoolean(false);

    /* renamed from: com.criteo.publisher.model.u$a */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/u$a.class */
    public class RunnableC8510a implements Runnable {
        RunnableC8510a() {
            C8509u.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (C8509u.this.f30367d.compareAndSet(false, true)) {
                C8509u.this.f30366c.m25685b((FutureC8434h) C8509u.this.m25513e());
            }
        }
    }

    /* renamed from: com.criteo.publisher.model.u$b */
    /* loaded from: classes2-dex2jar.jar:com/criteo/publisher/model/u$b.class */
    public class C8511b extends AbstractRunnableC8529v {

        /* renamed from: c */
        final /* synthetic */ Runnable f30369c;

        C8511b(C8509u c8509u, Runnable runnable) {
            this.f30369c = runnable;
        }

        @Override // com.criteo.publisher.AbstractRunnableC8529v
        /* renamed from: a */
        public void mo25368a() {
            this.f30369c.run();
        }
    }

    public C8509u(Context context, ExecutorC8277c executorC8277c) {
        C8404h.m25741a(getClass());
        this.f30364a = context;
        this.f30365b = executorC8277c;
    }

    /* renamed from: a */
    private String m25518a() {
        String str;
        try {
            str = System.getProperty("http.agent");
        } catch (Throwable th) {
            C8444o.m25675a(th);
            str = null;
        }
        if (str == null) {
            str = "";
        }
        return str;
    }

    /* renamed from: a */
    private void m25516a(Runnable runnable) {
        this.f30365b.m25926a(new C8511b(this, runnable));
    }

    /* renamed from: c */
    private String m25514c() {
        WebView webView = new WebView(this.f30364a);
        String userAgentString = webView.getSettings().getUserAgentString();
        webView.destroy();
        return userAgentString;
    }

    /* renamed from: b */
    public Future<String> mo25380b() {
        mo25379d();
        return this.f30366c;
    }

    /* renamed from: d */
    public void mo25379d() {
        m25516a(new RunnableC8510a());
    }

    /* renamed from: e */
    String m25513e() {
        String str;
        try {
            str = m25514c();
        } catch (Throwable th) {
            str = null;
        }
        String str2 = str;
        if (TextUtils.isEmpty(str)) {
            str2 = m25518a();
        }
        return str2;
    }
}
