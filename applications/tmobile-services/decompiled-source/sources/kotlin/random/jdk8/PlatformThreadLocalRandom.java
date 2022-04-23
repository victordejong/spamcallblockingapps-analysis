package kotlin.random.jdk8;

import com.google.firebase.messaging.Constants;
import java.util.Random;
import java.util.concurrent.ThreadLocalRandom;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.random.AbstractPlatformRandom;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0006\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0006\b��\u0018��2\u00020\u0001B\u0007¢\u0006\u0004\b\u0012\u0010\u0013J\u0017\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0004\u0010\u0005J\u001f\u0010\b\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\b\u0010\tJ\u0017\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\fJ\u001f\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\n2\u0006\u0010\u0003\u001a\u00020\nH\u0016¢\u0006\u0004\b\u000b\u0010\rR\u0016\u0010\u0011\u001a\u00020\u000e8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010¨\u0006\u0014"}, d2 = {"Lkotlin/random/jdk8/PlatformThreadLocalRandom;", "Lkotlin/random/AbstractPlatformRandom;", "", "until", "nextDouble", "(D)D", "", Constants.MessagePayloadKeys.FROM, "nextInt", "(II)I", "", "nextLong", "(J)J", "(JJ)J", "Ljava/util/Random;", "getImpl", "()Ljava/util/Random;", "impl", "<init>", "()V", "kotlin-stdlib-jdk8"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/random/jdk8/PlatformThreadLocalRandom.class */
public final class PlatformThreadLocalRandom extends AbstractPlatformRandom {
    @Override // kotlin.random.Random
    /* renamed from: j */
    public int mo1753j(int i, int i2) {
        return ThreadLocalRandom.current().nextInt(i, i2);
    }

    @Override // kotlin.random.AbstractPlatformRandom
    @NotNull
    /* renamed from: l */
    public Random mo1752l() {
        ThreadLocalRandom current = ThreadLocalRandom.current();
        Intrinsics.m1831d(current, "ThreadLocalRandom.current()");
        return current;
    }
}
