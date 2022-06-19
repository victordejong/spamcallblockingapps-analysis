package p000;

import java.util.NoSuchElementException;
/* renamed from: vk1 */
/* loaded from: classes3-dex2jar.jar:vk1.class */
public final class vk1 extends fk1 {

    /* renamed from: a */
    public final int f8411a;

    /* renamed from: b */
    public boolean f8412b;

    /* renamed from: c */
    public int f8413c;

    /* renamed from: d */
    public final int f8414d;

    public vk1(int i, int i2, int i3) {
        this.f8414d = i3;
        this.f8411a = i2;
        boolean z = true;
        if (i3 <= 0 ? i < i2 : i > i2) {
            z = false;
        }
        this.f8412b = z;
        this.f8413c = !z ? i2 : i;
    }

    @Override // p000.fk1
    /* renamed from: b */
    public int mo297b() {
        int i = this.f8413c;
        if (i != this.f8411a) {
            this.f8413c = this.f8414d + i;
        } else if (!this.f8412b) {
            throw new NoSuchElementException();
        } else {
            this.f8412b = false;
        }
        return i;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f8412b;
    }
}
