package com.bumptech.glide.load.p214j.p215d;

import com.bumptech.glide.load.engine.AbstractC4083s;
import com.bumptech.glide.p223p.C4382j;
/* renamed from: com.bumptech.glide.load.j.d.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/j/d/b.class */
public class C4243b implements AbstractC4083s<byte[]> {

    /* renamed from: d */
    private final byte[] f13139d;

    public C4243b(byte[] bArr) {
        this.f13139d = (byte[]) C4382j.m22719d(bArr);
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4083s
    /* renamed from: a */
    public void mo22858a() {
    }

    /* renamed from: b */
    public byte[] get() {
        return this.f13139d;
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4083s
    /* renamed from: c */
    public int mo22856c() {
        return this.f13139d.length;
    }

    @Override // com.bumptech.glide.load.engine.AbstractC4083s
    /* renamed from: d */
    public Class<byte[]> mo22855d() {
        return byte[].class;
    }
}
