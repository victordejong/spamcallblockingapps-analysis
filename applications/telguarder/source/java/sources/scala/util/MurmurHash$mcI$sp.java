package scala.util;

import scala.Function1$mcVI$sp;
/* loaded from: classes3-dex2jar.jar:scala/util/MurmurHash$mcI$sp.class */
public class MurmurHash$mcI$sp extends MurmurHash<Object> implements Function1$mcVI$sp {
    private final int seed;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MurmurHash$mcI$sp(int i) {
        super(i);
        this.seed = i;
        Function1$mcVI$sp.Cclass.$init$(this);
    }

    @Override // scala.Function1$mcVI$sp
    public void apply(int i) {
        apply$mcI$sp(i);
    }

    @Override // scala.util.MurmurHash
    public void apply$mcI$sp(int i) {
        scala$util$MurmurHash$$h_$eq(MurmurHash$.MODULE$.extendHash(scala$util$MurmurHash$$h(), i, scala$util$MurmurHash$$c(), scala$util$MurmurHash$$k()));
        scala$util$MurmurHash$$c_$eq(MurmurHash$.MODULE$.nextMagicA(scala$util$MurmurHash$$c()));
        scala$util$MurmurHash$$k_$eq(MurmurHash$.MODULE$.nextMagicB(scala$util$MurmurHash$$k()));
        scala$util$MurmurHash$$hashed_$eq(false);
    }
}
