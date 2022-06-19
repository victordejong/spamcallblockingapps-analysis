package scala.concurrent;

import scala.Function0;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/BlockContext$.class */
public final class BlockContext$ {
    public static final BlockContext$ MODULE$ = null;
    private final ThreadLocal<BlockContext> contextLocal = new ThreadLocal<>();

    static {
        new BlockContext$();
    }

    private BlockContext$() {
        MODULE$ = this;
    }

    private ThreadLocal<BlockContext> contextLocal() {
        return this.contextLocal;
    }

    public BlockContext current() {
        BlockContext blockContext = contextLocal().get();
        BlockContext$DefaultBlockContext$ blockContext$DefaultBlockContext$ = blockContext;
        if (blockContext == null) {
            Thread currentThread = Thread.currentThread();
            blockContext$DefaultBlockContext$ = currentThread instanceof BlockContext ? (BlockContext) currentThread : BlockContext$DefaultBlockContext$.MODULE$;
        }
        return blockContext$DefaultBlockContext$;
    }

    public <T> T withBlockContext(BlockContext blockContext, Function0<T> function0) {
        BlockContext blockContext2 = contextLocal().get();
        try {
            contextLocal().set(blockContext);
            return function0.apply();
        } finally {
            contextLocal().set(blockContext2);
        }
    }
}
