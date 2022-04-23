package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/bc2.class */
public final class bc2 {

    /* renamed from: b */
    private static volatile bc2 f6132b;

    /* renamed from: c */
    private static volatile bc2 f6133c;

    /* renamed from: d */
    static final bc2 f6134d = new bc2(true);

    /* renamed from: a */
    private final Map<ac2, nc2<?, ?>> f6135a;

    bc2() {
        this.f6135a = new HashMap();
    }

    bc2(boolean z) {
        this.f6135a = Collections.emptyMap();
    }

    /* renamed from: a */
    public static bc2 m8043a() {
        bc2 bc2Var = f6132b;
        bc2 bc2Var2 = bc2Var;
        if (bc2Var == null) {
            synchronized (bc2.class) {
                try {
                    bc2 bc2Var3 = f6132b;
                    bc2Var2 = bc2Var3;
                    if (bc2Var3 == null) {
                        bc2Var2 = f6134d;
                        f6132b = bc2Var2;
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        return bc2Var2;
    }

    /* renamed from: b */
    public static bc2 m8042b() {
        bc2 bc2Var = f6133c;
        if (bc2Var != null) {
            return bc2Var;
        }
        synchronized (bc2.class) {
            try {
                bc2 bc2Var2 = f6133c;
                if (bc2Var2 != null) {
                    return bc2Var2;
                }
                bc2 b = jc2.m7045b(bc2.class);
                f6133c = b;
                return b;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* renamed from: c */
    public final <ContainingType extends qd2> nc2<ContainingType, ?> m8041c(ContainingType containingtype, int i) {
        return (nc2<ContainingType, ?>) this.f6135a.get(new ac2(containingtype, i));
    }
}
