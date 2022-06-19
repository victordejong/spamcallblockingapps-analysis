package com.google.android.exoplayer2.drm;

import com.google.android.exoplayer2.util.C5515h0;
import java.util.UUID;
/* renamed from: com.google.android.exoplayer2.drm.o */
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/drm/o.class */
public final class C5049o implements AbstractC5043m {

    /* renamed from: a */
    public static final boolean f15720a;

    /* renamed from: b */
    public final UUID f15721b;

    /* renamed from: c */
    public final byte[] f15722c;

    /* renamed from: d */
    public final boolean f15723d;

    static {
        boolean z;
        if ("Amazon".equals(C5515h0.f17878c)) {
            String str = C5515h0.f17879d;
            if ("AFTM".equals(str) || "AFTB".equals(str)) {
                z = true;
                f15720a = z;
            }
        }
        z = false;
        f15720a = z;
    }
}
