package com.android.volley;

import java.io.Serializable;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/android/volley/j.class */
public final class j implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    public final int f2300a;

    /* renamed from: b  reason: collision with root package name */
    public final byte[] f2301b;
    public final Map<String, String> c;
    public final boolean d;
    public final long e;

    public j(int i, byte[] bArr, Map<String, String> map, boolean z, long j) {
        this.f2300a = i;
        this.f2301b = bArr;
        this.c = map;
        this.d = z;
        this.e = j;
    }

    public j(byte[] bArr, Map<String, String> map) {
        this(200, bArr, map, false, 0L);
    }
}
