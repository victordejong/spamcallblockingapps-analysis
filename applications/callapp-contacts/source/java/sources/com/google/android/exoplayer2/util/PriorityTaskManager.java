package com.google.android.exoplayer2.util;

import com.callapp.contacts.activity.base.BaseViewTypeData;
import java.io.IOException;
import java.util.Collections;
import java.util.PriorityQueue;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/PriorityTaskManager.class */
public final class PriorityTaskManager {

    /* renamed from: a */
    public final Object f38636a = new Object();

    /* renamed from: b */
    public final PriorityQueue<Integer> f38637b = new PriorityQueue<>(10, Collections.reverseOrder());

    /* renamed from: c */
    public int f38638c = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException.class */
    public static class PriorityTooLowException extends IOException {
        public PriorityTooLowException(int i, int i2) {
            super("Priority too low [priority=" + i + ", highest=" + i2 + "]");
        }
    }

    /* renamed from: a */
    public final void m20027a() {
        synchronized (this.f38636a) {
            this.f38637b.remove(0);
            this.f38638c = this.f38637b.isEmpty() ? Integer.MIN_VALUE : ((Integer) C11599af.m19974a(this.f38637b.peek())).intValue();
            this.f38636a.notifyAll();
        }
    }

    /* renamed from: a */
    public final void m20026a(int i) throws PriorityTooLowException {
        synchronized (this.f38636a) {
            if (this.f38638c != i) {
                throw new PriorityTooLowException(i, this.f38638c);
            }
        }
    }
}
