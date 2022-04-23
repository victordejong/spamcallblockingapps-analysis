package com.google.android.exoplayer2.util;

import com.callapp.contacts.activity.base.BaseViewTypeData;
import java.io.IOException;
import java.util.Collections;
import java.util.PriorityQueue;
/* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/PriorityTaskManager.class */
public final class PriorityTaskManager {

    /* renamed from: a  reason: collision with root package name */
    public final Object f22263a = new Object();

    /* renamed from: b  reason: collision with root package name */
    public final PriorityQueue<Integer> f22264b = new PriorityQueue<>(10, Collections.reverseOrder());

    /* renamed from: c  reason: collision with root package name */
    public int f22265c = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;

    /* loaded from: classes3-dex2jar.jar:com/google/android/exoplayer2/util/PriorityTaskManager$PriorityTooLowException.class */
    public static class PriorityTooLowException extends IOException {
        public PriorityTooLowException(int i, int i2) {
            super("Priority too low [priority=" + i + ", highest=" + i2 + "]");
        }
    }

    public final void a() {
        synchronized (this.f22263a) {
            this.f22264b.remove(0);
            this.f22265c = this.f22264b.isEmpty() ? BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW : ((Integer) af.a(this.f22264b.peek())).intValue();
            this.f22263a.notifyAll();
        }
    }

    public final void a(int i) throws PriorityTooLowException {
        synchronized (this.f22263a) {
            if (this.f22265c != i) {
                throw new PriorityTooLowException(i, this.f22265c);
            }
        }
    }
}
