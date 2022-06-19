package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/la1.class */
public final class la1 extends m81<AbstractC6888qj> implements AbstractC6888qj {

    /* renamed from: e */
    private final Map<View, View$OnAttachStateChangeListenerC6925rj> f25999e = new WeakHashMap(1);

    /* renamed from: f */
    private final Context f26000f;

    /* renamed from: g */
    private final ej2 f26001g;

    public la1(Context context, Set<ja1<AbstractC6888qj>> set, ej2 ej2Var) {
        super(set);
        this.f26000f = context;
        this.f26001g = ej2Var;
    }

    /* renamed from: S0 */
    public final void m13619S0(View view) {
        synchronized (this) {
            View$OnAttachStateChangeListenerC6925rj view$OnAttachStateChangeListenerC6925rj = this.f25999e.get(view);
            View$OnAttachStateChangeListenerC6925rj view$OnAttachStateChangeListenerC6925rj2 = view$OnAttachStateChangeListenerC6925rj;
            if (view$OnAttachStateChangeListenerC6925rj == null) {
                view$OnAttachStateChangeListenerC6925rj2 = new View$OnAttachStateChangeListenerC6925rj(this.f26000f, view);
                view$OnAttachStateChangeListenerC6925rj2.m11451a(this);
                this.f25999e.put(view, view$OnAttachStateChangeListenerC6925rj2);
            }
            if (this.f26001g.f22212T) {
                if (((Boolean) C7192yr.m8714c().m14263c(C6679kw.f25588T0)).booleanValue()) {
                    view$OnAttachStateChangeListenerC6925rj2.m11447e(((Long) C7192yr.m8714c().m14263c(C6679kw.f25580S0)).longValue());
                    return;
                }
            }
            view$OnAttachStateChangeListenerC6925rj2.m11446f();
        }
    }

    /* renamed from: T0 */
    public final void m13618T0(View view) {
        synchronized (this) {
            if (this.f25999e.containsKey(view)) {
                this.f25999e.get(view).m11450b(this);
                this.f25999e.remove(view);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.AbstractC6888qj
    /* renamed from: Y */
    public final void mo7924Y(C6851pj c6851pj) {
        synchronized (this) {
            m13339Q0(new l81(c6851pj) { // from class: com.google.android.gms.internal.ads.ka1

                /* renamed from: a */
                private final C6851pj f25093a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f25093a = c6851pj;
                }

                @Override // com.google.android.gms.internal.ads.l81
                /* renamed from: a */
                public final void mo8530a(Object obj) {
                    ((AbstractC6888qj) obj).mo7924Y(this.f25093a);
                }
            });
        }
    }
}
