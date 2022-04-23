package p573f.p590w.p592c;

import java.util.NoSuchElementException;
import p573f.p577r.AbstractC9967g0;
/* renamed from: f.w.c.k */
/* loaded from: classes2-dex2jar.jar:f/w/c/k.class */
public final class C10053k extends AbstractC9967g0 {

    /* renamed from: a */
    public int f37188a;

    /* renamed from: b */
    public final short[] f37189b;

    public C10053k(short[] sArr) {
        C10059q.m1637b(sArr, "array");
        this.f37189b = sArr;
    }

    @Override // p573f.p577r.AbstractC9967g0
    /* renamed from: a */
    public short mo1650a() {
        try {
            short[] sArr = this.f37189b;
            int i = this.f37188a;
            this.f37188a = i + 1;
            return sArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.f37188a--;
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f37188a < this.f37189b.length;
    }
}
