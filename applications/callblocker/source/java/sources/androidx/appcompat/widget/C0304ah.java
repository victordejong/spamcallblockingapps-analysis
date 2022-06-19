package androidx.appcompat.widget;

import androidx.recyclerview.widget.RecyclerView;
/* renamed from: androidx.appcompat.widget.ah */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ah.class */
class C0304ah {

    /* renamed from: a */
    private int f1271a = 0;

    /* renamed from: b */
    private int f1272b = 0;

    /* renamed from: c */
    private int f1273c = RecyclerView.UNDEFINED_DURATION;

    /* renamed from: d */
    private int f1274d = RecyclerView.UNDEFINED_DURATION;

    /* renamed from: e */
    private int f1275e = 0;

    /* renamed from: f */
    private int f1276f = 0;

    /* renamed from: g */
    private boolean f1277g = false;

    /* renamed from: h */
    private boolean f1278h = false;

    /* renamed from: a */
    public int m21485a() {
        return this.f1271a;
    }

    /* renamed from: a */
    public void m21484a(int i, int i2) {
        this.f1273c = i;
        this.f1274d = i2;
        this.f1278h = true;
        if (this.f1277g) {
            if (i2 != Integer.MIN_VALUE) {
                this.f1271a = i2;
            }
            if (i == Integer.MIN_VALUE) {
                return;
            }
            this.f1272b = i;
            return;
        }
        if (i != Integer.MIN_VALUE) {
            this.f1271a = i;
        }
        if (i2 == Integer.MIN_VALUE) {
            return;
        }
        this.f1272b = i2;
    }

    /* renamed from: a */
    public void m21483a(boolean z) {
        if (z == this.f1277g) {
            return;
        }
        this.f1277g = z;
        if (!this.f1278h) {
            this.f1271a = this.f1275e;
            this.f1272b = this.f1276f;
        } else if (z) {
            this.f1271a = this.f1274d != Integer.MIN_VALUE ? this.f1274d : this.f1275e;
            this.f1272b = this.f1273c != Integer.MIN_VALUE ? this.f1273c : this.f1276f;
        } else {
            this.f1271a = this.f1273c != Integer.MIN_VALUE ? this.f1273c : this.f1275e;
            this.f1272b = this.f1274d != Integer.MIN_VALUE ? this.f1274d : this.f1276f;
        }
    }

    /* renamed from: b */
    public int m21482b() {
        return this.f1272b;
    }

    /* renamed from: b */
    public void m21481b(int i, int i2) {
        this.f1278h = false;
        if (i != Integer.MIN_VALUE) {
            this.f1275e = i;
            this.f1271a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f1276f = i2;
            this.f1272b = i2;
        }
    }

    /* renamed from: c */
    public int m21480c() {
        return this.f1277g ? this.f1272b : this.f1271a;
    }

    /* renamed from: d */
    public int m21479d() {
        return this.f1277g ? this.f1271a : this.f1272b;
    }
}
