package com.google.firebase.crashlytics.internal.stacktrace;

import java.util.HashMap;
/* loaded from: classes4-dex2jar.jar:com/google/firebase/crashlytics/internal/stacktrace/RemoveRepeatsStrategy.class */
public class RemoveRepeatsStrategy implements StackTraceTrimmingStrategy {
    private final int maxRepetitions;

    public RemoveRepeatsStrategy() {
        this(1);
    }

    public RemoveRepeatsStrategy(int i) {
        this.maxRepetitions = i;
    }

    private static boolean isRepeatingSequence(StackTraceElement[] stackTraceElementArr, int i, int i2) {
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

    private static StackTraceElement[] trimRepeats(StackTraceElement[] stackTraceElementArr, int i) {
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
            if (num == null || !isRepeatingSequence(stackTraceElementArr, num.intValue(), i4)) {
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

    @Override // com.google.firebase.crashlytics.internal.stacktrace.StackTraceTrimmingStrategy
    public StackTraceElement[] getTrimmedStackTrace(StackTraceElement[] stackTraceElementArr) {
        StackTraceElement[] trimRepeats = trimRepeats(stackTraceElementArr, this.maxRepetitions);
        return trimRepeats.length < stackTraceElementArr.length ? trimRepeats : stackTraceElementArr;
    }
}
