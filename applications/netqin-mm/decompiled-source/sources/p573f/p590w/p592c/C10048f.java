package p573f.p590w.p592c;

import java.util.NoSuchElementException;
import p573f.p577r.AbstractC9949a0;
/* renamed from: f.w.c.f */
/* loaded from: classes2-dex2jar.jar:f/w/c/f.class */
public final class C10048f extends AbstractC9949a0 {

    /* renamed from: a */
    public int f37182a;

    /* renamed from: b */
    public final int[] f37183b;

    public C10048f(int[] iArr) {
        C10059q.m1637b(iArr, "array");
        this.f37183b = iArr;
    }

    @Override // p573f.p577r.AbstractC9949a0
    /* renamed from: a */
    public int mo1576a() {
        try {
            int[] iArr = this.f37183b;
            int i = this.f37182a;
            this.f37182a = i + 1;
            return iArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.f37182a--;
            throw new NoSuchElementException(e.getMessage());
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f37182a < this.f37183b.length;
    }
}
