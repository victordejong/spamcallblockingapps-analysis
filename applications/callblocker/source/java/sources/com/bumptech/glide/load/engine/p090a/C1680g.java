package com.bumptech.glide.load.engine.p090a;
/* renamed from: com.bumptech.glide.load.engine.a.g */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/a/g.class */
public final class C1680g implements AbstractC1672a<byte[]> {
    /* renamed from: a */
    public int mo16568a(byte[] bArr) {
        return bArr.length;
    }

    @Override // com.bumptech.glide.load.engine.p090a.AbstractC1672a
    /* renamed from: a */
    public String mo16570a() {
        return "ByteArrayPool";
    }

    @Override // com.bumptech.glide.load.engine.p090a.AbstractC1672a
    /* renamed from: b */
    public int mo16566b() {
        return 1;
    }

    /* renamed from: b */
    public byte[] mo16569a(int i) {
        return new byte[i];
    }
}
