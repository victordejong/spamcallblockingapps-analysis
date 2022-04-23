package com.bytedance.sdk.openadsdk.component.b;

import android.content.Context;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.f;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.o;
import com.bytedance.sdk.openadsdk.core.video.e.c;
import com.bytedance.sdk.openadsdk.k.f.b;
import com.bytedance.sdk.openadsdk.utils.af;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/b/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private static volatile a f8578a;

    /* renamed from: b  reason: collision with root package name */
    private final o f8579b = n.f();

    private a() {
    }

    public static a a() {
        if (f8578a == null) {
            synchronized (a.class) {
                try {
                    if (f8578a == null) {
                        f8578a = new a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f8578a;
    }

    public void a(final Context context, AdSlot adSlot, final TTAdNative.DrawFeedAdListener drawFeedAdListener) {
        this.f8579b.a(adSlot, null, 9, new o.a() { // from class: com.bytedance.sdk.openadsdk.component.b.a.2
            @Override // com.bytedance.sdk.openadsdk.core.o.a
            public void a(int i, String str) {
                drawFeedAdListener.onError(i, str);
            }

            @Override // com.bytedance.sdk.openadsdk.core.o.a
            public void a(com.bytedance.sdk.openadsdk.core.e.a aVar) {
                if (aVar.b() == null || aVar.b().isEmpty()) {
                    drawFeedAdListener.onError(-3, f.a(-3));
                    return;
                }
                List<i> b2 = aVar.b();
                ArrayList arrayList = new ArrayList(b2.size());
                for (i iVar : b2) {
                    if (iVar.ad()) {
                        arrayList.add(new b(context, iVar, 9));
                    }
                    if (!(!i.d(iVar) || iVar.B() == null || iVar.B().h() == null)) {
                        if (n.h().b(String.valueOf(af.d(iVar.S()))) && n.h().A()) {
                            c.a(new b().a(iVar.B().h()).a(512000).b(iVar.B().k()));
                        }
                    }
                }
                if (!arrayList.isEmpty()) {
                    drawFeedAdListener.onDrawFeedAdLoad(arrayList);
                } else {
                    drawFeedAdListener.onError(-4, f.a(-4));
                }
            }
        });
    }

    public void a(final Context context, final AdSlot adSlot, final TTAdNative.FeedAdListener feedAdListener) {
        this.f8579b.a(adSlot, null, 5, new o.a() { // from class: com.bytedance.sdk.openadsdk.component.b.a.1
            @Override // com.bytedance.sdk.openadsdk.core.o.a
            public void a(int i, String str) {
                feedAdListener.onError(i, str);
            }

            @Override // com.bytedance.sdk.openadsdk.core.o.a
            public void a(com.bytedance.sdk.openadsdk.core.e.a aVar) {
                if (aVar.b() == null || aVar.b().isEmpty()) {
                    feedAdListener.onError(-3, f.a(-3));
                    return;
                }
                List<i> b2 = aVar.b();
                ArrayList arrayList = new ArrayList(b2.size());
                for (i iVar : b2) {
                    if (iVar.ad()) {
                        arrayList.add(new c(context, iVar, 5, adSlot));
                    }
                    if (!(!i.d(iVar) || iVar.B() == null || iVar.B().h() == null)) {
                        if (n.h().b(String.valueOf(af.d(iVar.S()))) && n.h().A()) {
                            c.a(new b().a(iVar.B().h()).a(204800).b(iVar.B().k()));
                        }
                    }
                }
                if (!arrayList.isEmpty()) {
                    feedAdListener.onFeedAdLoad(arrayList);
                } else {
                    feedAdListener.onError(-4, f.a(-4));
                }
            }
        });
    }
}
