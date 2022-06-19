package com.bytedance.sdk.openadsdk.p186m;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.bytedance.sdk.adnet.core.C4218m;
import com.bytedance.sdk.adnet.p141b.C4185j;
import com.bytedance.sdk.adnet.p141b.FutureC4184i;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.p157h.C4587d;
import com.bytedance.sdk.openadsdk.p174j.C4959e;
import com.bytedance.sdk.openadsdk.utils.C5437ae;
import com.bytedance.sdk.openadsdk.utils.C5473o;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.utils.C5482t;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* renamed from: com.bytedance.sdk.openadsdk.m.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/m/b.class */
public class C5058b implements AbstractC5057a {

    /* renamed from: a */
    private final Context f18304a;

    /* renamed from: b */
    private final AbstractC5066g f18305b;

    /* renamed from: c */
    private final ExecutorService f18306c = Executors.newSingleThreadExecutor();

    /* renamed from: com.bytedance.sdk.openadsdk.m.b$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/m/b$a.class */
    public class AsyncTaskC5061a extends AsyncTask<Void, Void, Void> {

        /* renamed from: b */
        private final C5065f f18311b;

        private AsyncTaskC5061a(C5065f c5065f) {
            C5058b.this = r4;
            this.f18311b = c5065f;
        }

        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            C4218m c4218m;
            if (C4587d.m34919a() && m33141a(this.f18311b.m33129b())) {
                if (this.f18311b.m33128c() == 0) {
                    C5058b.this.f18305b.mo33123c(this.f18311b);
                    return null;
                }
                while (this.f18311b.m33128c() > 0 && !isCancelled()) {
                    try {
                        if (this.f18311b.m33128c() == 5) {
                            C5058b.this.f18305b.mo33126a(this.f18311b);
                        }
                    } catch (Throwable th) {
                    }
                    if (!C5482t.m32091a(C5058b.this.m33143c())) {
                        return null;
                    }
                    String m33129b = this.f18311b.m33129b();
                    FutureC4184i m36235a = FutureC4184i.m36235a();
                    new C4185j(0, C5437ae.m32313b(m33129b), m36235a).setRetryPolicy(C4959e.m33435b().m36171a(10000)).build(C4959e.m33434c().m33432e());
                    try {
                        c4218m = m36235a.get();
                    } catch (Throwable th2) {
                        c4218m = null;
                    }
                    if (c4218m != null && c4218m.m36115a()) {
                        C5058b.this.f18305b.mo33123c(this.f18311b);
                        if (!C5478q.m32110c()) {
                            return null;
                        }
                        C5478q.m32109c("trackurl", "track success : " + this.f18311b.m33129b());
                        return null;
                    }
                    if (C5478q.m32110c()) {
                        C5478q.m32109c("trackurl", "track fail : " + this.f18311b.m33129b());
                    }
                    C5065f c5065f = this.f18311b;
                    c5065f.m33130a(c5065f.m33128c() - 1);
                    if (this.f18311b.m33128c() == 0) {
                        C5058b.this.f18305b.mo33123c(this.f18311b);
                        if (!C5478q.m32110c()) {
                            return null;
                        }
                        C5478q.m32109c("trackurl", "track fail and delete : " + this.f18311b.m33129b());
                        return null;
                    }
                    C5058b.this.f18305b.mo33124b(this.f18311b);
                }
                return null;
            }
            return null;
        }

        /* renamed from: a */
        boolean m33141a(String str) {
            if (!TextUtils.isEmpty(str)) {
                return str.startsWith("http://") || str.startsWith("https://");
            }
            return false;
        }
    }

    public C5058b(Context context, AbstractC5066g abstractC5066g) {
        this.f18304a = context;
        this.f18305b = abstractC5066g;
    }

    /* renamed from: b */
    public void m33144b(List<C5065f> list) {
        if (C5473o.m32124b(list)) {
            for (C5065f c5065f : list) {
                new AsyncTaskC5061a(c5065f).executeOnExecutor(this.f18306c, new Void[0]);
            }
        }
    }

    /* renamed from: d */
    public static AbstractC5057a m33142d() {
        return C5063d.m33136c();
    }

    @Override // com.bytedance.sdk.openadsdk.p186m.AbstractC5057a
    /* renamed from: a */
    public void mo33139a() {
        this.f18306c.submit(new Runnable() { // from class: com.bytedance.sdk.openadsdk.m.b.1
            @Override // java.lang.Runnable
            public void run() {
                final List<C5065f> mo33127a = C5058b.this.f18305b.mo33127a();
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.m.b.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        C5058b.this.m33144b(mo33127a);
                    }
                });
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.p186m.AbstractC5057a
    /* renamed from: a */
    public void mo33138a(List<String> list) {
        if (C4587d.m34919a() && C5473o.m32124b(list)) {
            for (String str : list) {
                new AsyncTaskC5061a(new C5065f(UUID.randomUUID().toString() + "_" + System.currentTimeMillis(), str, 5)).executeOnExecutor(this.f18306c, new Void[0]);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.p186m.AbstractC5057a
    /* renamed from: b */
    public void mo33137b() {
        try {
            this.f18306c.shutdownNow();
        } catch (Throwable th) {
        }
    }

    /* renamed from: c */
    public Context m33143c() {
        Context context = this.f18304a;
        Context context2 = context;
        if (context == null) {
            context2 = C4600n.m34815a();
        }
        return context2;
    }
}
