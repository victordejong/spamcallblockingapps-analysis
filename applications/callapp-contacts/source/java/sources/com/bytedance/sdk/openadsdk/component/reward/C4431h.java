package com.bytedance.sdk.openadsdk.component.reward;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.component.reward.C4425f;
import com.bytedance.sdk.openadsdk.core.AbstractC4635o;
import com.bytedance.sdk.openadsdk.core.C4566f;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.p154e.C4545a;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.p154e.C4559j;
import com.bytedance.sdk.openadsdk.core.video.p159b.C4671a;
import com.bytedance.sdk.openadsdk.p164d.C4811e;
import com.bytedance.sdk.openadsdk.p174j.C4957c;
import com.bytedance.sdk.openadsdk.p174j.C4959e;
import com.bytedance.sdk.openadsdk.p176k.p183g.C5028b;
import com.bytedance.sdk.openadsdk.p184l.AbstractRunnableC5055g;
import com.bytedance.sdk.openadsdk.p184l.C5052e;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.utils.C5482t;
import com.google.android.gms.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.bytedance.sdk.openadsdk.component.reward.h */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/reward/h.class */
public class C4431h {

    /* renamed from: a */
    private static volatile C4431h f16161a;

    /* renamed from: b */
    private Context f16162b;

    /* renamed from: d */
    private AtomicBoolean f16164d = new AtomicBoolean(false);

    /* renamed from: e */
    private List<RunnableC4438a> f16165e = Collections.synchronizedList(new ArrayList());

    /* renamed from: f */
    private final BroadcastReceiver f16166f = new BroadcastReceiver() { // from class: com.bytedance.sdk.openadsdk.component.reward.h.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction()) || C5482t.m32088c(C4431h.this.f16162b) == 0) {
                return;
            }
            Iterator it2 = C4431h.this.f16165e.iterator();
            while (it2.hasNext()) {
                final RunnableC4438a runnableC4438a = (RunnableC4438a) it2.next();
                C5052e.m33161a(new AbstractRunnableC5055g("Reward_downloadVideo") { // from class: com.bytedance.sdk.openadsdk.component.reward.h.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        runnableC4438a.run();
                    }
                }, 1);
                it2.remove();
            }
        }
    };

    /* renamed from: c */
    private final AbstractC4635o f16163c = C4600n.m34807f();

    /* renamed from: com.bytedance.sdk.openadsdk.component.reward.h$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/reward/h$a.class */
    public class RunnableC4438a implements Runnable {

        /* renamed from: a */
        C4557i f16182a;

        /* renamed from: b */
        AdSlot f16183b;

        RunnableC4438a(C4557i c4557i, AdSlot adSlot) {
            C4431h.this = r4;
            this.f16182a = c4557i;
            this.f16183b = adSlot;
        }

        @Override // java.lang.Runnable
        public void run() {
            C4425f.m35619a(C4431h.this.f16162b).m35612a(this.f16182a, new C4425f.AbstractC4429a<Object>() { // from class: com.bytedance.sdk.openadsdk.component.reward.h.a.1
                @Override // com.bytedance.sdk.openadsdk.component.reward.C4425f.AbstractC4429a
                /* renamed from: a */
                public void mo35586a(boolean z, Object obj) {
                    if (z) {
                        C4425f.m35619a(C4431h.this.f16162b).m35616a(RunnableC4438a.this.f16183b, RunnableC4438a.this.f16182a);
                    }
                }
            });
        }
    }

    private C4431h(Context context) {
        this.f16162b = context == null ? C4600n.m34815a() : context.getApplicationContext();
        m35588c();
    }

    /* renamed from: a */
    public static C4431h m35601a(Context context) {
        if (f16161a == null) {
            synchronized (C4431h.class) {
                try {
                    if (f16161a == null) {
                        f16161a = new C4431h(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f16161a;
    }

    /* renamed from: a */
    private void m35598a(AdSlot adSlot, boolean z, final TTAdNative.RewardVideoAdListener rewardVideoAdListener) {
        if (z) {
            m35591b(adSlot, true, rewardVideoAdListener);
            return;
        }
        final C4557i m35603c = C4425f.m35619a(this.f16162b).m35603c(adSlot.getCodeId());
        if (m35603c == null) {
            m35591b(adSlot, false, rewardVideoAdListener);
            return;
        }
        C4444k c4444k = new C4444k(this.f16162b, m35603c, adSlot);
        if (!m35603c.m35136x()) {
            c4444k.m35561a(C4425f.m35619a(this.f16162b).m35613a(m35603c));
        }
        C4811e.m33874a(m35603c);
        if (rewardVideoAdListener != null) {
            rewardVideoAdListener.onRewardVideoAdLoad(c4444k);
            if (!m35603c.m35136x()) {
                rewardVideoAdListener.onRewardVideoCached();
            }
        }
        C4671a.m34591a().m34589a(m35603c, new C4671a.AbstractC4676a() { // from class: com.bytedance.sdk.openadsdk.component.reward.h.1
            @Override // com.bytedance.sdk.openadsdk.core.video.p159b.C4671a.AbstractC4676a
            /* renamed from: a */
            public void mo34562a(boolean z2) {
                if (rewardVideoAdListener == null || !m35603c.m35136x()) {
                    return;
                }
                rewardVideoAdListener.onRewardVideoCached();
            }
        });
        C5478q.m32112b("RewardVideoLoadManager", "get cache data success");
        C5478q.m32112b("bidding", "reward video get cache data success");
    }

    /* renamed from: a */
    public void m35597a(RunnableC4438a runnableC4438a) {
        if (runnableC4438a == null) {
            return;
        }
        if (this.f16165e.size() > 0) {
            this.f16165e.remove(0);
        }
        this.f16165e.add(runnableC4438a);
    }

    /* renamed from: b */
    private void m35591b(final AdSlot adSlot, final boolean z, final TTAdNative.RewardVideoAdListener rewardVideoAdListener) {
        C5478q.m32112b("bidding", "reward video doNetwork 获取新物料:BidAdm->MD5->" + C5028b.m33243a(adSlot.getBidAdm()));
        C4559j c4559j = new C4559j();
        c4559j.f16590b = z ? 2 : 1;
        if (C4600n.m34805h().m34882i(adSlot.getCodeId()) || adSlot.getExpressViewAcceptedWidth() > BitmapDescriptorFactory.HUE_RED || adSlot.isExpressAd()) {
            c4559j.f16593e = 2;
        }
        this.f16163c.mo34679a(adSlot, c4559j, 7, new AbstractC4635o.AbstractC4636a() { // from class: com.bytedance.sdk.openadsdk.component.reward.h.2
            @Override // com.bytedance.sdk.openadsdk.core.AbstractC4635o.AbstractC4636a
            /* renamed from: a */
            public void mo34084a(int i, String str) {
                TTAdNative.RewardVideoAdListener rewardVideoAdListener2;
                if (z || (rewardVideoAdListener2 = rewardVideoAdListener) == null) {
                    return;
                }
                rewardVideoAdListener2.onError(i, str);
            }

            @Override // com.bytedance.sdk.openadsdk.core.AbstractC4635o.AbstractC4636a
            /* renamed from: a */
            public void mo34083a(C4545a c4545a) {
                TTAdNative.RewardVideoAdListener rewardVideoAdListener2;
                TTAdNative.RewardVideoAdListener rewardVideoAdListener3;
                if (c4545a.m35343b() == null || c4545a.m35343b().isEmpty()) {
                    if (z || (rewardVideoAdListener2 = rewardVideoAdListener) == null) {
                        return;
                    }
                    rewardVideoAdListener2.onError(-3, C4566f.m35036a(-3));
                    return;
                }
                C5478q.m32112b("RewardVideoLoadManager", "get material data success isPreload=" + z);
                final C4557i c4557i = c4545a.m35343b().get(0);
                try {
                    if (c4557i.m35242E() != null && !TextUtils.isEmpty(c4557i.m35242E().m35254a())) {
                        String m35254a = c4557i.m35242E().m35254a();
                        C4957c c4957c = new C4957c(true);
                        c4957c.m33454a(adSlot.getCodeId());
                        c4957c.m33455a(7);
                        c4957c.m33452c(c4557i.m35231P());
                        c4957c.m33451d(c4557i.m35228S());
                        c4957c.m33453b(C5438af.m32262h(c4557i.m35228S()));
                        C4959e.m33434c().m33429h().m36258a(m35254a, c4957c);
                    }
                } catch (Throwable th) {
                }
                final C4444k c4444k = new C4444k(C4431h.this.f16162b, c4557i, adSlot);
                if (!z && (rewardVideoAdListener3 = rewardVideoAdListener) != null) {
                    rewardVideoAdListener3.onRewardVideoAdLoad(c4444k);
                }
                C4671a.m34591a().m34589a(c4557i, new C4671a.AbstractC4676a() { // from class: com.bytedance.sdk.openadsdk.component.reward.h.2.1
                    @Override // com.bytedance.sdk.openadsdk.core.video.p159b.C4671a.AbstractC4676a
                    /* renamed from: a */
                    public void mo34562a(boolean z2) {
                        C4557i c4557i2;
                        if (z || rewardVideoAdListener == null || (c4557i2 = c4557i) == null || !c4557i2.m35136x()) {
                            return;
                        }
                        rewardVideoAdListener.onRewardVideoCached();
                    }
                });
                if (!z || c4557i.m35136x() || C4600n.m34805h().m34866q(adSlot.getCodeId()).f16698d != 1) {
                    if (!c4557i.m35136x()) {
                        C4425f.m35619a(C4431h.this.f16162b).m35612a(c4557i, new C4425f.AbstractC4429a<Object>() { // from class: com.bytedance.sdk.openadsdk.component.reward.h.2.2
                            @Override // com.bytedance.sdk.openadsdk.component.reward.C4425f.AbstractC4429a
                            /* renamed from: a */
                            public void mo35586a(boolean z2, Object obj) {
                                C5478q.m32112b("RewardVideoLoadManager", "download video file: " + z2 + ", preload: " + z);
                                if (z2) {
                                    c4444k.m35561a(C4425f.m35619a(C4431h.this.f16162b).m35613a(c4557i));
                                }
                                if (z) {
                                    if (!z2) {
                                        return;
                                    }
                                    C4425f.m35619a(C4431h.this.f16162b).m35616a(adSlot, c4557i);
                                    return;
                                }
                                C4811e.m33874a(c4557i);
                                if (!z2 || rewardVideoAdListener == null) {
                                    return;
                                }
                                rewardVideoAdListener.onRewardVideoCached();
                            }
                        });
                    } else {
                        C4425f.m35619a(C4431h.this.f16162b).m35616a(adSlot, c4557i);
                    }
                } else if (C5482t.m32087d(C4431h.this.f16162b)) {
                } else {
                    C4431h c4431h = C4431h.this;
                    c4431h.m35597a(new RunnableC4438a(c4557i, adSlot));
                }
            }
        });
    }

    /* renamed from: c */
    private void m35588c() {
        if (this.f16164d.get()) {
            return;
        }
        this.f16164d.set(true);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        try {
            this.f16162b.registerReceiver(this.f16166f, intentFilter);
        } catch (Exception e) {
        }
    }

    /* renamed from: d */
    private void m35587d() {
        if (!this.f16164d.get()) {
            return;
        }
        this.f16164d.set(false);
        try {
            this.f16162b.unregisterReceiver(this.f16166f);
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    public void m35602a() {
        AdSlot m35606b = C4425f.m35619a(this.f16162b).m35606b();
        if (m35606b == null || TextUtils.isEmpty(m35606b.getCodeId()) || C4425f.m35619a(this.f16162b).m35603c(m35606b.getCodeId()) != null) {
            return;
        }
        m35592b(m35606b);
    }

    /* renamed from: a */
    public void m35600a(AdSlot adSlot) {
        C4425f.m35619a(this.f16162b).m35605b(adSlot);
    }

    /* renamed from: a */
    public void m35599a(AdSlot adSlot, TTAdNative.RewardVideoAdListener rewardVideoAdListener) {
        C5478q.m32112b("RewardVideoLoadManager", "load reward vide: " + String.valueOf(adSlot));
        C5478q.m32112b("bidding", "load reward vide: BidAdm->MD5->" + C5028b.m33243a(adSlot.getBidAdm()));
        C4425f.m35619a(this.f16162b).m35617a(adSlot);
        m35598a(adSlot, false, rewardVideoAdListener);
    }

    /* renamed from: a */
    public void m35594a(String str) {
        C4425f.m35619a(this.f16162b).m35610a(str);
    }

    /* renamed from: b */
    public AdSlot m35589b(String str) {
        return C4425f.m35619a(this.f16162b).m35604b(str);
    }

    /* renamed from: b */
    public void m35593b() {
        try {
            C4425f.m35619a(this.f16162b).m35620a();
        } catch (Throwable th) {
        }
    }

    /* renamed from: b */
    public void m35592b(AdSlot adSlot) {
        if (adSlot != null && !TextUtils.isEmpty(adSlot.getBidAdm())) {
            C5478q.m32112b("bidding", "preload bidding 逻辑不走预加载逻辑：BidAdm->MD5->" + C5028b.m33243a(adSlot.getBidAdm()));
            return;
        }
        C5478q.m32112b("RewardVideoLoadManager", "preload reward video: " + String.valueOf(adSlot));
        m35598a(adSlot, true, null);
    }

    protected void finalize() throws Throwable {
        super.finalize();
        m35587d();
    }
}
