package scala.util;

import scala.Function1$mcVF$sp;
import scala.runtime.BoxesRunTime;
import scala.runtime.ScalaRunTime$;
/* loaded from: classes3-dex2jar.jar:scala/util/MurmurHash$mcF$sp.class */
public class MurmurHash$mcF$sp extends MurmurHash<Object> implements Function1$mcVF$sp {
    private final int seed;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MurmurHash$mcF$sp(int i) {
        super(i);
        this.seed = i;
        Function1$mcVF$sp.Cclass.$init$(this);
    }

    @Override // scala.Function1$mcVF$sp
    public void apply(float f) {
        apply$mcF$sp(f);
    }

    @Override // scala.util.MurmurHash
    public void apply$mcF$sp(float f) {
        scala$util$MurmurHash$$h_$eq(MurmurHash$.MODULE$.extendHash(scala$util$MurmurHash$$h(), ScalaRunTime$.MODULE$.hash((Object) BoxesRunTime.boxToFloat(f)), scala$util$MurmurHash$$c(), scala$util$MurmurHash$$k()));
        scala$util$MurmurHash$$c_$eq(MurmurHash$.MODULE$.nextMagicA(scala$util$MurmurHash$$c()));
        scala$util$MurmurHash$$k_$eq(MurmurHash$.MODULE$.nextMagicB(scala$util$MurmurHash$$k()));
        scala$util$MurmurHash$$hashed_$eq(false);
    }
}
