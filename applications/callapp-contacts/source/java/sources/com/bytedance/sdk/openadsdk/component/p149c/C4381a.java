package com.bytedance.sdk.openadsdk.component.p149c;

import android.content.Context;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.core.AbstractC4591j;
import com.bytedance.sdk.openadsdk.core.AbstractC4635o;
import com.bytedance.sdk.openadsdk.core.C4566f;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.p154e.C4545a;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
/* renamed from: com.bytedance.sdk.openadsdk.component.c.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/c/a.class */
public class C4381a {

    /* renamed from: a */
    private final AbstractC4635o f16076a = C4600n.m34807f();

    private C4381a() {
    }

    /* renamed from: a */
    public static C4381a m35674a() {
        return new C4381a();
    }

    /* renamed from: a */
    public void m35673a(final Context context, AdSlot adSlot, final TTAdNative.InteractionAdListener interactionAdListener) {
        this.f16076a.mo34679a(adSlot, null, 2, new AbstractC4635o.AbstractC4636a() { // from class: com.bytedance.sdk.openadsdk.component.c.a.1
            @Override // com.bytedance.sdk.openadsdk.core.AbstractC4635o.AbstractC4636a
            /* renamed from: a */
            public void mo34084a(int i, String str) {
                interactionAdListener.onError(i, str);
            }

            @Override // com.bytedance.sdk.openadsdk.core.AbstractC4635o.AbstractC4636a
            /* renamed from: a */
            public void mo34083a(C4545a c4545a) {
                if (c4545a.m35343b() == null || c4545a.m35343b().isEmpty()) {
                    interactionAdListener.onError(-3, C4566f.m35036a(-3));
                    return;
                }
                C4557i c4557i = c4545a.m35343b().get(0);
                if (!c4557i.m35199ad()) {
                    interactionAdListener.onError(-4, C4566f.m35036a(-4));
                    return;
                }
                final C4384b c4384b = new C4384b(context, c4557i);
                c4384b.m35669a(new AbstractC4591j() { // from class: com.bytedance.sdk.openadsdk.component.c.a.1.1
                    @Override // com.bytedance.sdk.openadsdk.core.AbstractC4591j
                    /* renamed from: a */
                    public void mo34839a() {
                        interactionAdListener.onInteractionAdLoad(c4384b);
                    }

                    @Override // com.bytedance.sdk.openadsdk.core.AbstractC4591j
                    /* renamed from: b */
                    public void mo34838b() {
                        interactionAdListener.onError(-6, C4566f.m35036a(-6));
                    }
                });
            }
        });
    }
}
