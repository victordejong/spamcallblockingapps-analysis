package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.fy */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/fy.class */
public final class C13512fy {

    /* renamed from: a */
    static final C13512fy f50738a = new C13512fy(true);

    /* renamed from: b */
    private static volatile boolean f50739b = false;

    /* renamed from: c */
    private static volatile C13512fy f50740c;

    /* renamed from: d */
    private static volatile C13512fy f50741d;

    /* renamed from: e */
    private final Map<C13511fx, C13525gk<?, ?>> f50742e;

    C13512fy() {
        this.f50742e = new HashMap();
    }

    C13512fy(boolean z) {
        this.f50742e = Collections.emptyMap();
    }

    /* renamed from: a */
    public static C13512fy m12798a() {
        C13512fy c13512fy = f50740c;
        C13512fy c13512fy2 = c13512fy;
        if (c13512fy == null) {
            synchronized (C13512fy.class) {
                try {
                    C13512fy c13512fy3 = f50740c;
                    c13512fy2 = c13512fy3;
                    if (c13512fy3 == null) {
                        c13512fy2 = f50738a;
                        f50740c = c13512fy2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return c13512fy2;
    }

    /* renamed from: b */
    public static C13512fy m12796b() {
        C13512fy c13512fy = f50741d;
        if (c13512fy != null) {
            return c13512fy;
        }
        synchronized (C13512fy.class) {
            try {
                C13512fy c13512fy2 = f50741d;
                if (c13512fy2 != null) {
                    return c13512fy2;
                }
                C13512fy m12781a = AbstractC13521gg.m12781a(C13512fy.class);
                f50741d = m12781a;
                return m12781a;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: a */
    public final <ContainingType extends AbstractC13556ho> C13525gk<ContainingType, ?> m12797a(ContainingType containingtype, int i) {
        return (C13525gk<ContainingType, ?>) this.f50742e.get(new C13511fx(containingtype, i));
    }
}
