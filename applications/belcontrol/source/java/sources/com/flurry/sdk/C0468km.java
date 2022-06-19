package com.flurry.sdk;

import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.zip.CRC32;
/* renamed from: com.flurry.sdk.km */
/* loaded from: classes-dex2jar.jar:com/flurry/sdk/km.class */
public final class C0468km extends MessageDigest {

    /* renamed from: a */
    private CRC32 f3484a = new CRC32();

    public C0468km() {
        super("CRC");
    }

    /* renamed from: a */
    public final byte[] m4625a() {
        return engineDigest();
    }

    /* renamed from: b */
    public final int m4624b() {
        return ByteBuffer.wrap(engineDigest()).getInt();
    }

    @Override // java.security.MessageDigestSpi
    public final byte[] engineDigest() {
        long value = this.f3484a.getValue();
        return new byte[]{(byte) (((-16777216) & value) >> 24), (byte) ((16711680 & value) >> 16), (byte) ((65280 & value) >> 8), (byte) ((value & 255) >> 0)};
    }

    @Override // java.security.MessageDigestSpi
    public final void engineReset() {
        this.f3484a.reset();
    }

    @Override // java.security.MessageDigestSpi
    public final void engineUpdate(byte b) {
        this.f3484a.update(b);
    }

    @Override // java.security.MessageDigestSpi
    public final void engineUpdate(byte[] bArr, int i, int i2) {
        this.f3484a.update(bArr, i, i2);
    }
}
