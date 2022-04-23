package com.google.android.exoplayer2.drm;

import com.google.android.exoplayer2.util.af;
import java.util.UUID;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/drm/j.class */
public final class j implements h {

    /* renamed from: a  reason: collision with root package name */
    public static final boolean f20893a;

    /* renamed from: b  reason: collision with root package name */
    public final UUID f20894b;

    /* renamed from: c  reason: collision with root package name */
    public final byte[] f20895c;

    /* renamed from: d  reason: collision with root package name */
    public final boolean f20896d;

    static {
        f20893a = "Amazon".equals(af.f22277c) && ("AFTM".equals(af.f22278d) || "AFTB".equals(af.f22278d));
    }

    public j(UUID uuid, byte[] bArr, boolean z) {
        this.f20894b = uuid;
        this.f20895c = bArr;
        this.f20896d = z;
    }
}
