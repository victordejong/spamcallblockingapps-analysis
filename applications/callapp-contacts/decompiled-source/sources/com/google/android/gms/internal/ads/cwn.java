package com.google.android.gms.internal.ads;

import java.io.File;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cwn.class */
public final class cwn {

    /* renamed from: a  reason: collision with root package name */
    final dva f26497a;

    /* renamed from: b  reason: collision with root package name */
    final File f26498b;

    /* renamed from: c  reason: collision with root package name */
    final File f26499c;

    /* renamed from: d  reason: collision with root package name */
    final File f26500d;
    byte[] e;

    public cwn(dva dvaVar, File file, File file2, File file3) {
        this.f26497a = dvaVar;
        this.f26498b = file;
        this.f26499c = file3;
        this.f26500d = file2;
    }

    public final boolean a() {
        return this.f26497a.zzack - (System.currentTimeMillis() / 1000) < 3600;
    }
}
