package com.google.firebase.crashlytics.p293d.p302l;
/* renamed from: com.google.firebase.crashlytics.d.l.a */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/l/a.class */
public class C9068a implements AbstractC9071d {

    /* renamed from: a */
    private final int f39235a;

    /* renamed from: b */
    private final AbstractC9071d[] f39236b;

    /* renamed from: c */
    private final C9069b f39237c;

    public C9068a(int i, AbstractC9071d... abstractC9071dArr) {
        this.f39235a = i;
        this.f39236b = abstractC9071dArr;
        this.f39237c = new C9069b(i);
    }

    @Override // com.google.firebase.crashlytics.p293d.p302l.AbstractC9071d
    /* renamed from: a */
    public StackTraceElement[] mo1979a(StackTraceElement[] stackTraceElementArr) {
        AbstractC9071d[] abstractC9071dArr;
        if (stackTraceElementArr.length <= this.f39235a) {
            return stackTraceElementArr;
        }
        StackTraceElement[] stackTraceElementArr2 = stackTraceElementArr;
        for (AbstractC9071d abstractC9071d : this.f39236b) {
            if (stackTraceElementArr2.length <= this.f39235a) {
                break;
            }
            stackTraceElementArr2 = abstractC9071d.mo1979a(stackTraceElementArr);
        }
        StackTraceElement[] stackTraceElementArr3 = stackTraceElementArr2;
        if (stackTraceElementArr2.length > this.f39235a) {
            stackTraceElementArr3 = this.f39237c.mo1979a(stackTraceElementArr2);
        }
        return stackTraceElementArr3;
    }
}
