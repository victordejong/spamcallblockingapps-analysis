package kotlin.random;

import java.util.Random;
import kotlin.Metadata;
import kotlin.internal.PlatformImplementationsKt;
import kotlin.jvm.internal.Intrinsics;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��\u001e\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0006\n��\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\t\u0010��\u001a\u00020\u0001H\u0081\b\u001a\u0018\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005H��\u001a\f\u0010\u0007\u001a\u00020\b*\u00020\u0001H\u0007\u001a\f\u0010\t\u001a\u00020\u0001*\u00020\bH\u0007¨\u0006\n"}, m400d2 = {"defaultPlatformRandom", "Lkotlin/random/Random;", "doubleFromParts", "", "hi26", "", "low27", "asJavaRandom", "Ljava/util/Random;", "asKotlinRandom", "kotlin-stdlib"}, m399k = 2, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:kotlin/random/PlatformRandomKt.class */
public final class PlatformRandomKt {
    public static final Random asJavaRandom(Random asJavaRandom) {
        Random impl;
        Intrinsics.checkNotNullParameter(asJavaRandom, "$this$asJavaRandom");
        AbstractPlatformRandom abstractPlatformRandom = (AbstractPlatformRandom) (!(asJavaRandom instanceof AbstractPlatformRandom) ? null : asJavaRandom);
        return (abstractPlatformRandom == null || (impl = abstractPlatformRandom.getImpl()) == null) ? new KotlinRandom(asJavaRandom) : impl;
    }

    public static final Random asKotlinRandom(Random asKotlinRandom) {
        Random impl;
        Intrinsics.checkNotNullParameter(asKotlinRandom, "$this$asKotlinRandom");
        KotlinRandom kotlinRandom = (KotlinRandom) (!(asKotlinRandom instanceof KotlinRandom) ? null : asKotlinRandom);
        return (kotlinRandom == null || (impl = kotlinRandom.getImpl()) == null) ? new PlatformRandom(asKotlinRandom) : impl;
    }

    private static final Random defaultPlatformRandom() {
        return PlatformImplementationsKt.IMPLEMENTATIONS.defaultPlatformRandom();
    }

    public static final double doubleFromParts(int i, int i2) {
        return ((i << 27) + i2) / 9007199254740992L;
    }
}
