package io.agora.rtc.internal;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import p193e.p1432d.p1443e.p1444x.AbstractC22212i;
/* loaded from: classes16-dex2jar.jar:io/agora/rtc/internal/Marshallable.class */
public class Marshallable {
    public static final int PROTO_PACKET_SIZE = 8192;
    private ByteBuffer mBuffer;

    public Marshallable() {
        ByteBuffer allocate = ByteBuffer.allocate(8192);
        this.mBuffer = allocate;
        allocate.order(ByteOrder.LITTLE_ENDIAN);
        this.mBuffer.position(2);
    }

    public void clear() {
        this.mBuffer.position(10);
    }

    public ByteBuffer getBuffer() {
        return this.mBuffer;
    }

    public void marshall(ByteBuffer byteBuffer) {
        this.mBuffer = byteBuffer;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public byte[] marshall() {
        int position = (short) this.mBuffer.position();
        this.mBuffer.putShort(0, position);
        byte[] bArr = new byte[position];
        this.mBuffer.position(0);
        this.mBuffer.get(bArr);
        return bArr;
    }

    public byte[] popAll() {
        byte[] bArr = new byte[this.mBuffer.remaining()];
        this.mBuffer.get(bArr);
        return bArr;
    }

    public Boolean popBool() {
        boolean z = true;
        if (this.mBuffer.get() != 1) {
            z = false;
        }
        return Boolean.valueOf(z);
    }

    public byte popByte() {
        return this.mBuffer.get();
    }

    public byte[] popBytes() {
        int i = this.mBuffer.getShort();
        byte[] bArr = new byte[0];
        if (i > 0) {
            bArr = new byte[i];
            this.mBuffer.get(bArr);
        }
        return bArr;
    }

    public byte[] popBytes32() {
        byte[] bArr;
        int i = this.mBuffer.getInt();
        if (i > 0) {
            bArr = new byte[i];
            this.mBuffer.get(bArr);
        } else {
            bArr = null;
        }
        return bArr;
    }

    public int popInt() {
        return this.mBuffer.getInt();
    }

    public long popInt64() {
        return this.mBuffer.getLong();
    }

    public int[] popIntArray() {
        int popInt = popInt();
        int[] iArr = new int[popInt];
        for (int i = 0; i < popInt; i++) {
            iArr[i] = popInt();
        }
        return iArr;
    }

    public short popShort() {
        return this.mBuffer.getShort();
    }

    public short[] popShortArray() {
        int popInt = popInt();
        short[] sArr = new short[popInt];
        for (int i = 0; i < popInt; i++) {
            sArr[i] = popShort();
        }
        return sArr;
    }

    public String popString16() {
        int i = this.mBuffer.getShort();
        if (i > 0) {
            byte[] bArr = new byte[i];
            this.mBuffer.get(bArr);
            try {
                return new String(bArr, "ISO-8859-1");
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
                return "";
            }
        }
        return "";
    }

    public String popString16UTF8() {
        int i = this.mBuffer.getShort();
        if (i > 0) {
            byte[] bArr = new byte[i];
            this.mBuffer.get(bArr);
            try {
                return new String(bArr, AbstractC22212i.PROTOCOL_CHARSET);
            } catch (UnsupportedEncodingException e) {
                e.printStackTrace();
                return "";
            }
        }
        return "";
    }

    public void pushBool(Boolean bool) {
        this.mBuffer.put(bool.booleanValue() ? (byte) 1 : (byte) 0);
    }

    public void pushByte(byte b) {
        this.mBuffer.put(b);
    }

    public void pushBytes(byte[] bArr) {
        this.mBuffer.putShort((short) bArr.length);
        this.mBuffer.put(bArr);
    }

    public void pushBytes32(byte[] bArr) {
        this.mBuffer.putInt(bArr.length);
        this.mBuffer.put(bArr);
    }

    public void pushDouble(double d) {
        this.mBuffer.putDouble(d);
    }

    public void pushInt(int i) {
        this.mBuffer.putInt(i);
    }

    public void pushInt64(long j) {
        this.mBuffer.putLong(j);
    }

    public void pushIntArray(int[] iArr) {
        if (iArr == null) {
            pushInt(0);
            return;
        }
        pushInt(iArr.length);
        for (int i : iArr) {
            pushInt(i);
        }
    }

    public void pushIntArray(Integer[] numArr) {
        if (numArr == null) {
            pushInt(0);
            return;
        }
        pushInt(numArr.length);
        for (Integer num : numArr) {
            pushInt(num.intValue());
        }
    }

    public void pushShort(short s) {
        this.mBuffer.putShort(s);
    }

    public void pushShortArray(short[] sArr) {
        if (sArr == null) {
            pushInt(0);
            return;
        }
        pushInt(sArr.length);
        for (short s : sArr) {
            pushShort(s);
        }
    }

    public void pushString16(String str) {
        if (str == null) {
            this.mBuffer.putShort((short) 0);
            return;
        }
        this.mBuffer.putShort((short) str.getBytes().length);
        if (str.getBytes().length <= 0) {
            return;
        }
        this.mBuffer.put(str.getBytes());
    }

    public void pushStringArray(ArrayList<String> arrayList) {
        if (arrayList == null) {
            pushInt(0);
            return;
        }
        int size = arrayList.size();
        pushShort((short) size);
        for (int i = 0; i < size; i++) {
            pushBytes(arrayList.get(i).getBytes());
        }
    }

    public void unmarshall(ByteBuffer byteBuffer) {
        this.mBuffer = byteBuffer;
    }

    public void unmarshall(byte[] bArr) {
        ByteBuffer wrap = ByteBuffer.wrap(bArr);
        this.mBuffer = wrap;
        wrap.order(ByteOrder.LITTLE_ENDIAN);
        popShort();
    }
}
