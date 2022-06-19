package p1727n3.p1744b0.p1745a;
/* renamed from: n3.b0.a.e */
/* loaded from: classes-dex2jar.jar:n3/b0/a/e.class */
public class C25582e implements AbstractC25617q {

    /* renamed from: a */
    public final AbstractC25617q f71601a;

    /* renamed from: b */
    public int f71602b = 0;

    /* renamed from: c */
    public int f71603c = -1;

    /* renamed from: d */
    public int f71604d = -1;

    /* renamed from: e */
    public Object f71605e = null;

    public C25582e(AbstractC25617q abstractC25617q) {
        this.f71601a = abstractC25617q;
    }

    /* renamed from: a */
    public void m3203a() {
        int i = this.f71602b;
        if (i == 0) {
            return;
        }
        if (i == 1) {
            this.f71601a.onInserted(this.f71603c, this.f71604d);
        } else if (i == 2) {
            this.f71601a.onRemoved(this.f71603c, this.f71604d);
        } else if (i == 3) {
            this.f71601a.onChanged(this.f71603c, this.f71604d, this.f71605e);
        }
        this.f71605e = null;
        this.f71602b = 0;
    }

    @Override // p1727n3.p1744b0.p1745a.AbstractC25617q
    public void onChanged(int i, int i2, Object obj) {
        int i3;
        if (this.f71602b == 3) {
            int i4 = this.f71603c;
            int i5 = this.f71604d;
            if (i <= i4 + i5 && (i3 = i + i2) >= i4 && this.f71605e == obj) {
                this.f71603c = Math.min(i, i4);
                this.f71604d = Math.max(i5 + i4, i3) - this.f71603c;
                return;
            }
        }
        m3203a();
        this.f71603c = i;
        this.f71604d = i2;
        this.f71605e = obj;
        this.f71602b = 3;
    }

    @Override // p1727n3.p1744b0.p1745a.AbstractC25617q
    public void onInserted(int i, int i2) {
        int i3;
        if (this.f71602b == 1 && i >= (i3 = this.f71603c)) {
            int i4 = this.f71604d;
            if (i <= i3 + i4) {
                this.f71604d = i4 + i2;
                this.f71603c = Math.min(i, i3);
                return;
            }
        }
        m3203a();
        this.f71603c = i;
        this.f71604d = i2;
        this.f71602b = 1;
    }

    @Override // p1727n3.p1744b0.p1745a.AbstractC25617q
    public void onMoved(int i, int i2) {
        m3203a();
        this.f71601a.onMoved(i, i2);
    }

    @Override // p1727n3.p1744b0.p1745a.AbstractC25617q
    public void onRemoved(int i, int i2) {
        int i3;
        if (this.f71602b == 2 && (i3 = this.f71603c) >= i && i3 <= i + i2) {
            this.f71604d += i2;
            this.f71603c = i;
            return;
        }
        m3203a();
        this.f71603c = i;
        this.f71604d = i2;
        this.f71602b = 2;
    }
}
