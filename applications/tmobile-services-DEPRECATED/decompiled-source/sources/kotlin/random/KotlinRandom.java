package kotlin.random;

import java.util.Random;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0012\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0005\n\u0002\u0010\t\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\b\u0002\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010\u001e\u001a\u00020\u001d¢\u0006\u0004\b$\u0010%J\u0017\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0014¢\u0006\u0004\b\u0004\u0010\u0005J\u000f\u0010\u0007\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u0007\u0010\bJ\u0017\u0010\f\u001a\u00020\u000b2\u0006\u0010\n\u001a\u00020\tH\u0016¢\u0006\u0004\b\f\u0010\rJ\u000f\u0010\u000f\u001a\u00020\u000eH\u0016¢\u0006\u0004\b\u000f\u0010\u0010J\u000f\u0010\u0012\u001a\u00020\u0011H\u0016¢\u0006\u0004\b\u0012\u0010\u0013J\u000f\u0010\u0014\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0014\u0010\u0015J\u0017\u0010\u0014\u001a\u00020\u00022\u0006\u0010\u0016\u001a\u00020\u0002H\u0016¢\u0006\u0004\b\u0014\u0010\u0005J\u000f\u0010\u0018\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u0018\u0010\u0019J\u0017\u0010\u001b\u001a\u00020\u000b2\u0006\u0010\u001a\u001a\u00020\u0017H\u0016¢\u0006\u0004\b\u001b\u0010\u001cR\u0019\u0010\u001e\u001a\u00020\u001d8\u0006@\u0006¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\u0016\u0010\"\u001a\u00020\u00068\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\"\u0010#¨\u0006&"}, d2 = {"Lkotlin/random/KotlinRandom;", "Ljava/util/Random;", "", "bits", "next", "(I)I", "", "nextBoolean", "()Z", "", "bytes", "", "nextBytes", "([B)V", "", "nextDouble", "()D", "", "nextFloat", "()F", "nextInt", "()I", "bound", "", "nextLong", "()J", "seed", "setSeed", "(J)V", "Lkotlin/random/Random;", "impl", "Lkotlin/random/Random;", "getImpl", "()Lkotlin/random/Random;", "seedInitialized", "Z", "<init>", "(Lkotlin/random/Random;)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:kotlin/random/KotlinRandom.class */
final class KotlinRandom extends Random {

    /* renamed from: f */
    private boolean f20770f;
    @NotNull

    /* renamed from: g */
    private final Random f20771g;

    @Override // java.util.Random
    protected int next(int i) {
        return this.f20771g.mo1755b(i);
    }

    @Override // java.util.Random
    public boolean nextBoolean() {
        return this.f20771g.mo1766c();
    }

    @Override // java.util.Random
    public void nextBytes(@NotNull byte[] bytes) {
        Intrinsics.m1830e(bytes, "bytes");
        this.f20771g.mo1765d(bytes);
    }

    @Override // java.util.Random
    public double nextDouble() {
        return this.f20771g.mo1763f();
    }

    @Override // java.util.Random
    public float nextFloat() {
        return this.f20771g.mo1762g();
    }

    @Override // java.util.Random
    public int nextInt() {
        return this.f20771g.mo1754h();
    }

    @Override // java.util.Random
    public int nextInt(int i) {
        return this.f20771g.mo1761i(i);
    }

    @Override // java.util.Random
    public long nextLong() {
        return this.f20771g.mo1760k();
    }

    @Override // java.util.Random
    public void setSeed(long j) {
        if (!this.f20770f) {
            this.f20770f = true;
            return;
        }
        throw new UnsupportedOperationException("Setting seed is not supported.");
    }
}
