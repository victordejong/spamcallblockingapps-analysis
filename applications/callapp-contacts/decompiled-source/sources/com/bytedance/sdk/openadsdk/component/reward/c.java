package com.bytedance.sdk.openadsdk.component.reward;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.component.reward.a;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.e.j;
import com.bytedance.sdk.openadsdk.core.f;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.video.b.a;
import com.bytedance.sdk.openadsdk.k.g.b;
import com.bytedance.sdk.openadsdk.l.e;
import com.bytedance.sdk.openadsdk.l.g;
import com.bytedance.sdk.openadsdk.utils.af;
import com.bytedance.sdk.openadsdk.utils.q;
import com.bytedance.sdk.openadsdk.utils.t;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/reward/c.class */
public class c {

    /* renamed from: a  reason: collision with root package name */
    private static volatile c f8619a;

    /* renamed from: b  reason: collision with root package name */
    private Context f8620b;

    /* renamed from: d  reason: collision with root package name */
    private AtomicBoolean f8622d = new AtomicBoolean(false);
    private List<a> e = Collections.synchronizedList(new ArrayList());
    private final BroadcastReceiver f = new BroadcastReceiver() { // from class: com.bytedance.sdk.openadsdk.component.reward.c.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction()) && t.c(c.this.f8620b) != 0) {
                Iterator it2 = c.this.e.iterator();
                while (it2.hasNext()) {
                    final a aVar = (a) it2.next();
                    e.a(new g("FullScreen_downloadVideo") { // from class: com.bytedance.sdk.openadsdk.component.reward.c.3.1
                        @Override // java.lang.Runnable
                        public void run() {
                            aVar.run();
                        }
                    }, 1);
                    it2.remove();
                }
            }
        }
    };

    /* renamed from: c  reason: collision with root package name */
    private final o f8621c = n.f();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/reward/c$a.class */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        i f8638a;

        /* renamed from: b  reason: collision with root package name */
        AdSlot f8639b;

        a(i iVar, AdSlot adSlot) {
            this.f8638a = iVar;
            this.f8639b = adSlot;
        }

        @Override // java.lang.Runnable
        public void run() {
            com.bytedance.sdk.openadsdk.component.reward.a.a(c.this.f8620b).a(this.f8638a, new a.AbstractC0161a<Object>() { // from class: com.bytedance.sdk.openadsdk.component.reward.c.a.1
                @Override // com.bytedance.sdk.openadsdk.component.reward.a.AbstractC0161a
                public void a(boolean z, Object obj) {
                    if (z) {
                        com.bytedance.sdk.openadsdk.component.reward.a.a(c.this.f8620b).a(a.this.f8639b, a.this.f8638a);
                    }
                }
            });
        }
    }

    private c(Context context) {
        this.f8620b = context == null ? n.a() : context.getApplicationContext();
        c();
    }

    public static c a(Context context) {
        if (f8619a == null) {
            synchronized (c.class) {
                try {
                    if (f8619a == null) {
                        f8619a = new c(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f8619a;
    }

    private void a(AdSlot adSlot, boolean z, final TTAdNative.FullScreenVideoAdListener fullScreenVideoAdListener) {
        if (z) {
            b(adSlot, true, fullScreenVideoAdListener);
            return;
        }
        final i c2 = com.bytedance.sdk.openadsdk.component.reward.a.a(this.f8620b).c(adSlot.getCodeId());
        if (c2 != null) {
            j jVar = new j(this.f8620b, c2, adSlot);
            if (!c2.x()) {
                jVar.a(com.bytedance.sdk.openadsdk.component.reward.a.a(this.f8620b).a(c2));
            }
            com.bytedance.sdk.openadsdk.d.e.a(c2);
            if (fullScreenVideoAdListener != null) {
                fullScreenVideoAdListener.onFullScreenVideoAdLoad(jVar);
                if (!c2.x()) {
                    fullScreenVideoAdListener.onFullScreenVideoCached();
                }
            }
            com.bytedance.sdk.openadsdk.core.video.b.a.a().a(c2, new a.AbstractC0166a() { // from class: com.bytedance.sdk.openadsdk.component.reward.c.1
                @Override // com.bytedance.sdk.openadsdk.core.video.b.a.AbstractC0166a
                public void a(boolean z2) {
                    if (fullScreenVideoAdListener != null && c2.x()) {
                        fullScreenVideoAdListener.onFullScreenVideoCached();
                    }
                }
            });
            q.b("FullScreenVideoLoadManager", "get cache data success");
            q.b("bidding", "full video get cache data success");
            return;
        }
        b(adSlot, false, fullScreenVideoAdListener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(a aVar) {
        if (aVar != null) {
            if (this.e.size() > 0) {
                this.e.remove(0);
            }
            this.e.add(aVar);
        }
    }

    private void b(final AdSlot adSlot, final boolean z, final TTAdNative.FullScreenVideoAdListener fullScreenVideoAdListener) {
        q.b("bidding", "full video doNetwork 获取新物料:BidAdm->MD5->" + b.a(adSlot.getBidAdm()));
        j jVar = new j();
        jVar.f8907c = z ? 2 : 1;
        if (n.h().i(adSlot.getCodeId()) || adSlot.getExpressViewAcceptedWidth() > BitmapDescriptorFactory.HUE_RED || adSlot.isExpressAd()) {
            jVar.e = 2;
        }
        this.f8621c.a(adSlot, jVar, 8, new o.a() { // from class: com.bytedance.sdk.openadsdk.component.reward.c.2
            @Override // com.bytedance.sdk.openadsdk.core.o.a
            public void a(int i, String str) {
                TTAdNative.FullScreenVideoAdListener fullScreenVideoAdListener2;
                if (!z && (fullScreenVideoAdListener2 = fullScreenVideoAdListener) != null) {
                    fullScreenVideoAdListener2.onError(i, str);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.o.a
            public void a(com.bytedance.sdk.openadsdk.core.e.a aVar) {
                TTAdNative.FullScreenVideoAdListener fullScreenVideoAdListener2;
                TTAdNative.FullScreenVideoAdListener fullScreenVideoAdListener3;
                if (aVar.b() != null && !aVar.b().isEmpty()) {
                    q.b("FullScreenVideoLoadManager", "get material data success isPreload=" + z);
                    final i iVar = aVar.b().get(0);
                    try {
                        if (iVar.E() != null && !TextUtils.isEmpty(iVar.E().a())) {
                            String a2 = iVar.E().a();
                            com.bytedance.sdk.openadsdk.j.c cVar = new com.bytedance.sdk.openadsdk.j.c(true);
                            cVar.a(adSlot.getCodeId());
                            cVar.a(8);
                            cVar.c(iVar.P());
                            cVar.d(iVar.S());
                            cVar.b(af.h(iVar.S()));
                            com.bytedance.sdk.openadsdk.j.e.c().h().a(a2, cVar);
                        }
                    } catch (Throwable th) {
                    }
                    final j jVar2 = new j(c.this.f8620b, iVar, adSlot);
                    if (!z && (fullScreenVideoAdListener3 = fullScreenVideoAdListener) != null) {
                        fullScreenVideoAdListener3.onFullScreenVideoAdLoad(jVar2);
                    }
                    com.bytedance.sdk.openadsdk.core.video.b.a.a().a(iVar, new a.AbstractC0166a() { // from class: com.bytedance.sdk.openadsdk.component.reward.c.2.1
                        @Override // com.bytedance.sdk.openadsdk.core.video.b.a.AbstractC0166a
                        public void a(boolean z2) {
                            i iVar2;
                            if (!z && fullScreenVideoAdListener != null && (iVar2 = iVar) != null && iVar2.x()) {
                                fullScreenVideoAdListener.onFullScreenVideoCached();
                            }
                        }
                    });
                    if (!z || iVar.x() || n.h().q(adSlot.getCodeId()).f8966d != 1) {
                        if (!iVar.x()) {
                            com.bytedance.sdk.openadsdk.component.reward.a.a(c.this.f8620b).a(iVar, new a.AbstractC0161a<Object>() { // from class: com.bytedance.sdk.openadsdk.component.reward.c.2.2
                                @Override // com.bytedance.sdk.openadsdk.component.reward.a.AbstractC0161a
                                public void a(boolean z2, Object obj) {
                                    q.b("FullScreenVideoLoadManager", "download video file: " + z2 + ", preload: " + z);
                                    if (z2) {
                                        jVar2.a(com.bytedance.sdk.openadsdk.component.reward.a.a(c.this.f8620b).a(iVar));
                                    }
                                    if (!z) {
                                        com.bytedance.sdk.openadsdk.d.e.a(iVar);
                                        if (z2 && fullScreenVideoAdListener != null) {
                                            fullScreenVideoAdListener.onFullScreenVideoCached();
                                        }
                                    } else if (z2) {
                                        com.bytedance.sdk.openadsdk.component.reward.a.a(c.this.f8620b).a(adSlot, iVar);
                                    }
                                }
                            });
                        } else {
                            com.bytedance.sdk.openadsdk.component.reward.a.a(c.this.f8620b).a(adSlot, iVar);
                        }
                    } else if (!t.d(c.this.f8620b)) {
                        c cVar2 = c.this;
                        cVar2.a(new a(iVar, adSlot));
                    }
                } else if (!z && (fullScreenVideoAdListener2 = fullScreenVideoAdListener) != null) {
                    fullScreenVideoAdListener2.onError(-3, f.a(-3));
                }
            }
        });
    }

    private void c() {
        if (!this.f8622d.get()) {
            this.f8622d.set(true);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            try {
                this.f8620b.registerReceiver(this.f, intentFilter);
            } catch (Exception e) {
            }
        }
    }

    private void d() {
        if (this.f8622d.get()) {
            this.f8622d.set(false);
            try {
                this.f8620b.unregisterReceiver(this.f);
            } catch (Exception e) {
            }
        }
    }

    public void a() {
        try {
            com.bytedance.sdk.openadsdk.component.reward.a.a(this.f8620b).a();
        } catch (Throwable th) {
        }
    }

    public void a(AdSlot adSlot) {
        com.bytedance.sdk.openadsdk.component.reward.a.a(this.f8620b).b(adSlot);
    }

    public void a(AdSlot adSlot, TTAdNative.FullScreenVideoAdListener fullScreenVideoAdListener) {
        q.b("FullScreenVideoLoadManager", "load full screen video: " + String.valueOf(adSlot));
        q.b("bidding", "load full video: BidAdm->MD5->" + b.a(adSlot.getBidAdm()));
        com.bytedance.sdk.openadsdk.component.reward.a.a(this.f8620b).a(adSlot);
        a(adSlot, false, fullScreenVideoAdListener);
    }

    public void a(String str) {
        com.bytedance.sdk.openadsdk.component.reward.a.a(this.f8620b).a(str);
    }

    public AdSlot b(String str) {
        return com.bytedance.sdk.openadsdk.component.reward.a.a(this.f8620b).b(str);
    }

    public void b() {
        AdSlot b2 = com.bytedance.sdk.openadsdk.component.reward.a.a(this.f8620b).b();
        if (b2 != null && !TextUtils.isEmpty(b2.getCodeId()) && com.bytedance.sdk.openadsdk.component.reward.a.a(this.f8620b).c(b2.getCodeId()) == null) {
            b(b2);
        }
    }

    public void b(AdSlot adSlot) {
        if (adSlot == null || TextUtils.isEmpty(adSlot.getBidAdm())) {
            q.b("FullScreenVideoLoadManager", "preload full screen video: " + String.valueOf(adSlot));
            a(adSlot, true, null);
            return;
        }
        q.b("bidding", "preload bidding 逻辑不走预加载逻辑：BidAdm->MD5->" + b.a(adSlot.getBidAdm()));
    }

    protected void finalize() throws Throwable {
        super.finalize();
        d();
    }
}
