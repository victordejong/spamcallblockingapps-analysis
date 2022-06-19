package com.bumptech.glide.load.engine.p209x;
/* renamed from: com.bumptech.glide.load.engine.x.g */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/x/g.class */
public final class C4098g implements AbstractC4090a<byte[]> {
    @Override // com.bumptech.glide.load.engine.p209x.AbstractC4090a
    /* renamed from: a */
    public int mo23283a() {
        return 1;
    }

    /* renamed from: c */
    public int mo23282b(byte[] bArr) {
        return bArr.length;
    }

    /* renamed from: d */
    public byte[] newArray(int i) {
        return new byte[i];
    }

    @Override // com.bumptech.glide.load.engine.p209x.AbstractC4090a
    public String getTag() {
        return "ByteArrayPool";
    }
}
