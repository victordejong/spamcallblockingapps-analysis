package com.google.android.gms.internal.ads;

import java.util.PriorityQueue;
/* renamed from: com.google.android.gms.internal.ads.al */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/al.class */
public final class C6296al {
    /* JADX WARN: Type inference failed for: r0v19, types: [long] */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* renamed from: a */
    public static void m16574a(String[] strArr, int i, int i2, PriorityQueue<C7222zk> priorityQueue) {
        int length = strArr.length;
        if (length < 6) {
            m16573b(i, m16570e(strArr, 0, length), m16572c(strArr, 0, length), length, priorityQueue);
            return;
        }
        char m16570e = m16570e(strArr, 0, 6);
        m16573b(i, m16570e, m16572c(strArr, 0, 6), 6, priorityQueue);
        long m16571d = m16571d(16785407L, 5);
        int i3 = 1;
        while (true) {
            int length2 = strArr.length;
            if (i3 >= length2 - 5) {
                return;
            }
            m16570e = ((((((m16570e + 65535) - ((((C7111wk.m9572a(strArr[i3 - 1]) + 2147483647L) % 1073807359) * m16571d) % 1073807359)) % 1073807359) * 16785407) % 1073807359) + ((C7111wk.m9572a(strArr[i3 + 5]) + 2147483647L) % 1073807359)) % 1073807359;
            m16573b(i, m16570e, m16572c(strArr, i3, 6), length2, priorityQueue);
            i3++;
        }
    }

    /* renamed from: b */
    static void m16573b(int i, long j, String str, int i2, PriorityQueue<C7222zk> priorityQueue) {
        C7222zk c7222zk = new C7222zk(j, str, i2);
        if ((priorityQueue.size() != i || (priorityQueue.peek().f32969c <= c7222zk.f32969c && priorityQueue.peek().f32967a <= c7222zk.f32967a)) && !priorityQueue.contains(c7222zk)) {
            priorityQueue.add(c7222zk);
            if (priorityQueue.size() <= i) {
                return;
            }
            priorityQueue.poll();
        }
    }

    /* renamed from: c */
    static String m16572c(String[] strArr, int i, int i2) {
        int i3 = i2 + i;
        if (strArr.length < i3) {
            ei0.m15467c("Unable to construct shingle");
            return "";
        }
        StringBuilder sb = new StringBuilder();
        while (true) {
            int i4 = i3 - 1;
            if (i >= i4) {
                sb.append(strArr[i4]);
                return sb.toString();
            }
            sb.append(strArr[i]);
            sb.append(' ');
            i++;
        }
    }

    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* renamed from: d */
    static long m16571d(long j, int i) {
        if (i == 1) {
            return j;
        }
        return ((i & 1) == 0 ? m16571d((j * j) % 1073807359, i >> 1) : j * (m16571d((j * j) % 1073807359, i >> 1) % 1073807359)) % 65535;
    }

    /* JADX WARN: Type inference failed for: r0v13, types: [long] */
    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    /* renamed from: e */
    private static long m16570e(String[] strArr, int i, int i2) {
        char m9572a = (C7111wk.m9572a(strArr[0]) + 2147483647L) % 1073807359;
        for (int i3 = 1; i3 < i2; i3++) {
            m9572a = (((m9572a * 8191) % 1073807359) + ((C7111wk.m9572a(strArr[i3]) + 2147483647L) % 1073807359)) % 1073807359;
        }
        return m9572a;
    }
}
