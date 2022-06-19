package p179n5;
/* renamed from: n5.b */
/* loaded from: classes-dex2jar.jar:n5/b.class */
public class C3717b implements AbstractC3718c {

    /* renamed from: a */
    public final int f12106a;

    public C3717b(int i) {
        this.f12106a = i;
    }

    @Override // p179n5.AbstractC3718c
    /* renamed from: b */
    public StackTraceElement[] mo1847b(StackTraceElement[] stackTraceElementArr) {
        int length = stackTraceElementArr.length;
        int i = this.f12106a;
        if (length <= i) {
            return stackTraceElementArr;
        }
        int i2 = i / 2;
        int i3 = i - i2;
        StackTraceElement[] stackTraceElementArr2 = new StackTraceElement[i];
        System.arraycopy(stackTraceElementArr, 0, stackTraceElementArr2, 0, i3);
        System.arraycopy(stackTraceElementArr, stackTraceElementArr.length - i2, stackTraceElementArr2, i3, i2);
        return stackTraceElementArr2;
    }
}
