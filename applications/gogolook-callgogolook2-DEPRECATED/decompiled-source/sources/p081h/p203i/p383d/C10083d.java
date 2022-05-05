package p081h.p203i.p383d;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
import java.util.Comparator;
/* renamed from: h.i.d.d */
/* loaded from: classes2-dex2jar.jar:h/i/d/d.class */
public class C10083d {

    /* renamed from: bb */
    public ByteBuffer f22804bb;
    public int bb_pos;
    public AbstractC10085e utf8 = AbstractC10085e.m13412a();
    public int vtable_size;
    public int vtable_start;

    /* renamed from: h.i.d.d$a */
    /* loaded from: classes2-dex2jar.jar:h/i/d/d$a.class */
    public class C10084a implements Comparator<Integer> {

        /* renamed from: a */
        public final /* synthetic */ ByteBuffer f22805a;

        public C10084a(ByteBuffer byteBuffer) {
            this.f22805a = byteBuffer;
        }

        /* renamed from: a */
        public int compare(Integer num, Integer num2) {
            return C10083d.this.keysCompare(num, num2, this.f22805a);
        }
    }

    public static boolean __has_identifier(ByteBuffer byteBuffer, String str) {
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

    public static int __offset(int i, int i2, ByteBuffer byteBuffer) {
        int capacity = byteBuffer.capacity() - i2;
        return byteBuffer.getShort((i + capacity) - byteBuffer.getInt(capacity)) + capacity;
    }

    public static String __string(int i, ByteBuffer byteBuffer, AbstractC10085e eVar) {
        int i2 = i + byteBuffer.getInt(i);
        return eVar.mo13396a(byteBuffer, i2 + 4, byteBuffer.getInt(i2));
    }

    public static C10083d __union(C10083d dVar, int i, ByteBuffer byteBuffer) {
        dVar.__reset(__indirect(i, byteBuffer), byteBuffer);
        return dVar;
    }

    public static int compareStrings(int i, int i2, ByteBuffer byteBuffer) {
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

    public static int compareStrings(int i, byte[] bArr, ByteBuffer byteBuffer) {
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
        return i + this.f22804bb.getInt(i);
    }

    public int __offset(int i) {
        return i < this.vtable_size ? this.f22804bb.getShort(this.vtable_start + i) : (short) 0;
    }

    public void __reset() {
        __reset(0, null);
    }

    public void __reset(int i, ByteBuffer byteBuffer) {
        this.f22804bb = byteBuffer;
        ByteBuffer byteBuffer2 = this.f22804bb;
        if (byteBuffer2 != null) {
            this.bb_pos = i;
            int i2 = this.bb_pos;
            this.vtable_start = i2 - byteBuffer2.getInt(i2);
            this.vtable_size = this.f22804bb.getShort(this.vtable_start);
            return;
        }
        this.bb_pos = 0;
        this.vtable_start = 0;
        this.vtable_size = 0;
    }

    public String __string(int i) {
        return __string(i, this.f22804bb, this.utf8);
    }

    public C10083d __union(C10083d dVar, int i) {
        return __union(dVar, i, this.f22804bb);
    }

    public int __vector(int i) {
        int i2 = i + this.bb_pos;
        return i2 + this.f22804bb.getInt(i2) + 4;
    }

    public ByteBuffer __vector_as_bytebuffer(int i, int i2) {
        int __offset = __offset(i);
        if (__offset == 0) {
            return null;
        }
        ByteBuffer order = this.f22804bb.duplicate().order(ByteOrder.LITTLE_ENDIAN);
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
        return this.f22804bb.getInt(i2 + this.f22804bb.getInt(i2));
    }

    public ByteBuffer getByteBuffer() {
        return this.f22804bb;
    }

    public int keysCompare(Integer num, Integer num2, ByteBuffer byteBuffer) {
        return 0;
    }

    public void sortTables(int[] iArr, ByteBuffer byteBuffer) {
        Integer[] numArr = new Integer[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            numArr[i] = Integer.valueOf(iArr[i]);
        }
        Arrays.sort(numArr, new C10084a(byteBuffer));
        for (int i2 = 0; i2 < iArr.length; i2++) {
            iArr[i2] = numArr[i2].intValue();
        }
    }
}
