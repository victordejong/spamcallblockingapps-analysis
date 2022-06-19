package com.google.firebase.crashlytics.p293d.p302l;
/* renamed from: com.google.firebase.crashlytics.d.l.b */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/l/b.class */
public class C9069b implements AbstractC9071d {

    /* renamed from: a */
    private final int f39238a;

    public C9069b(int i) {
        this.f39238a = i;
    }

    @Override // com.google.firebase.crashlytics.p293d.p302l.AbstractC9071d
    /* renamed from: a */
    public StackTraceElement[] mo1979a(StackTraceElement[] stackTraceElementArr) {
        int length = stackTraceElementArr.length;
        int i = this.f39238a;
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
