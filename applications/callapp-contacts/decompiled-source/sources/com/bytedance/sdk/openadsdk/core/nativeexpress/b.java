package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.bytedance.sdk.openadsdk.core.bannerexpress.c;
import com.bytedance.sdk.openadsdk.core.e.h;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.e.j;
import com.bytedance.sdk.openadsdk.core.f;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.j.e;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.q;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/nativeexpress/b.class */
public class b {
    private static Set<b> j = Collections.synchronizedSet(new HashSet());

    /* renamed from: a  reason: collision with root package name */
    private AdSlot f9036a;

    /* renamed from: c  reason: collision with root package name */
    private Context f9038c;

    /* renamed from: d  reason: collision with root package name */
    private TTAdNative.NativeExpressAdListener f9039d;
    private List<i> f;
    private List<i> g;
    private a h;
    private final AtomicBoolean e = new AtomicBoolean(false);
    private int i = 5;
    private ScheduledFuture<?> k = null;
    private ScheduledFuture<?> l = null;
    private ScheduledFuture<?> m = null;

    /* renamed from: b  reason: collision with root package name */
    private final o f9037b = n.f();

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/nativeexpress/b$a.class */
    public interface a {
        void a();

        void a(List<i> list);
    }

    private b(Context context) {
        if (context != null) {
            this.f9038c = context.getApplicationContext();
        } else {
            this.f9038c = n.a();
        }
        j.add(this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public TTNativeExpressAd a(i iVar) {
        int i = this.i;
        if (i == 1) {
            return iVar.B() != null ? new c(this.f9038c, iVar, this.f9036a) : new com.bytedance.sdk.openadsdk.core.bannerexpress.b(this.f9038c, iVar, this.f9036a);
        }
        if (i == 2) {
            return iVar.B() != null ? new com.bytedance.sdk.openadsdk.core.d.c(this.f9038c, iVar, this.f9036a) : new com.bytedance.sdk.openadsdk.core.d.b(this.f9038c, iVar, this.f9036a);
        }
        if (i == 5) {
            return iVar.B() != null ? new n(this.f9038c, iVar, this.f9036a) : new k(this.f9038c, iVar, this.f9036a);
        }
        if (i != 9) {
            return null;
        }
        return new m(this.f9038c, iVar, this.f9036a);
    }

    public static b a(Context context) {
        return new b(context);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        List<i> list = this.f;
        if (list != null) {
            for (i iVar : list) {
                if (iVar.ad() && iVar.H() != null && !iVar.H().isEmpty()) {
                    for (h hVar : iVar.H()) {
                        if (!TextUtils.isEmpty(hVar.a())) {
                            e.c().g().a(hVar.a(), com.bytedance.sdk.openadsdk.j.a.b.a(), hVar.b(), hVar.c());
                        }
                    }
                }
                if (!(!i.d(iVar) || iVar.B() == null || iVar.B().h() == null)) {
                    if (n.h().b(String.valueOf(af.d(iVar.S()))) && n.h().A()) {
                        com.bytedance.sdk.openadsdk.core.video.e.c.a(new com.bytedance.sdk.openadsdk.k.f.b().a(iVar.B().h()).a(204800).b(iVar.B().k()));
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i) {
        List<i> list = this.f;
        com.bytedance.sdk.openadsdk.i.a.b e = com.bytedance.sdk.openadsdk.i.a.b.b().a(this.i).c(this.f9036a.getCodeId()).e((list == null || list.size() <= 0) ? "" : af.h(this.f.get(0).S()));
        e.b(i).f(f.a(i));
        com.bytedance.sdk.openadsdk.i.a.a().b(e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i, String str) {
        if (this.e.getAndSet(false)) {
            TTAdNative.NativeExpressAdListener nativeExpressAdListener = this.f9039d;
            if (nativeExpressAdListener != null) {
                nativeExpressAdListener.onError(i, str);
            }
            a aVar = this.h;
            if (aVar != null) {
                aVar.a();
            }
            c();
        }
    }

    private void a(AdSlot adSlot, TTAdNative.NativeExpressAdListener nativeExpressAdListener) {
        if (adSlot != null) {
            j jVar = new j();
            jVar.e = 2;
            this.f9037b.a(adSlot, jVar, this.i, new o.a() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.b.1
                @Override // com.bytedance.sdk.openadsdk.core.o.a
                public void a(int i, String str) {
                    b.this.a(i, str);
                }

                @Override // com.bytedance.sdk.openadsdk.core.o.a
                public void a(com.bytedance.sdk.openadsdk.core.e.a aVar) {
                    if (aVar.b() == null || aVar.b().isEmpty()) {
                        b.this.a(-3, f.a(-3));
                        return;
                    }
                    b.this.f = aVar.b();
                    b.this.g = aVar.b();
                    b.this.a();
                    b.this.b();
                }
            });
        }
    }

    private void a(boolean z) {
        try {
            ScheduledFuture<?> scheduledFuture = this.l;
            if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
                q.e("ExpressAdLoadManager", "CheckValidFutureTask-->cancel......success=".concat(String.valueOf(this.l.cancel(z))));
            }
        } catch (Throwable th) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        if (this.e.getAndSet(false)) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.b.2
                @Override // java.lang.Runnable
                public void run() {
                    if (b.this.g == null || b.this.g.size() <= 0) {
                        if (b.this.f9039d != null) {
                            b.this.f9039d.onError(108, f.a(108));
                            b.this.a(108);
                        }
                        if (b.this.h != null) {
                            b.this.h.a();
                        }
                    } else {
                        if (b.this.f9039d != null) {
                            ArrayList arrayList = new ArrayList(b.this.g.size());
                            for (i iVar : b.this.g) {
                                arrayList.add(b.this.a(iVar));
                            }
                            if (!arrayList.isEmpty()) {
                                b.this.f9039d.onNativeExpressAdLoad(arrayList);
                            } else {
                                b.this.f9039d.onError(103, f.a(103));
                                b.this.a(103);
                            }
                        }
                        if (b.this.h != null) {
                            b.this.h.a(b.this.g);
                        }
                    }
                    b.this.c();
                }
            });
        }
    }

    private void b(boolean z) {
        try {
            ScheduledFuture<?> scheduledFuture = this.m;
            if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
                q.b("ExpressAdLoadManager", "CheckValidDoneFutureTask-->cancel.....success=".concat(String.valueOf(this.m.cancel(z))));
            }
        } catch (Throwable th) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c() {
        List<i> list = this.f;
        if (list != null) {
            list.clear();
        }
        List<i> list2 = this.g;
        if (list2 != null) {
            list2.clear();
        }
        a(true);
        b(true);
        c(true);
        d();
    }

    private void c(boolean z) {
        try {
            ScheduledFuture<?> scheduledFuture = this.k;
            if (scheduledFuture != null && !scheduledFuture.isCancelled()) {
                q.e("ExpressAdLoadManager", "TimeOutFutureTask-->cancel......success=".concat(String.valueOf(this.k.cancel(z))));
            }
        } catch (Throwable th) {
        }
    }

    private void d() {
        j.remove(this);
    }

    public void a(AdSlot adSlot, int i, TTAdNative.NativeExpressAdListener nativeExpressAdListener, int i2) {
        a(adSlot, i, nativeExpressAdListener, null, i2);
    }

    public void a(AdSlot adSlot, int i, TTAdNative.NativeExpressAdListener nativeExpressAdListener, a aVar, int i2) {
        if (this.e.get()) {
            q.e("ExpressAdLoadManager", "express ad is loading...");
            return;
        }
        this.i = i;
        this.e.set(true);
        this.f9036a = adSlot;
        this.f9039d = nativeExpressAdListener;
        this.h = aVar;
        a(adSlot, nativeExpressAdListener);
    }
}
