package kotlin.random;

import java.util.Random;
import p573f.p590w.p592c.C10059q;
import p573f.p594y.AbstractC10073d;
/* loaded from: classes2-dex2jar.jar:kotlin/random/KotlinRandom.class */
public final class KotlinRandom extends Random {
    public final AbstractC10073d impl;
    public boolean seedInitialized;

    public KotlinRandom(AbstractC10073d dVar) {
        C10059q.m1637b(dVar, "impl");
        this.impl = dVar;
    }

    public final AbstractC10073d getImpl() {
        return this.impl;
    }

    @Override // java.util.Random
    public int next(int i) {
        return this.impl.mo1591a(i);
    }

    @Override // java.util.Random
    public boolean nextBoolean() {
        return this.impl.mo1592a();
    }

    @Override // java.util.Random
    public void nextBytes(byte[] bArr) {
        C10059q.m1637b(bArr, "bytes");
        this.impl.mo1589a(bArr);
    }

    @Override // java.util.Random
    public double nextDouble() {
        return this.impl.mo1587b();
    }

    @Override // java.util.Random
    public float nextFloat() {
        return this.impl.mo1585c();
    }

    @Override // java.util.Random
    public int nextInt() {
        return this.impl.mo1584d();
    }

    @Override // java.util.Random
    public int nextInt(int i) {
        return this.impl.mo1586b(i);
    }

    @Override // java.util.Random
    public long nextLong() {
        return this.impl.mo1583e();
    }

    @Override // java.util.Random
    public void setSeed(long j) {
        if (!this.seedInitialized) {
            this.seedInitialized = true;
            return;
        }
        throw new UnsupportedOperationException("Setting seed is not supported.");
    }
}
