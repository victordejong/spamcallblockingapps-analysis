package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.Date;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/arq.class */
public final class arq extends drs {

    /* renamed from: a  reason: collision with root package name */
    long f23828a;

    /* renamed from: b  reason: collision with root package name */
    long f23829b;

    /* renamed from: d  reason: collision with root package name */
    private Date f23830d;
    private Date e;
    private double f = 1.0d;
    private float g = 1.0f;
    private dsc h = dsc.f27147a;
    private long i;
    private int j;
    private int k;
    private int l;
    private int m;
    private int n;
    private int o;

    public arq() {
        super("mvhd");
    }

    @Override // com.google.android.gms.internal.ads.drq
    public final void a(ByteBuffer byteBuffer) {
        b(byteBuffer);
        if (c() == 1) {
            this.f23830d = drv.a(anm.c(byteBuffer));
            this.e = drv.a(anm.c(byteBuffer));
            this.f23828a = anm.a(byteBuffer);
            this.f23829b = anm.c(byteBuffer);
        } else {
            this.f23830d = drv.a(anm.a(byteBuffer));
            this.e = drv.a(anm.a(byteBuffer));
            this.f23828a = anm.a(byteBuffer);
            this.f23829b = anm.a(byteBuffer);
        }
        this.f = anm.d(byteBuffer);
        byte[] bArr = new byte[2];
        byteBuffer.get(bArr);
        this.g = ((short) ((bArr[1] & 255) | ((short) (0 | ((bArr[0] << 8) & 65280))))) / 256.0f;
        anm.b(byteBuffer);
        anm.a(byteBuffer);
        anm.a(byteBuffer);
        this.h = dsc.a(byteBuffer);
        this.j = byteBuffer.getInt();
        this.k = byteBuffer.getInt();
        this.l = byteBuffer.getInt();
        this.m = byteBuffer.getInt();
        this.n = byteBuffer.getInt();
        this.o = byteBuffer.getInt();
        this.i = anm.a(byteBuffer);
    }

    public final String toString() {
        return "MovieHeaderBox[creationTime=" + this.f23830d + ";modificationTime=" + this.e + ";timescale=" + this.f23828a + ";duration=" + this.f23829b + ";rate=" + this.f + ";volume=" + this.g + ";matrix=" + this.h + ";nextTrackId=" + this.i + "]";
    }
}
