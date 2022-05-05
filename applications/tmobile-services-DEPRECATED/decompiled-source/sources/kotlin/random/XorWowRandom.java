package kotlin.random;

import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0012\b��\u0018��2\u00020\u0001B\u0019\b\u0010\u0012\u0006\u0010\u000f\u001a\u00020\u0002\u0012\u0006\u0010\u0010\u001a\u00020\u0002¢\u0006\u0004\b\u0011\u0010\u0012B9\b��\u0012\u0006\u0010\f\u001a\u00020\u0002\u0012\u0006\u0010\r\u001a\u00020\u0002\u0012\u0006\u0010\u000e\u001a\u00020\u0002\u0012\u0006\u0010\u000b\u001a\u00020\u0002\u0012\u0006\u0010\n\u001a\u00020\u0002\u0012\u0006\u0010\b\u001a\u00020\u0002¢\u0006\u0004\b\u0011\u0010\u0013J\u0017\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0006\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0006\u0010\u0007R\u0016\u0010\b\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0016\u0010\n\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\n\u0010\tR\u0016\u0010\u000b\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000b\u0010\tR\u0016\u0010\f\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\tR\u0016\u0010\r\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\tR\u0016\u0010\u000e\u001a\u00020\u00028\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010\t¨\u0006\u0014"}, d2 = {"Lkotlin/random/XorWowRandom;", "Lkotlin/random/Random;", "", "bitCount", "nextBits", "(I)I", "nextInt", "()I", "addend", "I", "v", "w", "x", "y", "z", "seed1", "seed2", "<init>", "(II)V", "(IIIIII)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/random/XorWowRandom.class */
public final class XorWowRandom extends Random {

    /* renamed from: c */
    private int f20775c;

    /* renamed from: d */
    private int f20776d;

    /* renamed from: e */
    private int f20777e;

    /* renamed from: f */
    private int f20778f;

    /* renamed from: g */
    private int f20779g;

    /* renamed from: h */
    private int f20780h;

    @Override // kotlin.random.Random
    /* renamed from: b */
    public int mo1755b(int i) {
        return RandomKt.m1756d(mo1754h(), i);
    }

    @Override // kotlin.random.Random
    /* renamed from: h */
    public int mo1754h() {
        int i = this.f20775c;
        int i2 = i ^ (i >>> 2);
        this.f20775c = this.f20776d;
        this.f20776d = this.f20777e;
        this.f20777e = this.f20778f;
        int i3 = this.f20779g;
        this.f20778f = i3;
        int i4 = ((i2 ^ (i2 << 1)) ^ i3) ^ (i3 << 4);
        this.f20779g = i4;
        int i5 = this.f20780h + 362437;
        this.f20780h = i5;
        return i4 + i5;
    }
}
