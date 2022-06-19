package com.bumptech.glide.load.engine.p209x;
/* renamed from: com.bumptech.glide.load.engine.x.i */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/x/i.class */
public final class C4101i implements AbstractC4090a<int[]> {
    @Override // com.bumptech.glide.load.engine.p209x.AbstractC4090a
    /* renamed from: a */
    public int mo23283a() {
        return 4;
    }

    /* renamed from: c */
    public int mo23282b(int[] iArr) {
        return iArr.length;
    }

    /* renamed from: d */
    public int[] newArray(int i) {
        return new int[i];
    }

    @Override // com.bumptech.glide.load.engine.p209x.AbstractC4090a
    public String getTag() {
        return "IntegerArrayPool";
    }
}
