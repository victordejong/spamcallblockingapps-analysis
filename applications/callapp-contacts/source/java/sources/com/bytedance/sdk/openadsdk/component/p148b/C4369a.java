package com.bytedance.sdk.openadsdk.component.p148b;

import android.content.Context;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.core.AbstractC4635o;
import com.bytedance.sdk.openadsdk.core.C4566f;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.p154e.C4545a;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.core.video.p162e.C4712c;
import com.bytedance.sdk.openadsdk.p176k.p182f.C5021b;
import com.bytedance.sdk.openadsdk.utils.C5438af;
import java.util.ArrayList;
import java.util.List;
/* renamed from: com.bytedance.sdk.openadsdk.component.b.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/b/a.class */
public class C4369a {

    /* renamed from: a */
    private static volatile C4369a f16052a;

    /* renamed from: b */
    private final AbstractC4635o f16053b = C4600n.m34807f();

    private C4369a() {
    }

    /* renamed from: a */
    public static C4369a m35682a() {
        if (f16052a == null) {
            synchronized (C4369a.class) {
                try {
                    if (f16052a == null) {
                        f16052a = new C4369a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return f16052a;
    }

    /* renamed from: a */
    public void m35681a(final Context context, AdSlot adSlot, final TTAdNative.DrawFeedAdListener drawFeedAdListener) {
        this.f16053b.mo34679a(adSlot, null, 9, new AbstractC4635o.AbstractC4636a() { // from class: com.bytedance.sdk.openadsdk.component.b.a.2
            @Override // com.bytedance.sdk.openadsdk.core.AbstractC4635o.AbstractC4636a
            /* renamed from: a */
            public void mo34084a(int i, String str) {
                drawFeedAdListener.onError(i, str);
            }

            @Override // com.bytedance.sdk.openadsdk.core.AbstractC4635o.AbstractC4636a
            /* renamed from: a */
            public void mo34083a(C4545a c4545a) {
                if (c4545a.m35343b() == null || c4545a.m35343b().isEmpty()) {
                    drawFeedAdListener.onError(-3, C4566f.m35036a(-3));
                    return;
                }
                List<C4557i> m35343b = c4545a.m35343b();
                ArrayList arrayList = new ArrayList(m35343b.size());
                for (C4557i c4557i : m35343b) {
                    if (c4557i.m35199ad()) {
                        arrayList.add(new C4372b(context, c4557i, 9));
                    }
                    if (C4557i.m35180d(c4557i) && c4557i.m35245B() != null && c4557i.m35245B().m35043h() != null) {
                        if (C4600n.m34805h().m34905b(String.valueOf(C5438af.m32278d(c4557i.m35228S()))) && C4600n.m34805h().m34917A()) {
                            C4712c.m34397a(new C5021b().m33274a(c4557i.m35245B().m35043h()).m33275a(512000).m33273b(c4557i.m35245B().m35040k()));
                        }
                    }
                }
                if (!arrayList.isEmpty()) {
                    drawFeedAdListener.onDrawFeedAdLoad(arrayList);
                } else {
                    drawFeedAdListener.onError(-4, C4566f.m35036a(-4));
                }
            }
        });
    }

    /* renamed from: a */
    public void m35680a(final Context context, final AdSlot adSlot, final TTAdNative.FeedAdListener feedAdListener) {
        this.f16053b.mo34679a(adSlot, null, 5, new AbstractC4635o.AbstractC4636a() { // from class: com.bytedance.sdk.openadsdk.component.b.a.1
            @Override // com.bytedance.sdk.openadsdk.core.AbstractC4635o.AbstractC4636a
            /* renamed from: a */
            public void mo34084a(int i, String str) {
                feedAdListener.onError(i, str);
            }

            @Override // com.bytedance.sdk.openadsdk.core.AbstractC4635o.AbstractC4636a
            /* renamed from: a */
            public void mo34083a(C4545a c4545a) {
                if (c4545a.m35343b() == null || c4545a.m35343b().isEmpty()) {
                    feedAdListener.onError(-3, C4566f.m35036a(-3));
                    return;
                }
                List<C4557i> m35343b = c4545a.m35343b();
                ArrayList arrayList = new ArrayList(m35343b.size());
                for (C4557i c4557i : m35343b) {
                    if (c4557i.m35199ad()) {
                        arrayList.add(new C4374c(context, c4557i, 5, adSlot));
                    }
                    if (C4557i.m35180d(c4557i) && c4557i.m35245B() != null && c4557i.m35245B().m35043h() != null) {
                        if (C4600n.m34805h().m34905b(String.valueOf(C5438af.m32278d(c4557i.m35228S()))) && C4600n.m34805h().m34917A()) {
                            C4712c.m34397a(new C5021b().m33274a(c4557i.m35245B().m35043h()).m33275a(204800).m33273b(c4557i.m35245B().m35040k()));
                        }
                    }
                }
                if (!arrayList.isEmpty()) {
                    feedAdListener.onFeedAdLoad(arrayList);
                } else {
                    feedAdListener.onError(-4, C4566f.m35036a(-4));
                }
            }
        });
    }
}
