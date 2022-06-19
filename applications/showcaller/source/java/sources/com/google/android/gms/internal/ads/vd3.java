package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/vd3.class */
public final class vd3 {

    /* renamed from: a */
    private static volatile vd3 f31142a;

    /* renamed from: b */
    private static volatile vd3 f31143b;

    /* renamed from: c */
    static final vd3 f31144c = new vd3(true);

    /* renamed from: d */
    private final Map<ud3, ge3<?, ?>> f31145d;

    vd3() {
        this.f31145d = new HashMap();
    }

    vd3(boolean z) {
        this.f31145d = Collections.emptyMap();
    }

    /* renamed from: a */
    public static vd3 m10041a() {
        vd3 vd3Var = f31142a;
        vd3 vd3Var2 = vd3Var;
        if (vd3Var == null) {
            synchronized (vd3.class) {
                try {
                    vd3 vd3Var3 = f31142a;
                    vd3Var2 = vd3Var3;
                    if (vd3Var3 == null) {
                        vd3Var2 = f31144c;
                        f31142a = vd3Var2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return vd3Var2;
    }

    /* renamed from: b */
    public static vd3 m10040b() {
        vd3 vd3Var = f31143b;
        if (vd3Var != null) {
            return vd3Var;
        }
        synchronized (vd3.class) {
            try {
                vd3 vd3Var2 = f31143b;
                if (vd3Var2 != null) {
                    return vd3Var2;
                }
                vd3 m16076b = ce3.m16076b(vd3.class);
                f31143b = m16076b;
                return m16076b;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: c */
    public final <ContainingType extends mf3> ge3<ContainingType, ?> m10039c(ContainingType containingtype, int i) {
        return (ge3<ContainingType, ?>) this.f31145d.get(new ud3(containingtype, i));
    }
}
