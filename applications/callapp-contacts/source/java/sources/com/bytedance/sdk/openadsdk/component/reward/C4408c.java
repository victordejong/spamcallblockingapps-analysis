package com.bytedance.sdk.openadsdk.component.reward;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.component.reward.C4402a;
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
/* renamed from: com.bytedance.sdk.openadsdk.component.reward.c */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/reward/c.class */
public class C4408c {

    /* renamed from: a */
    private static volatile C4408c f16110a;

    /* renamed from: b */
    private Context f16111b;

    /* renamed from: d */
    private AtomicBoolean f16113d = new AtomicBoolean(false);

    /* renamed from: e */
    private List<RunnableC4415a> f16114e = Collections.synchronizedList(new ArrayList());

    /* renamed from: f */
    private final BroadcastReceiver f16115f = new BroadcastReceiver() { // from class: com.bytedance.sdk.openadsdk.component.reward.c.3
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (!"android.net.conn.CONNECTIVITY_CHANGE".equals(intent.getAction()) || C5482t.m32088c(C4408c.this.f16111b) == 0) {
                return;
            }
            Iterator it2 = C4408c.this.f16114e.iterator();
            while (it2.hasNext()) {
                final RunnableC4415a runnableC4415a = (RunnableC4415a) it2.next();
                C5052e.m33161a(new AbstractRunnableC5055g("FullScreen_downloadVideo") { // from class: com.bytedance.sdk.openadsdk.component.reward.c.3.1
                    @Override // java.lang.Runnable
                    public void run() {
                        runnableC4415a.run();
                    }
                }, 1);
                it2.remove();
            }
        }
    };

    /* renamed from: c */
    private final AbstractC4635o f16112c = C4600n.m34807f();

    /* renamed from: com.bytedance.sdk.openadsdk.component.reward.c$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/reward/c$a.class */
    public class RunnableC4415a implements Runnable {

        /* renamed from: a */
        C4557i f16131a;

        /* renamed from: b */
        AdSlot f16132b;

        RunnableC4415a(C4557i c4557i, AdSlot adSlot) {
            C4408c.this = r4;
            this.f16131a = c4557i;
            this.f16132b = adSlot;
        }

        @Override // java.lang.Runnable
        public void run() {
            C4402a.m35655a(C4408c.this.f16111b).m35648a(this.f16131a, new C4402a.AbstractC4406a<Object>() { // from class: com.bytedance.sdk.openadsdk.component.reward.c.a.1
                @Override // com.bytedance.sdk.openadsdk.component.reward.C4402a.AbstractC4406a
                /* renamed from: a */
                public void mo35622a(boolean z, Object obj) {
                    if (z) {
                        C4402a.m35655a(C4408c.this.f16111b).m35652a(RunnableC4415a.this.f16132b, RunnableC4415a.this.f16131a);
                    }
                }
            });
        }
    }

    private C4408c(Context context) {
        this.f16111b = context == null ? C4600n.m34815a() : context.getApplicationContext();
        m35624c();
    }

    /* renamed from: a */
    public static C4408c m35637a(Context context) {
        if (f16110a == null) {
            synchronized (C4408c.class) {
                try {
                    if (f16110a == null) {
                        f16110a = new C4408c(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f16110a;
    }

    /* renamed from: a */
    private void m35634a(AdSlot adSlot, boolean z, final TTAdNative.FullScreenVideoAdListener fullScreenVideoAdListener) {
        if (z) {
            m35627b(adSlot, true, fullScreenVideoAdListener);
            return;
        }
        final C4557i m35639c = C4402a.m35655a(this.f16111b).m35639c(adSlot.getCodeId());
        if (m35639c == null) {
            m35627b(adSlot, false, fullScreenVideoAdListener);
            return;
        }
        C4441j c4441j = new C4441j(this.f16111b, m35639c, adSlot);
        if (!m35639c.m35136x()) {
            c4441j.m35569a(C4402a.m35655a(this.f16111b).m35649a(m35639c));
        }
        C4811e.m33874a(m35639c);
        if (fullScreenVideoAdListener != null) {
            fullScreenVideoAdListener.onFullScreenVideoAdLoad(c4441j);
            if (!m35639c.m35136x()) {
                fullScreenVideoAdListener.onFullScreenVideoCached();
            }
        }
        C4671a.m34591a().m34589a(m35639c, new C4671a.AbstractC4676a() { // from class: com.bytedance.sdk.openadsdk.component.reward.c.1
            @Override // com.bytedance.sdk.openadsdk.core.video.p159b.C4671a.AbstractC4676a
            /* renamed from: a */
            public void mo34562a(boolean z2) {
                if (fullScreenVideoAdListener == null || !m35639c.m35136x()) {
                    return;
                }
                fullScreenVideoAdListener.onFullScreenVideoCached();
            }
        });
        C5478q.m32112b("FullScreenVideoLoadManager", "get cache data success");
        C5478q.m32112b("bidding", "full video get cache data success");
    }

    /* renamed from: a */
    public void m35633a(RunnableC4415a runnableC4415a) {
        if (runnableC4415a == null) {
            return;
        }
        if (this.f16114e.size() > 0) {
            this.f16114e.remove(0);
        }
        this.f16114e.add(runnableC4415a);
    }

    /* renamed from: b */
    private void m35627b(final AdSlot adSlot, final boolean z, final TTAdNative.FullScreenVideoAdListener fullScreenVideoAdListener) {
        C5478q.m32112b("bidding", "full video doNetwork 获取新物料:BidAdm->MD5->" + C5028b.m33243a(adSlot.getBidAdm()));
        C4559j c4559j = new C4559j();
        c4559j.f16591c = z ? 2 : 1;
        if (C4600n.m34805h().m34882i(adSlot.getCodeId()) || adSlot.getExpressViewAcceptedWidth() > BitmapDescriptorFactory.HUE_RED || adSlot.isExpressAd()) {
            c4559j.f16593e = 2;
        }
        this.f16112c.mo34679a(adSlot, c4559j, 8, new AbstractC4635o.AbstractC4636a() { // from class: com.bytedance.sdk.openadsdk.component.reward.c.2
            @Override // com.bytedance.sdk.openadsdk.core.AbstractC4635o.AbstractC4636a
            /* renamed from: a */
            public void mo34084a(int i, String str) {
                TTAdNative.FullScreenVideoAdListener fullScreenVideoAdListener2;
                if (z || (fullScreenVideoAdListener2 = fullScreenVideoAdListener) == null) {
                    return;
                }
                fullScreenVideoAdListener2.onError(i, str);
            }

            @Override // com.bytedance.sdk.openadsdk.core.AbstractC4635o.AbstractC4636a
            /* renamed from: a */
            public void mo34083a(C4545a c4545a) {
                TTAdNative.FullScreenVideoAdListener fullScreenVideoAdListener2;
                TTAdNative.FullScreenVideoAdListener fullScreenVideoAdListener3;
                if (c4545a.m35343b() == null || c4545a.m35343b().isEmpty()) {
                    if (z || (fullScreenVideoAdListener2 = fullScreenVideoAdListener) == null) {
                        return;
                    }
                    fullScreenVideoAdListener2.onError(-3, C4566f.m35036a(-3));
                    return;
                }
                C5478q.m32112b("FullScreenVideoLoadManager", "get material data success isPreload=" + z);
                final C4557i c4557i = c4545a.m35343b().get(0);
                try {
                    if (c4557i.m35242E() != null && !TextUtils.isEmpty(c4557i.m35242E().m35254a())) {
                        String m35254a = c4557i.m35242E().m35254a();
                        C4957c c4957c = new C4957c(true);
                        c4957c.m33454a(adSlot.getCodeId());
                        c4957c.m33455a(8);
                        c4957c.m33452c(c4557i.m35231P());
                        c4957c.m33451d(c4557i.m35228S());
                        c4957c.m33453b(C5438af.m32262h(c4557i.m35228S()));
                        C4959e.m33434c().m33429h().m36258a(m35254a, c4957c);
                    }
                } catch (Throwable th) {
                }
                final C4441j c4441j = new C4441j(C4408c.this.f16111b, c4557i, adSlot);
                if (!z && (fullScreenVideoAdListener3 = fullScreenVideoAdListener) != null) {
                    fullScreenVideoAdListener3.onFullScreenVideoAdLoad(c4441j);
                }
                C4671a.m34591a().m34589a(c4557i, new C4671a.AbstractC4676a() { // from class: com.bytedance.sdk.openadsdk.component.reward.c.2.1
                    @Override // com.bytedance.sdk.openadsdk.core.video.p159b.C4671a.AbstractC4676a
                    /* renamed from: a */
                    public void mo34562a(boolean z2) {
                        C4557i c4557i2;
                        if (z || fullScreenVideoAdListener == null || (c4557i2 = c4557i) == null || !c4557i2.m35136x()) {
                            return;
                        }
                        fullScreenVideoAdListener.onFullScreenVideoCached();
                    }
                });
                if (!z || c4557i.m35136x() || C4600n.m34805h().m34866q(adSlot.getCodeId()).f16698d != 1) {
                    if (!c4557i.m35136x()) {
                        C4402a.m35655a(C4408c.this.f16111b).m35648a(c4557i, new C4402a.AbstractC4406a<Object>() { // from class: com.bytedance.sdk.openadsdk.component.reward.c.2.2
                            @Override // com.bytedance.sdk.openadsdk.component.reward.C4402a.AbstractC4406a
                            /* renamed from: a */
                            public void mo35622a(boolean z2, Object obj) {
                                C5478q.m32112b("FullScreenVideoLoadManager", "download video file: " + z2 + ", preload: " + z);
                                if (z2) {
                                    c4441j.m35569a(C4402a.m35655a(C4408c.this.f16111b).m35649a(c4557i));
                                }
                                if (z) {
                                    if (!z2) {
                                        return;
                                    }
                                    C4402a.m35655a(C4408c.this.f16111b).m35652a(adSlot, c4557i);
                                    return;
                                }
                                C4811e.m33874a(c4557i);
                                if (!z2 || fullScreenVideoAdListener == null) {
                                    return;
                                }
                                fullScreenVideoAdListener.onFullScreenVideoCached();
                            }
                        });
                    } else {
                        C4402a.m35655a(C4408c.this.f16111b).m35652a(adSlot, c4557i);
                    }
                } else if (C5482t.m32087d(C4408c.this.f16111b)) {
                } else {
                    C4408c c4408c = C4408c.this;
                    c4408c.m35633a(new RunnableC4415a(c4557i, adSlot));
                }
            }
        });
    }

    /* renamed from: c */
    private void m35624c() {
        if (this.f16113d.get()) {
            return;
        }
        this.f16113d.set(true);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.net.conn.CONNECTIVITY_CHANGE");
        try {
            this.f16111b.registerReceiver(this.f16115f, intentFilter);
        } catch (Exception e) {
        }
    }

    /* renamed from: d */
    private void m35623d() {
        if (!this.f16113d.get()) {
            return;
        }
        this.f16113d.set(false);
        try {
            this.f16111b.unregisterReceiver(this.f16115f);
        } catch (Exception e) {
        }
    }

    /* renamed from: a */
    public void m35638a() {
        try {
            C4402a.m35655a(this.f16111b).m35656a();
        } catch (Throwable th) {
        }
    }

    /* renamed from: a */
    public void m35636a(AdSlot adSlot) {
        C4402a.m35655a(this.f16111b).m35641b(adSlot);
    }

    /* renamed from: a */
    public void m35635a(AdSlot adSlot, TTAdNative.FullScreenVideoAdListener fullScreenVideoAdListener) {
        C5478q.m32112b("FullScreenVideoLoadManager", "load full screen video: " + String.valueOf(adSlot));
        C5478q.m32112b("bidding", "load full video: BidAdm->MD5->" + C5028b.m33243a(adSlot.getBidAdm()));
        C4402a.m35655a(this.f16111b).m35653a(adSlot);
        m35634a(adSlot, false, fullScreenVideoAdListener);
    }

    /* renamed from: a */
    public void m35630a(String str) {
        C4402a.m35655a(this.f16111b).m35646a(str);
    }

    /* renamed from: b */
    public AdSlot m35625b(String str) {
        return C4402a.m35655a(this.f16111b).m35640b(str);
    }

    /* renamed from: b */
    public void m35629b() {
        AdSlot m35642b = C4402a.m35655a(this.f16111b).m35642b();
        if (m35642b == null || TextUtils.isEmpty(m35642b.getCodeId()) || C4402a.m35655a(this.f16111b).m35639c(m35642b.getCodeId()) != null) {
            return;
        }
        m35628b(m35642b);
    }

    /* renamed from: b */
    public void m35628b(AdSlot adSlot) {
        if (adSlot != null && !TextUtils.isEmpty(adSlot.getBidAdm())) {
            C5478q.m32112b("bidding", "preload bidding 逻辑不走预加载逻辑：BidAdm->MD5->" + C5028b.m33243a(adSlot.getBidAdm()));
            return;
        }
        C5478q.m32112b("FullScreenVideoLoadManager", "preload full screen video: " + String.valueOf(adSlot));
        m35634a(adSlot, true, null);
    }

    protected void finalize() throws Throwable {
        super.finalize();
        m35623d();
    }
}
