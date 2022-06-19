package org.bson.internal;

import java.util.UUID;
import org.bson.BSONException;
import org.bson.BsonBinarySubType;
import org.bson.BsonSerializationException;
import org.bson.UuidRepresentation;
/* loaded from: classes-dex2jar.jar:org/bson/internal/UuidHelper.class */
public final class UuidHelper {

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: org.bson.internal.UuidHelper$1 */
    /* loaded from: classes-dex2jar.jar:org/bson/internal/UuidHelper$1.class */
    public static /* synthetic */ class C25481 {
        static final /* synthetic */ int[] $SwitchMap$org$bson$UuidRepresentation;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x0036 -> B:17:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:15:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:21:0x002a). Please submit an issue!!! */
        static {
            int[] iArr = new int[UuidRepresentation.values().length];
            $SwitchMap$org$bson$UuidRepresentation = iArr;
            try {
                iArr[UuidRepresentation.C_SHARP_LEGACY.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$org$bson$UuidRepresentation[UuidRepresentation.JAVA_LEGACY.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$org$bson$UuidRepresentation[UuidRepresentation.PYTHON_LEGACY.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                $SwitchMap$org$bson$UuidRepresentation[UuidRepresentation.STANDARD.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    private UuidHelper() {
    }

    public static UUID decodeBinaryToUuid(byte[] bArr, byte b, UuidRepresentation uuidRepresentation) {
        if (bArr.length == 16) {
            if (b == BsonBinarySubType.UUID_LEGACY.getValue()) {
                int i = C25481.$SwitchMap$org$bson$UuidRepresentation[uuidRepresentation.ordinal()];
                if (i == 1) {
                    reverseByteArray(bArr, 0, 4);
                    reverseByteArray(bArr, 4, 2);
                    reverseByteArray(bArr, 6, 2);
                } else if (i == 2) {
                    reverseByteArray(bArr, 0, 8);
                    reverseByteArray(bArr, 8, 8);
                } else if (i != 3) {
                    if (i == 4) {
                        throw new BSONException("Can not decode a subtype 3 (UUID legacy) BSON binary when the decoder is configured to use the standard UUID representation");
                    }
                    throw new BSONException("Unexpected UUID representation: " + uuidRepresentation);
                }
            }
            return new UUID(readLongFromArrayBigEndian(bArr, 0), readLongFromArrayBigEndian(bArr, 8));
        }
        throw new BsonSerializationException(String.format("Expected length to be 16, not %d.", Integer.valueOf(bArr.length)));
    }

    public static byte[] encodeUuidToBinary(UUID uuid, UuidRepresentation uuidRepresentation) {
        byte[] bArr = new byte[16];
        writeLongToArrayBigEndian(bArr, 0, uuid.getMostSignificantBits());
        writeLongToArrayBigEndian(bArr, 8, uuid.getLeastSignificantBits());
        int i = C25481.$SwitchMap$org$bson$UuidRepresentation[uuidRepresentation.ordinal()];
        if (i == 1) {
            reverseByteArray(bArr, 0, 4);
            reverseByteArray(bArr, 4, 2);
            reverseByteArray(bArr, 6, 2);
        } else if (i == 2) {
            reverseByteArray(bArr, 0, 8);
            reverseByteArray(bArr, 8, 8);
        } else if (i != 3 && i != 4) {
            throw new BSONException("Unexpected UUID representation: " + uuidRepresentation);
        }
        return bArr;
    }

    private static long readLongFromArrayBigEndian(byte[] bArr, int i) {
        return ((bArr[i] & 255) << 56) | (bArr[i + 7] & 255) | 0 | ((bArr[i + 6] & 255) << 8) | ((bArr[i + 5] & 255) << 16) | ((bArr[i + 4] & 255) << 24) | ((bArr[i + 3] & 255) << 32) | ((bArr[i + 2] & 255) << 40) | ((bArr[i + 1] & 255) << 48);
    }

    private static void reverseByteArray(byte[] bArr, int i, int i2) {
        for (int i3 = (i2 + i) - 1; i < i3; i3--) {
            byte b = bArr[i];
            bArr[i] = bArr[i3];
            bArr[i3] = b;
            i++;
        }
    }

    private static void writeLongToArrayBigEndian(byte[] bArr, int i, long j) {
        bArr[i + 7] = (byte) (j & 255);
        bArr[i + 6] = (byte) ((j >> 8) & 255);
        bArr[i + 5] = (byte) ((j >> 16) & 255);
        bArr[i + 4] = (byte) ((j >> 24) & 255);
        bArr[i + 3] = (byte) ((j >> 32) & 255);
        bArr[i + 2] = (byte) ((j >> 40) & 255);
        bArr[i + 1] = (byte) ((j >> 48) & 255);
        bArr[i] = (byte) ((j >> 56) & 255);
    }
}
