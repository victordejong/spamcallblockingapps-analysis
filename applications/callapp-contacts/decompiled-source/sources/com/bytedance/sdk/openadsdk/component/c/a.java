package com.bytedance.sdk.openadsdk.component.c;

import android.content.Context;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.core.e.i;
import com.bytedance.sdk.openadsdk.core.f;
import com.bytedance.sdk.openadsdk.core.j;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.core.o;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/component/c/a.class */
public class a {

    /* renamed from: a  reason: collision with root package name */
    private final o f8594a = n.f();

    private a() {
    }

    public static a a() {
        return new a();
    }

    public void a(final Context context, AdSlot adSlot, final TTAdNative.InteractionAdListener interactionAdListener) {
        this.f8594a.a(adSlot, null, 2, new o.a() { // from class: com.bytedance.sdk.openadsdk.component.c.a.1
            @Override // com.bytedance.sdk.openadsdk.core.o.a
            public void a(int i, String str) {
                interactionAdListener.onError(i, str);
            }

            @Override // com.bytedance.sdk.openadsdk.core.o.a
            public void a(com.bytedance.sdk.openadsdk.core.e.a aVar) {
                if (aVar.b() == null || aVar.b().isEmpty()) {
                    interactionAdListener.onError(-3, f.a(-3));
                    return;
                }
                i iVar = aVar.b().get(0);
                if (iVar.ad()) {
                    final b bVar = new b(context, iVar);
                    bVar.a(new j() { // from class: com.bytedance.sdk.openadsdk.component.c.a.1.1
                        @Override // com.bytedance.sdk.openadsdk.core.j
                        public void a() {
                            interactionAdListener.onInteractionAdLoad(bVar);
                        }

                        @Override // com.bytedance.sdk.openadsdk.core.j
                        public void b() {
                            interactionAdListener.onError(-6, f.a(-6));
                        }
                    });
                    return;
                }
                interactionAdListener.onError(-4, f.a(-4));
            }
        });
    }
}
