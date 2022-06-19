package com.google.android.gms.internal.ads;

import java.io.File;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cng.class */
public final class cng {

    /* renamed from: a */
    private final dki f13388a;

    /* renamed from: b */
    private final File f13389b;

    /* renamed from: c */
    private final File f13390c;

    /* renamed from: d */
    private final File f13391d;

    /* renamed from: e */
    private byte[] f13392e;

    public cng(dki dkiVar, File file, File file2, File file3) {
        this.f13388a = dkiVar;
        this.f13389b = file;
        this.f13390c = file3;
        this.f13391d = file2;
    }

    /* renamed from: a */
    public final dki m10996a() {
        return this.f13388a;
    }

    /* renamed from: a */
    public final boolean m10995a(long j) {
        return this.f13388a.m9342c() - (System.currentTimeMillis() / 1000) < 3600;
    }

    /* renamed from: b */
    public final File m10994b() {
        return this.f13389b;
    }

    /* renamed from: c */
    public final File m10993c() {
        return this.f13390c;
    }

    /* renamed from: d */
    public final byte[] m10992d() {
        if (this.f13392e == null) {
            this.f13392e = cnj.m10975b(this.f13391d);
        }
        return this.f13392e == null ? null : Arrays.copyOf(this.f13392e, this.f13392e.length);
    }

    /* renamed from: e */
    public final boolean m10991e() {
        return System.currentTimeMillis() / 1000 > this.f13388a.m9342c();
    }
}
