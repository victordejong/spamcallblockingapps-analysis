package com.google.android.exoplayer2.upstream.cache;

import java.io.File;
/* renamed from: com.google.android.exoplayer2.upstream.cache.g */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/g.class */
public class C11548g implements Comparable<C11548g> {

    /* renamed from: a */
    public final String f38442a;

    /* renamed from: b */
    public final long f38443b;

    /* renamed from: c */
    public final long f38444c;

    /* renamed from: d */
    public final boolean f38445d;

    /* renamed from: e */
    public final File f38446e;

    /* renamed from: f */
    public final long f38447f;

    public C11548g(String str, long j, long j2) {
        this(str, j, j2, -9223372036854775807L, null);
    }

    public C11548g(String str, long j, long j2, long j3, File file) {
        this.f38442a = str;
        this.f38443b = j;
        this.f38444c = j2;
        this.f38445d = file != null;
        this.f38446e = file;
        this.f38447f = j3;
    }

    /* renamed from: a */
    public final int compareTo(C11548g c11548g) {
        if (!this.f38442a.equals(c11548g.f38442a)) {
            return this.f38442a.compareTo(c11548g.f38442a);
        }
        int i = ((this.f38443b - c11548g.f38443b) > 0L ? 1 : ((this.f38443b - c11548g.f38443b) == 0L ? 0 : -1));
        if (i == 0) {
            return 0;
        }
        return i < 0 ? -1 : 1;
    }

    /* renamed from: a */
    public final boolean m20166a() {
        return this.f38444c == -1;
    }

    /* renamed from: b */
    public final boolean m20164b() {
        return !this.f38445d;
    }

    public String toString() {
        return "[" + this.f38443b + ", " + this.f38444c + "]";
    }
}
