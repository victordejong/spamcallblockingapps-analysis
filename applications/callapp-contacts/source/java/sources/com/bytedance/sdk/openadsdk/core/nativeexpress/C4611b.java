package com.bytedance.sdk.openadsdk.core.nativeexpress;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTNativeExpressAd;
import com.bytedance.sdk.openadsdk.core.AbstractC4635o;
import com.bytedance.sdk.openadsdk.core.C4566f;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.bannerexpress.C4511b;
import com.bytedance.sdk.openadsdk.core.bannerexpress.C4515c;
import com.bytedance.sdk.openadsdk.core.p153d.C4533b;
import com.bytedance.sdk.openadsdk.core.p153d.C4539c;
import com.bytedance.sdk.openadsdk.core.p154e.C4545a;
import com.bytedance.sdk.openadsdk.core.p154e.C4556h;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.p154e.C4559j;
import com.bytedance.sdk.openadsdk.core.video.p162e.C4712c;
import com.bytedance.sdk.openadsdk.p171i.C4927a;
import com.bytedance.sdk.openadsdk.p171i.p172a.C4931b;
import com.bytedance.sdk.openadsdk.p174j.C4959e;
import com.bytedance.sdk.openadsdk.p174j.p175a.C4943b;
import com.bytedance.sdk.openadsdk.p176k.p182f.C5021b;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.bytedance.sdk.openadsdk.core.nativeexpress.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/nativeexpress/b.class */
public class C4611b {

    /* renamed from: j */
    private static Set<C4611b> f16907j = Collections.synchronizedSet(new HashSet());

    /* renamed from: a */
    private AdSlot f16908a;

    /* renamed from: c */
    private Context f16910c;

    /* renamed from: d */
    private TTAdNative.NativeExpressAdListener f16911d;

    /* renamed from: f */
    private List<C4557i> f16913f;

    /* renamed from: g */
    private List<C4557i> f16914g;

    /* renamed from: h */
    private AbstractC4614a f16915h;

    /* renamed from: e */
    private final AtomicBoolean f16912e = new AtomicBoolean(false);

    /* renamed from: i */
    private int f16916i = 5;

    /* renamed from: k */
    private ScheduledFuture<?> f16917k = null;

    /* renamed from: l */
    private ScheduledFuture<?> f16918l = null;

    /* renamed from: m */
    private ScheduledFuture<?> f16919m = null;

    /* renamed from: b */
    private final AbstractC4635o f16909b = C4600n.m34807f();

    /* renamed from: com.bytedance.sdk.openadsdk.core.nativeexpress.b$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/nativeexpress/b$a.class */
    public interface AbstractC4614a {
        /* renamed from: a */
        void mo34732a();

        /* renamed from: a */
        void mo34731a(List<C4557i> list);
    }

    private C4611b(Context context) {
        if (context != null) {
            this.f16910c = context.getApplicationContext();
        } else {
            this.f16910c = C4600n.m34815a();
        }
        f16907j.add(this);
    }

    /* renamed from: a */
    public TTNativeExpressAd m34750a(C4557i c4557i) {
        int i = this.f16916i;
        if (i == 1) {
            return c4557i.m35245B() != null ? new C4515c(this.f16910c, c4557i, this.f16908a) : new C4511b(this.f16910c, c4557i, this.f16908a);
        } else if (i == 2) {
            return c4557i.m35245B() != null ? new C4539c(this.f16910c, c4557i, this.f16908a) : new C4533b(this.f16910c, c4557i, this.f16908a);
        } else if (i == 5) {
            return c4557i.m35245B() != null ? new C4634n(this.f16910c, c4557i, this.f16908a) : new C4629k(this.f16910c, c4557i, this.f16908a);
        } else if (i == 9) {
            return new C4633m(this.f16910c, c4557i, this.f16908a);
        } else {
            return null;
        }
    }

    /* renamed from: a */
    public static C4611b m34754a(Context context) {
        return new C4611b(context);
    }

    /* renamed from: a */
    public void m34757a() {
        List<C4557i> list = this.f16913f;
        if (list == null) {
            return;
        }
        for (C4557i c4557i : list) {
            if (c4557i.m35199ad() && c4557i.m35239H() != null && !c4557i.m35239H().isEmpty()) {
                for (C4556h c4556h : c4557i.m35239H()) {
                    if (!TextUtils.isEmpty(c4556h.m35254a())) {
                        C4959e.m33434c().m33430g().m33470a(c4556h.m35254a(), C4943b.m33475a(), c4556h.m35250b(), c4556h.m35248c());
                    }
                }
            }
            if (C4557i.m35180d(c4557i) && c4557i.m35245B() != null && c4557i.m35245B().m35043h() != null) {
                if (C4600n.m34805h().m34905b(String.valueOf(C5438af.m32278d(c4557i.m35228S()))) && C4600n.m34805h().m34917A()) {
                    C4712c.m34397a(new C5021b().m33274a(c4557i.m35245B().m35043h()).m33275a(204800).m33273b(c4557i.m35245B().m35040k()));
                }
            }
        }
    }

    /* renamed from: a */
    public void m34756a(int i) {
        List<C4557i> list = this.f16913f;
        C4931b m33522e = C4931b.m33530b().m33533a(this.f16916i).m33526c(this.f16908a.getCodeId()).m33522e((list == null || list.size() <= 0) ? "" : C5438af.m32262h(this.f16913f.get(0).m35228S()));
        m33522e.m33529b(i).m33520f(C4566f.m35036a(i));
        C4927a.m33549a().m33540b(m33522e);
    }

    /* renamed from: a */
    public void m34755a(int i, String str) {
        if (this.f16912e.getAndSet(false)) {
            TTAdNative.NativeExpressAdListener nativeExpressAdListener = this.f16911d;
            if (nativeExpressAdListener != null) {
                nativeExpressAdListener.onError(i, str);
            }
            AbstractC4614a abstractC4614a = this.f16915h;
            if (abstractC4614a != null) {
                abstractC4614a.mo34732a();
            }
            m34739c();
        }
    }

    /* renamed from: a */
    private void m34751a(AdSlot adSlot, TTAdNative.NativeExpressAdListener nativeExpressAdListener) {
        if (adSlot == null) {
            return;
        }
        C4559j c4559j = new C4559j();
        c4559j.f16593e = 2;
        this.f16909b.mo34679a(adSlot, c4559j, this.f16916i, new AbstractC4635o.AbstractC4636a() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.b.1
            @Override // com.bytedance.sdk.openadsdk.core.AbstractC4635o.AbstractC4636a
            /* renamed from: a */
            public void mo34084a(int i, String str) {
                C4611b.this.m34755a(i, str);
            }

            @Override // com.bytedance.sdk.openadsdk.core.AbstractC4635o.AbstractC4636a
            /* renamed from: a */
            public void mo34083a(C4545a c4545a) {
                if (c4545a.m35343b() == null || c4545a.m35343b().isEmpty()) {
                    C4611b.this.m34755a(-3, C4566f.m35036a(-3));
                    return;
                }
                C4611b.this.f16913f = c4545a.m35343b();
                C4611b.this.f16914g = c4545a.m35343b();
                C4611b.this.m34757a();
                C4611b.this.m34743b();
            }
        });
    }

    /* renamed from: a */
    private void m34744a(boolean z) {
        try {
            ScheduledFuture<?> scheduledFuture = this.f16918l;
            if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                return;
            }
            C5478q.m32106e("ExpressAdLoadManager", "CheckValidFutureTask-->cancel......success=".concat(String.valueOf(this.f16918l.cancel(z))));
        } catch (Throwable th) {
        }
    }

    /* renamed from: b */
    public void m34743b() {
        if (this.f16912e.getAndSet(false)) {
            new Handler(Looper.getMainLooper()).post(new Runnable() { // from class: com.bytedance.sdk.openadsdk.core.nativeexpress.b.2
                @Override // java.lang.Runnable
                public void run() {
                    if (C4611b.this.f16914g == null || C4611b.this.f16914g.size() <= 0) {
                        if (C4611b.this.f16911d != null) {
                            C4611b.this.f16911d.onError(108, C4566f.m35036a(108));
                            C4611b.this.m34756a(108);
                        }
                        if (C4611b.this.f16915h != null) {
                            C4611b.this.f16915h.mo34732a();
                        }
                    } else {
                        if (C4611b.this.f16911d != null) {
                            ArrayList arrayList = new ArrayList(C4611b.this.f16914g.size());
                            for (C4557i c4557i : C4611b.this.f16914g) {
                                arrayList.add(C4611b.this.m34750a(c4557i));
                            }
                            if (!arrayList.isEmpty()) {
                                C4611b.this.f16911d.onNativeExpressAdLoad(arrayList);
                            } else {
                                C4611b.this.f16911d.onError(103, C4566f.m35036a(103));
                                C4611b.this.m34756a(103);
                            }
                        }
                        if (C4611b.this.f16915h != null) {
                            C4611b.this.f16915h.mo34731a(C4611b.this.f16914g);
                        }
                    }
                    C4611b.this.m34739c();
                }
            });
        }
    }

    /* renamed from: b */
    private void m34740b(boolean z) {
        try {
            ScheduledFuture<?> scheduledFuture = this.f16919m;
            if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                return;
            }
            C5478q.m32112b("ExpressAdLoadManager", "CheckValidDoneFutureTask-->cancel.....success=".concat(String.valueOf(this.f16919m.cancel(z))));
        } catch (Throwable th) {
        }
    }

    /* renamed from: c */
    public void m34739c() {
        List<C4557i> list = this.f16913f;
        if (list != null) {
            list.clear();
        }
        List<C4557i> list2 = this.f16914g;
        if (list2 != null) {
            list2.clear();
        }
        m34744a(true);
        m34740b(true);
        m34737c(true);
        m34736d();
    }

    /* renamed from: c */
    private void m34737c(boolean z) {
        try {
            ScheduledFuture<?> scheduledFuture = this.f16917k;
            if (scheduledFuture == null || scheduledFuture.isCancelled()) {
                return;
            }
            C5478q.m32106e("ExpressAdLoadManager", "TimeOutFutureTask-->cancel......success=".concat(String.valueOf(this.f16917k.cancel(z))));
        } catch (Throwable th) {
        }
    }

    /* renamed from: d */
    private void m34736d() {
        f16907j.remove(this);
    }

    /* renamed from: a */
    public void m34753a(AdSlot adSlot, int i, TTAdNative.NativeExpressAdListener nativeExpressAdListener, int i2) {
        m34752a(adSlot, i, nativeExpressAdListener, null, i2);
    }

    /* renamed from: a */
    public void m34752a(AdSlot adSlot, int i, TTAdNative.NativeExpressAdListener nativeExpressAdListener, AbstractC4614a abstractC4614a, int i2) {
        if (this.f16912e.get()) {
            C5478q.m32106e("ExpressAdLoadManager", "express ad is loading...");
            return;
        }
        this.f16916i = i;
        this.f16912e.set(true);
        this.f16908a = adSlot;
        this.f16911d = nativeExpressAdListener;
        this.f16915h = abstractC4614a;
        m34751a(adSlot, nativeExpressAdListener);
    }
}
