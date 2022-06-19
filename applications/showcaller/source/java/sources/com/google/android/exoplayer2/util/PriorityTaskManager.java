package com.google.android.exoplayer2.util;

import java.io.IOException;
import java.util.Collections;
import java.util.PriorityQueue;
/* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/PriorityTaskManager.class */
public final class PriorityTaskManager {

    /* renamed from: a */
    private final Object f17847a = new Object();

    /* renamed from: b */
    private final PriorityQueue<Integer> f17848b = new PriorityQueue<>(10, Collections.reverseOrder());

    /* renamed from: c */
    private int f17849c = Integer.MIN_VALUE;

    /* loaded from: classes-dex2jar.jar:com/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException.class */
    public static class PriorityTooLowException extends IOException {
        public PriorityTooLowException(int i, int i2) {
            super("Priority too low [priority=" + i + ", highest=" + i2 + "]");
        }
    }

    /* renamed from: a */
    public void m18929a(int i) {
        synchronized (this.f17847a) {
            this.f17848b.add(Integer.valueOf(i));
            this.f17849c = Math.max(this.f17849c, i);
        }
    }

    /* renamed from: b */
    public void m18928b(int i) {
        synchronized (this.f17847a) {
            this.f17848b.remove(Integer.valueOf(i));
            this.f17849c = this.f17848b.isEmpty() ? Integer.MIN_VALUE : ((Integer) C5515h0.m18833g(this.f17848b.peek())).intValue();
            this.f17847a.notifyAll();
        }
    }
}
