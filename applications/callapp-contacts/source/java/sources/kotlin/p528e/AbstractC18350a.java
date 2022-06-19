package kotlin.p528e;

import java.util.Random;
import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000b\n��\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\u0006\n��\n\u0002\u0010\u0007\n\u0002\b\u0003\n\u0002\u0010\t\n��\b \u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\bH\u0016J\b\u0010\n\u001a\u00020\u000bH\u0016J\u0010\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\rH\u0016J\b\u0010\u000f\u001a\u00020\u0010H\u0016J\b\u0010\u0011\u001a\u00020\u0012H\u0016J\b\u0010\u0013\u001a\u00020\bH\u0016J\u0010\u0010\u0013\u001a\u00020\b2\u0006\u0010\u0014\u001a\u00020\bH\u0016J\b\u0010\u0015\u001a\u00020\u0016H\u0016R\u0012\u0010\u0003\u001a\u00020\u0004X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0005\u0010\u0006¨\u0006\u0017"}, m4298d2 = {"Lkotlin/random/AbstractPlatformRandom;", "Lkotlin/random/Random;", "()V", "impl", "Ljava/util/Random;", "getImpl", "()Ljava/util/Random;", "nextBits", "", "bitCount", "nextBoolean", "", "nextBytes", "", "array", "nextDouble", "", "nextFloat", "", "nextInt", "until", "nextLong", "", "kotlin-stdlib"}, m4297k = 1, m4296mv = {1, 4, 1})
/* renamed from: kotlin.e.a */
/* loaded from: classes5-dex2jar.jar:kotlin/e/a.class */
public abstract class AbstractC18350a extends AbstractC18354c {
    @Override // kotlin.p528e.AbstractC18354c
    /* renamed from: a */
    public final int mo4064a(int i) {
        return ((-i) >> 31) & (mo4066a().nextInt() >>> (32 - i));
    }

    /* renamed from: a */
    public abstract Random mo4066a();

    @Override // kotlin.p528e.AbstractC18354c
    /* renamed from: b */
    public final int mo4062b() {
        return mo4066a().nextInt();
    }

    @Override // kotlin.p528e.AbstractC18354c
    /* renamed from: c */
    public final float mo4061c() {
        return mo4066a().nextFloat();
    }
}
