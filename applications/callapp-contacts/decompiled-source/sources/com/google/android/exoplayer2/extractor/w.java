package com.google.android.exoplayer2.extractor;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/extractor/w.class */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    public static final w f21333a = new w(0, 0);

    /* renamed from: b  reason: collision with root package name */
    public final long f21334b;

    /* renamed from: c  reason: collision with root package name */
    public final long f21335c;

    public w(long j, long j2) {
        this.f21334b = j;
        this.f21335c = j2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        w wVar = (w) obj;
        return this.f21334b == wVar.f21334b && this.f21335c == wVar.f21335c;
    }

    public final int hashCode() {
        return (((int) this.f21334b) * 31) + ((int) this.f21335c);
    }

    public final String toString() {
        return "[timeUs=" + this.f21334b + ", position=" + this.f21335c + "]";
    }
}
