package kotlin.random;

import kotlin.Metadata;
@Metadata(m256bv = {1, 0, 3}, m255d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\r\b��\u0018��2\u00020\u0001B\u0017\b\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005B7\b��\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003¢\u0006\u0002\u0010\fJ\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0003H\u0016J\b\u0010\u000f\u001a\u00020\u0003H\u0016R\u000e\u0010\u000b\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0010"}, m254d2 = {"Lkotlin/random/XorWowRandom;", "Lkotlin/random/Random;", "seed1", "", "seed2", "(II)V", "x", "y", "z", "w", "v", "addend", "(IIIIII)V", "nextBits", "bitCount", "nextInt", "kotlin-stdlib"}, m253k = 1, m252mv = {1, 1, 13})
/* loaded from: classes2-dex2jar.jar:kotlin/random/XorWowRandom.class */
public final class XorWowRandom extends Random {
    private int addend;

    /* renamed from: v */
    private int f751v;

    /* renamed from: w */
    private int f752w;

    /* renamed from: x */
    private int f753x;

    /* renamed from: y */
    private int f754y;

    /* renamed from: z */
    private int f755z;

    public XorWowRandom(int i, int i2) {
        this(i, i2, 0, 0, i ^ (-1), (i << 10) ^ (i2 >>> 4));
    }

    public XorWowRandom(int i, int i2, int i3, int i4, int i5, int i6) {
        this.f753x = i;
        this.f754y = i2;
        this.f755z = i3;
        this.f752w = i4;
        this.f751v = i5;
        this.addend = i6;
        if (!(((((this.f753x | this.f754y) | this.f755z) | this.f752w) | this.f751v) != 0)) {
            throw new IllegalArgumentException("Initial state must have at least one non-zero element.".toString());
        }
        for (int i7 = 0; i7 < 64; i7++) {
            nextInt();
        }
    }

    @Override // kotlin.random.Random
    public int nextBits(int i) {
        return RandomKt.takeUpperBits(nextInt(), i);
    }

    @Override // kotlin.random.Random
    public int nextInt() {
        int i = this.f753x;
        int i2 = i ^ (i >>> 2);
        this.f753x = this.f754y;
        this.f754y = this.f755z;
        this.f755z = this.f752w;
        int i3 = this.f751v;
        this.f752w = i3;
        int i4 = ((i2 ^ (i2 << 1)) ^ i3) ^ (i3 << 4);
        this.f751v = i4;
        this.addend += 362437;
        return i4 + this.addend;
    }
}
