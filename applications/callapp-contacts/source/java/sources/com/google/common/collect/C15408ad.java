package com.google.common.collect;

import com.google.common.base.AbstractC15375e;
import com.google.common.base.C15368b;
import com.google.common.base.C15382i;
import com.google.common.base.C15391m;
import com.google.common.collect.ConcurrentMapC15409ae;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* renamed from: com.google.common.collect.ad */
/* loaded from: classes4-dex2jar.jar:com/google/common/collect/ad.class */
public final class C15408ad {

    /* renamed from: a */
    boolean f55659a;

    /* renamed from: b */
    int f55660b = -1;

    /* renamed from: c */
    int f55661c = -1;

    /* renamed from: d */
    ConcurrentMapC15409ae.EnumC15426n f55662d;

    /* renamed from: e */
    ConcurrentMapC15409ae.EnumC15426n f55663e;

    /* renamed from: f */
    AbstractC15375e<Object> f55664f;

    /* renamed from: a */
    public final int m8909a() {
        int i = this.f55660b;
        int i2 = i;
        if (i == -1) {
            i2 = 16;
        }
        return i2;
    }

    /* renamed from: a */
    public final C15408ad m8908a(ConcurrentMapC15409ae.EnumC15426n enumC15426n) {
        ConcurrentMapC15409ae.EnumC15426n enumC15426n2 = this.f55662d;
        C15391m.m8931b(enumC15426n2 == null, "Key strength was already set to %s", enumC15426n2);
        this.f55662d = (ConcurrentMapC15409ae.EnumC15426n) C15391m.m8946a(enumC15426n);
        if (enumC15426n != ConcurrentMapC15409ae.EnumC15426n.STRONG) {
            this.f55659a = true;
        }
        return this;
    }

    /* renamed from: b */
    public final int m8907b() {
        int i = this.f55661c;
        int i2 = i;
        if (i == -1) {
            i2 = 4;
        }
        return i2;
    }

    /* renamed from: c */
    public final ConcurrentMapC15409ae.EnumC15426n m8906c() {
        return (ConcurrentMapC15409ae.EnumC15426n) C15382i.m8955a(this.f55662d, ConcurrentMapC15409ae.EnumC15426n.STRONG);
    }

    /* renamed from: d */
    public final ConcurrentMapC15409ae.EnumC15426n m8905d() {
        return (ConcurrentMapC15409ae.EnumC15426n) C15382i.m8955a(this.f55663e, ConcurrentMapC15409ae.EnumC15426n.STRONG);
    }

    /* renamed from: e */
    public final <K, V> ConcurrentMap<K, V> m8904e() {
        return !this.f55659a ? new ConcurrentHashMap(m8909a(), 0.75f, m8907b()) : ConcurrentMapC15409ae.m8901a(this);
    }

    public final String toString() {
        C15382i.C15384a c15384a = new C15382i.C15384a(getClass().getSimpleName());
        int i = this.f55660b;
        if (i != -1) {
            c15384a.m8953a("initialCapacity", i);
        }
        int i2 = this.f55661c;
        if (i2 != -1) {
            c15384a.m8953a("concurrencyLevel", i2);
        }
        ConcurrentMapC15409ae.EnumC15426n enumC15426n = this.f55662d;
        if (enumC15426n != null) {
            c15384a.m8952a("keyStrength", C15368b.m8972a(enumC15426n.toString()));
        }
        ConcurrentMapC15409ae.EnumC15426n enumC15426n2 = this.f55663e;
        if (enumC15426n2 != null) {
            c15384a.m8952a("valueStrength", C15368b.m8972a(enumC15426n2.toString()));
        }
        if (this.f55664f != null) {
            c15384a.m8954a().f55634b = "keyEquivalence";
        }
        return c15384a.toString();
    }
}
