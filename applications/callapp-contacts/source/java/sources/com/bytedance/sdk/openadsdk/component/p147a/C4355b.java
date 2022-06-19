package com.bytedance.sdk.openadsdk.component.p147a;

import android.content.Context;
import android.graphics.Bitmap;
import com.bytedance.sdk.adnet.core.C4218m;
import com.bytedance.sdk.adnet.p141b.C4166d;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.core.AbstractC4635o;
import com.bytedance.sdk.openadsdk.core.C4566f;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.p154e.C4545a;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.p174j.C4956b;
import com.bytedance.sdk.openadsdk.p174j.C4959e;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import java.lang.ref.WeakReference;
import org.apache.commons.lang3.StringUtils;
/* renamed from: com.bytedance.sdk.openadsdk.component.a.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/a/b.class */
public class C4355b {

    /* renamed from: a */
    private static volatile C4355b f16008a;

    /* renamed from: b */
    private WeakReference<Context> f16009b;

    /* renamed from: c */
    private final AbstractC4635o f16010c = C4600n.m34807f();

    /* renamed from: com.bytedance.sdk.openadsdk.component.a.b$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/a/b$a.class */
    public interface AbstractC4360a {
        /* renamed from: a */
        void mo35684a();

        /* renamed from: a */
        void mo35683a(C4354a c4354a);
    }

    private C4355b(Context context) {
        this.f16009b = new WeakReference<>(context);
    }

    /* renamed from: a */
    public static C4355b m35732a(Context context) {
        if (f16008a == null) {
            synchronized (C4355b.class) {
                try {
                    if (f16008a == null) {
                        f16008a = new C4355b(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } else {
            f16008a.m35726b(context);
        }
        return f16008a;
    }

    /* renamed from: a */
    public void m35727a(final C4557i c4557i, final AbstractC4360a abstractC4360a) {
        C4959e.m33434c().m33429h().m36258a(c4557i.m35239H().get(0).m35254a(), new C4956b() { // from class: com.bytedance.sdk.openadsdk.component.a.b.3
            @Override // com.bytedance.sdk.openadsdk.p174j.C4956b, com.bytedance.sdk.adnet.p141b.C4166d.AbstractC4179e
            /* renamed from: a */
            public void mo33424a() {
            }

            @Override // com.bytedance.sdk.openadsdk.p174j.C4956b, com.bytedance.sdk.adnet.p141b.C4166d.AbstractC4179e
            /* renamed from: a */
            public void mo33423a(C4166d.C4177c c4177c, boolean z) {
                if (c4177c == null || c4177c.m36241a() == null) {
                    AbstractC4360a abstractC4360a2 = abstractC4360a;
                    if (abstractC4360a2 == null) {
                        return;
                    }
                    abstractC4360a2.mo35684a();
                    return;
                }
                AbstractC4360a abstractC4360a3 = abstractC4360a;
                if (abstractC4360a3 == null) {
                    return;
                }
                abstractC4360a3.mo35683a(new C4354a(c4177c.m36241a(), c4557i));
            }

            @Override // com.bytedance.sdk.openadsdk.p174j.C4956b, com.bytedance.sdk.adnet.core.C4218m.AbstractC4219a
            /* renamed from: a */
            public void mo33422a(C4218m<Bitmap> c4218m) {
            }

            @Override // com.bytedance.sdk.openadsdk.p174j.C4956b, com.bytedance.sdk.adnet.p141b.C4166d.AbstractC4179e
            /* renamed from: b */
            public void mo33420b() {
            }

            @Override // com.bytedance.sdk.openadsdk.p174j.C4956b, com.bytedance.sdk.adnet.core.C4218m.AbstractC4219a
            /* renamed from: b */
            public void mo33419b(C4218m<Bitmap> c4218m) {
                AbstractC4360a abstractC4360a2 = abstractC4360a;
                if (abstractC4360a2 != null) {
                    abstractC4360a2.mo35684a();
                }
            }
        });
    }

    /* renamed from: b */
    private void m35726b(Context context) {
        this.f16009b = new WeakReference<>(context);
    }

    /* renamed from: a */
    public void m35731a(final AdSlot adSlot, final TTAdNative.BannerAdListener bannerAdListener) {
        this.f16010c.mo34679a(adSlot, null, 1, new AbstractC4635o.AbstractC4636a() { // from class: com.bytedance.sdk.openadsdk.component.a.b.2
            @Override // com.bytedance.sdk.openadsdk.core.AbstractC4635o.AbstractC4636a
            /* renamed from: a */
            public void mo34084a(int i, String str) {
                bannerAdListener.onError(i, str);
                C5478q.m32112b("BannerAdManager", str + StringUtils.SPACE + i);
            }

            @Override // com.bytedance.sdk.openadsdk.core.AbstractC4635o.AbstractC4636a
            /* renamed from: a */
            public void mo34083a(C4545a c4545a) {
                if (c4545a.m35343b() == null || c4545a.m35343b().isEmpty()) {
                    C5478q.m32112b("BannerAdManager", "Banner广告解析失败/广告为空");
                    bannerAdListener.onError(-4, C4566f.m35036a(-4));
                    return;
                }
                C4557i c4557i = c4545a.m35343b().get(0);
                if (c4557i.m35199ad()) {
                    C4355b.this.m35727a(c4557i, new AbstractC4360a() { // from class: com.bytedance.sdk.openadsdk.component.a.b.2.1
                        @Override // com.bytedance.sdk.openadsdk.component.p147a.C4355b.AbstractC4360a
                        /* renamed from: a */
                        public void mo35684a() {
                            bannerAdListener.onError(-5, C4566f.m35036a(-5));
                        }

                        @Override // com.bytedance.sdk.openadsdk.component.p147a.C4355b.AbstractC4360a
                        /* renamed from: a */
                        public void mo35683a(C4354a c4354a) {
                            if (C4355b.this.f16009b.get() != null) {
                                bannerAdListener.onBannerAdLoad(new C4365e((Context) C4355b.this.f16009b.get(), c4354a, adSlot));
                            }
                        }
                    });
                    return;
                }
                C5478q.m32112b("BannerAdManager", "Banner广告解析失败");
                bannerAdListener.onError(-4, C4566f.m35036a(-4));
            }
        });
    }

    /* renamed from: a */
    public void m35730a(AdSlot adSlot, final AbstractC4360a abstractC4360a) {
        this.f16010c.mo34679a(adSlot, null, 1, new AbstractC4635o.AbstractC4636a() { // from class: com.bytedance.sdk.openadsdk.component.a.b.1
            @Override // com.bytedance.sdk.openadsdk.core.AbstractC4635o.AbstractC4636a
            /* renamed from: a */
            public void mo34084a(int i, String str) {
                C5478q.m32112b("BannerAdManager", str + "  " + i);
                AbstractC4360a abstractC4360a2 = abstractC4360a;
                if (abstractC4360a2 != null) {
                    abstractC4360a2.mo35684a();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.AbstractC4635o.AbstractC4636a
            /* renamed from: a */
            public void mo34083a(C4545a c4545a) {
                if (c4545a.m35343b() == null || c4545a.m35343b().isEmpty()) {
                    return;
                }
                C4557i c4557i = c4545a.m35343b().get(0);
                if (c4557i.m35199ad()) {
                    C4355b.this.m35727a(c4557i, abstractC4360a);
                    return;
                }
                C5478q.m32112b("BannerAdManager", "Banner广告解析失败/广告为空");
                AbstractC4360a abstractC4360a2 = abstractC4360a;
                if (abstractC4360a2 == null) {
                    return;
                }
                abstractC4360a2.mo35684a();
            }
        });
    }
}
