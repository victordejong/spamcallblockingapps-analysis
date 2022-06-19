package scala.util;

import java.util.Random;
/* loaded from: classes3-dex2jar.jar:scala/util/Random$.class */
public final class Random$ extends Random {
    public static final Random$ MODULE$ = null;

    static {
        new Random$();
    }

    private Random$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public Random javaRandomToRandom(Random random) {
        return new Random(random);
    }
}
