package com.google.android.gms.internal.measurement;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/fy.class */
public final class fy {

    /* renamed from: a  reason: collision with root package name */
    static final fy f29039a = new fy(true);

    /* renamed from: b  reason: collision with root package name */
    private static volatile boolean f29040b = false;

    /* renamed from: c  reason: collision with root package name */
    private static volatile fy f29041c;

    /* renamed from: d  reason: collision with root package name */
    private static volatile fy f29042d;
    private final Map<fx, gk<?, ?>> e;

    fy() {
        this.e = new HashMap();
    }

    fy(boolean z) {
        this.e = Collections.emptyMap();
    }

    public static fy a() {
        fy fyVar = f29041c;
        fy fyVar2 = fyVar;
        if (fyVar == null) {
            synchronized (fy.class) {
                try {
                    fy fyVar3 = f29041c;
                    fyVar2 = fyVar3;
                    if (fyVar3 == null) {
                        fyVar2 = f29039a;
                        f29041c = fyVar2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return fyVar2;
    }

    public static fy b() {
        fy fyVar = f29042d;
        if (fyVar != null) {
            return fyVar;
        }
        synchronized (fy.class) {
            try {
                fy fyVar2 = f29042d;
                if (fyVar2 != null) {
                    return fyVar2;
                }
                fy a2 = gg.a(fy.class);
                f29042d = a2;
                return a2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final <ContainingType extends ho> gk<ContainingType, ?> a(ContainingType containingtype, int i) {
        return (gk<ContainingType, ?>) this.e.get(new fx(containingtype, i));
    }
}
