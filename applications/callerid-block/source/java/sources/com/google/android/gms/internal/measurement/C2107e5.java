package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.e5 */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/e5.class */
public final class C2107e5 {

    /* renamed from: b */
    private static volatile C2107e5 f9739b;

    /* renamed from: c */
    private static volatile C2107e5 f9740c;

    /* renamed from: d */
    static final C2107e5 f9741d = new C2107e5(true);

    /* renamed from: a */
    private final Map<C2103d5, p5<?, ?>> f9742a;

    C2107e5() {
        this.f9742a = new HashMap();
    }

    C2107e5(boolean z) {
        this.f9742a = Collections.emptyMap();
    }

    /* renamed from: a */
    public static C2107e5 m4405a() {
        C2107e5 c2107e5 = f9739b;
        C2107e5 c2107e52 = c2107e5;
        if (c2107e5 == null) {
            synchronized (C2107e5.class) {
                try {
                    C2107e5 c2107e53 = f9739b;
                    c2107e52 = c2107e53;
                    if (c2107e53 == null) {
                        c2107e52 = f9741d;
                        f9739b = c2107e52;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c2107e52;
    }

    /* renamed from: b */
    public static C2107e5 m4404b() {
        C2107e5 c2107e5 = f9740c;
        if (c2107e5 != null) {
            return c2107e5;
        }
        synchronized (C2107e5.class) {
            try {
                C2107e5 c2107e52 = f9740c;
                if (c2107e52 != null) {
                    return c2107e52;
                }
                C2107e5 m4267b = AbstractC2144l5.m4267b(C2107e5.class);
                f9740c = m4267b;
                return m4267b;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: c */
    public final <ContainingType extends q6> p5<ContainingType, ?> m4403c(ContainingType containingtype, int i) {
        return (p5<ContainingType, ?>) this.f9742a.get(new C2103d5(containingtype, i));
    }
}
