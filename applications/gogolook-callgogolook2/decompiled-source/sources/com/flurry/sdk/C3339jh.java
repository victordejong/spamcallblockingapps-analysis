package com.flurry.sdk;

import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.zip.CRC32;
/* renamed from: com.flurry.sdk.jh */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/jh.class */
public final class C3339jh extends MessageDigest {

    /* renamed from: a */
    public CRC32 f5709a = new CRC32();

    public C3339jh() {
        super("CRC");
    }

    /* renamed from: a */
    public final byte[] m32646a() {
        return engineDigest();
    }

    /* renamed from: b */
    public final int m32645b() {
        return ByteBuffer.wrap(engineDigest()).getInt();
    }

    @Override // java.security.MessageDigestSpi
    public final byte[] engineDigest() {
        long value = this.f5709a.getValue();
        return new byte[]{(byte) (((-16777216) & value) >> 24), (byte) ((16711680 & value) >> 16), (byte) ((65280 & value) >> 8), (byte) ((value & 255) >> 0)};
    }

    @Override // java.security.MessageDigestSpi
    public final void engineReset() {
        this.f5709a.reset();
    }

    @Override // java.security.MessageDigestSpi
    public final void engineUpdate(byte b) {
        this.f5709a.update(b);
    }

    @Override // java.security.MessageDigestSpi
    public final void engineUpdate(byte[] bArr, int i, int i2) {
        this.f5709a.update(bArr, i, i2);
    }
}
