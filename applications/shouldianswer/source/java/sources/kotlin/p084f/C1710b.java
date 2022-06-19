package kotlin.p084f;

import java.util.NoSuchElementException;
import kotlin.p073a.AbstractC1613t;
/* renamed from: kotlin.f.b */
/* loaded from: classes-dex2jar.jar:kotlin/f/b.class */
public final class C1710b extends AbstractC1613t {

    /* renamed from: a */
    private final int f4399a;

    /* renamed from: b */
    private boolean f4400b;

    /* renamed from: c */
    private int f4401c;

    /* renamed from: d */
    private final int f4402d;

    public C1710b(int i, int i2, int i3) {
        this.f4402d = i3;
        this.f4399a = i2;
        boolean z = true;
        if (this.f4402d <= 0 ? i < i2 : i > i2) {
            z = false;
        }
        this.f4400b = z;
        this.f4401c = !this.f4400b ? this.f4399a : i;
    }

    @Override // kotlin.p073a.AbstractC1613t
    /* renamed from: b */
    public int mo3087b() {
        int i = this.f4401c;
        if (i != this.f4399a) {
            this.f4401c = this.f4402d + i;
        } else if (!this.f4400b) {
            throw new NoSuchElementException();
        } else {
            this.f4400b = false;
        }
        return i;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f4400b;
    }
}
