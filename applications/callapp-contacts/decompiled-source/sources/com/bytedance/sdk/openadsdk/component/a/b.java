package com.bytedance.sdk.openadsdk.component.a;

import android.content.Context;
import android.graphics.Bitmap;
import com.bytedance.sdk.adnet.b.d;
import com.bytedance.sdk.adnet.core.m;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.f;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.j.e;
import com.bytedance.sdk.openadsdk.utils.q;
import java.lang.ref.WeakReference;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/a/b.class */
public class b {

    /* renamed from: a  reason: collision with root package name */
    private static volatile b f8548a;

    /* renamed from: b  reason: collision with root package name */
    private WeakReference<Context> f8549b;

    /* renamed from: c  reason: collision with root package name */
    private final o f8550c = n.f();

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/a/b$a.class */
    public interface a {
        void a();

        void a(com.bytedance.sdk.openadsdk.component.a.a aVar);
    }

    private b(Context context) {
        this.f8549b = new WeakReference<>(context);
    }

    public static b a(Context context) {
        if (f8548a == null) {
            synchronized (b.class) {
                try {
                    if (f8548a == null) {
                        f8548a = new b(context);
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        } else {
            f8548a.b(context);
        }
        return f8548a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(final i iVar, final a aVar) {
        e.c().h().a(iVar.H().get(0).a(), new com.bytedance.sdk.openadsdk.j.b() { // from class: com.bytedance.sdk.openadsdk.component.a.b.3
            @Override // com.bytedance.sdk.openadsdk.j.b, com.bytedance.sdk.adnet.b.d.e
            public void a() {
            }

            @Override // com.bytedance.sdk.openadsdk.j.b, com.bytedance.sdk.adnet.b.d.e
            public void a(d.c cVar, boolean z) {
                if (cVar == null || cVar.a() == null) {
                    a aVar2 = aVar;
                    if (aVar2 != null) {
                        aVar2.a();
                        return;
                    }
                    return;
                }
                a aVar3 = aVar;
                if (aVar3 != null) {
                    aVar3.a(new com.bytedance.sdk.openadsdk.component.a.a(cVar.a(), iVar));
                }
            }

            @Override // com.bytedance.sdk.openadsdk.j.b, com.bytedance.sdk.adnet.core.m.a
            public void a(m<Bitmap> mVar) {
            }

            @Override // com.bytedance.sdk.openadsdk.j.b, com.bytedance.sdk.adnet.b.d.e
            public void b() {
            }

            @Override // com.bytedance.sdk.openadsdk.j.b, com.bytedance.sdk.adnet.core.m.a
            public void b(m<Bitmap> mVar) {
                a aVar2 = aVar;
                if (aVar2 != null) {
                    aVar2.a();
                }
            }
        });
    }

    private void b(Context context) {
        this.f8549b = new WeakReference<>(context);
    }

    public void a(final AdSlot adSlot, final TTAdNative.BannerAdListener bannerAdListener) {
        this.f8550c.a(adSlot, null, 1, new o.a() { // from class: com.bytedance.sdk.openadsdk.component.a.b.2
            @Override // com.bytedance.sdk.openadsdk.core.o.a
            public void a(int i, String str) {
                bannerAdListener.onError(i, str);
                q.b("BannerAdManager", str + StringUtils.SPACE + i);
            }

            @Override // com.bytedance.sdk.openadsdk.core.o.a
            public void a(com.bytedance.sdk.openadsdk.core.e.a aVar) {
                if (aVar.b() == null || aVar.b().isEmpty()) {
                    q.b("BannerAdManager", "Banner广告解析失败/广告为空");
                    bannerAdListener.onError(-4, f.a(-4));
                    return;
                }
                i iVar = aVar.b().get(0);
                if (iVar.ad()) {
                    b.this.a(iVar, new a() { // from class: com.bytedance.sdk.openadsdk.component.a.b.2.1
                        @Override // com.bytedance.sdk.openadsdk.component.a.b.a
                        public void a() {
                            bannerAdListener.onError(-5, f.a(-5));
                        }

                        @Override // com.bytedance.sdk.openadsdk.component.a.b.a
                        public void a(com.bytedance.sdk.openadsdk.component.a.a aVar2) {
                            if (b.this.f8549b.get() != null) {
                                bannerAdListener.onBannerAdLoad(new e((Context) b.this.f8549b.get(), aVar2, adSlot));
                            }
                        }
                    });
                    return;
                }
                q.b("BannerAdManager", "Banner广告解析失败");
                bannerAdListener.onError(-4, f.a(-4));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(AdSlot adSlot, final a aVar) {
        this.f8550c.a(adSlot, null, 1, new o.a() { // from class: com.bytedance.sdk.openadsdk.component.a.b.1
            @Override // com.bytedance.sdk.openadsdk.core.o.a
            public void a(int i, String str) {
                q.b("BannerAdManager", str + "  " + i);
                a aVar2 = aVar;
                if (aVar2 != null) {
                    aVar2.a();
                }
            }

            @Override // com.bytedance.sdk.openadsdk.core.o.a
            public void a(com.bytedance.sdk.openadsdk.core.e.a aVar2) {
                if (aVar2.b() != null && !aVar2.b().isEmpty()) {
                    i iVar = aVar2.b().get(0);
                    if (iVar.ad()) {
                        b.this.a(iVar, aVar);
                        return;
                    }
                    q.b("BannerAdManager", "Banner广告解析失败/广告为空");
                    a aVar3 = aVar;
                    if (aVar3 != null) {
                        aVar3.a();
                    }
                }
            }
        });
    }
}
