package androidx.appcompat.widget;
/* renamed from: androidx.appcompat.widget.x */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/x.class */
class C0336x {

    /* renamed from: a */
    private int f1403a = 0;

    /* renamed from: b */
    private int f1404b = 0;

    /* renamed from: c */
    private int f1405c = Integer.MIN_VALUE;

    /* renamed from: d */
    private int f1406d = Integer.MIN_VALUE;

    /* renamed from: e */
    private int f1407e = 0;

    /* renamed from: f */
    private int f1408f = 0;

    /* renamed from: g */
    private boolean f1409g = false;

    /* renamed from: h */
    private boolean f1410h = false;

    /* renamed from: a */
    public int m34712a() {
        return this.f1409g ? this.f1403a : this.f1404b;
    }

    /* renamed from: b */
    public int m34711b() {
        return this.f1403a;
    }

    /* renamed from: c */
    public int m34710c() {
        return this.f1404b;
    }

    /* renamed from: d */
    public int m34709d() {
        return this.f1409g ? this.f1404b : this.f1403a;
    }

    /* renamed from: e */
    public void m34708e(int i, int i2) {
        this.f1410h = false;
        if (i != Integer.MIN_VALUE) {
            this.f1407e = i;
            this.f1403a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f1408f = i2;
            this.f1404b = i2;
        }
    }

    /* renamed from: f */
    public void m34707f(boolean z) {
        if (z == this.f1409g) {
            return;
        }
        this.f1409g = z;
        if (!this.f1410h) {
            this.f1403a = this.f1407e;
            this.f1404b = this.f1408f;
        } else if (z) {
            int i = this.f1406d;
            if (i == Integer.MIN_VALUE) {
                i = this.f1407e;
            }
            this.f1403a = i;
            int i2 = this.f1405c;
            if (i2 == Integer.MIN_VALUE) {
                i2 = this.f1408f;
            }
            this.f1404b = i2;
        } else {
            int i3 = this.f1405c;
            if (i3 == Integer.MIN_VALUE) {
                i3 = this.f1407e;
            }
            this.f1403a = i3;
            int i4 = this.f1406d;
            if (i4 == Integer.MIN_VALUE) {
                i4 = this.f1408f;
            }
            this.f1404b = i4;
        }
    }

    /* renamed from: g */
    public void m34706g(int i, int i2) {
        this.f1405c = i;
        this.f1406d = i2;
        this.f1410h = true;
        if (this.f1409g) {
            if (i2 != Integer.MIN_VALUE) {
                this.f1403a = i2;
            }
            if (i == Integer.MIN_VALUE) {
                return;
            }
            this.f1404b = i;
            return;
        }
        if (i != Integer.MIN_VALUE) {
            this.f1403a = i;
        }
        if (i2 == Integer.MIN_VALUE) {
            return;
        }
        this.f1404b = i2;
    }
}
