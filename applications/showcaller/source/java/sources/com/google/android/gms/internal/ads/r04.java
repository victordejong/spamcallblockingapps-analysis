package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.Date;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/r04.class */
public final class r04 extends ki3 {

    /* renamed from: o */
    private Date f28721o;

    /* renamed from: p */
    private Date f28722p;

    /* renamed from: q */
    private long f28723q;

    /* renamed from: r */
    private long f28724r;

    /* renamed from: s */
    private double f28725s = 1.0d;

    /* renamed from: t */
    private float f28726t = 1.0f;

    /* renamed from: u */
    private ui3 f28727u = ui3.f30631a;

    /* renamed from: v */
    private long f28728v;

    public r04() {
        super("mvhd");
    }

    @Override // com.google.android.gms.internal.ads.ii3
    /* renamed from: d */
    public final void mo11183d(ByteBuffer byteBuffer) {
        m13883h(byteBuffer);
        if (m13884g() == 1) {
            this.f28721o = pi3.m12224a(n04.m13020d(byteBuffer));
            this.f28722p = pi3.m12224a(n04.m13020d(byteBuffer));
            this.f28723q = n04.m13023a(byteBuffer);
            this.f28724r = n04.m13020d(byteBuffer);
        } else {
            this.f28721o = pi3.m12224a(n04.m13023a(byteBuffer));
            this.f28722p = pi3.m12224a(n04.m13023a(byteBuffer));
            this.f28723q = n04.m13023a(byteBuffer);
            this.f28724r = n04.m13023a(byteBuffer);
        }
        this.f28725s = n04.m13019e(byteBuffer);
        byte[] bArr = new byte[2];
        byteBuffer.get(bArr);
        this.f28726t = ((short) ((bArr[1] & 255) | ((short) ((bArr[0] << 8) & 65280)))) / 256.0f;
        n04.m13022b(byteBuffer);
        n04.m13023a(byteBuffer);
        n04.m13023a(byteBuffer);
        this.f28727u = ui3.m10323a(byteBuffer);
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        this.f28728v = n04.m13023a(byteBuffer);
    }

    /* renamed from: i */
    public final long m11741i() {
        return this.f28723q;
    }

    /* renamed from: j */
    public final long m11740j() {
        return this.f28724r;
    }

    public final String toString() {
        return "MovieHeaderBox[creationTime=" + this.f28721o + ";modificationTime=" + this.f28722p + ";timescale=" + this.f28723q + ";duration=" + this.f28724r + ";rate=" + this.f28725s + ";volume=" + this.f28726t + ";matrix=" + this.f28727u + ";nextTrackId=" + this.f28728v + "]";
    }
}
