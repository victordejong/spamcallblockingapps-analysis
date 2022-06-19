package com.google.android.gms.internal.ads;

import java.util.PriorityQueue;
import javax.annotation.ParametersAreNonnullByDefault;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dux.class */
public final class dux {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v11, types: [long] */
    /* JADX WARN: Type inference failed for: r0v16, types: [long] */
    /* renamed from: a */
    private static long m8523a(long j, int i) {
        char c;
        if (i == 0) {
            c = 1;
        } else {
            c = j;
            if (i != 1) {
                c = i % 2 == 0 ? m8523a((j * j) % 1073807359, i / 2) % 1073807359 : ((m8523a((j * j) % 1073807359, i / 2) % 1073807359) * j) % 1073807359;
            }
        }
        return c;
    }

    /* renamed from: a */
    private static String m8522a(String[] strArr, int i, int i2) {
        String sb;
        if (strArr.length < i + i2) {
            C3556uu.m6749c("Unable to construct shingle");
            sb = "";
        } else {
            StringBuilder sb2 = new StringBuilder();
            for (int i3 = i; i3 < (i + i2) - 1; i3++) {
                sb2.append(strArr[i3]);
                sb2.append(' ');
            }
            sb2.append(strArr[(i + i2) - 1]);
            sb = sb2.toString();
        }
        return sb;
    }

    /* renamed from: a */
    private static void m8524a(int i, long j, String str, int i2, PriorityQueue<duw> priorityQueue) {
        duw duwVar = new duw(j, str, i2);
        if ((priorityQueue.size() != i || (priorityQueue.peek().f15833c <= duwVar.f15833c && priorityQueue.peek().f15831a <= duwVar.f15831a)) && !priorityQueue.contains(duwVar)) {
            priorityQueue.add(duwVar);
            if (priorityQueue.size() <= i) {
                return;
            }
            priorityQueue.poll();
        }
    }

    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v3, types: [long] */
    /* renamed from: a */
    public static void m8521a(String[] strArr, int i, int i2, PriorityQueue<duw> priorityQueue) {
        if (strArr.length < i2) {
            m8524a(i, m8520b(strArr, 0, strArr.length), m8522a(strArr, 0, strArr.length), strArr.length, priorityQueue);
            return;
        }
        char m8520b = m8520b(strArr, 0, i2);
        m8524a(i, m8520b, m8522a(strArr, 0, i2), i2, priorityQueue);
        long m8523a = m8523a(16785407L, i2 - 1);
        for (int i3 = 1; i3 < (strArr.length - i2) + 1; i3++) {
            m8520b = ((((((m8520b + 65535) - ((((dus.m8530a(strArr[i3 - 1]) + 2147483647L) % 1073807359) * m8523a) % 1073807359)) % 1073807359) * 16785407) % 1073807359) + ((dus.m8530a(strArr[(i3 + i2) - 1]) + 2147483647L) % 1073807359)) % 1073807359;
            m8524a(i, m8520b, m8522a(strArr, i3, i2), strArr.length, priorityQueue);
        }
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* renamed from: b */
    private static long m8520b(String[] strArr, int i, int i2) {
        char m8530a = (dus.m8530a(strArr[0]) + 2147483647L) % 1073807359;
        for (int i3 = 1; i3 < i2; i3++) {
            m8530a = (((m8530a * 8191) % 1073807359) + ((dus.m8530a(strArr[i3]) + 2147483647L) % 1073807359)) % 1073807359;
        }
        return m8530a;
    }
}
