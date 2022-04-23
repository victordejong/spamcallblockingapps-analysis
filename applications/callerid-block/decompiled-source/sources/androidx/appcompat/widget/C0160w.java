package androidx.appcompat.widget;
/* renamed from: androidx.appcompat.widget.w */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/w.class */
class C0160w {

    /* renamed from: a */
    private int f707a = 0;

    /* renamed from: b */
    private int f708b = 0;

    /* renamed from: c */
    private int f709c = Integer.MIN_VALUE;

    /* renamed from: d */
    private int f710d = Integer.MIN_VALUE;

    /* renamed from: e */
    private int f711e = 0;

    /* renamed from: f */
    private int f712f = 0;

    /* renamed from: g */
    private boolean f713g = false;

    /* renamed from: h */
    private boolean f714h = false;

    /* renamed from: a */
    public int m14413a() {
        return this.f713g ? this.f707a : this.f708b;
    }

    /* renamed from: b */
    public int m14412b() {
        return this.f707a;
    }

    /* renamed from: c */
    public int m14411c() {
        return this.f708b;
    }

    /* renamed from: d */
    public int m14410d() {
        return this.f713g ? this.f708b : this.f707a;
    }

    /* renamed from: e */
    public void m14409e(int i, int i2) {
        this.f714h = false;
        if (i != Integer.MIN_VALUE) {
            this.f711e = i;
            this.f707a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f712f = i2;
            this.f708b = i2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0039, code lost:
        if (r5 != Integer.MIN_VALUE) goto L_0x0072;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x005f, code lost:
        if (r5 != Integer.MIN_VALUE) goto L_0x0072;
     */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void m14408f(boolean r4) {
        /*
            r3 = this;
            r0 = r4
            r1 = r3
            boolean r1 = r1.f713g
            if (r0 != r1) goto L_0x0009
            return
        L_0x0009:
            r0 = r3
            r1 = r4
            r0.f713g = r1
            r0 = r3
            boolean r0 = r0.f714h
            if (r0 == 0) goto L_0x0065
            r0 = r4
            if (r0 == 0) goto L_0x003f
            r0 = r3
            int r0 = r0.f710d
            r5 = r0
            r0 = r5
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 == r1) goto L_0x0027
            goto L_0x002c
        L_0x0027:
            r0 = r3
            int r0 = r0.f711e
            r5 = r0
        L_0x002c:
            r0 = r3
            r1 = r5
            r0.f707a = r1
            r0 = r3
            int r0 = r0.f709c
            r5 = r0
            r0 = r5
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 == r1) goto L_0x006d
            goto L_0x0072
        L_0x003f:
            r0 = r3
            int r0 = r0.f709c
            r5 = r0
            r0 = r5
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 == r1) goto L_0x004d
            goto L_0x0052
        L_0x004d:
            r0 = r3
            int r0 = r0.f711e
            r5 = r0
        L_0x0052:
            r0 = r3
            r1 = r5
            r0.f707a = r1
            r0 = r3
            int r0 = r0.f710d
            r5 = r0
            r0 = r5
            r1 = -2147483648(0xffffffff80000000, float:-0.0)
            if (r0 == r1) goto L_0x006d
            goto L_0x0072
        L_0x0065:
            r0 = r3
            r1 = r3
            int r1 = r1.f711e
            r0.f707a = r1
        L_0x006d:
            r0 = r3
            int r0 = r0.f712f
            r5 = r0
        L_0x0072:
            r0 = r3
            r1 = r5
            r0.f708b = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.appcompat.widget.C0160w.m14408f(boolean):void");
    }

    /* renamed from: g */
    public void m14407g(int i, int i2) {
        this.f709c = i;
        this.f710d = i2;
        this.f714h = true;
        if (this.f713g) {
            if (i2 != Integer.MIN_VALUE) {
                this.f707a = i2;
            }
            if (i != Integer.MIN_VALUE) {
                this.f708b = i;
                return;
            }
            return;
        }
        if (i != Integer.MIN_VALUE) {
            this.f707a = i;
        }
        if (i2 != Integer.MIN_VALUE) {
            this.f708b = i2;
        }
    }
}
