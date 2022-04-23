package com.google.android.gms.internal.ads;

import java.io.File;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdus.class */
public final class zzdus {

    /* renamed from: a */
    public final zzgr f27850a;

    /* renamed from: b */
    public final File f27851b;

    /* renamed from: c */
    public final File f27852c;

    /* renamed from: d */
    public final File f27853d;

    /* renamed from: e */
    public byte[] f27854e;

    public zzdus(zzgr zzgrVar, File file, File file2, File file3) {
        this.f27850a = zzgrVar;
        this.f27851b = file;
        this.f27852c = file3;
        this.f27853d = file2;
    }

    /* renamed from: a */
    public final boolean m13147a() {
        return System.currentTimeMillis() / 1000 > this.f27850a.m12097o();
    }

    /* renamed from: a */
    public final boolean m13146a(long j) {
        return this.f27850a.m12097o() - (System.currentTimeMillis() / 1000) < 3600;
    }

    /* renamed from: b */
    public final zzgr m13145b() {
        return this.f27850a;
    }

    /* renamed from: c */
    public final File m13144c() {
        return this.f27851b;
    }

    /* renamed from: d */
    public final File m13143d() {
        return this.f27852c;
    }

    /* renamed from: e */
    public final byte[] m13142e() {
        if (this.f27854e == null) {
            this.f27854e = zzduu.m13136b(this.f27853d);
        }
        byte[] bArr = this.f27854e;
        if (bArr == null) {
            return null;
        }
        return Arrays.copyOf(bArr, bArr.length);
    }
}
