package p573f.p590w.p592c;

import java.util.NoSuchElementException;
import p573f.p577r.AbstractC9974k;
/* renamed from: f.w.c.b */
/* loaded from: classes2-dex2jar.jar:f/w/c/b.class */
public final class C10044b extends AbstractC9974k {

    /* renamed from: a */
    public int f37174a;

    /* renamed from: b */
    public final byte[] f37175b;

    public C10044b(byte[] bArr) {
        C10059q.m1637b(bArr, "array");
        this.f37175b = bArr;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f37174a < this.f37175b.length;
    }

    @Override // p573f.p577r.AbstractC9974k
    public byte nextByte() {
        try {
            byte[] bArr = this.f37175b;
            int i = this.f37174a;
            this.f37174a = i + 1;
            return bArr[i];
        } catch (ArrayIndexOutOfBoundsException e) {
            this.f37174a--;
            throw new NoSuchElementException(e.getMessage());
        }
    }
}
