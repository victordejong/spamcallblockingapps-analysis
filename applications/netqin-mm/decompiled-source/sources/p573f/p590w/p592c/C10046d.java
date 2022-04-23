package p573f.p590w.p592c;

import java.util.NoSuchElementException;
import p573f.p577r.AbstractC9988w;
/* renamed from: f.w.c.d */
/* loaded from: classes2-dex2jar.jar:f/w/c/d.class */
public final class C10046d extends AbstractC9988w {

    /* renamed from: a */
    public int f37178a;

    /* renamed from: b */
    public final double[] f37179b;

    public C10046d(double[] dArr) {
        C10059q.m1637b(dArr, "array");
        this.f37179b = dArr;
    }

    @Override // p573f.p577r.AbstractC9988w
    /* renamed from: a */
    public double mo1662a() {
        try {
            double[] dArr = this.f37179b;
            int i = this.f37178a;
            this.f37178a = i + 1;
            return dArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.f37178a--;
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f37178a < this.f37179b.length;
    }
}
