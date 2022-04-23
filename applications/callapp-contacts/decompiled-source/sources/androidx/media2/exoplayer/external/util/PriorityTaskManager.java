package androidx.media2.exoplayer.external.util;

import com.callapp.contacts.activity.base.BaseViewTypeData;
import java.io.IOException;
import java.util.Collections;
import java.util.PriorityQueue;
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/PriorityTaskManager.class */
public final class PriorityTaskManager {

    /* renamed from: a  reason: collision with root package name */
    public final Object f4116a = new Object();

    /* renamed from: b  reason: collision with root package name */
    public final PriorityQueue<Integer> f4117b = new PriorityQueue<>(10, Collections.reverseOrder());

    /* renamed from: c  reason: collision with root package name */
    public int f4118c = BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW;

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

    public final void a() {
        synchronized (this.f4116a) {
            this.f4117b.remove(0);
            this.f4118c = this.f4117b.isEmpty() ? BaseViewTypeData.VIEW_TYPE_EMPTY_VIEW : ((Integer) ac.a(this.f4117b.peek())).intValue();
            this.f4116a.notifyAll();
        }
    }
}
