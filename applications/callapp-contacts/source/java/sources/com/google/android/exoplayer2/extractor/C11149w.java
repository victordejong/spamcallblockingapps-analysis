package com.google.android.exoplayer2.extractor;
/* renamed from: com.google.android.exoplayer2.extractor.w */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/w.class */
public final class C11149w {

    /* renamed from: a */
    public static final C11149w f36506a = new C11149w(0, 0);

    /* renamed from: b */
    public final long f36507b;

    /* renamed from: c */
    public final long f36508c;

    public C11149w(long j, long j2) {
        this.f36507b = j;
        this.f36508c = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        C11149w c11149w = (C11149w) obj;
        return this.f36507b == c11149w.f36507b && this.f36508c == c11149w.f36508c;
    }

    public final int hashCode() {
        return (((int) this.f36507b) * 31) + ((int) this.f36508c);
    }

    public final String toString() {
        return "[timeUs=" + this.f36507b + ", position=" + this.f36508c + "]";
    }
}
