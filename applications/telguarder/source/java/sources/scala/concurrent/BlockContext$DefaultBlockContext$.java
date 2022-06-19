package scala.concurrent;

import scala.Function0;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/BlockContext$DefaultBlockContext$.class */
public class BlockContext$DefaultBlockContext$ implements BlockContext {
    public static final BlockContext$DefaultBlockContext$ MODULE$ = null;

    static {
        new BlockContext$DefaultBlockContext$();
    }

    public BlockContext$DefaultBlockContext$() {
        MODULE$ = this;
    }

    @Override // scala.concurrent.BlockContext
    public <T> T blockOn(Function0<T> function0, CanAwait canAwait) {
        return function0.apply();
    }
}
