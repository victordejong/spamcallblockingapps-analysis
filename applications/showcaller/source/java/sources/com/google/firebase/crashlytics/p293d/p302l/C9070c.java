package com.google.firebase.crashlytics.p293d.p302l;

import java.util.HashMap;
/* renamed from: com.google.firebase.crashlytics.d.l.c */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/d/l/c.class */
public class C9070c implements AbstractC9071d {

    /* renamed from: a */
    private final int f39239a;

    public C9070c(int i) {
        this.f39239a = i;
    }

    /* renamed from: b */
    private static boolean m1981b(StackTraceElement[] stackTraceElementArr, int i, int i2) {
        int i3 = i2 - i;
        if (i2 + i3 > stackTraceElementArr.length) {
            return false;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            if (!stackTraceElementArr[i + i4].equals(stackTraceElementArr[i2 + i4])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: c */
    private static StackTraceElement[] m1980c(StackTraceElement[] stackTraceElementArr, int i) {
        int i2;
        int i3;
        HashMap hashMap = new HashMap();
        StackTraceElement[] stackTraceElementArr2 = new StackTraceElement[stackTraceElementArr.length];
        int i4 = 0;
        int i5 = 0;
        int i6 = 1;
        while (true) {
            int i7 = i6;
            if (i4 >= stackTraceElementArr.length) {
                StackTraceElement[] stackTraceElementArr3 = new StackTraceElement[i5];
                System.arraycopy(stackTraceElementArr2, 0, stackTraceElementArr3, 0, i5);
                return stackTraceElementArr3;
            }
            StackTraceElement stackTraceElement = stackTraceElementArr[i4];
            Integer num = (Integer) hashMap.get(stackTraceElement);
            if (num == null || !m1981b(stackTraceElementArr, num.intValue(), i4)) {
                stackTraceElementArr2[i5] = stackTraceElementArr[i4];
                i5++;
                i3 = i4;
                i2 = 1;
            } else {
                int intValue = i4 - num.intValue();
                int i8 = i5;
                i2 = i7;
                if (i7 < i) {
                    System.arraycopy(stackTraceElementArr, i4, stackTraceElementArr2, i5, intValue);
                    i8 = i5 + intValue;
                    i2 = i7 + 1;
                }
                i3 = (intValue - 1) + i4;
                i5 = i8;
            }
            hashMap.put(stackTraceElement, Integer.valueOf(i4));
            i4 = i3 + 1;
            i6 = i2;
        }
    }

    @Override // com.google.firebase.crashlytics.p293d.p302l.AbstractC9071d
    /* renamed from: a */
    public StackTraceElement[] mo1979a(StackTraceElement[] stackTraceElementArr) {
        StackTraceElement[] m1980c = m1980c(stackTraceElementArr, this.f39239a);
        return m1980c.length < stackTraceElementArr.length ? m1980c : stackTraceElementArr;
    }
}
