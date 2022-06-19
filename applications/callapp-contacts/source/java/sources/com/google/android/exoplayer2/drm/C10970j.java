package com.google.android.exoplayer2.drm;

import com.google.android.exoplayer2.util.C11599af;
import java.util.UUID;
/* renamed from: com.google.android.exoplayer2.drm.j */
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/j.class */
public final class C10970j implements AbstractC10963h {

    /* renamed from: a */
    public static final boolean f35480a;

    /* renamed from: b */
    public final UUID f35481b;

    /* renamed from: c */
    public final byte[] f35482c;

    /* renamed from: d */
    public final boolean f35483d;

    static {
        f35480a = "Amazon".equals(C11599af.f38650c) && ("AFTM".equals(C11599af.f38651d) || "AFTB".equals(C11599af.f38651d));
    }

    public C10970j(UUID uuid, byte[] bArr, boolean z) {
        this.f35481b = uuid;
        this.f35482c = bArr;
        this.f35483d = z;
    }
}
