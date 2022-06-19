package p179n5;
/* renamed from: n5.a */
/* loaded from: classes-dex2jar.jar:n5/a.class */
public class C3716a implements AbstractC3718c {

    /* renamed from: a */
    public final AbstractC3718c[] f12104a;

    /* renamed from: b */
    public final C3717b f12105b;

    public C3716a(int i, AbstractC3718c... abstractC3718cArr) {
        this.f12104a = abstractC3718cArr;
        this.f12105b = new C3717b(i);
    }

    @Override // p179n5.AbstractC3718c
    /* renamed from: b */
    public StackTraceElement[] mo1847b(StackTraceElement[] stackTraceElementArr) {
        AbstractC3718c[] abstractC3718cArr;
        if (stackTraceElementArr.length <= 1024) {
            return stackTraceElementArr;
        }
        StackTraceElement[] stackTraceElementArr2 = stackTraceElementArr;
        for (AbstractC3718c abstractC3718c : this.f12104a) {
            if (stackTraceElementArr2.length <= 1024) {
                break;
            }
            stackTraceElementArr2 = abstractC3718c.mo1847b(stackTraceElementArr);
        }
        StackTraceElement[] stackTraceElementArr3 = stackTraceElementArr2;
        if (stackTraceElementArr2.length > 1024) {
            stackTraceElementArr3 = this.f12105b.mo1847b(stackTraceElementArr2);
        }
        return stackTraceElementArr3;
    }
}
