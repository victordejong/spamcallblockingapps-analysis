package p081h.p203i.p325c.p337n.p338d.p355q;
/* renamed from: h.i.c.n.d.q.b */
/* loaded from: classes2-dex2jar.jar:h/i/c/n/d/q/b.class */
public class C9827b implements AbstractC9829d {

    /* renamed from: a */
    public final int f22297a;

    public C9827b(int i) {
        this.f22297a = i;
    }

    @Override // p081h.p203i.p325c.p337n.p338d.p355q.AbstractC9829d
    /* renamed from: a */
    public StackTraceElement[] mo14121a(StackTraceElement[] stackTraceElementArr) {
        int length = stackTraceElementArr.length;
        int i = this.f22297a;
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
