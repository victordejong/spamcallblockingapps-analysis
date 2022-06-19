package scala.util;

import scala.Function1$mcVD$sp;
import scala.runtime.BoxesRunTime;
import scala.runtime.ScalaRunTime$;
/* loaded from: classes3-dex2jar.jar:scala/util/MurmurHash$mcD$sp.class */
public class MurmurHash$mcD$sp extends MurmurHash<Object> implements Function1$mcVD$sp {
    private final int seed;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MurmurHash$mcD$sp(int i) {
        super(i);
        this.seed = i;
        Function1$mcVD$sp.Cclass.$init$(this);
    }

    @Override // scala.Function1$mcVD$sp
    public void apply(double d) {
        apply$mcD$sp(d);
    }

    @Override // scala.util.MurmurHash
    public void apply$mcD$sp(double d) {
        scala$util$MurmurHash$$h_$eq(MurmurHash$.MODULE$.extendHash(scala$util$MurmurHash$$h(), ScalaRunTime$.MODULE$.hash((Object) BoxesRunTime.boxToDouble(d)), scala$util$MurmurHash$$c(), scala$util$MurmurHash$$k()));
        scala$util$MurmurHash$$c_$eq(MurmurHash$.MODULE$.nextMagicA(scala$util$MurmurHash$$c()));
        scala$util$MurmurHash$$k_$eq(MurmurHash$.MODULE$.nextMagicB(scala$util$MurmurHash$$k()));
        scala$util$MurmurHash$$hashed_$eq(false);
    }
}
