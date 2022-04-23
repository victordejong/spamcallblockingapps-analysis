package p573f.p595z;

import java.util.NoSuchElementException;
import p573f.p577r.AbstractC9949a0;
/* renamed from: f.z.b */
/* loaded from: classes2-dex2jar.jar:f/z/b.class */
public final class C10079b extends AbstractC9949a0 {

    /* renamed from: a */
    public final int f37204a;

    /* renamed from: b */
    public boolean f37205b;

    /* renamed from: c */
    public int f37206c;

    /* renamed from: d */
    public final int f37207d;

    public C10079b(int i, int i2, int i3) {
        this.f37207d = i3;
        this.f37204a = i2;
        boolean z = true;
        if (i3 <= 0 ? i < i2 : i > i2) {
            z = false;
        }
        this.f37205b = z;
        this.f37206c = !z ? this.f37204a : i;
    }

    @Override // p573f.p577r.AbstractC9949a0
    /* renamed from: a */
    public int mo1576a() {
        int i = this.f37206c;
        if (i != this.f37204a) {
            this.f37206c = this.f37207d + i;
        } else if (this.f37205b) {
            this.f37205b = false;
        } else {
            throw new NoSuchElementException();
        }
        return i;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f37205b;
    }
}
