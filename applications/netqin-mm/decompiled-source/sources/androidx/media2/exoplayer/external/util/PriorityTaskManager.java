package androidx.media2.exoplayer.external.util;

import java.io.IOException;
import java.util.Collections;
import java.util.PriorityQueue;
import p012b.p076s.p078b.p079a.p080a1.C1167d0;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/PriorityTaskManager.class */
public final class PriorityTaskManager {

    /* renamed from: a */
    public final Object f2017a = new Object();

    /* renamed from: b */
    public final PriorityQueue<Integer> f2018b = new PriorityQueue<>(10, Collections.reverseOrder());

    /* renamed from: c */
    public int f2019c = Integer.MIN_VALUE;

    /* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/PriorityTaskManager$PriorityTooLowException.class */
    public static class PriorityTooLowException extends IOException {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public PriorityTooLowException(int r5, int r6) {
            /*
                r4 = this;
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = r0
                r2 = 60
                r1.<init>(r2)
                r7 = r0
                r0 = r7
                java.lang.String r1 = "Priority too low [priority="
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r7
                r1 = r5
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r7
                java.lang.String r1 = ", highest="
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r7
                r1 = r6
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r7
                java.lang.String r1 = "]"
                java.lang.StringBuilder r0 = r0.append(r1)
                r0 = r4
                r1 = r7
                java.lang.String r1 = r1.toString()
                r0.<init>(r1)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.util.PriorityTaskManager.PriorityTooLowException.<init>(int, int):void");
        }
    }

    /* renamed from: a */
    public void m37889a(int i) {
        synchronized (this.f2017a) {
            this.f2018b.add(Integer.valueOf(i));
            this.f2019c = Math.max(this.f2019c, i);
        }
    }

    /* renamed from: b */
    public void m37888b(int i) {
        int i2;
        synchronized (this.f2017a) {
            this.f2018b.remove(Integer.valueOf(i));
            if (this.f2018b.isEmpty()) {
                i2 = Integer.MIN_VALUE;
            } else {
                Integer peek = this.f2018b.peek();
                C1167d0.m34479a(peek);
                i2 = peek.intValue();
            }
            this.f2019c = i2;
            this.f2017a.notifyAll();
        }
    }
}
