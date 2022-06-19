package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.Date;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/arq.class */
public final class arq extends drs {

    /* renamed from: a */
    long f43103a;

    /* renamed from: b */
    long f43104b;

    /* renamed from: d */
    private Date f43105d;

    /* renamed from: e */
    private Date f43106e;

    /* renamed from: f */
    private double f43107f = 1.0d;

    /* renamed from: g */
    private float f43108g = 1.0f;

    /* renamed from: h */
    private dsc f43109h = dsc.f47494a;

    /* renamed from: i */
    private long f43110i;

    /* renamed from: j */
    private int f43111j;

    /* renamed from: k */
    private int f43112k;

    /* renamed from: l */
    private int f43113l;

    /* renamed from: m */
    private int f43114m;

    /* renamed from: n */
    private int f43115n;

    /* renamed from: o */
    private int f43116o;

    public arq() {
        super("mvhd");
    }

    @Override // com.google.android.gms.internal.ads.drq
    /* renamed from: a */
    public final void mo15792a(ByteBuffer byteBuffer) {
        m15799b(byteBuffer);
        if (m15798c() == 1) {
            this.f43105d = drv.m15791a(anm.m18532c(byteBuffer));
            this.f43106e = drv.m15791a(anm.m18532c(byteBuffer));
            this.f43103a = anm.m18534a(byteBuffer);
            this.f43104b = anm.m18532c(byteBuffer);
        } else {
            this.f43105d = drv.m15791a(anm.m18534a(byteBuffer));
            this.f43106e = drv.m15791a(anm.m18534a(byteBuffer));
            this.f43103a = anm.m18534a(byteBuffer);
            this.f43104b = anm.m18534a(byteBuffer);
        }
        this.f43107f = anm.m18531d(byteBuffer);
        byte[] bArr = new byte[2];
        byteBuffer.get(bArr);
        this.f43108g = ((short) ((bArr[1] & 255) | ((short) (0 | ((bArr[0] << 8) & 65280))))) / 256.0f;
        anm.m18533b(byteBuffer);
        anm.m18534a(byteBuffer);
        anm.m18534a(byteBuffer);
        this.f43109h = dsc.m15780a(byteBuffer);
        this.f43111j = byteBuffer.getInt();
        this.f43112k = byteBuffer.getInt();
        this.f43113l = byteBuffer.getInt();
        this.f43114m = byteBuffer.getInt();
        this.f43115n = byteBuffer.getInt();
        this.f43116o = byteBuffer.getInt();
        this.f43110i = anm.m18534a(byteBuffer);
    }

    public final String toString() {
        return "MovieHeaderBox[creationTime=" + this.f43105d + ";modificationTime=" + this.f43106e + ";timescale=" + this.f43103a + ";duration=" + this.f43104b + ";rate=" + this.f43107f + ";volume=" + this.f43108g + ";matrix=" + this.f43109h + ";nextTrackId=" + this.f43110i + "]";
    }
}
