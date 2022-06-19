package com.google.flatbuffers;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Comparator;
/* renamed from: com.google.flatbuffers.h */
/* loaded from: classes4-dex2jar.jar:com/google/flatbuffers/h.class */
public class C15943h {

    /* renamed from: bb */
    protected ByteBuffer f56588bb;
    protected int bb_pos;
    AbstractC15945i utf8 = AbstractC15945i.m8004a();
    private int vtable_size;
    private int vtable_start;

    protected static boolean __has_identifier(ByteBuffer byteBuffer, String str) {
        if (str.length() == 4) {
            for (int i = 0; i < 4; i++) {
                if (str.charAt(i) != ((char) byteBuffer.get(byteBuffer.position() + 4 + i))) {
                    return false;
                }
            }
            return true;
        }
        throw new AssertionError("FlatBuffers: file identifier must be length 4");
    }

    public static int __indirect(int i, ByteBuffer byteBuffer) {
        return i + byteBuffer.getInt(i);
    }

    protected static int __offset(int i, int i2, ByteBuffer byteBuffer) {
        int capacity = byteBuffer.capacity() - i2;
        return byteBuffer.getShort((i + capacity) - byteBuffer.getInt(capacity)) + capacity;
    }

    protected static String __string(int i, ByteBuffer byteBuffer, AbstractC15945i abstractC15945i) {
        int i2 = i + byteBuffer.getInt(i);
        return abstractC15945i.mo7995a(byteBuffer, i2 + 4, byteBuffer.getInt(i2));
    }

    protected static C15943h __union(C15943h c15943h, int i, ByteBuffer byteBuffer) {
        c15943h.__reset(__indirect(i, byteBuffer), byteBuffer);
        return c15943h;
    }

    protected static int compareStrings(int i, int i2, ByteBuffer byteBuffer) {
        int i3 = i + byteBuffer.getInt(i);
        int i4 = i2 + byteBuffer.getInt(i2);
        int i5 = byteBuffer.getInt(i3);
        int i6 = byteBuffer.getInt(i4);
        int min = Math.min(i5, i6);
        for (int i7 = 0; i7 < min; i7++) {
            int i8 = i7 + i3 + 4;
            byte b = byteBuffer.get(i8);
            int i9 = i7 + i4 + 4;
            if (b != byteBuffer.get(i9)) {
                return byteBuffer.get(i8) - byteBuffer.get(i9);
            }
        }
        return i5 - i6;
    }

    protected static int compareStrings(int i, byte[] bArr, ByteBuffer byteBuffer) {
        int i2 = i + byteBuffer.getInt(i);
        int i3 = byteBuffer.getInt(i2);
        int length = bArr.length;
        int min = Math.min(i3, length);
        for (int i4 = 0; i4 < min; i4++) {
            int i5 = i4 + i2 + 4;
            if (byteBuffer.get(i5) != bArr[i4]) {
                return byteBuffer.get(i5) - bArr[i4];
            }
        }
        return i3 - length;
    }

    public int __indirect(int i) {
        return i + this.f56588bb.getInt(i);
    }

    public int __offset(int i) {
        if (i < this.vtable_size) {
            return this.f56588bb.getShort(this.vtable_start + i);
        }
        return 0;
    }

    public void __reset() {
        __reset(0, null);
    }

    public void __reset(int i, ByteBuffer byteBuffer) {
        this.f56588bb = byteBuffer;
        if (byteBuffer == null) {
            this.bb_pos = 0;
            this.vtable_start = 0;
            this.vtable_size = 0;
            return;
        }
        this.bb_pos = i;
        int i2 = i - byteBuffer.getInt(i);
        this.vtable_start = i2;
        this.vtable_size = this.f56588bb.getShort(i2);
    }

    public String __string(int i) {
        return __string(i, this.f56588bb, this.utf8);
    }

    protected C15943h __union(C15943h c15943h, int i) {
        return __union(c15943h, i, this.f56588bb);
    }

    public int __vector(int i) {
        int i2 = i + this.bb_pos;
        return i2 + this.f56588bb.getInt(i2) + 4;
    }

    public ByteBuffer __vector_as_bytebuffer(int i, int i2) {
        int __offset = __offset(i);
        if (__offset == 0) {
            return null;
        }
        ByteBuffer order = this.f56588bb.duplicate().order(ByteOrder.LITTLE_ENDIAN);
        int __vector = __vector(__offset);
        order.position(__vector);
        order.limit(__vector + (__vector_len(__offset) * i2));
        return order;
    }

    public ByteBuffer __vector_in_bytebuffer(ByteBuffer byteBuffer, int i, int i2) {
        int __offset = __offset(i);
        if (__offset == 0) {
            return null;
        }
        int __vector = __vector(__offset);
        byteBuffer.rewind();
        byteBuffer.limit((__vector_len(__offset) * i2) + __vector);
        byteBuffer.position(__vector);
        return byteBuffer;
    }

    public int __vector_len(int i) {
        int i2 = i + this.bb_pos;
        return this.f56588bb.getInt(i2 + this.f56588bb.getInt(i2));
    }

    public ByteBuffer getByteBuffer() {
        return this.f56588bb;
    }

    protected int keysCompare(Integer num, Integer num2, ByteBuffer byteBuffer) {
        return 0;
    }

    protected void sortTables(int[] iArr, final ByteBuffer byteBuffer) {
        Integer[] numArr = new Integer[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            numArr[i] = Integer.valueOf(iArr[i]);
        }
        Arrays.sort(numArr, new Comparator<Integer>() { // from class: com.google.flatbuffers.h.1
            @Override // java.util.Comparator
            public final /* synthetic */ int compare(Integer num, Integer num2) {
                return C15943h.this.keysCompare(num, num2, byteBuffer);
            }
        });
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr[i2] = numArr[i2].intValue();
        }
    }
}
