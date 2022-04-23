package com.bytedance.sdk.openadsdk.component.reward;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.component.reward.f;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.e.j;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.video.b.a;
import com.bytedance.sdk.openadsdk.j.c;
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
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/reward/h.class */
public class h {

    /* renamed from: a  reason: collision with root package name */
    private static volatile h f8667a;

    /* renamed from: b  reason: collision with root package name */
    private Context f8668b;

    /* renamed from: d  reason: collision with root package name */
    private AtomicBoolean f8670d = new AtomicBoolean(false);
    private List<a> e = Collections.synchronizedList(new ArrayList());
    private final BroadcastReceiver f = new BroadcastReceiver() { // from class: com.bytedance.sdk.openadsdk.component.reward.h.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if ("android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction()) && t.c(h.this.f8668b) != 0) {
                Iterator it2 = h.this.e.iterator();
                while (it2.hasNext()) {
                    final a aVar = (a) it2.next();
                    e.a(new g("Reward_downloadVideo") { // from class: com.bytedance.sdk.openadsdk.component.reward.h.3.1
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
    private final o f8669c = n.f();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/reward/h$a.class */
    public class a implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        i f8686a;

        /* renamed from: b  reason: collision with root package name */
        AdSlot f8687b;

        a(i iVar, AdSlot adSlot) {
            this.f8686a = iVar;
            this.f8687b = adSlot;
        }

        @Override // java.lang.Runnable
        public void run() {
            f.a(h.this.f8668b).a(this.f8686a, new f.a<Object>() { // from class: com.bytedance.sdk.openadsdk.component.reward.h.a.1
                @Override // com.bytedance.sdk.openadsdk.component.reward.f.a
                public void a(boolean z, Object obj) {
                    if (z) {
                        f.a(h.this.f8668b).a(a.this.f8687b, a.this.f8686a);
                    }
                }
            });
        }
    }

    private h(Context context) {
        this.f8668b = context == null ? n.a() : context.getApplicationContext();
        c();
    }

    public static h a(Context context) {
        if (f8667a == null) {
            synchronized (h.class) {
                try {
                    if (f8667a == null) {
                        f8667a = new h(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f8667a;
    }

    private void a(AdSlot adSlot, boolean z, final TTAdNative.RewardVideoAdListener rewardVideoAdListener) {
        if (z) {
            b(adSlot, true, rewardVideoAdListener);
            return;
        }
        final i c2 = f.a(this.f8668b).c(adSlot.getCodeId());
        if (c2 != null) {
            k kVar = new k(this.f8668b, c2, adSlot);
            if (!c2.x()) {
                kVar.a(f.a(this.f8668b).a(c2));
            }
            com.bytedance.sdk.openadsdk.d.e.a(c2);
            if (rewardVideoAdListener != null) {
                rewardVideoAdListener.onRewardVideoAdLoad(kVar);
                if (!c2.x()) {
                    rewardVideoAdListener.onRewardVideoCached();
                }
            }
            com.bytedance.sdk.openadsdk.core.video.b.a.a().a(c2, new a.AbstractC0166a() { // from class: com.bytedance.sdk.openadsdk.component.reward.h.1
                @Override // com.bytedance.sdk.openadsdk.core.video.b.a.AbstractC0166a
                public void a(boolean z2) {
                    if (rewardVideoAdListener != null && c2.x()) {
                        rewardVideoAdListener.onRewardVideoCached();
                    }
                }
            });
            q.b("RewardVideoLoadManager", "get cache data success");
            q.b("bidding", "reward video get cache data success");
            return;
        }
        b(adSlot, false, rewardVideoAdListener);
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

    private void b(final AdSlot adSlot, final boolean z, final TTAdNative.RewardVideoAdListener rewardVideoAdListener) {
        q.b("bidding", "reward video doNetwork 获取新物料:BidAdm->MD5->" + b.a(adSlot.getBidAdm()));
        j jVar = new j();
        jVar.f8906b = z ? 2 : 1;
        if (n.h().i(adSlot.getCodeId()) || adSlot.getExpressViewAcceptedWidth() > BitmapDescriptorFactory.HUE_RED || adSlot.isExpressAd()) {
            jVar.e = 2;
        }
        this.f8669c.a(adSlot, jVar, 7, new o.a() { // from class: com.bytedance.sdk.openadsdk.component.reward.h.2
            @Override // com.bytedance.sdk.openadsdk.core.o.a
            public void a(int i, String str) {
                TTAdNative.RewardVideoAdListener rewardVideoAdListener2;
                if (!z && (rewardVideoAdListener2 = rewardVideoAdListener) != null) {
                    rewardVideoAdListener2.onError(i, str);
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.o.a
            public void a(com.bytedance.sdk.openadsdk.core.e.a aVar) {
                TTAdNative.RewardVideoAdListener rewardVideoAdListener2;
                TTAdNative.RewardVideoAdListener rewardVideoAdListener3;
                if (aVar.b() != null && !aVar.b().isEmpty()) {
                    q.b("RewardVideoLoadManager", "get material data success isPreload=" + z);
                    final i iVar = aVar.b().get(0);
                    try {
                        if (iVar.E() != null && !TextUtils.isEmpty(iVar.E().a())) {
                            String a2 = iVar.E().a();
                            c cVar = new c(true);
                            cVar.a(adSlot.getCodeId());
                            cVar.a(7);
                            cVar.c(iVar.P());
                            cVar.d(iVar.S());
                            cVar.b(af.h(iVar.S()));
                            com.bytedance.sdk.openadsdk.j.e.c().h().a(a2, cVar);
                        }
                    } catch (Throwable th) {
                    }
                    final k kVar = new k(h.this.f8668b, iVar, adSlot);
                    if (!z && (rewardVideoAdListener3 = rewardVideoAdListener) != null) {
                        rewardVideoAdListener3.onRewardVideoAdLoad(kVar);
                    }
                    com.bytedance.sdk.openadsdk.core.video.b.a.a().a(iVar, new a.AbstractC0166a() { // from class: com.bytedance.sdk.openadsdk.component.reward.h.2.1
                        @Override // com.bytedance.sdk.openadsdk.core.video.b.a.AbstractC0166a
                        public void a(boolean z2) {
                            i iVar2;
                            if (!z && rewardVideoAdListener != null && (iVar2 = iVar) != null && iVar2.x()) {
                                rewardVideoAdListener.onRewardVideoCached();
                            }
                        }
                    });
                    if (!z || iVar.x() || n.h().q(adSlot.getCodeId()).f8966d != 1) {
                        if (!iVar.x()) {
                            f.a(h.this.f8668b).a(iVar, new f.a<Object>() { // from class: com.bytedance.sdk.openadsdk.component.reward.h.2.2
                                @Override // com.bytedance.sdk.openadsdk.component.reward.f.a
                                public void a(boolean z2, Object obj) {
                                    q.b("RewardVideoLoadManager", "download video file: " + z2 + ", preload: " + z);
                                    if (z2) {
                                        kVar.a(f.a(h.this.f8668b).a(iVar));
                                    }
                                    if (!z) {
                                        com.bytedance.sdk.openadsdk.d.e.a(iVar);
                                        if (z2 && rewardVideoAdListener != null) {
                                            rewardVideoAdListener.onRewardVideoCached();
                                        }
                                    } else if (z2) {
                                        f.a(h.this.f8668b).a(adSlot, iVar);
                                    }
                                }
                            });
                        } else {
                            f.a(h.this.f8668b).a(adSlot, iVar);
                        }
                    } else if (!t.d(h.this.f8668b)) {
                        h hVar = h.this;
                        hVar.a(new a(iVar, adSlot));
                    }
                } else if (!z && (rewardVideoAdListener2 = rewardVideoAdListener) != null) {
                    rewardVideoAdListener2.onError(-3, com.bytedance.sdk.openadsdk.core.f.a(-3));
                }
            }
        });
    }

    private void c() {
        if (!this.f8670d.get()) {
            this.f8670d.set(true);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
            try {
                this.f8668b.registerReceiver(this.f, intentFilter);
            } catch (Exception e) {
            }
        }
    }

    private void d() {
        if (this.f8670d.get()) {
            this.f8670d.set(false);
            try {
                this.f8668b.unregisterReceiver(this.f);
            } catch (Exception e) {
            }
        }
    }

    public void a() {
        AdSlot b2 = f.a(this.f8668b).b();
        if (b2 != null && !TextUtils.isEmpty(b2.getCodeId()) && f.a(this.f8668b).c(b2.getCodeId()) == null) {
            b(b2);
        }
    }

    public void a(AdSlot adSlot) {
        f.a(this.f8668b).b(adSlot);
    }

    public void a(AdSlot adSlot, TTAdNative.RewardVideoAdListener rewardVideoAdListener) {
        q.b("RewardVideoLoadManager", "load reward vide: " + String.valueOf(adSlot));
        q.b("bidding", "load reward vide: BidAdm->MD5->" + b.a(adSlot.getBidAdm()));
        f.a(this.f8668b).a(adSlot);
        a(adSlot, false, rewardVideoAdListener);
    }

    public void a(String str) {
        f.a(this.f8668b).a(str);
    }

    public AdSlot b(String str) {
        return f.a(this.f8668b).b(str);
    }

    public void b() {
        try {
            f.a(this.f8668b).a();
        } catch (Throwable th) {
        }
    }

    public void b(AdSlot adSlot) {
        if (adSlot == null || TextUtils.isEmpty(adSlot.getBidAdm())) {
            q.b("RewardVideoLoadManager", "preload reward video: " + String.valueOf(adSlot));
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
