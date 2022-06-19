package com.facebook.internal;

import java.util.EnumSet;
import java.util.Iterator;
/* renamed from: com.facebook.internal.w */
/* loaded from: classes-dex2jar.jar:com/facebook/internal/w.class */
public enum EnumC2078w {
    None(0),
    Enabled(1),
    RequireConfirm(2);
    

    /* renamed from: d */
    public static final EnumSet<EnumC2078w> f6115d = EnumSet.allOf(EnumC2078w.class);

    /* renamed from: e */
    private final long f6117e;

    EnumC2078w(long j) {
        this.f6117e = j;
    }

    /* renamed from: a */
    public static EnumSet<EnumC2078w> m15493a(long j) {
        EnumSet<EnumC2078w> noneOf = EnumSet.noneOf(EnumC2078w.class);
        Iterator it = f6115d.iterator();
        while (it.hasNext()) {
            EnumC2078w enumC2078w = (EnumC2078w) it.next();
            if ((enumC2078w.m15494a() & j) != 0) {
                noneOf.add(enumC2078w);
            }
        }
        return noneOf;
    }

    /* renamed from: a */
    public long m15494a() {
        return this.f6117e;
    }
}
