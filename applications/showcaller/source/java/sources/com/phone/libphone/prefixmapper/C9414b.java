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
final class C9414b extends AbstractC9415c {

    /* renamed from: c */
    private int f40268c;

    /* renamed from: d */
    private int f40269d;

    /* renamed from: e */
    private ByteBuffer f40270e;

    /* renamed from: f */
    private ByteBuffer f40271f;

    /* renamed from: g */
    private String[] f40272g;

    /* renamed from: h */
    private void m624h(SortedSet<String> sortedSet, SortedMap<Integer, String> sortedMap) {
        int m623i = m623i(sortedSet.size() - 1);
        this.f40269d = m623i;
        this.f40271f = ByteBuffer.allocate(this.f40273a * m623i);
        String[] strArr = new String[sortedSet.size()];
        this.f40272g = strArr;
        sortedSet.toArray(strArr);
        int i = 0;
        for (int i2 = 0; i2 < this.f40273a; i2++) {
            m619m(this.f40271f, this.f40269d, i, Arrays.binarySearch(this.f40272g, sortedMap.get(Integer.valueOf(m620l(this.f40270e, this.f40268c, i2)))));
            i++;
        }
    }

    /* renamed from: i */
    private static int m623i(int i) {
        return i <= 32767 ? 2 : 4;
    }

    /* renamed from: j */
    private void m622j(ObjectInput objectInput) {
        this.f40273a = objectInput.readInt();
        ByteBuffer byteBuffer = this.f40270e;
        if (byteBuffer == null || byteBuffer.capacity() < this.f40273a) {
            this.f40270e = ByteBuffer.allocate(this.f40273a * this.f40268c);
        }
        ByteBuffer byteBuffer2 = this.f40271f;
        if (byteBuffer2 == null || byteBuffer2.capacity() < this.f40273a) {
            this.f40271f = ByteBuffer.allocate(this.f40273a * this.f40269d);
        }
        for (int i = 0; i < this.f40273a; i++) {
            m621k(objectInput, this.f40268c, this.f40270e, i);
            m621k(objectInput, this.f40269d, this.f40271f, i);
        }
    }

    /* renamed from: k */
    private static void m621k(ObjectInput objectInput, int i, ByteBuffer byteBuffer, int i2) {
        int i3 = i2 * i;
        if (i == 2) {
            byteBuffer.putShort(i3, objectInput.readShort());
        } else {
            byteBuffer.putInt(i3, objectInput.readInt());
        }
    }

    /* renamed from: l */
    private static int m620l(ByteBuffer byteBuffer, int i, int i2) {
        int i3 = i2 * i;
        return i == 2 ? byteBuffer.getShort(i3) : byteBuffer.getInt(i3);
    }

    /* renamed from: m */
    private static void m619m(ByteBuffer byteBuffer, int i, int i2, int i3) {
        int i4 = i2 * i;
        if (i == 2) {
            byteBuffer.putShort(i4, (short) i3);
        } else {
            byteBuffer.putInt(i4, i3);
        }
    }

    /* renamed from: n */
    private static void m618n(ObjectOutput objectOutput, int i, ByteBuffer byteBuffer, int i2) {
        int i3 = i2 * i;
        if (i == 2) {
            objectOutput.writeShort(byteBuffer.getShort(i3));
        } else {
            objectOutput.writeInt(byteBuffer.getInt(i3));
        }
    }

    @Override // com.phone.libphone.prefixmapper.AbstractC9415c
    /* renamed from: a */
    public String mo617a(int i) {
        return this.f40272g[m620l(this.f40271f, this.f40269d, i)];
    }

    @Override // com.phone.libphone.prefixmapper.AbstractC9415c
    /* renamed from: d */
    public int mo614d(int i) {
        return m620l(this.f40270e, this.f40268c, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x005d, code lost:
        if (r0.length < r0) goto L10;
     */
    @Override // com.phone.libphone.prefixmapper.AbstractC9415c
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void mo613e(java.io.ObjectInput r5) {
        /*
            r4 = this;
            r0 = r4
            r1 = r5
            int r1 = r1.readInt()
            r0.f40268c = r1
            r0 = r4
            r1 = r5
            int r1 = r1.readInt()
            r0.f40269d = r1
            r0 = r5
            int r0 = r0.readInt()
            r6 = r0
            r0 = r4
            java.util.TreeSet<java.lang.Integer> r0 = r0.f40274b
            r0.clear()
            r0 = 0
            r7 = r0
            r0 = 0
            r8 = r0
        L27:
            r0 = r8
            r1 = r6
            if (r0 >= r1) goto L44
            r0 = r4
            java.util.TreeSet<java.lang.Integer> r0 = r0.f40274b
            r1 = r5
            int r1 = r1.readInt()
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            boolean r0 = r0.add(r1)
            int r8 = r8 + 1
            goto L27
        L44:
            r0 = r5
            int r0 = r0.readInt()
            r6 = r0
            r0 = r4
            java.lang.String[] r0 = r0.f40272g
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L60
            r0 = r7
            r8 = r0
            r0 = r9
            int r0 = r0.length
            r1 = r6
            if (r0 >= r1) goto L6b
        L60:
            r0 = r4
            r1 = r6
            java.lang.String[] r1 = new java.lang.String[r1]
            r0.f40272g = r1
            r0 = r7
            r8 = r0
        L6b:
            r0 = r8
            r1 = r6
            if (r0 >= r1) goto L88
            r0 = r5
            java.lang.String r0 = r0.readUTF()
            r9 = r0
            r0 = r4
            java.lang.String[] r0 = r0.f40272g
            r1 = r8
            r2 = r9
            r0[r1] = r2
            int r8 = r8 + 1
            goto L6b
        L88:
            r0 = r4
            r1 = r5
            r0.m622j(r1)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.phone.libphone.prefixmapper.C9414b.mo613e(java.io.ObjectInput):void");
    }

    @Override // com.phone.libphone.prefixmapper.AbstractC9415c
    /* renamed from: f */
    public void mo612f(SortedMap<Integer, String> sortedMap) {
        TreeSet treeSet = new TreeSet();
        this.f40273a = sortedMap.size();
        int m623i = m623i(sortedMap.lastKey().intValue());
        this.f40268c = m623i;
        this.f40270e = ByteBuffer.allocate(this.f40273a * m623i);
        int i = 0;
        for (Map.Entry<Integer, String> entry : sortedMap.entrySet()) {
            int intValue = entry.getKey().intValue();
            m619m(this.f40270e, this.f40268c, i, intValue);
            this.f40274b.add(Integer.valueOf(((int) Math.log10(intValue)) + 1));
            treeSet.add(entry.getValue());
            i++;
        }
        m624h(treeSet, sortedMap);
    }

    @Override // com.phone.libphone.prefixmapper.AbstractC9415c
    /* renamed from: g */
    public void mo611g(ObjectOutput objectOutput) {
        objectOutput.writeInt(this.f40268c);
        objectOutput.writeInt(this.f40269d);
        objectOutput.writeInt(this.f40274b.size());
        Iterator<Integer> it = this.f40274b.iterator();
        while (it.hasNext()) {
            objectOutput.writeInt(it.next().intValue());
        }
        objectOutput.writeInt(this.f40272g.length);
        for (String str : this.f40272g) {
            objectOutput.writeUTF(str);
        }
        objectOutput.writeInt(this.f40273a);
        for (int i = 0; i < this.f40273a; i++) {
            m618n(objectOutput, this.f40268c, this.f40270e, i);
            m618n(objectOutput, this.f40269d, this.f40271f, i);
        }
    }
}
