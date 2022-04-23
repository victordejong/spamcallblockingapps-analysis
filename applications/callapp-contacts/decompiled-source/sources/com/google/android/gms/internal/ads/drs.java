package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/drs.class */
public abstract class drs extends drq implements aqp {

    /* renamed from: a  reason: collision with root package name */
    private int f27138a;

    /* renamed from: b  reason: collision with root package name */
    private int f27139b;

    /* JADX INFO: Access modifiers changed from: protected */
    public drs(String str) {
        super(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long b(ByteBuffer byteBuffer) {
        this.f27138a = anm.a(byteBuffer.get());
        this.f27139b = (anm.b(byteBuffer) << 8) + 0 + anm.a(byteBuffer.get());
        return 4L;
    }

    public final int c() {
        if (!this.f27132c) {
            b();
        }
        return this.f27138a;
    }
}
