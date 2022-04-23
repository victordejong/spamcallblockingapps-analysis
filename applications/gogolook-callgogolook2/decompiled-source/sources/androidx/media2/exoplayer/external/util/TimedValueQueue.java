package androidx.media2.exoplayer.external.util;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import java.util.Arrays;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/util/TimedValueQueue.class */
public final class TimedValueQueue<V> {
    public static final int INITIAL_BUFFER_SIZE = 10;
    public int first;
    public int size;
    public long[] timestamps;
    public V[] values;

    public TimedValueQueue() {
        this(10);
    }

    public TimedValueQueue(int i) {
        this.timestamps = new long[i];
        this.values = (V[]) newArray(i);
    }

    private void addUnchecked(long j, V v) {
        int i = this.first;
        int i2 = this.size;
        V[] vArr = this.values;
        int length = (i + i2) % vArr.length;
        this.timestamps[length] = j;
        vArr[length] = v;
        this.size = i2 + 1;
    }

    private void clearBufferOnTimeDiscontinuity(long j) {
        int i = this.size;
        if (i > 0) {
            int i2 = this.first;
            if (j <= this.timestamps[((i2 + i) - 1) % this.values.length]) {
                clear();
            }
        }
    }

    private void doubleCapacityIfFull() {
        int length = this.values.length;
        if (this.size >= length) {
            int i = length * 2;
            long[] jArr = new long[i];
            V[] vArr = (V[]) newArray(i);
            int i2 = this.first;
            int i3 = length - i2;
            System.arraycopy(this.timestamps, i2, jArr, 0, i3);
            System.arraycopy(this.values, this.first, vArr, 0, i3);
            int i4 = this.first;
            if (i4 > 0) {
                System.arraycopy(this.timestamps, 0, jArr, i3, i4);
                System.arraycopy(this.values, 0, vArr, i3, this.first);
            }
            this.timestamps = jArr;
            this.values = vArr;
            this.first = 0;
        }
    }

    public static <V> V[] newArray(int i) {
        return (V[]) new Object[i];
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r9v0 */
    /* JADX WARN: Type inference failed for: r9v2 */
    /* JADX WARN: Unknown variable types count: 1 */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private V poll(long r6, boolean r8) {
        /*
            r5 = this;
            r0 = 9223372036854775807(0x7fffffffffffffff, double:NaN)
            r9 = r0
            r0 = 0
            r11 = r0
        L_0x0008:
            r0 = r5
            int r0 = r0.size
            if (r0 <= 0) goto L_0x0069
            r0 = r6
            r1 = r5
            long[] r1 = r1.timestamps
            r2 = r5
            int r2 = r2.first
            r1 = r1[r2]
            long r0 = r0 - r1
            r12 = r0
            r0 = r12
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0033
            r0 = r8
            if (r0 != 0) goto L_0x0069
            r0 = r12
            long r0 = -r0
            r1 = r9
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 < 0) goto L_0x0033
            goto L_0x0069
        L_0x0033:
            r0 = r5
            V[] r0 = r0.values
            r14 = r0
            r0 = r5
            int r0 = r0.first
            r15 = r0
            r0 = r14
            r1 = r15
            r0 = r0[r1]
            r11 = r0
            r0 = r14
            r1 = r15
            r2 = 0
            r0[r1] = r2
            r0 = r5
            r1 = r15
            r2 = 1
            int r1 = r1 + r2
            r2 = r14
            int r2 = r2.length
            int r1 = r1 % r2
            r0.first = r1
            r0 = r5
            r1 = r5
            int r1 = r1.size
            r2 = 1
            int r1 = r1 - r2
            r0.size = r1
            r0 = r12
            r9 = r0
            goto L_0x0008
        L_0x0069:
            r0 = r11
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media2.exoplayer.external.util.TimedValueQueue.poll(long, boolean):java.lang.Object");
    }

    public void add(long j, V v) {
        synchronized (this) {
            clearBufferOnTimeDiscontinuity(j);
            doubleCapacityIfFull();
            addUnchecked(j, v);
        }
    }

    public void clear() {
        synchronized (this) {
            this.first = 0;
            this.size = 0;
            Arrays.fill(this.values, (Object) null);
        }
    }

    @Nullable
    public V poll(long j) {
        V poll;
        synchronized (this) {
            poll = poll(j, false);
        }
        return poll;
    }

    @Nullable
    public V pollFloor(long j) {
        V poll;
        synchronized (this) {
            poll = poll(j, true);
        }
        return poll;
    }

    public int size() {
        int i;
        synchronized (this) {
            i = this.size;
        }
        return i;
    }
}
