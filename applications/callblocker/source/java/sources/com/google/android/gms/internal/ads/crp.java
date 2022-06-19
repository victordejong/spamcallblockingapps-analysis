package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.LockSupport;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/crp.class */
abstract class crp<T> extends AtomicReference<Runnable> implements Runnable {

    /* renamed from: a */
    private static final Runnable f13616a = new crq();

    /* renamed from: b */
    private static final Runnable f13617b = new crq();

    /* renamed from: c */
    private static final Runnable f13618c = new crq();

    /* renamed from: a */
    abstract void mo10742a(@NullableDecl T t, @NullableDecl Throwable th);

    /* renamed from: a */
    abstract boolean mo10743a();

    /* renamed from: c */
    abstract T mo10741c();

    /* renamed from: d */
    abstract String mo10740d();

    /* renamed from: e */
    public final void m10769e() {
        Runnable runnable = get();
        if (!(runnable instanceof Thread) || !compareAndSet(runnable, f13617b)) {
            return;
        }
        try {
            ((Thread) runnable).interrupt();
            if (getAndSet(f13616a) != f13618c) {
                return;
            }
            LockSupport.unpark((Thread) runnable);
        } catch (Throwable th) {
            if (getAndSet(f13616a) == f13618c) {
                LockSupport.unpark((Thread) runnable);
            }
            throw th;
        }
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Failed to lock block: B:70:0x0172
        	at jadx.core.dex.nodes.BlockNode.lock(BlockNode.java:79)
        	at jadx.core.utils.ImmutableList.forEach(ImmutableList.java:113)
        	at jadx.core.dex.nodes.MethodNode.finishBasicBlocks(MethodNode.java:312)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:81)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:44)
        Caused by: jadx.core.utils.exceptions.JadxRuntimeException: Dominance frontier not set for block: B:70:0x0172
        	at jadx.core.dex.nodes.BlockNode.lock(BlockNode.java:76)
        	... 4 more
        */
    @Override // java.lang.Runnable
    public final void run() {
        /*
            Method dump skipped, instructions count: 499
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.crp.run():void");
    }

    @Override // java.util.concurrent.atomic.AtomicReference
    public final String toString() {
        String str;
        Runnable runnable = get();
        if (runnable == f13616a) {
            str = "running=[DONE]";
        } else if (runnable == f13617b) {
            str = "running=[INTERRUPTED]";
        } else if (runnable instanceof Thread) {
            String name = ((Thread) runnable).getName();
            str = new StringBuilder(String.valueOf(name).length() + 21).append("running=[RUNNING ON ").append(name).append("]").toString();
        } else {
            str = "running=[NOT STARTED YET]";
        }
        String mo10740d = mo10740d();
        return new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(mo10740d).length()).append(str).append(", ").append(mo10740d).toString();
    }
}
