package com.google.android.exoplayer2.upstream.cache;

import java.io.File;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/upstream/cache/g.class */
public class g implements Comparable<g> {

    /* renamed from: a  reason: collision with root package name */
    public final String f22156a;

    /* renamed from: b  reason: collision with root package name */
    public final long f22157b;

    /* renamed from: c  reason: collision with root package name */
    public final long f22158c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f22159d;
    public final File e;
    public final long f;

    public g(String str, long j, long j2) {
        this(str, j, j2, -9223372036854775807L, null);
    }

    public g(String str, long j, long j2, long j3, File file) {
        this.f22156a = str;
        this.f22157b = j;
        this.f22158c = j2;
        this.f22159d = file != null;
        this.e = file;
        this.f = j3;
    }

    /* renamed from: a */
    public final int compareTo(g gVar) {
        if (!this.f22156a.equals(gVar.f22156a)) {
            return this.f22156a.compareTo(gVar.f22156a);
        }
        int i = ((this.f22157b - gVar.f22157b) > 0L ? 1 : ((this.f22157b - gVar.f22157b) == 0L ? 0 : -1));
        if (i == 0) {
            return 0;
        }
        return i < 0 ? -1 : 1;
    }

    public final boolean a() {
        return this.f22158c == -1;
    }

    public final boolean b() {
        return !this.f22159d;
    }

    public String toString() {
        return "[" + this.f22157b + ", " + this.f22158c + "]";
    }
}
