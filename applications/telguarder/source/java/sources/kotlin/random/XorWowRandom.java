package kotlin.random;

import com.pubmatic.sdk.openwrap.core.POBConstants;
import kotlin.Metadata;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n\u0002\b\r\b��\u0018��2\u00020\u0001B\u0017\b\u0010\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0003¢\u0006\u0002\u0010\u0005B7\b��\u0012\u0006\u0010\u0006\u001a\u00020\u0003\u0012\u0006\u0010\u0007\u001a\u00020\u0003\u0012\u0006\u0010\b\u001a\u00020\u0003\u0012\u0006\u0010\t\u001a\u00020\u0003\u0012\u0006\u0010\n\u001a\u00020\u0003\u0012\u0006\u0010\u000b\u001a\u00020\u0003¢\u0006\u0002\u0010\fJ\u0010\u0010\r\u001a\u00020\u00032\u0006\u0010\u000e\u001a\u00020\u0003H\u0016J\b\u0010\u000f\u001a\u00020\u0003H\u0016R\u000e\u0010\u000b\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n��¨\u0006\u0010"}, m400d2 = {"Lkotlin/random/XorWowRandom;", "Lkotlin/random/Random;", "seed1", "", "seed2", "(II)V", "x", "y", "z", POBConstants.KEY_W, "v", "addend", "(IIIIII)V", "nextBits", "bitCount", "nextInt", "kotlin-stdlib"}, m399k = 1, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:kotlin/random/XorWowRandom.class */
public final class XorWowRandom extends Random {
    private int addend;

    /* renamed from: v */
    private int f1320v;

    /* renamed from: w */
    private int f1321w;

    /* renamed from: x */
    private int f1322x;

    /* renamed from: y */
    private int f1323y;

    /* renamed from: z */
    private int f1324z;

    public XorWowRandom(int i, int i2) {
        this(i, i2, 0, 0, i ^ (-1), (i << 10) ^ (i2 >>> 4));
    }

    public XorWowRandom(int i, int i2, int i3, int i4, int i5, int i6) {
        this.f1322x = i;
        this.f1323y = i2;
        this.f1324z = i3;
        this.f1321w = i4;
        this.f1320v = i5;
        this.addend = i6;
        if (((((i | i2) | i3) | i4) | i5) != 0) {
            for (int i7 = 0; i7 < 64; i7++) {
                nextInt();
            }
            return;
        }
        throw new IllegalArgumentException("Initial state must have at least one non-zero element.".toString());
    }

    @Override // kotlin.random.Random
    public int nextBits(int i) {
        return RandomKt.takeUpperBits(nextInt(), i);
    }

    @Override // kotlin.random.Random
    public int nextInt() {
        int i = this.f1322x;
        int i2 = i ^ (i >>> 2);
        this.f1322x = this.f1323y;
        this.f1323y = this.f1324z;
        this.f1324z = this.f1321w;
        int i3 = this.f1320v;
        this.f1321w = i3;
        int i4 = ((i2 ^ (i2 << 1)) ^ i3) ^ (i3 << 4);
        this.f1320v = i4;
        int i5 = this.addend + 362437;
        this.addend = i5;
        return i4 + i5;
    }
}
