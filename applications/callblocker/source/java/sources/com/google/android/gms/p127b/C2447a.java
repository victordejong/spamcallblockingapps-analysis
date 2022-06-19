package com.google.android.gms.p127b;

import com.google.android.gms.common.api.C2471a;
import com.google.android.gms.common.internal.C2657q;
/* renamed from: com.google.android.gms.b.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/b/a.class */
public final class C2447a implements C2471a.AbstractC2475d.AbstractC2481f {

    /* renamed from: a */
    public static final C2447a f6971a = new C2447a(false, false, null, false, null, null, false, null, null);

    /* renamed from: b */
    private final boolean f6972b = false;

    /* renamed from: c */
    private final boolean f6973c = false;

    /* renamed from: d */
    private final String f6974d = null;

    /* renamed from: e */
    private final boolean f6975e = false;

    /* renamed from: h */
    private final boolean f6978h = false;

    /* renamed from: f */
    private final String f6976f = null;

    /* renamed from: g */
    private final String f6977g = null;

    /* renamed from: i */
    private final Long f6979i = null;

    /* renamed from: j */
    private final Long f6980j = null;

    /* renamed from: com.google.android.gms.b.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/b/a$a.class */
    public static final class C2448a {
    }

    static {
        new C2448a();
    }

    private C2447a(boolean z, boolean z2, String str, boolean z3, String str2, String str3, boolean z4, Long l, Long l2) {
    }

    /* renamed from: a */
    public final boolean m14495a() {
        return this.f6972b;
    }

    /* renamed from: b */
    public final boolean m14494b() {
        return this.f6973c;
    }

    /* renamed from: c */
    public final String m14493c() {
        return this.f6974d;
    }

    /* renamed from: d */
    public final boolean m14492d() {
        return this.f6975e;
    }

    /* renamed from: e */
    public final String m14491e() {
        return this.f6976f;
    }

    public final boolean equals(Object obj) {
        boolean z = true;
        if (obj != this) {
            if (!(obj instanceof C2447a)) {
                z = false;
            } else {
                C2447a c2447a = (C2447a) obj;
                if (this.f6972b != c2447a.f6972b || this.f6973c != c2447a.f6973c || !C2657q.m13992a(this.f6974d, c2447a.f6974d) || this.f6975e != c2447a.f6975e || this.f6978h != c2447a.f6978h || !C2657q.m13992a(this.f6976f, c2447a.f6976f) || !C2657q.m13992a(this.f6977g, c2447a.f6977g) || !C2657q.m13992a(this.f6979i, c2447a.f6979i) || !C2657q.m13992a(this.f6980j, c2447a.f6980j)) {
                    z = false;
                }
            }
        }
        return z;
    }

    /* renamed from: f */
    public final String m14490f() {
        return this.f6977g;
    }

    /* renamed from: g */
    public final boolean m14489g() {
        return this.f6978h;
    }

    /* renamed from: h */
    public final Long m14488h() {
        return this.f6979i;
    }

    public final int hashCode() {
        return C2657q.m13991a(Boolean.valueOf(this.f6972b), Boolean.valueOf(this.f6973c), this.f6974d, Boolean.valueOf(this.f6975e), Boolean.valueOf(this.f6978h), this.f6976f, this.f6977g, this.f6979i, this.f6980j);
    }

    /* renamed from: i */
    public final Long m14487i() {
        return this.f6980j;
    }
}
