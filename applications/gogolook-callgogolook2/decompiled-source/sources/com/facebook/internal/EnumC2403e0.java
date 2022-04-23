package com.facebook.internal;

import java.util.EnumSet;
import java.util.Iterator;
/* renamed from: com.facebook.internal.e0 */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/e0.class */
public enum EnumC2403e0 {
    None(0),
    Enabled(1),
    RequireConfirm(2);
    

    /* renamed from: e */
    public static final EnumSet<EnumC2403e0> f2994e = EnumSet.allOf(EnumC2403e0.class);

    /* renamed from: a */
    public final long f2996a;

    EnumC2403e0(long j) {
        this.f2996a = j;
    }

    /* renamed from: a */
    public static EnumSet<EnumC2403e0> m34892a(long j) {
        EnumSet<EnumC2403e0> noneOf = EnumSet.noneOf(EnumC2403e0.class);
        Iterator it = f2994e.iterator();
        while (it.hasNext()) {
            EnumC2403e0 e0Var = (EnumC2403e0) it.next();
            if ((e0Var.m34893a() & j) != 0) {
                noneOf.add(e0Var);
            }
        }
        return noneOf;
    }

    /* renamed from: a */
    public long m34893a() {
        return this.f2996a;
    }
}
