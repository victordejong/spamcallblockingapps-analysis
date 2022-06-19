package scala.util;

import scala.Function1$mcVJ$sp;
import scala.runtime.BoxesRunTime;
import scala.runtime.ScalaRunTime$;
/* loaded from: classes3-dex2jar.jar:scala/util/MurmurHash$mcJ$sp.class */
public class MurmurHash$mcJ$sp extends MurmurHash<Object> implements Function1$mcVJ$sp {
    private final int seed;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MurmurHash$mcJ$sp(int i) {
        super(i);
        this.seed = i;
        Function1$mcVJ$sp.Cclass.$init$(this);
    }

    @Override // scala.Function1$mcVJ$sp
    public void apply(long j) {
        apply$mcJ$sp(j);
    }

    @Override // scala.util.MurmurHash
    public void apply$mcJ$sp(long j) {
        scala$util$MurmurHash$$h_$eq(MurmurHash$.MODULE$.extendHash(scala$util$MurmurHash$$h(), ScalaRunTime$.MODULE$.hash((Object) BoxesRunTime.boxToLong(j)), scala$util$MurmurHash$$c(), scala$util$MurmurHash$$k()));
        scala$util$MurmurHash$$c_$eq(MurmurHash$.MODULE$.nextMagicA(scala$util$MurmurHash$$c()));
        scala$util$MurmurHash$$k_$eq(MurmurHash$.MODULE$.nextMagicB(scala$util$MurmurHash$$k()));
        scala$util$MurmurHash$$hashed_$eq(false);
    }
}
