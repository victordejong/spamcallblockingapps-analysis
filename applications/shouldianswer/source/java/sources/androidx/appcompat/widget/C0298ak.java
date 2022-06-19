package androidx.appcompat.widget;

import androidx.customview.p026a.AbstractC0610a;
/* renamed from: androidx.appcompat.widget.ak */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/ak.class */
class C0298ak {

    /* renamed from: a */
    private int f1214a = 0;

    /* renamed from: b */
    private int f1215b = 0;

    /* renamed from: c */
    private int f1216c = AbstractC0610a.INVALID_ID;

    /* renamed from: d */
    private int f1217d = AbstractC0610a.INVALID_ID;

    /* renamed from: e */
    private int f1218e = 0;

    /* renamed from: f */
    private int f1219f = 0;

    /* renamed from: g */
    private boolean f1220g = false;

    /* renamed from: h */
    private boolean f1221h = false;

    /* renamed from: a */
    public int m7208a() {
        return this.f1214a;
    }

    /* renamed from: a */
    public void m7207a(int i, int i2) {
        this.f1216c = i;
        this.f1217d = i2;
        this.f1221h = true;
        if (this.f1220g) {
            if (i2 != Integer.MIN_VALUE) {
                this.f1214a = i2;
            }
            if (i == Integer.MIN_VALUE) {
                return;
            }
            this.f1215b = i;
            return;
        }
        if (i != Integer.MIN_VALUE) {
            this.f1214a = i;
        }
        if (i2 == Integer.MIN_VALUE) {
            return;
        }
        this.f1215b = i2;
    }

    /* renamed from: a */
    public void m7206a(boolean z) {
        if (z == this.f1220g) {
            return;
        }
        this.f1220g = z;
        if (!this.f1221h) {
            this.f1214a = this.f1218e;
            this.f1215b = this.f1219f;
        } else if (z) {
            int i = this.f1217d;
            if (i == Integer.MIN_VALUE) {
                i = this.f1218e;
            }
            this.f1214a = i;
            int i2 = this.f1216c;
            if (i2 == Integer.MIN_VALUE) {
                i2 = this.f1219f;
            }
            this.f1215b = i2;
        } else {
            int i3 = this.f1216c;
            if (i3 == Integer.MIN_VALUE) {
                i3 = this.f1218e;
            }
            this.f1214a = i3;
            int i4 = this.f1217d;
            if (i4 == Integer.MIN_VALUE) {
                i4 = this.f1219f;
            }
            this.f1215b = i4;
        }
    }

    /* renamed from: b */
    public int m7205b() {
        return this.f1215b;
    }

    /* renamed from: b */
    public void m7204b(int i, int i2) {
        this.f1221h = false;
        if (i != Integer.MIN_VALUE) {
            this.f1218e = i;
            this.f1214a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f1219f = i2;
            this.f1215b = i2;
        }
    }

    /* renamed from: c */
    public int m7203c() {
        return this.f1220g ? this.f1215b : this.f1214a;
    }

    /* renamed from: d */
    public int m7202d() {
        return this.f1220g ? this.f1214a : this.f1215b;
    }
}
