package com.google.android.gms.internal.ads;

import com.facebook.ads.ExtraHints;
import java.nio.ByteBuffer;
import java.util.Date;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzbu.class */
public final class zzbu extends zzeof {

    /* renamed from: j */
    public Date f25546j;

    /* renamed from: k */
    public Date f25547k;

    /* renamed from: l */
    public long f25548l;

    /* renamed from: m */
    public long f25549m;

    /* renamed from: n */
    public double f25550n = 1.0d;

    /* renamed from: o */
    public float f25551o = 1.0f;

    /* renamed from: p */
    public zzeop f25552p = zzeop.f28124j;

    /* renamed from: q */
    public long f25553q;

    public zzbu() {
        super("mvhd");
    }

    @Override // com.google.android.gms.internal.ads.zzeoe
    /* renamed from: a */
    public final void mo12217a(ByteBuffer byteBuffer) {
        m12215b(byteBuffer);
        if (m12214c() == 1) {
            this.f25546j = zzeom.m12206a(zzbq.m15187c(byteBuffer));
            this.f25547k = zzeom.m12206a(zzbq.m15187c(byteBuffer));
            this.f25548l = zzbq.m15189a(byteBuffer);
            this.f25549m = zzbq.m15187c(byteBuffer);
        } else {
            this.f25546j = zzeom.m12206a(zzbq.m15189a(byteBuffer));
            this.f25547k = zzeom.m12206a(zzbq.m15189a(byteBuffer));
            this.f25548l = zzbq.m15189a(byteBuffer);
            this.f25549m = zzbq.m15189a(byteBuffer);
        }
        this.f25550n = zzbq.m15186d(byteBuffer);
        byte[] bArr = new byte[2];
        byteBuffer.get(bArr);
        this.f25551o = ((short) ((bArr[1] & 255) | ((short) (0 | ((bArr[0] << 8) & 65280))))) / 256.0f;
        zzbq.m15188b(byteBuffer);
        zzbq.m15189a(byteBuffer);
        zzbq.m15189a(byteBuffer);
        this.f25552p = zzeop.m12205a(byteBuffer);
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        byteBuffer.getInt();
        this.f25553q = zzbq.m15189a(byteBuffer);
    }

    /* renamed from: d */
    public final long m15039d() {
        return this.f25549m;
    }

    /* renamed from: e */
    public final long m15038e() {
        return this.f25548l;
    }

    public final String toString() {
        return "MovieHeaderBox[creationTime=" + this.f25546j + ExtraHints.KEYWORD_SEPARATOR + "modificationTime=" + this.f25547k + ExtraHints.KEYWORD_SEPARATOR + "timescale=" + this.f25548l + ExtraHints.KEYWORD_SEPARATOR + "duration=" + this.f25549m + ExtraHints.KEYWORD_SEPARATOR + "rate=" + this.f25550n + ExtraHints.KEYWORD_SEPARATOR + "volume=" + this.f25551o + ExtraHints.KEYWORD_SEPARATOR + "matrix=" + this.f25552p + ExtraHints.KEYWORD_SEPARATOR + "nextTrackId=" + this.f25553q + "]";
    }
}
