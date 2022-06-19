package scala.collection.mutable;

import scala.Predef$;
import scala.math.package$;
import scala.util.Random;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/FlatHashTable$.class */
public final class FlatHashTable$ {
    public static final FlatHashTable$ MODULE$ = null;

    static {
        new FlatHashTable$();
    }

    private FlatHashTable$() {
        MODULE$ = this;
    }

    public int defaultLoadFactor() {
        return 450;
    }

    public final int loadFactorDenum() {
        return 1000;
    }

    public int newThreshold(int i, int i2) {
        Predef$ predef$ = Predef$.MODULE$;
        if (i < 500) {
            return (int) ((i2 * i) / 1000);
        }
        throw new AssertionError(new StringBuilder().append((Object) "assertion failed: ").append((Object) "loadFactor too large; must be < 0.5").toString());
    }

    public final ThreadLocal<Random> seedGenerator() {
        return new ThreadLocal<Random>() { // from class: scala.collection.mutable.FlatHashTable$$anon$2
            @Override // java.lang.ThreadLocal
            public Random initialValue() {
                return new Random();
            }
        };
    }

    public int sizeForThreshold(int i, int i2) {
        return package$.MODULE$.max(32, (int) ((i * loadFactorDenum()) / i2));
    }
}
