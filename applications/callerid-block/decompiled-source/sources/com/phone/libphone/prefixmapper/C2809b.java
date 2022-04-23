package com.phone.libphone.prefixmapper;

import java.io.ObjectInput;
import java.io.ObjectOutput;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Map;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeSet;
/* renamed from: com.phone.libphone.prefixmapper.b */
/* loaded from: classes2-dex2jar.jar:com/phone/libphone/prefixmapper/b.class */
final class C2809b extends AbstractC2810c {

    /* renamed from: c */
    private int f11661c;

    /* renamed from: d */
    private int f11662d;

    /* renamed from: e */
    private ByteBuffer f11663e;

    /* renamed from: f */
    private ByteBuffer f11664f;

    /* renamed from: g */
    private String[] f11665g;

    /* renamed from: h */
    private void m1610h(SortedSet<String> sortedSet, SortedMap<Integer, String> sortedMap) {
        int i = m1609i(sortedSet.size() - 1);
        this.f11662d = i;
        this.f11664f = ByteBuffer.allocate(this.f11666a * i);
        String[] strArr = new String[sortedSet.size()];
        this.f11665g = strArr;
        sortedSet.toArray(strArr);
        int i2 = 0;
        for (int i3 = 0; i3 < this.f11666a; i3++) {
            m1605m(this.f11664f, this.f11662d, i2, Arrays.binarySearch(this.f11665g, sortedMap.get(Integer.valueOf(m1606l(this.f11663e, this.f11661c, i3)))));
            i2++;
        }
    }

    /* renamed from: i */
    private static int m1609i(int i) {
        return i <= 32767 ? 2 : 4;
    }

    /* renamed from: j */
    private void m1608j(ObjectInput objectInput) {
        this.f11666a = objectInput.readInt();
        ByteBuffer byteBuffer = this.f11663e;
        if (byteBuffer == null || byteBuffer.capacity() < this.f11666a) {
            this.f11663e = ByteBuffer.allocate(this.f11666a * this.f11661c);
        }
        ByteBuffer byteBuffer2 = this.f11664f;
        if (byteBuffer2 == null || byteBuffer2.capacity() < this.f11666a) {
            this.f11664f = ByteBuffer.allocate(this.f11666a * this.f11662d);
        }
        for (int i = 0; i < this.f11666a; i++) {
            m1607k(objectInput, this.f11661c, this.f11663e, i);
            m1607k(objectInput, this.f11662d, this.f11664f, i);
        }
    }

    /* renamed from: k */
    private static void m1607k(ObjectInput objectInput, int i, ByteBuffer byteBuffer, int i2) {
        int i3 = i2 * i;
        if (i == 2) {
            byteBuffer.putShort(i3, objectInput.readShort());
        } else {
            byteBuffer.putInt(i3, objectInput.readInt());
        }
    }

    /* renamed from: l */
    private static int m1606l(ByteBuffer byteBuffer, int i, int i2) {
        int i3 = i2 * i;
        return i == 2 ? byteBuffer.getShort(i3) : byteBuffer.getInt(i3);
    }

    /* renamed from: m */
    private static void m1605m(ByteBuffer byteBuffer, int i, int i2, int i3) {
        int i4 = i2 * i;
        if (i == 2) {
            byteBuffer.putShort(i4, (short) i3);
        } else {
            byteBuffer.putInt(i4, i3);
        }
    }

    /* renamed from: n */
    private static void m1604n(ObjectOutput objectOutput, int i, ByteBuffer byteBuffer, int i2) {
        int i3 = i2 * i;
        if (i == 2) {
            objectOutput.writeShort(byteBuffer.getShort(i3));
        } else {
            objectOutput.writeInt(byteBuffer.getInt(i3));
        }
    }

    @Override // com.phone.libphone.prefixmapper.AbstractC2810c
    /* renamed from: a */
    public String mo1603a(int i) {
        return this.f11665g[m1606l(this.f11664f, this.f11662d, i)];
    }

    @Override // com.phone.libphone.prefixmapper.AbstractC2810c
    /* renamed from: d */
    public int mo1600d(int i) {
        return m1606l(this.f11663e, this.f11661c, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x005d, code lost:
        if (r0.length < r0) goto L_0x0060;
     */
    @Override // com.phone.libphone.prefixmapper.AbstractC2810c
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo1599e(java.io.ObjectInput r5) {
        /*
            r4 = this;
            r0 = r4
            r1 = r5
            int r1 = r1.readInt()
            r0.f11661c = r1
            r0 = r4
            r1 = r5
            int r1 = r1.readInt()
            r0.f11662d = r1
            r0 = r5
            int r0 = r0.readInt()
            r6 = r0
            r0 = r4
            java.util.TreeSet<java.lang.Integer> r0 = r0.f11667b
            r0.clear()
            r0 = 0
            r7 = r0
            r0 = 0
            r8 = r0
        L_0x0027:
            r0 = r8
            r1 = r6
            if (r0 >= r1) goto L_0x0044
            r0 = r4
            java.util.TreeSet<java.lang.Integer> r0 = r0.f11667b
            r1 = r5
            int r1 = r1.readInt()
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            boolean r0 = r0.add(r1)
            int r8 = r8 + 1
            goto L_0x0027
        L_0x0044:
            r0 = r5
            int r0 = r0.readInt()
            r6 = r0
            r0 = r4
            java.lang.String[] r0 = r0.f11665g
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L_0x0060
            r0 = r7
            r8 = r0
            r0 = r9
            int r0 = r0.length
            r1 = r6
            if (r0 >= r1) goto L_0x006b
        L_0x0060:
            r0 = r4
            r1 = r6
            java.lang.String[] r1 = new java.lang.String[r1]
            r0.f11665g = r1
            r0 = r7
            r8 = r0
        L_0x006b:
            r0 = r8
            r1 = r6
            if (r0 >= r1) goto L_0x0088
            r0 = r5
            java.lang.String r0 = r0.readUTF()
            r9 = r0
            r0 = r4
            java.lang.String[] r0 = r0.f11665g
            r1 = r8
            r2 = r9
            r0[r1] = r2
            int r8 = r8 + 1
            goto L_0x006b
        L_0x0088:
            r0 = r4
            r1 = r5
            r0.m1608j(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.phone.libphone.prefixmapper.C2809b.mo1599e(java.io.ObjectInput):void");
    }

    @Override // com.phone.libphone.prefixmapper.AbstractC2810c
    /* renamed from: f */
    public void mo1598f(SortedMap<Integer, String> sortedMap) {
        TreeSet treeSet = new TreeSet();
        this.f11666a = sortedMap.size();
        int i = m1609i(sortedMap.lastKey().intValue());
        this.f11661c = i;
        this.f11663e = ByteBuffer.allocate(this.f11666a * i);
        int i2 = 0;
        for (Map.Entry<Integer, String> entry : sortedMap.entrySet()) {
            int intValue = entry.getKey().intValue();
            m1605m(this.f11663e, this.f11661c, i2, intValue);
            this.f11667b.add(Integer.valueOf(((int) Math.log10(intValue)) + 1));
            treeSet.add(entry.getValue());
            i2++;
        }
        m1610h(treeSet, sortedMap);
    }

    @Override // com.phone.libphone.prefixmapper.AbstractC2810c
    /* renamed from: g */
    public void mo1597g(ObjectOutput objectOutput) {
        objectOutput.writeInt(this.f11661c);
        objectOutput.writeInt(this.f11662d);
        objectOutput.writeInt(this.f11667b.size());
        Iterator<Integer> it = this.f11667b.iterator();
        while (it.hasNext()) {
            objectOutput.writeInt(it.next().intValue());
        }
        objectOutput.writeInt(this.f11665g.length);
        for (String str : this.f11665g) {
            objectOutput.writeUTF(str);
        }
        objectOutput.writeInt(this.f11666a);
        for (int i = 0; i < this.f11666a; i++) {
            m1604n(objectOutput, this.f11661c, this.f11663e, i);
            m1604n(objectOutput, this.f11662d, this.f11664f, i);
        }
    }
}
