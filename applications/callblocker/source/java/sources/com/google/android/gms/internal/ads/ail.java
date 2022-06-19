package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ail.class */
public final class ail extends dhe {

    /* renamed from: b */
    private Date f9729b;

    /* renamed from: c */
    private Date f9730c;

    /* renamed from: d */
    private long f9731d;

    /* renamed from: e */
    private long f9732e;

    /* renamed from: f */
    private double f9733f = 1.0d;

    /* renamed from: g */
    private float f9734g = 1.0f;

    /* renamed from: h */
    private dho f9735h = dho.f14366a;

    /* renamed from: i */
    private long f9736i;

    /* renamed from: j */
    private int f9737j;

    /* renamed from: k */
    private int f9738k;

    /* renamed from: l */
    private int f9739l;

    /* renamed from: m */
    private int f9740m;

    /* renamed from: n */
    private int f9741n;

    /* renamed from: o */
    private int f9742o;

    public ail() {
        super("mvhd");
    }

    @Override // com.google.android.gms.internal.ads.dhc
    /* renamed from: a */
    public final void mo9458a(ByteBuffer byteBuffer) {
        m9465b(byteBuffer);
        if (m9464e() == 1) {
            this.f9729b = dhh.m9457a(aej.m13542c(byteBuffer));
            this.f9730c = dhh.m9457a(aej.m13542c(byteBuffer));
            this.f9731d = aej.m13544a(byteBuffer);
            this.f9732e = aej.m13542c(byteBuffer);
        } else {
            this.f9729b = dhh.m9457a(aej.m13544a(byteBuffer));
            this.f9730c = dhh.m9457a(aej.m13544a(byteBuffer));
            this.f9731d = aej.m13544a(byteBuffer);
            this.f9732e = aej.m13544a(byteBuffer);
        }
        this.f9733f = aej.m13541d(byteBuffer);
        byte[] bArr = new byte[2];
        byteBuffer.get(bArr);
        this.f9734g = ((short) ((bArr[1] & 255) | ((short) (((bArr[0] << 8) & 65280) | 0)))) / 256.0f;
        aej.m13543b(byteBuffer);
        aej.m13544a(byteBuffer);
        aej.m13544a(byteBuffer);
        this.f9735h = dho.m9454a(byteBuffer);
        this.f9737j = byteBuffer.getInt();
        this.f9738k = byteBuffer.getInt();
        this.f9739l = byteBuffer.getInt();
        this.f9740m = byteBuffer.getInt();
        this.f9741n = byteBuffer.getInt();
        this.f9742o = byteBuffer.getInt();
        this.f9736i = aej.m13544a(byteBuffer);
    }

    /* renamed from: b */
    public final long m13096b() {
        return this.f9731d;
    }

    /* renamed from: c */
    public final long m13095c() {
        return this.f9732e;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("MovieHeaderBox[");
        sb.append("creationTime=").append(this.f9729b);
        sb.append(";");
        sb.append("modificationTime=").append(this.f9730c);
        sb.append(";");
        sb.append("timescale=").append(this.f9731d);
        sb.append(";");
        sb.append("duration=").append(this.f9732e);
        sb.append(";");
        sb.append("rate=").append(this.f9733f);
        sb.append(";");
        sb.append("volume=").append(this.f9734g);
        sb.append(";");
        sb.append("matrix=").append(this.f9735h);
        sb.append(";");
        sb.append("nextTrackId=").append(this.f9736i);
        sb.append("]");
        return sb.toString();
    }
}
