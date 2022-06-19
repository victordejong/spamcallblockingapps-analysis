package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/rx3.class */
public final class rx3 {

    /* renamed from: a */
    public final int f29300a;

    /* renamed from: b */
    public final String f29301b;

    /* renamed from: c */
    public final List<qx3> f29302c;

    /* renamed from: d */
    public final byte[] f29303d;

    public rx3(int i, String str, List<qx3> list, byte[] bArr) {
        this.f29300a = i;
        this.f29301b = str;
        this.f29302c = list == null ? Collections.emptyList() : Collections.unmodifiableList(list);
        this.f29303d = bArr;
    }
}
