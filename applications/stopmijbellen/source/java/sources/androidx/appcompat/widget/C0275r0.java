package androidx.appcompat.widget;
/* renamed from: androidx.appcompat.widget.r0 */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/widget/r0.class */
public class C0275r0 {

    /* renamed from: a */
    public int f1079a = 0;

    /* renamed from: b */
    public int f1080b = 0;

    /* renamed from: c */
    public int f1081c = Integer.MIN_VALUE;

    /* renamed from: d */
    public int f1082d = Integer.MIN_VALUE;

    /* renamed from: e */
    public int f1083e = 0;

    /* renamed from: f */
    public int f1084f = 0;

    /* renamed from: g */
    public boolean f1085g = false;

    /* renamed from: h */
    public boolean f1086h = false;

    /* renamed from: a */
    public void m8435a(int i, int i2) {
        this.f1081c = i;
        this.f1082d = i2;
        this.f1086h = true;
        if (this.f1085g) {
            if (i2 != Integer.MIN_VALUE) {
                this.f1079a = i2;
            }
            if (i == Integer.MIN_VALUE) {
                return;
            }
            this.f1080b = i;
            return;
        }
        if (i != Integer.MIN_VALUE) {
            this.f1079a = i;
        }
        if (i2 == Integer.MIN_VALUE) {
            return;
        }
        this.f1080b = i2;
    }
}
