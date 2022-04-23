package p626l.p628b0;

import java.util.NoSuchElementException;
import p626l.p632u.AbstractC14995b0;
/* renamed from: l.b0.f */
/* loaded from: classes3-dex2jar.jar:l/b0/f.class */
public final class C14892f extends AbstractC14995b0 {

    /* renamed from: a */
    public final long f32948a;

    /* renamed from: b */
    public boolean f32949b;

    /* renamed from: c */
    public long f32950c;

    /* renamed from: d */
    public final long f32951d;

    public C14892f(long j, long j2, long j3) {
        this.f32951d = j3;
        this.f32948a = j2;
        boolean z = true;
        int i = (j > j2 ? 1 : (j == j2 ? 0 : -1));
        if (this.f32951d <= 0 ? i < 0 : i > 0) {
            z = false;
        }
        this.f32949b = z;
        this.f32950c = !this.f32949b ? this.f32948a : j;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f32949b;
    }

    @Override // p626l.p632u.AbstractC14995b0
    public long nextLong() {
        long j = this.f32950c;
        if (j != this.f32948a) {
            this.f32950c = this.f32951d + j;
        } else if (this.f32949b) {
            this.f32949b = false;
        } else {
            throw new NoSuchElementException();
        }
        return j;
    }
}
