package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.l5 */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/l5.class */
public final class C7448l5 {

    /* renamed from: a */
    private static volatile C7448l5 f34579a;

    /* renamed from: b */
    private static volatile C7448l5 f34580b;

    /* renamed from: c */
    static final C7448l5 f34581c = new C7448l5(true);

    /* renamed from: d */
    private final Map<C7434k5, C7596w5<?, ?>> f34582d;

    C7448l5() {
        this.f34582d = new HashMap();
    }

    C7448l5(boolean z) {
        this.f34582d = Collections.emptyMap();
    }

    /* renamed from: a */
    public static C7448l5 m7188a() {
        C7448l5 c7448l5 = f34579a;
        C7448l5 c7448l52 = c7448l5;
        if (c7448l5 == null) {
            synchronized (C7448l5.class) {
                try {
                    C7448l5 c7448l53 = f34579a;
                    c7448l52 = c7448l53;
                    if (c7448l53 == null) {
                        c7448l52 = f34581c;
                        f34579a = c7448l52;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c7448l52;
    }

    /* renamed from: b */
    public static C7448l5 m7187b() {
        C7448l5 c7448l5 = f34580b;
        if (c7448l5 != null) {
            return c7448l5;
        }
        synchronized (C7448l5.class) {
            try {
                C7448l5 c7448l52 = f34580b;
                if (c7448l52 != null) {
                    return c7448l52;
                }
                C7448l5 m6917b = AbstractC7544s5.m6917b(C7448l5.class);
                f34580b = m6917b;
                return m6917b;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: c */
    public final <ContainingType extends AbstractC7623y6> C7596w5<ContainingType, ?> m7186c(ContainingType containingtype, int i) {
        return (C7596w5<ContainingType, ?>) this.f34582d.get(new C7434k5(containingtype, i));
    }
}
