package org.bson.types;

import androidx.core.view.ViewCompat;
import java.io.Serializable;
import java.nio.ByteBuffer;
import java.security.SecureRandom;
import java.util.Date;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import org.bson.assertions.Assertions;
/* loaded from: classes3-dex2jar.jar:org/bson/types/ObjectId.class */
public final class ObjectId implements Comparable<ObjectId>, Serializable {
    private static final int LOW_ORDER_THREE_BYTES = 16777215;
    private static final int OBJECT_ID_LENGTH = 12;
    private static final int RANDOM_VALUE1;
    private static final short RANDOM_VALUE2;
    private static final long serialVersionUID = 3670079982654483072L;
    private final int counter;
    private final int randomValue1;
    private final short randomValue2;
    private final int timestamp;
    private static final AtomicInteger NEXT_COUNTER = new AtomicInteger(new SecureRandom().nextInt());
    private static final char[] HEX_CHARS = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    static {
        SecureRandom secureRandom;
        try {
            RANDOM_VALUE1 = new SecureRandom().nextInt(16777216);
            RANDOM_VALUE2 = (short) secureRandom.nextInt(32768);
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public ObjectId() {
        this(new Date());
    }

    public ObjectId(int i, int i2) {
        this(i, i2, true);
    }

    ObjectId(int i, int i2, int i3) {
        this(legacyToBytes(i, i2, i3));
    }

    @Deprecated
    public ObjectId(int i, int i2, short s, int i3) {
        this(i, i2, s, i3, true);
    }

    private ObjectId(int i, int i2, short s, int i3, boolean z) {
        if ((i2 & ViewCompat.MEASURED_STATE_MASK) == 0) {
            if (z && (i3 & ViewCompat.MEASURED_STATE_MASK) != 0) {
                throw new IllegalArgumentException("The counter must be between 0 and 16777215 (it must fit in three bytes).");
            }
            this.timestamp = i;
            this.counter = 16777215 & i3;
            this.randomValue1 = i2;
            this.randomValue2 = s;
            return;
        }
        throw new IllegalArgumentException("The machine identifier must be between 0 and 16777215 (it must fit in three bytes).");
    }

    private ObjectId(int i, int i2, boolean z) {
        this(i, RANDOM_VALUE1, RANDOM_VALUE2, i2, z);
    }

    public ObjectId(String str) {
        this(parseHexString(str));
    }

    public ObjectId(ByteBuffer byteBuffer) {
        Assertions.notNull("buffer", byteBuffer);
        Assertions.isTrueArgument("buffer.remaining() >=12", byteBuffer.remaining() >= 12);
        this.timestamp = makeInt(byteBuffer.get(), byteBuffer.get(), byteBuffer.get(), byteBuffer.get());
        this.randomValue1 = makeInt((byte) 0, byteBuffer.get(), byteBuffer.get(), byteBuffer.get());
        this.randomValue2 = makeShort(byteBuffer.get(), byteBuffer.get());
        this.counter = makeInt((byte) 0, byteBuffer.get(), byteBuffer.get(), byteBuffer.get());
    }

    public ObjectId(Date date) {
        this(dateToTimestampSeconds(date), NEXT_COUNTER.getAndIncrement() & 16777215, false);
    }

    public ObjectId(Date date, int i) {
        this(dateToTimestampSeconds(date), i, true);
    }

    @Deprecated
    public ObjectId(Date date, int i, short s, int i2) {
        this(dateToTimestampSeconds(date), i, s, i2);
    }

    public ObjectId(byte[] bArr) {
        this(ByteBuffer.wrap((byte[]) Assertions.isTrueArgument("bytes has length of 12", bArr, ((byte[]) Assertions.notNull("bytes", bArr)).length == 12)));
    }

    @Deprecated
    public static ObjectId createFromLegacyFormat(int i, int i2, int i3) {
        return new ObjectId(i, i2, i3);
    }

    private static int dateToTimestampSeconds(Date date) {
        return (int) (date.getTime() / 1000);
    }

    public static ObjectId get() {
        return new ObjectId();
    }

    @Deprecated
    public static int getCurrentCounter() {
        return NEXT_COUNTER.get() & 16777215;
    }

    @Deprecated
    public static int getGeneratedMachineIdentifier() {
        return RANDOM_VALUE1;
    }

    @Deprecated
    public static int getGeneratedProcessIdentifier() {
        return RANDOM_VALUE2;
    }

    private static byte int0(int i) {
        return (byte) i;
    }

    private static byte int1(int i) {
        return (byte) (i >> 8);
    }

    private static byte int2(int i) {
        return (byte) (i >> 16);
    }

    private static byte int3(int i) {
        return (byte) (i >> 24);
    }

    public static boolean isValid(String str) {
        if (str != null) {
            int length = str.length();
            if (length != 24) {
                return false;
            }
            for (int i = 0; i < length; i++) {
                char charAt = str.charAt(i);
                if ((charAt < '0' || charAt > '9') && ((charAt < 'a' || charAt > 'f') && (charAt < 'A' || charAt > 'F'))) {
                    return false;
                }
            }
            return true;
        }
        throw new IllegalArgumentException();
    }

    private static byte[] legacyToBytes(int i, int i2, int i3) {
        return new byte[]{int3(i), int2(i), int1(i), int0(i), int3(i2), int2(i2), int1(i2), int0(i2), int3(i3), int2(i3), int1(i3), int0(i3)};
    }

    private static int makeInt(byte b, byte b2, byte b3, byte b4) {
        return (b << 24) | ((b2 & 255) << 16) | ((b3 & 255) << 8) | (b4 & 255);
    }

    private static short makeShort(byte b, byte b2) {
        return (short) (((b & 255) << 8) | (b2 & 255));
    }

    private static byte[] parseHexString(String str) {
        if (!isValid(str)) {
            throw new IllegalArgumentException("invalid hexadecimal representation of an ObjectId: [" + str + "]");
        }
        byte[] bArr = new byte[12];
        for (int i = 0; i < 12; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) Integer.parseInt(str.substring(i2, i2 + 2), 16);
        }
        return bArr;
    }

    private static byte short0(short s) {
        return (byte) s;
    }

    private static byte short1(short s) {
        return (byte) (s >> 8);
    }

    public int compareTo(ObjectId objectId) {
        Objects.requireNonNull(objectId);
        byte[] byteArray = toByteArray();
        byte[] byteArray2 = objectId.toByteArray();
        for (int i = 0; i < 12; i++) {
            if (byteArray[i] != byteArray2[i]) {
                return (byteArray[i] & 255) < (byteArray2[i] & 255) ? -1 : 1;
            }
        }
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ObjectId objectId = (ObjectId) obj;
        return this.counter == objectId.counter && this.timestamp == objectId.timestamp && this.randomValue1 == objectId.randomValue1 && this.randomValue2 == objectId.randomValue2;
    }

    @Deprecated
    public int getCounter() {
        return this.counter;
    }

    public Date getDate() {
        return new Date((this.timestamp & 4294967295L) * 1000);
    }

    @Deprecated
    public int getMachineIdentifier() {
        return this.randomValue1;
    }

    @Deprecated
    public short getProcessIdentifier() {
        return this.randomValue2;
    }

    @Deprecated
    public long getTime() {
        return (this.timestamp & 4294967295L) * 1000;
    }

    @Deprecated
    public int getTimeSecond() {
        return this.timestamp;
    }

    public int getTimestamp() {
        return this.timestamp;
    }

    public int hashCode() {
        return (((((this.timestamp * 31) + this.counter) * 31) + this.randomValue1) * 31) + this.randomValue2;
    }

    public void putToByteBuffer(ByteBuffer byteBuffer) {
        Assertions.notNull("buffer", byteBuffer);
        Assertions.isTrueArgument("buffer.remaining() >=12", byteBuffer.remaining() >= 12);
        byteBuffer.put(int3(this.timestamp));
        byteBuffer.put(int2(this.timestamp));
        byteBuffer.put(int1(this.timestamp));
        byteBuffer.put(int0(this.timestamp));
        byteBuffer.put(int2(this.randomValue1));
        byteBuffer.put(int1(this.randomValue1));
        byteBuffer.put(int0(this.randomValue1));
        byteBuffer.put(short1(this.randomValue2));
        byteBuffer.put(short0(this.randomValue2));
        byteBuffer.put(int2(this.counter));
        byteBuffer.put(int1(this.counter));
        byteBuffer.put(int0(this.counter));
    }

    public byte[] toByteArray() {
        ByteBuffer allocate = ByteBuffer.allocate(12);
        putToByteBuffer(allocate);
        return allocate.array();
    }

    public String toHexString() {
        byte[] byteArray;
        char[] cArr = new char[24];
        int i = 0;
        for (byte b : toByteArray()) {
            int i2 = i + 1;
            char[] cArr2 = HEX_CHARS;
            cArr[i] = cArr2[(b >> 4) & 15];
            i = i2 + 1;
            cArr[i2] = cArr2[b & 15];
        }
        return new String(cArr);
    }

    public String toString() {
        return toHexString();
    }

    @Deprecated
    public String toStringMongod() {
        return toHexString();
    }
}
