package com.bytedance.sdk.openadsdk.m;

import android.content.Context;
import android.os.AsyncTask;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.bytedance.sdk.adnet.b.i;
import com.bytedance.sdk.adnet.b.j;
import com.bytedance.sdk.adnet.core.m;
import com.bytedance.sdk.openadsdk.core.h.d;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.j.e;
import com.bytedance.sdk.openadsdk.utils.ae;
import com.bytedance.sdk.openadsdk.utils.o;
import com.bytedance.sdk.openadsdk.utils.q;
import com.bytedance.sdk.openadsdk.utils.t;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/m/b.class */
public class b implements com.bytedance.sdk.openadsdk.m.a {

    /* renamed from: a  reason: collision with root package name */
    private final Context f9837a;

    /* renamed from: b  reason: collision with root package name */
    private final g f9838b;

    /* renamed from: c  reason: collision with root package name */
    private final ExecutorService f9839c = Executors.newSingleThreadExecutor();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/m/b$a.class */
    public class a extends AsyncTask<Void, Void, Void> {

        /* renamed from: b  reason: collision with root package name */
        private final f f9844b;

        private a(f fVar) {
            this.f9844b = fVar;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        /* renamed from: a */
        public Void doInBackground(Void... voidArr) {
            m mVar;
            if (!d.a() || !a(this.f9844b.b())) {
                return null;
            }
            if (this.f9844b.c() == 0) {
                b.this.f9838b.c(this.f9844b);
                return null;
            }
            while (this.f9844b.c() > 0 && !isCancelled()) {
                try {
                    if (this.f9844b.c() == 5) {
                        b.this.f9838b.a(this.f9844b);
                    }
                } catch (Throwable th) {
                }
                if (!t.a(b.this.c())) {
                    return null;
                }
                String b2 = this.f9844b.b();
                i a2 = i.a();
                new j(0, ae.b(b2), a2).setRetryPolicy(e.b().a(10000)).build(e.c().e());
                try {
                    mVar = a2.get();
                } catch (Throwable th2) {
                    mVar = null;
                }
                if (mVar == null || !mVar.a()) {
                    if (q.c()) {
                        q.c("trackurl", "track fail : " + this.f9844b.b());
                    }
                    f fVar = this.f9844b;
                    fVar.a(fVar.c() - 1);
                    if (this.f9844b.c() == 0) {
                        b.this.f9838b.c(this.f9844b);
                        if (!q.c()) {
                            return null;
                        }
                        q.c("trackurl", "track fail and delete : " + this.f9844b.b());
                        return null;
                    }
                    b.this.f9838b.b(this.f9844b);
                } else {
                    b.this.f9838b.c(this.f9844b);
                    if (!q.c()) {
                        return null;
                    }
                    q.c("trackurl", "track success : " + this.f9844b.b());
                    return null;
                }
            }
            return null;
        }

        boolean a(String str) {
            if (!TextUtils.isEmpty(str)) {
                return str.startsWith("http://") || str.startsWith("https://");
            }
            return false;
        }
    }

    public b(Context context, g gVar) {
        this.f9837a = context;
        this.f9838b = gVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(List<f> list) {
        if (o.b(list)) {
            for (f fVar : list) {
                new a(fVar).executeOnExecutor(this.f9839c, new Void[0]);
            }
        }
    }

    public static com.bytedance.sdk.openadsdk.m.a d() {
        return d.c();
    }

    @Override // com.bytedance.sdk.openadsdk.m.a
    public void a() {
        this.f9839c.submit(new Runnable() { // from class: com.bytedance.sdk.openadsdk.m.b.1
            @Override // java.lang.Runnable
            public void run() {
                final List<f> a2 = b.this.f9838b.a();
                new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.m.b.1.1
                    @Override // java.lang.Runnable
                    public void run() {
                        b.this.b(a2);
                    }
                });
            }
        });
    }

    @Override // com.bytedance.sdk.openadsdk.m.a
    public void a(List<String> list) {
        if (d.a() && o.b(list)) {
            for (String str : list) {
                new a(new f(UUID.randomUUID().toString() + "_" + System.currentTimeMillis(), str, 5)).executeOnExecutor(this.f9839c, new Void[0]);
            }
        }
    }

    @Override // com.bytedance.sdk.openadsdk.m.a
    public void b() {
        try {
            this.f9839c.shutdownNow();
        } catch (Throwable th) {
        }
    }

    public Context c() {
        Context context = this.f9837a;
        Context context2 = context;
        if (context == null) {
            context2 = n.a();
        }
        return context2;
    }
}
