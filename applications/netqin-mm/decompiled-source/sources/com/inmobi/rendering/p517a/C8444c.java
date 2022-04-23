package com.inmobi.rendering.p517a;

import android.content.ContentValues;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.inmobi.ads.C8197c;
import com.inmobi.commons.core.configs.AbstractC8346a;
import com.inmobi.commons.core.configs.C8348b;
import com.inmobi.commons.core.configs.C8359h;
import com.inmobi.commons.core.network.C8383c;
import com.inmobi.commons.core.network.C8384d;
import com.inmobi.commons.core.network.C8385e;
import com.inmobi.commons.core.network.NetworkError;
import com.inmobi.commons.core.network.WebViewNetworkTask;
import com.inmobi.commons.core.p509a.C8328a;
import com.inmobi.commons.core.p512d.C8363b;
import com.inmobi.commons.core.p513e.C8365a;
import com.inmobi.commons.core.p513e.C8366b;
import com.inmobi.commons.core.utilities.C8407d;
import com.inmobi.commons.core.utilities.C8410g;
import com.inmobi.commons.p508a.C8326a;
import com.inmobi.p497a.C8002n;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.inmobi.rendering.a.c */
/* loaded from: classes2-dex2jar.jar:com/inmobi/rendering/a/c.class */
public class C8444c implements C8348b.AbstractC8351c {

    /* renamed from: a */
    public static final String f32835a = "c";

    /* renamed from: b */
    public static C8444c f32836b;

    /* renamed from: d */
    public static ExecutorService f32838d;

    /* renamed from: e */
    public static HandlerC8452a f32839e;

    /* renamed from: f */
    public static HandlerThread f32840f;

    /* renamed from: h */
    public static C8443b f32842h;

    /* renamed from: j */
    public static C8197c.C8202e f32844j;

    /* renamed from: l */
    public long f32846l = 0;

    /* renamed from: m */
    public final AbstractC8461d f32847m = new AbstractC8461d() { // from class: com.inmobi.rendering.a.c.7
        @Override // com.inmobi.rendering.p517a.C8444c.AbstractC8461d
        /* renamed from: a */
        public final void mo5505a(C8442a aVar) {
            if (aVar != null) {
                String unused = C8444c.f32835a;
                StringBuilder sb = new StringBuilder("Processing click (");
                sb.append(aVar.f32825b);
                sb.append(") completed");
                C8443b unused2 = C8444c.f32842h;
                C8443b.m5534a(aVar);
                try {
                    HashMap hashMap = new HashMap();
                    hashMap.put("url", aVar.f32825b);
                    hashMap.put("latency", Long.valueOf(SystemClock.elapsedRealtime() - C8444c.this.f32846l));
                    C8366b.m5794a();
                    C8366b.m5789a("ads", "PingLatency", hashMap);
                } catch (Exception e) {
                    String unused3 = C8444c.f32835a;
                    StringBuilder sb2 = new StringBuilder("Error in submitting telemetry event : (");
                    sb2.append(e.getMessage());
                    sb2.append(")");
                }
            }
        }

        @Override // com.inmobi.rendering.p517a.C8444c.AbstractC8461d
        /* renamed from: b */
        public final void mo5504b(C8442a aVar) {
            if (aVar != null) {
                String unused = C8444c.f32835a;
                StringBuilder sb = new StringBuilder("Pinging click (");
                sb.append(aVar.f32825b);
                sb.append(") failed! Updating retry counts and timestamps ...");
                C8444c.m5528a(aVar);
                C8444c.this.m5522b();
            }
        }
    };

    /* renamed from: c */
    public static final Object f32837c = new Object();

    /* renamed from: g */
    public static List<C8442a> f32841g = new ArrayList();

    /* renamed from: i */
    public static AtomicBoolean f32843i = new AtomicBoolean(false);

    /* renamed from: k */
    public static final Object f32845k = new Object();

    /* renamed from: com.inmobi.rendering.a.c$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/rendering/a/c$a.class */
    public final class HandlerC8452a extends Handler {
        public HandlerC8452a(Looper looper) {
            super(looper);
        }

        /* renamed from: a */
        private void m5510a(C8442a aVar, int i) {
            Message obtain = Message.obtain();
            obtain.what = 5;
            obtain.obj = aVar;
            obtain.arg1 = i;
            sendMessage(obtain);
        }

        /* renamed from: a */
        public static /* synthetic */ void m5509a(HandlerC8452a aVar, C8442a aVar2) {
            Message obtain = Message.obtain();
            obtain.what = 4;
            obtain.obj = aVar2;
            aVar.sendMessage(obtain);
        }

        /* renamed from: b */
        public static /* synthetic */ void m5508b(HandlerC8452a aVar, C8442a aVar2) {
            int indexOf = C8444c.f32841g.indexOf(aVar2);
            if (-1 != indexOf) {
                C8442a aVar3 = (C8442a) C8444c.f32841g.get(indexOf == C8444c.f32841g.size() - 1 ? 0 : indexOf + 1);
                Message obtain = Message.obtain();
                obtain.what = aVar3.f32831h ? 3 : 2;
                obtain.obj = aVar3;
                if (System.currentTimeMillis() - aVar3.f32827d < C8444c.f32844j.f32022b * 1000) {
                    aVar.sendMessageDelayed(obtain, C8444c.f32844j.f32022b * 1000);
                } else {
                    aVar.sendMessage(obtain);
                }
            }
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            try {
                int i = message.what;
                int i2 = 3;
                if (i == 1) {
                    C8359h hVar = new C8359h();
                    String str = null;
                    C8348b.m5847a().m5844a(hVar, (C8348b.AbstractC8351c) null);
                    if (!hVar.f32507g) {
                        C8443b unused = C8444c.f32842h;
                        int i3 = C8444c.f32844j.f32025e;
                        int i4 = C8444c.f32844j.f32022b;
                        ArrayList arrayList = new ArrayList();
                        C8363b a = C8363b.m5815a();
                        if (a.m5814a("click") != 0) {
                            if (-1 != i3) {
                                str = Integer.toString(i3);
                            }
                            String[] strArr = C8443b.f32833a;
                            List<ContentValues> a2 = a.m5809a("click", strArr, null, null, "ts", "ts < " + (System.currentTimeMillis() - i4), "ts ASC ", str);
                            a.m5808b();
                            for (ContentValues contentValues : a2) {
                                arrayList.add(C8443b.m5535a(contentValues));
                            }
                        }
                        List unused2 = C8444c.f32841g = arrayList;
                        if (C8444c.f32841g.isEmpty()) {
                            C8443b unused3 = C8444c.f32842h;
                            if (C8443b.m5536a()) {
                                C8444c.f32843i.set(false);
                                return;
                            }
                            Message obtain = Message.obtain();
                            obtain.what = 1;
                            sendMessageDelayed(obtain, C8444c.f32844j.f32022b * 1000);
                            return;
                        }
                        C8442a aVar = (C8442a) C8444c.f32841g.get(0);
                        Message obtain2 = Message.obtain();
                        if (!aVar.f32831h) {
                            i2 = 2;
                        }
                        obtain2.what = i2;
                        obtain2.obj = aVar;
                        long currentTimeMillis = System.currentTimeMillis() - aVar.f32827d;
                        if (currentTimeMillis < C8444c.f32844j.f32022b * 1000) {
                            sendMessageDelayed(obtain2, (C8444c.f32844j.f32022b * 1000) - currentTimeMillis);
                        } else {
                            sendMessage(obtain2);
                        }
                    }
                } else if (i != 2) {
                    if (i != 3) {
                        if (i != 4) {
                            if (i == 5) {
                                C8442a aVar2 = (C8442a) message.obj;
                                HashMap hashMap = new HashMap();
                                hashMap.put("pingUrl", aVar2.f32825b);
                                int i5 = message.arg1;
                                if (i5 == 1) {
                                    hashMap.put("errorCode", "MaxRetryCountReached");
                                } else if (i5 == 2) {
                                    hashMap.put("errorCode", "ExpiredClick");
                                }
                                try {
                                    C8366b.m5794a();
                                    C8366b.m5789a("ads", "PingDiscarded", hashMap);
                                } catch (Exception e) {
                                    String unused4 = C8444c.f32835a;
                                    StringBuilder sb = new StringBuilder("Error in submitting telemetry event : (");
                                    sb.append(e.getMessage());
                                    sb.append(")");
                                }
                            } else {
                                return;
                            }
                        }
                        C8442a aVar3 = (C8442a) message.obj;
                        String unused5 = C8444c.f32835a;
                        StringBuilder sb2 = new StringBuilder("Processing click (");
                        sb2.append(aVar3.f32825b);
                        sb2.append(") completed");
                        C8443b unused6 = C8444c.f32842h;
                        C8443b.m5534a(aVar3);
                        C8444c.f32841g.remove(aVar3);
                        if (C8444c.f32841g.isEmpty()) {
                            C8443b unused7 = C8444c.f32842h;
                            if (C8443b.m5536a()) {
                                String unused8 = C8444c.f32835a;
                                C8444c.f32843i.set(false);
                                return;
                            }
                            Message obtain3 = Message.obtain();
                            obtain3.what = 1;
                            sendMessage(obtain3);
                            return;
                        }
                        C8442a aVar4 = (C8442a) C8444c.f32841g.get(0);
                        Message obtain4 = Message.obtain();
                        if (!aVar4.f32831h) {
                            i2 = 2;
                        }
                        obtain4.what = i2;
                        obtain4.obj = aVar4;
                        sendMessage(obtain4);
                    } else if (!C8407d.m5650a()) {
                        C8444c.f32843i.set(false);
                        C8444c.m5512i();
                    } else {
                        C8442a aVar5 = (C8442a) message.obj;
                        if (aVar5.f32829f == 0) {
                            m5510a(aVar5, 1);
                        } else if (aVar5.m5537a(C8444c.f32844j.f32026f)) {
                            m5510a(aVar5, 2);
                        } else {
                            int i6 = (C8444c.f32844j.f32021a - aVar5.f32829f) + 1;
                            if (i6 == 0) {
                                String unused9 = C8444c.f32835a;
                                StringBuilder sb3 = new StringBuilder("Pinging click (");
                                sb3.append(aVar5.f32825b);
                                sb3.append(") in WebView");
                            } else {
                                String unused10 = C8444c.f32835a;
                                StringBuilder sb4 = new StringBuilder("Retry attempt #");
                                sb4.append(i6);
                                sb4.append(" for click (");
                                sb4.append(aVar5.f32825b);
                                sb4.append(") using WebView");
                            }
                            new C8455b(new AbstractC8461d() { // from class: com.inmobi.rendering.a.c.a.2
                                @Override // com.inmobi.rendering.p517a.C8444c.AbstractC8461d
                                /* renamed from: a */
                                public final void mo5505a(C8442a aVar6) {
                                    HandlerC8452a.m5509a(HandlerC8452a.this, aVar6);
                                }

                                @Override // com.inmobi.rendering.p517a.C8444c.AbstractC8461d
                                /* renamed from: b */
                                public final void mo5504b(C8442a aVar6) {
                                    String unused11 = C8444c.f32835a;
                                    StringBuilder sb5 = new StringBuilder("Pinging click (");
                                    sb5.append(aVar6.f32825b);
                                    sb5.append(") via WebView failed ...");
                                    C8444c.m5528a(aVar6);
                                    HandlerC8452a.m5508b(HandlerC8452a.this, aVar6);
                                }
                            }).m5507a(aVar5);
                        }
                    }
                } else if (!C8407d.m5650a()) {
                    C8444c.f32843i.set(false);
                    C8444c.m5512i();
                } else {
                    C8442a aVar6 = (C8442a) message.obj;
                    if (aVar6.f32829f == 0) {
                        m5510a(aVar6, 1);
                    } else if (aVar6.m5537a(C8444c.f32844j.f32026f)) {
                        m5510a(aVar6, 2);
                    } else {
                        int i7 = (C8444c.f32844j.f32021a - aVar6.f32829f) + 1;
                        if (i7 == 0) {
                            String unused11 = C8444c.f32835a;
                            StringBuilder sb5 = new StringBuilder("Pinging click (");
                            sb5.append(aVar6.f32825b);
                            sb5.append(") over HTTP");
                        } else {
                            String unused12 = C8444c.f32835a;
                            StringBuilder sb6 = new StringBuilder("Retry attempt #");
                            sb6.append(i7);
                            sb6.append(" for click (");
                            sb6.append(aVar6.f32825b);
                            sb6.append(") over HTTP");
                        }
                        new C8460c(new AbstractC8461d() { // from class: com.inmobi.rendering.a.c.a.1
                            @Override // com.inmobi.rendering.p517a.C8444c.AbstractC8461d
                            /* renamed from: a */
                            public final void mo5505a(C8442a aVar7) {
                                HandlerC8452a.m5509a(HandlerC8452a.this, aVar7);
                            }

                            @Override // com.inmobi.rendering.p517a.C8444c.AbstractC8461d
                            /* renamed from: b */
                            public final void mo5504b(C8442a aVar7) {
                                String unused13 = C8444c.f32835a;
                                StringBuilder sb7 = new StringBuilder("Pinging click (");
                                sb7.append(aVar7.f32825b);
                                sb7.append(") via HTTP failed ...");
                                C8444c.m5528a(aVar7);
                                HandlerC8452a.m5508b(HandlerC8452a.this, aVar7);
                            }
                        }).m5506a(aVar6);
                    }
                }
            } catch (Exception e2) {
                String unused13 = C8444c.f32835a;
                new StringBuilder("SDK encountered unexpected error in processing ping; ").append(e2.getMessage());
            }
        }
    }

    /* renamed from: com.inmobi.rendering.a.c$b */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/rendering/a/c$b.class */
    public static final class C8455b {

        /* renamed from: a */
        public AbstractC8461d f32866a;

        /* renamed from: com.inmobi.rendering.a.c$b$1 */
        /* loaded from: classes2-dex2jar.jar:com/inmobi/rendering/a/c$b$1.class */
        public final class RunnableC84561 implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ C8442a f32867a;

            /* renamed from: b */
            public final /* synthetic */ Handler f32868b;

            /* renamed from: com.inmobi.rendering.a.c$b$1$1 */
            /* loaded from: classes2-dex2jar.jar:com/inmobi/rendering/a/c$b$1$1.class */
            public final class C84571 extends WebViewClient {

                /* renamed from: a */
                public AtomicBoolean f32870a = new AtomicBoolean(false);

                /* renamed from: b */
                public boolean f32871b;

                /* renamed from: c */
                public boolean f32872c;

                public C84571() {
                }

                @Override // android.webkit.WebViewClient
                public final void onPageFinished(WebView webView, String str) {
                    boolean z = true;
                    this.f32870a.set(true);
                    if (this.f32871b || RunnableC84561.this.f32867a.f32830g.get()) {
                        z = false;
                    } else {
                        RunnableC84561 r0 = RunnableC84561.this;
                        C8455b.this.f32866a.mo5505a(r0.f32867a);
                    }
                    if (!this.f32872c) {
                        String str2 = z ? "PageNotStartedWithSuccess" : "PageNotStartedWithError";
                        try {
                            HashMap hashMap = new HashMap();
                            hashMap.put("url", str);
                            C8366b.m5794a();
                            C8366b.m5789a("ads", str2, hashMap);
                        } catch (Exception e) {
                            String unused = C8444c.f32835a;
                            StringBuilder sb = new StringBuilder("Error in submitting telemetry event : (");
                            sb.append(e.getMessage());
                            sb.append(")");
                        }
                    }
                }

                @Override // android.webkit.WebViewClient
                public final void onPageStarted(final WebView webView, String str, Bitmap bitmap) {
                    this.f32872c = true;
                    this.f32871b = false;
                    new Thread(new Runnable() { // from class: com.inmobi.rendering.a.c.b.1.1.1
                        @Override // java.lang.Runnable
                        public final void run() {
                            try {
                                Thread.sleep(C8444c.f32844j.f32023c * 1000);
                            } catch (InterruptedException e) {
                            }
                            if (!C84571.this.f32870a.get()) {
                                String unused = C8444c.f32835a;
                                StringBuilder sb = new StringBuilder("Pinging click (");
                                sb.append(RunnableC84561.this.f32867a.f32825b);
                                sb.append(") via WebView timed out!");
                                RunnableC84561.this.f32867a.f32830g.set(true);
                                RunnableC84561.this.f32868b.post(new Runnable() { // from class: com.inmobi.rendering.a.c.b.1.1.1.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        try {
                                            WebViewNetworkTask.NetworkTaskWebView networkTaskWebView = (WebViewNetworkTask.NetworkTaskWebView) webView;
                                            if (networkTaskWebView != null && !networkTaskWebView.f32589a) {
                                                webView.stopLoading();
                                            }
                                        } catch (Throwable th) {
                                            C8328a.m5878a().m5875a(new C8365a(th));
                                        }
                                    }
                                });
                                RunnableC84561 r0 = RunnableC84561.this;
                                C8455b.this.f32866a.mo5504b(r0.f32867a);
                            }
                        }
                    }).start();
                }

                @Override // android.webkit.WebViewClient
                public final void onReceivedError(WebView webView, int i, String str, String str2) {
                    this.f32871b = true;
                    RunnableC84561 r0 = RunnableC84561.this;
                    C8455b.this.f32866a.mo5504b(r0.f32867a);
                }

                @Override // android.webkit.WebViewClient
                public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                    this.f32871b = true;
                    RunnableC84561 r0 = RunnableC84561.this;
                    C8455b.this.f32866a.mo5504b(r0.f32867a);
                }

                @Override // android.webkit.WebViewClient
                public final void onReceivedHttpError(WebView webView, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                    this.f32871b = true;
                    RunnableC84561 r0 = RunnableC84561.this;
                    C8455b.this.f32866a.mo5504b(r0.f32867a);
                }

                @Override // android.webkit.WebViewClient
                public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
                    return Build.VERSION.SDK_INT >= 21 && !RunnableC84561.this.f32867a.f32832i && !webResourceRequest.getUrl().toString().equals(RunnableC84561.this.f32867a.f32825b);
                }

                @Override // android.webkit.WebViewClient
                public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
                    C8442a aVar = RunnableC84561.this.f32867a;
                    return !aVar.f32832i && !str.equals(aVar.f32825b);
                }
            }

            public RunnableC84561(C8442a aVar, Handler handler) {
                this.f32867a = aVar;
                this.f32868b = handler;
            }

            @Override // java.lang.Runnable
            public final void run() {
                C8383c cVar = new C8383c("GET", this.f32867a.f32825b);
                HashMap c = C8444c.m5518c(this.f32867a);
                if (!c.isEmpty()) {
                    cVar.m5744a(c);
                }
                WebViewNetworkTask webViewNetworkTask = new WebViewNetworkTask(cVar, new C84571());
                try {
                    WebViewNetworkTask.NetworkTaskWebView networkTaskWebView = new WebViewNetworkTask.NetworkTaskWebView(C8326a.m5891b());
                    webViewNetworkTask.f32588c = networkTaskWebView;
                    networkTaskWebView.setWebViewClient(webViewNetworkTask.f32587b);
                    webViewNetworkTask.f32588c.getSettings().setJavaScriptEnabled(true);
                    webViewNetworkTask.f32588c.getSettings().setCacheMode(2);
                    webViewNetworkTask.f32588c.loadUrl(webViewNetworkTask.f32586a.m5736e(), webViewNetworkTask.f32586a.m5738d());
                } catch (Exception e) {
                    new StringBuilder("SDK encountered unexpected error in WebViewNetworkTask.execute() method; ").append(e.getMessage());
                }
            }
        }

        public C8455b(AbstractC8461d dVar) {
            this.f32866a = dVar;
        }

        /* renamed from: a */
        public final void m5507a(C8442a aVar) {
            aVar.f32830g.set(false);
            Handler handler = new Handler(Looper.getMainLooper());
            handler.post(new RunnableC84561(aVar, handler));
        }
    }

    /* renamed from: com.inmobi.rendering.a.c$c */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/rendering/a/c$c.class */
    public static final class C8460c {

        /* renamed from: a */
        public AbstractC8461d f32877a;

        public C8460c(AbstractC8461d dVar) {
            this.f32877a = dVar;
        }

        /* renamed from: a */
        public final void m5506a(C8442a aVar) {
            try {
                C8383c cVar = new C8383c("GET", aVar.f32825b);
                HashMap c = C8444c.m5518c(aVar);
                if (!c.isEmpty()) {
                    cVar.m5744a(c);
                }
                cVar.f32615t = false;
                cVar.m5741b(aVar.f32826c);
                cVar.f32614s = aVar.f32832i;
                cVar.f32612q = C8444c.f32844j.f32023c * 1000;
                cVar.f32613r = C8444c.f32844j.f32023c * 1000;
                long elapsedRealtime = SystemClock.elapsedRealtime();
                C8384d a = new C8385e(cVar).m5728a();
                try {
                    C8002n.m6748a().m6747a(cVar.m5734g());
                    C8002n.m6748a().m6745b(a.m5729c());
                    C8002n.m6748a().m6744c(SystemClock.elapsedRealtime() - elapsedRealtime);
                } catch (Exception e) {
                    String unused = C8444c.f32835a;
                    new StringBuilder("Error in setting request-response data size. ").append(e.getMessage());
                }
                if (a.m5733a()) {
                    NetworkError.ErrorCode errorCode = a.f32624b.f32582a;
                    if (NetworkError.ErrorCode.GENERIC_HTTP_2XX == errorCode) {
                        this.f32877a.mo5505a(aVar);
                    } else if (aVar.f32832i || !(NetworkError.ErrorCode.HTTP_SEE_OTHER == errorCode || NetworkError.ErrorCode.HTTP_MOVED_TEMP == errorCode)) {
                        AbstractC8461d dVar = this.f32877a;
                        NetworkError networkError = a.f32624b;
                        dVar.mo5504b(aVar);
                    } else {
                        this.f32877a.mo5505a(aVar);
                    }
                } else {
                    this.f32877a.mo5505a(aVar);
                }
            } catch (Exception e2) {
                String unused2 = C8444c.f32835a;
                new StringBuilder("SDK encountered unexpected error in executing ping over HTTP; ").append(e2.getMessage());
                AbstractC8461d dVar2 = this.f32877a;
                new NetworkError(NetworkError.ErrorCode.UNKNOWN_ERROR, "Unknown error");
                dVar2.mo5504b(aVar);
            }
        }
    }

    /* renamed from: com.inmobi.rendering.a.c$d */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/rendering/a/c$d.class */
    public interface AbstractC8461d {
        /* renamed from: a */
        void mo5505a(C8442a aVar);

        /* renamed from: b */
        void mo5504b(C8442a aVar);
    }

    public C8444c() {
        try {
            f32838d = Executors.newFixedThreadPool(5);
            HandlerThread handlerThread = new HandlerThread("pingHandlerThread");
            f32840f = handlerThread;
            handlerThread.start();
            f32839e = new HandlerC8452a(f32840f.getLooper());
            C8197c cVar = new C8197c();
            C8348b.m5847a().m5844a(cVar, this);
            f32844j = cVar.f31989h;
            f32842h = new C8443b();
            C8410g.m5639a().m5638a(new C8410g.AbstractC8413b() { // from class: com.inmobi.rendering.a.c.5
                @Override // com.inmobi.commons.core.utilities.C8410g.AbstractC8413b
                /* renamed from: a */
                public final void mo5511a(boolean z) {
                    if (z) {
                        C8444c.this.m5522b();
                    }
                }
            });
            if (Build.VERSION.SDK_INT >= 23) {
                C8410g.m5639a().m5636a("android.os.action.DEVICE_IDLE_MODE_CHANGED", new C8410g.AbstractC8413b() { // from class: com.inmobi.rendering.a.c.6
                    @Override // com.inmobi.commons.core.utilities.C8410g.AbstractC8413b
                    /* renamed from: a */
                    public final void mo5511a(boolean z) {
                        if (!z) {
                            C8444c.this.m5522b();
                        }
                    }
                });
            }
        } catch (Exception e) {
            new StringBuilder("SDK encountered unexpected error in initializing the ping component; ").append(e.getMessage());
        }
    }

    /* renamed from: a */
    public static C8444c m5530a() {
        C8444c cVar = f32836b;
        C8444c cVar2 = cVar;
        if (cVar == null) {
            synchronized (f32837c) {
                C8444c cVar3 = f32836b;
                cVar2 = cVar3;
                if (cVar3 == null) {
                    cVar2 = new C8444c();
                    f32836b = cVar2;
                }
            }
        }
        return cVar2;
    }

    /* renamed from: a */
    public static /* synthetic */ void m5528a(C8442a aVar) {
        int i = aVar.f32829f;
        if (i > 0) {
            aVar.f32829f = i - 1;
            aVar.f32827d = System.currentTimeMillis();
            C8363b a = C8363b.m5815a();
            a.m5807b("click", C8443b.m5531b(aVar), "id = ?", new String[]{String.valueOf(aVar.f32824a)});
            a.m5808b();
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m5525a(C8444c cVar, final C8442a aVar) {
        f32842h.m5533a(aVar, f32844j.f32024d);
        if (!C8407d.m5650a()) {
            f32843i.set(false);
            m5512i();
            return;
        }
        f32838d.submit(new Runnable() { // from class: com.inmobi.rendering.a.c.4
            @Override // java.lang.Runnable
            public final void run() {
                C8444c.this.f32846l = SystemClock.elapsedRealtime();
                if (aVar.f32831h) {
                    new C8455b(C8444c.this.f32847m).m5507a(aVar);
                } else {
                    new C8460c(C8444c.this.f32847m).m5506a(aVar);
                }
            }
        });
    }

    /* renamed from: c */
    public static HashMap<String, String> m5518c(C8442a aVar) {
        HashMap<String, String> hashMap = new HashMap<>();
        try {
            int i = (f32844j.f32021a - aVar.f32829f) + 1;
            if (i > 0) {
                hashMap.put("X-im-retry-count", String.valueOf(i));
            }
        } catch (Exception e) {
        }
        return hashMap;
    }

    /* renamed from: i */
    public static void m5512i() {
        try {
            f32843i.set(false);
            synchronized (f32845k) {
                if (!f32843i.get()) {
                    if (f32840f != null) {
                        f32840f.getLooper().quit();
                        f32840f.interrupt();
                        f32840f = null;
                        f32839e = null;
                    }
                    f32841g.clear();
                }
            }
        } catch (Exception e) {
            new StringBuilder("SDK encountered unexpected error in stopping the ping component; ").append(e.getMessage());
        }
    }

    @Override // com.inmobi.commons.core.configs.C8348b.AbstractC8351c
    /* renamed from: a */
    public final void mo5529a(AbstractC8346a aVar) {
        f32844j = ((C8197c) aVar).f31989h;
    }

    /* renamed from: a */
    public final void m5524a(final String str, final Map<String, String> map) {
        new Thread() { // from class: com.inmobi.rendering.a.c.2

            /* renamed from: c */
            public final /* synthetic */ boolean f32853c = true;

            @Override // java.lang.Thread, java.lang.Runnable
            public final void run() {
                try {
                    C8359h hVar = new C8359h();
                    C8348b.m5847a().m5844a(hVar, (C8348b.AbstractC8351c) null);
                    if (!hVar.f32507g) {
                        C8442a aVar = new C8442a(str, map, this.f32853c, C8444c.f32844j.f32021a + 1);
                        String unused = C8444c.f32835a;
                        StringBuilder sb = new StringBuilder("Received click (");
                        sb.append(aVar.f32825b);
                        sb.append(") for pinging over HTTP");
                        C8444c.m5525a(C8444c.this, aVar);
                    }
                } catch (Exception e) {
                    String unused2 = C8444c.f32835a;
                    new StringBuilder("SDK encountered unexpected error in pinging click; ").append(e.getMessage());
                    C8328a.m5878a().m5875a(new C8365a(e));
                }
            }
        }.start();
    }

    /* renamed from: b */
    public final void m5522b() {
        try {
            if (C8407d.m5650a()) {
                synchronized (f32845k) {
                    if (f32843i.compareAndSet(false, true)) {
                        if (f32840f == null) {
                            HandlerThread handlerThread = new HandlerThread("pingHandlerThread");
                            f32840f = handlerThread;
                            handlerThread.start();
                        }
                        if (f32839e == null) {
                            f32839e = new HandlerC8452a(f32840f.getLooper());
                        }
                        if (C8443b.m5536a()) {
                            f32843i.set(false);
                            m5512i();
                        } else {
                            Message obtain = Message.obtain();
                            obtain.what = 1;
                            f32839e.sendMessage(obtain);
                        }
                    }
                }
            }
        } catch (Exception e) {
            new StringBuilder("SDK encountered unexpected error in starting the ping component; ").append(e.getMessage());
        }
    }
}
