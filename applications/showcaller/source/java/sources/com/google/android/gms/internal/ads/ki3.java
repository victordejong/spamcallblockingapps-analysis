package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/ki3.class */
public abstract class ki3 extends ii3 implements o04 {

    /* renamed from: n */
    private int f25226n;

    public ki3(String str) {
        super("mvhd");
    }

    /* renamed from: g */
    public final int m13884g() {
        if (!this.f24289g) {
            m14376f();
        }
        return this.f25226n;
    }

    /* renamed from: h */
    public final long m13883h(ByteBuffer byteBuffer) {
        this.f25226n = n04.m13021c(byteBuffer.get());
        n04.m13022b(byteBuffer);
        byteBuffer.get();
        return 4L;
    }
}
