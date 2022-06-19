package com.google.android.gms.internal.ads;

import java.io.File;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cwn.class */
public final class cwn {

    /* renamed from: a */
    final dva f46666a;

    /* renamed from: b */
    final File f46667b;

    /* renamed from: c */
    final File f46668c;

    /* renamed from: d */
    final File f46669d;

    /* renamed from: e */
    byte[] f46670e;

    public cwn(dva dvaVar, File file, File file2, File file3) {
        this.f46666a = dvaVar;
        this.f46667b = file;
        this.f46668c = file3;
        this.f46669d = file2;
    }

    /* renamed from: a */
    public final boolean m17127a() {
        return this.f46666a.zzack - (System.currentTimeMillis() / 1000) < 3600;
    }
}
