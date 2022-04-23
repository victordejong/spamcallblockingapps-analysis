package com.google.android.exoplayer2;

import com.google.android.exoplayer2.util.a;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/ai.class */
public final class ai {

    /* renamed from: a  reason: collision with root package name */
    public static final ai f20657a;

    /* renamed from: b  reason: collision with root package name */
    public static final ai f20658b = new ai(Long.MAX_VALUE, Long.MAX_VALUE);

    /* renamed from: c  reason: collision with root package name */
    public static final ai f20659c = new ai(Long.MAX_VALUE, 0);

    /* renamed from: d  reason: collision with root package name */
    public static final ai f20660d = new ai(0, Long.MAX_VALUE);
    public static final ai e;
    public final long f;
    public final long g;

    static {
        ai aiVar = new ai(0L, 0L);
        f20657a = aiVar;
        e = aiVar;
    }

    public ai(long j, long j2) {
        boolean z = true;
        a.a(j >= 0);
        if (j2 < 0) {
            z = false;
        }
        a.a(z);
        this.f = j;
        this.g = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ai aiVar = (ai) obj;
        return this.f == aiVar.f && this.g == aiVar.g;
    }

    public final int hashCode() {
        return (((int) this.f) * 31) + ((int) this.g);
    }
}
