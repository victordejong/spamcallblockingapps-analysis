package com.google.common.cache;

import com.google.common.cache.Striped64;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import p131c.p161d.p266c.p268b.AbstractC4952g;
/* loaded from: classes2-dex2jar.jar:com/google/common/cache/LongAdder.class */
public final class LongAdder extends Striped64 implements Serializable, AbstractC4952g {
    public static final long serialVersionUID = 7249069246863182397L;

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        objectInputStream.defaultReadObject();
        this.busy = 0;
        this.cells = null;
        this.base = objectInputStream.readLong();
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeLong(sum());
    }

    @Override // p131c.p161d.p266c.p268b.AbstractC4952g
    public void add(long j) {
        Striped64.C7392b[] bVarArr = this.cells;
        if (bVarArr == null) {
            long j2 = this.base;
            if (casBase(j2, j2 + j)) {
                return;
            }
        }
        int[] iArr = Striped64.threadHashCode.get();
        boolean z = true;
        if (iArr != null) {
            z = true;
            if (bVarArr != null) {
                int length = bVarArr.length;
                z = true;
                if (length >= 1) {
                    Striped64.C7392b bVar = bVarArr[(length - 1) & iArr[0]];
                    z = true;
                    if (bVar != null) {
                        long j3 = bVar.f30407a;
                        z = bVar.m8455a(j3, j3 + j);
                        if (z) {
                            return;
                        }
                    }
                }
            }
        }
        retryUpdate(j, iArr, z);
    }

    public void decrement() {
        add(-1L);
    }

    @Override // java.lang.Number
    public double doubleValue() {
        return sum();
    }

    @Override // java.lang.Number
    public float floatValue() {
        return (float) sum();
    }

    @Override // com.google.common.cache.Striped64
    /* renamed from: fn */
    public final long mo8456fn(long j, long j2) {
        return j + j2;
    }

    @Override // p131c.p161d.p266c.p268b.AbstractC4952g
    public void increment() {
        add(1L);
    }

    @Override // java.lang.Number
    public int intValue() {
        return (int) sum();
    }

    @Override // java.lang.Number
    public long longValue() {
        return sum();
    }

    public void reset() {
        internalReset(0L);
    }

    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v5, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    @Override // p131c.p161d.p266c.p268b.AbstractC4952g
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long sum() {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.base
            r6 = r0
            r0 = r5
            com.google.common.cache.Striped64$b[] r0 = r0.cells
            r8 = r0
            r0 = r6
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L_0x0042
            r0 = r8
            int r0 = r0.length
            r11 = r0
            r0 = 0
            r12 = r0
        L_0x0018:
            r0 = r6
            r9 = r0
            r0 = r12
            r1 = r11
            if (r0 >= r1) goto L_0x0042
            r0 = r8
            r1 = r12
            r0 = r0[r1]
            r13 = r0
            r0 = r6
            r9 = r0
            r0 = r13
            if (r0 == 0) goto L_0x0039
            r0 = r6
            r1 = r13
            long r1 = r1.f30407a
            long r0 = r0 + r1
            r9 = r0
        L_0x0039:
            int r12 = r12 + 1
            r0 = r9
            r6 = r0
            goto L_0x0018
        L_0x0042:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.LongAdder.sum():long");
    }

    /* JADX WARN: Type inference failed for: r6v0, types: [long] */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r9v3 */
    /* JADX WARN: Type inference failed for: r9v5, types: [long] */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long sumThenReset() {
        /*
            r5 = this;
            r0 = r5
            long r0 = r0.base
            r6 = r0
            r0 = r5
            com.google.common.cache.Striped64$b[] r0 = r0.cells
            r8 = r0
            r0 = r5
            r1 = 0
            r0.base = r1
            r0 = r6
            r9 = r0
            r0 = r8
            if (r0 == 0) goto L_0x004d
            r0 = r8
            int r0 = r0.length
            r11 = r0
            r0 = 0
            r12 = r0
        L_0x001d:
            r0 = r6
            r9 = r0
            r0 = r12
            r1 = r11
            if (r0 >= r1) goto L_0x004d
            r0 = r8
            r1 = r12
            r0 = r0[r1]
            r13 = r0
            r0 = r6
            r9 = r0
            r0 = r13
            if (r0 == 0) goto L_0x0044
            r0 = r6
            r1 = r13
            long r1 = r1.f30407a
            long r0 = r0 + r1
            r9 = r0
            r0 = r13
            r1 = 0
            r0.f30407a = r1
        L_0x0044:
            int r12 = r12 + 1
            r0 = r9
            r6 = r0
            goto L_0x001d
        L_0x004d:
            r0 = r9
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.common.cache.LongAdder.sumThenReset():long");
    }

    public String toString() {
        return Long.toString(sum());
    }
}
