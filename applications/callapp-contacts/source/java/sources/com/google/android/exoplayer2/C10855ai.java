package com.google.android.exoplayer2;

import com.google.android.exoplayer2.util.C11593a;
/* renamed from: com.google.android.exoplayer2.ai */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ai.class */
public final class C10855ai {

    /* renamed from: a */
    public static final C10855ai f34916a;

    /* renamed from: b */
    public static final C10855ai f34917b = new C10855ai(Long.MAX_VALUE, Long.MAX_VALUE);

    /* renamed from: c */
    public static final C10855ai f34918c = new C10855ai(Long.MAX_VALUE, 0);

    /* renamed from: d */
    public static final C10855ai f34919d = new C10855ai(0, Long.MAX_VALUE);

    /* renamed from: e */
    public static final C10855ai f34920e;

    /* renamed from: f */
    public final long f34921f;

    /* renamed from: g */
    public final long f34922g;

    static {
        C10855ai c10855ai = new C10855ai(0L, 0L);
        f34916a = c10855ai;
        f34920e = c10855ai;
    }

    public C10855ai(long j, long j2) {
        C11593a.m20022a(j >= 0);
        C11593a.m20022a(j2 >= 0);
        this.f34921f = j;
        this.f34922g = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C10855ai c10855ai = (C10855ai) obj;
        return this.f34921f == c10855ai.f34921f && this.f34922g == c10855ai.f34922g;
    }

    public final int hashCode() {
        return (((int) this.f34921f) * 31) + ((int) this.f34922g);
    }
}
