package org.spongycastle.crypto.engines;

import org.spongycastle.crypto.BlockCipher;
import org.spongycastle.crypto.CipherParameters;
import org.spongycastle.crypto.DataLengthException;
import org.spongycastle.crypto.OutputLengthException;
import org.spongycastle.crypto.params.KeyParameter;
import org.spongycastle.util.Arrays;
import org.spongycastle.util.Pack;
/* loaded from: classes3-dex2jar.jar:org/spongycastle/crypto/engines/DSTU7624Engine.class */
public class DSTU7624Engine implements BlockCipher {
    private static final int BITS_IN_BYTE = 8;
    private static final int BITS_IN_LONG = 64;
    private static final int BITS_IN_WORD = 64;
    private static final int ROUNDS_128 = 10;
    private static final int ROUNDS_256 = 14;
    private static final int ROUNDS_512 = 18;
    private boolean forEncryption;
    private long[] internalState;
    private byte[] internalStateBytes;
    private long[][] roundKeys;
    private int roundsAmount;
    private byte[] tempInternalStateBytes;
    private int wordsInBlock;
    private int wordsInKey;
    private long[] workingKey;
    private byte[][] mdsMatrix = {new byte[]{1, 1, 5, 1, 8, 6, 7, 4}, new byte[]{4, 1, 1, 5, 1, 8, 6, 7}, new byte[]{7, 4, 1, 1, 5, 1, 8, 6}, new byte[]{6, 7, 4, 1, 1, 5, 1, 8}, new byte[]{8, 6, 7, 4, 1, 1, 5, 1}, new byte[]{1, 8, 6, 7, 4, 1, 1, 5}, new byte[]{5, 1, 8, 6, 7, 4, 1, 1}, new byte[]{1, 5, 1, 8, 6, 7, 4, 1}};
    private byte[][] mdsInvMatrix = {new byte[]{-83, -107, 118, -88, 47, 73, -41, -54}, new byte[]{-54, -83, -107, 118, -88, 47, 73, -41}, new byte[]{-41, -54, -83, -107, 118, -88, 47, 73}, new byte[]{73, -41, -54, -83, -107, 118, -88, 47}, new byte[]{47, 73, -41, -54, -83, -107, 118, -88}, new byte[]{-88, 47, 73, -41, -54, -83, -107, 118}, new byte[]{118, -88, 47, 73, -41, -54, -83, -107}, new byte[]{-107, 118, -88, 47, 73, -41, -54, -83}};
    private byte[][] sboxesForEncryption = {new byte[]{-88, 67, 95, 6, 107, 117, 108, 89, 113, -33, -121, -107, 23, -16, -40, 9, 109, -13, 29, -53, -55, 77, 44, -81, 121, -32, -105, -3, 111, 75, 69, 57, 62, -35, -93, 79, -76, -74, -102, 14, 31, -65, 21, -31, 73, -46, -109, -58, -110, 114, -98, 97, -47, 99, -6, -18, -12, 25, -43, -83, 88, -92, -69, -95, -36, -14, -125, 55, 66, -28, 122, 50, -100, -52, -85, 74, -113, 110, 4, 39, 46, -25, -30, 90, -106, 22, 35, 43, -62, 101, 102, 15, -68, -87, 71, 65, 52, 72, -4, -73, 106, -120, -91, 83, -122, -7, 91, -37, 56, 123, -61, 30, 34, 51, 36, 40, 54, -57, -78, 59, -114, 119, -70, -11, 20, -97, 8, 85, -101, 76, -2, 96, 92, -38, 24, 70, -51, 125, 33, -80, 63, 27, -119, -1, -21, -124, 105, 58, -99, -41, -45, 112, 103, 64, -75, -34, 93, 48, -111, -79, 120, 17, 1, -27, 0, 104, -104, -96, -59, 2, -90, 116, 45, 11, -94, 118, -77, -66, -50, -67, -82, -23, -118, 49, 28, -20, -15, -103, -108, -86, -10, 38, 47, -17, -24, -116, 53, 3, -44, Byte.MAX_VALUE, -5, 5, -63, 94, -112, 32, 61, -126, -9, -22, 10, 13, 126, -8, 80, 26, -60, 7, 87, -72, 60, 98, -29, -56, -84, 82, 100, 16, -48, -39, 19, 12, 18, 41, 81, -71, -49, -42, 115, -115, -127, 84, -64, -19, 78, 68, -89, 42, -123, 37, -26, -54, 124, -117, 86, Byte.MIN_VALUE}, new byte[]{-50, -69, -21, -110, -22, -53, 19, -63, -23, 58, -42, -78, -46, -112, 23, -8, 66, 21, 86, -76, 101, 28, -120, 67, -59, 92, 54, -70, -11, 87, 103, -115, 49, -10, 100, 88, -98, -12, 34, -86, 117, 15, 2, -79, -33, 109, 115, 77, 124, 38, 46, -9, 8, 93, 68, 62, -97, 20, -56, -82, 84, 16, -40, -68, 26, 107, 105, -13, -67, 51, -85, -6, -47, -101, 104, 78, 22, -107, -111, -18, 76, 99, -114, 91, -52, 60, 25, -95, -127, 73, 123, -39, 111, 55, 96, -54, -25, 43, 72, -3, -106, 69, -4, 65, 18, 13, 121, -27, -119, -116, -29, 32, 48, -36, -73, 108, 74, -75, 63, -105, -44, 98, 45, 6, -92, -91, -125, 95, 42, -38, -55, 0, 126, -94, 85, -65, 17, -43, -100, -49, 14, 10, 61, 81, 125, -109, 27, -2, -60, 71, 9, -122, 11, -113, -99, 106, 7, -71, -80, -104, 24, 50, 113, 75, -17, 59, 112, -96, -28, 64, -1, -61, -87, -26, 120, -7, -117, 70, Byte.MIN_VALUE, 30, 56, -31, -72, -88, -32, 12, 35, 118, 29, 37, 36, 5, -15, 110, -108, 40, -102, -124, -24, -93, 79, 119, -45, -123, -30, 82, -14, -126, 80, 122, 47, 116, 83, -77, 97, -81, 57, 53, -34, -51, 31, -103, -84, -83, 114, 44, -35, -48, -121, -66, 94, -90, -20, 4, -58, 3, 52, -5, -37, 89, -74, -62, 1, -16, 90, -19, -89, 102, 33, Byte.MAX_VALUE, -118, 39, -57, -64, 41, -41}, new byte[]{-109, -39, -102, -75, -104, 34, 69, -4, -70, 106, -33, 2, -97, -36, 81, 89, 74, 23, 43, -62, -108, -12, -69, -93, 98, -28, 113, -44, -51, 112, 22, -31, 73, 60, -64, -40, 92, -101, -83, -123, 83, -95, 122, -56, 45, -32, -47, 114, -90, 44, -60, -29, 118, 120, -73, -76, 9, 59, 14, 65, 76, -34, -78, -112, 37, -91, -41, 3, 17, 0, -61, 46, -110, -17, 78, 18, -99, 125, -53, 53, 16, -43, 79, -98, 77, -87, 85, -58, -48, 123, 24, -105, -45, 54, -26, 72, 86, -127, -113, 119, -52, -100, -71, -30, -84, -72, 47, 21, -92, 124, -38, 56, 30, 11, 5, -42, 20, 110, 108, 126, 102, -3, -79, -27, 96, -81, 94, 51, -121, -55, -16, 93, 109, 63, -120, -115, -57, -9, 29, -23, -20, -19, Byte.MIN_VALUE, 41, 39, -49, -103, -88, 80, 15, 55, 36, 40, 48, -107, -46, 62, 91, 64, -125, -77, 105, 87, 31, 7, 28, -118, -68, 32, -21, -50, -114, -85, -18, 49, -94, 115, -7, -54, 58, 26, -5, 13, -63, -2, -6, -14, 111, -67, -106, -35, 67, 82, -74, 8, -13, -82, -66, 25, -119, 50, 38, -80, -22, 75, 100, -124, -126, 107, -11, 121, -65, 1, 95, 117, 99, 27, 35, 61, 104, 42, 101, -24, -111, -10, -1, 19, 88, -15, 71, 10, Byte.MAX_VALUE, -59, -89, -25, 97, 90, 6, 70, 68, 66, 4, -96, -37, 57, -122, 84, -86, -116, 52, 33, -117, -8, 12, 116, 103}, new byte[]{104, -115, -54, 77, 115, 75, 78, 42, -44, 82, 38, -77, 84, 30, 25, 31, 34, 3, 70, 61, 45, 74, 83, -125, 19, -118, -73, -43, 37, 121, -11, -67, 88, 47, 13, 2, -19, 81, -98, 17, -14, 62, 85, 94, -47, 22, 60, 102, 112, 93, -13, 69, 64, -52, -24, -108, 86, 8, -50, 26, 58, -46, -31, -33, -75, 56, 110, 14, -27, -12, -7, -122, -23, 79, -42, -123, 35, -49, 50, -103, 49, 20, -82, -18, -56, 72, -45, 48, -95, -110, 65, -79, 24, -60, 44, 113, 114, 68, 21, -3, 55, -66, 95, -86, -101, -120, -40, -85, -119, -100, -6, 96, -22, -68, 98, 12, 36, -90, -88, -20, 103, 32, -37, 124, 40, -35, -84, 91, 52, 126, 16, -15, 123, -113, 99, -96, 5, -102, 67, 119, 33, -65, 39, 9, -61, -97, -74, -41, 41, -62, -21, -64, -92, -117, -116, 29, -5, -1, -63, -78, -105, 46, -8, 101, -10, 117, 7, 4, 73, 51, -28, -39, -71, -48, 66, -57, 108, -112, 0, -114, 111, 80, 1, -59, -38, 71, 63, -51, 105, -94, -30, 122, -89, -58, -109, 15, 10, 6, -26, 43, -106, -93, 28, -81, 106, 18, -124, 57, -25, -80, -126, -9, -2, -99, -121, 92, -127, 53, -34, -76, -91, -4, Byte.MIN_VALUE, -17, -53, -69, 107, 118, -70, 90, 125, 120, 11, -107, -29, -83, 116, -104, 59, 54, 100, 109, -36, -16, 89, -87, 76, 23, Byte.MAX_VALUE, -111, -72, -55, 87, 27, -32, 97}};
    private byte[][] sboxesForDecryption = {new byte[]{-92, -94, -87, -59, 78, -55, 3, -39, 126, 15, -46, -83, -25, -45, 39, 91, -29, -95, -24, -26, 124, 42, 85, 12, -122, 57, -41, -115, -72, 18, 111, 40, -51, -118, 112, 86, 114, -7, -65, 79, 115, -23, -9, 87, 22, -84, 80, -64, -99, -73, 71, 113, 96, -60, 116, 67, 108, 31, -109, 119, -36, -50, 32, -116, -103, 95, 68, 1, -11, 30, -121, 94, 97, 44, 75, 29, -127, 21, -12, 35, -42, -22, -31, 103, -15, Byte.MAX_VALUE, -2, -38, 60, 7, 83, 106, -124, -100, -53, 2, -125, 51, -35, 53, -30, 89, 90, -104, -91, -110, 100, 4, 6, 16, 77, 28, -105, 8, 49, -18, -85, 5, -81, 121, -96, 24, 70, 109, -4, -119, -44, -57, -1, -16, -49, 66, -111, -8, 104, 10, 101, -114, -74, -3, -61, -17, 120, 76, -52, -98, 48, 46, -68, 11, 84, 26, -90, -69, 38, Byte.MIN_VALUE, 72, -108, 50, 125, -89, 63, -82, 34, 61, 102, -86, -10, 0, 93, -67, 74, -32, 59, -76, 23, -117, -97, 118, -80, 36, -102, 37, 99, -37, -21, 122, 62, 92, -77, -79, 41, -14, -54, 88, 110, -40, -88, 47, 117, -33, 20, -5, 19, 73, -120, -78, -20, -28, 52, 45, -106, -58, 58, -19, -107, 14, -27, -123, 107, 64, 33, -101, 9, 25, 43, 82, -34, 69, -93, -6, 81, -62, -75, -47, -112, -71, -13, 55, -63, 13, -70, 65, 17, 56, 123, -66, -48, -43, 105, 54, -56, 98, 27, -126, -113}, new byte[]{-125, -14, 42, -21, -23, -65, 123, -100, 52, -106, -115, -104, -71, 105, -116, 41, 61, -120, 104, 6, 57, 17, 76, 14, -96, 86, 64, -110, 21, -68, -77, -36, 111, -8, 38, -70, -66, -67, 49, -5, -61, -2, Byte.MIN_VALUE, 97, -31, 122, 50, -46, 112, 32, -95, 69, -20, -39, 26, 93, -76, -40, 9, -91, 85, -114, 55, 118, -87, 103, 16, 23, 54, 101, -79, -107, 98, 89, 116, -93, 80, 47, 75, -56, -48, -113, -51, -44, 60, -122, 18, 29, 35, -17, -12, 83, 25, 53, -26, Byte.MAX_VALUE, 94, -42, 121, 81, 34, 20, -9, 30, 74, 66, -101, 65, 115, 45, -63, 92, -90, -94, -32, 46, -45, 40, -69, -55, -82, 106, -47, 90, 48, -112, -124, -7, -78, 88, -49, 126, -59, -53, -105, -28, 22, 108, -6, -80, 109, 31, 82, -103, 13, 78, 3, -111, -62, 77, 100, 119, -97, -35, -60, 73, -118, -102, 36, 56, -89, 87, -123, -57, 124, 125, -25, -10, -73, -84, 39, 70, -34, -33, 59, -41, -98, 43, 11, -43, 19, 117, -16, 114, -74, -99, 27, 1, 63, 68, -27, -121, -3, 7, -15, -85, -108, 24, -22, -4, 58, -126, 95, 5, 84, -37, 0, -117, -29, 72, 12, -54, 120, -119, 10, -1, 62, 91, -127, -18, 113, -30, -38, 44, -72, -75, -52, 110, -88, 107, -83, 96, -58, 8, 4, 2, -24, -11, 79, -92, -13, -64, -50, 67, 37, 28, 33, 51, 15, -81, 71, -19, 102, 99, -109, -86}, new byte[]{69, -44, 11, 67, -15, 114, -19, -92, -62, 56, -26, 113, -3, -74, 58, -107, 80, 68, 75, -30, 116, 107, 30, 17, 90, -58, -76, -40, -91, -118, 112, -93, -88, -6, 5, -39, -105, 64, -55, -112, -104, -113, -36, 18, 49, 44, 71, 106, -103, -82, -56, Byte.MAX_VALUE, -7, 79, 93, -106, 111, -12, -77, 57, 33, -38, -100, -123, -98, 59, -16, -65, -17, 6, -18, -27, 95, 32, 16, -52, 60, 84, 74, 82, -108, 14, -64, 40, -10, 86, 96, -94, -29, 15, -20, -99, 36, -125, 126, -43, 124, -21, 24, -41, -51, -35, 120, -1, -37, -95, 9, -48, 118, -124, 117, -69, 29, 26, 47, -80, -2, -42, 52, 99, 53, -46, 42, 89, 109, 77, 119, -25, -114, 97, -49, -97, -50, 39, -11, Byte.MIN_VALUE, -122, -57, -90, -5, -8, -121, -85, 98, 63, -33, 72, 0, 20, -102, -67, 91, 4, -110, 2, 37, 101, 76, 83, 12, -14, 41, -81, 23, 108, 65, 48, -23, -109, 85, -9, -84, 104, 38, -60, 125, -54, 122, 62, -96, 55, 3, -63, 54, 105, 102, 8, 22, -89, -68, -59, -45, 34, -73, 19, 70, 50, -24, 87, -120, 43, -127, -78, 78, 100, 28, -86, -111, 88, 46, -101, 92, 27, 81, 115, 66, 35, 1, 110, -13, 13, -66, 61, 10, 45, 31, 103, 51, 25, 123, 94, -22, -34, -117, -53, -87, -116, -115, -83, 73, -126, -28, -70, -61, 21, -47, -32, -119, -4, -79, -71, -75, 7, 121, -72, -31}, new byte[]{-78, -74, 35, 17, -89, -120, -59, -90, 57, -113, -60, -24, 115, 34, 67, -61, -126, 39, -51, 24, 81, 98, 45, -9, 92, 14, 59, -3, -54, -101, 13, 15, 121, -116, 16, 76, 116, 28, 10, -114, 124, -108, 7, -57, 94, 20, -95, 33, 87, 80, 78, -87, Byte.MIN_VALUE, -39, -17, 100, 65, -49, 60, -18, 46, 19, 41, -70, 52, 90, -82, -118, 97, 51, 18, -71, 85, -88, 21, 5, -10, 3, 6, 73, -75, 37, 9, 22, 12, 42, 56, -4, 32, -12, -27, Byte.MAX_VALUE, -41, 49, 43, 102, 111, -1, 114, -122, -16, -93, 47, 120, 0, -68, -52, -30, -80, -15, 66, -76, 48, 95, 96, 4, -20, -91, -29, -117, -25, 29, -65, -124, 123, -26, -127, -8, -34, -40, -46, 23, -50, 75, 71, -42, 105, 108, 25, -103, -102, 1, -77, -123, -79, -7, 89, -62, 55, -23, -56, -96, -19, 79, -119, 104, 109, -43, 38, -111, -121, 88, -67, -55, -104, -36, 117, -64, 118, -11, 103, 107, 126, -21, 82, -53, -47, 91, -97, 11, -37, 64, -110, 26, -6, -84, -28, -31, 113, 31, 101, -115, -105, -98, -107, -112, 93, -73, -63, -81, 84, -5, 2, -32, 53, -69, 58, 77, -83, 44, 61, 86, 8, 27, 74, -109, 106, -85, -72, 122, -14, 125, -38, 63, -2, 62, -66, -22, -86, 68, -58, -48, 54, 72, 112, -106, 119, 36, 83, -33, -13, -125, 40, 50, 69, 30, -92, -45, -94, 70, 110, -100, -35, 99, -44, -99}};

    /* JADX WARN: Type inference failed for: r1v107, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r1v1647, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r1v49, types: [byte[], byte[][]] */
    /* JADX WARN: Type inference failed for: r1v877, types: [byte[], byte[][]] */
    public DSTU7624Engine(int i) throws IllegalArgumentException {
        if (i == 128 || i == 256 || i == 512) {
            this.wordsInBlock = i / 64;
            this.internalState = new long[this.wordsInBlock];
            this.internalStateBytes = new byte[(this.internalState.length * 64) / 8];
            this.tempInternalStateBytes = new byte[(this.internalState.length * 64) / 8];
            return;
        }
        throw new IllegalArgumentException("unsupported block length: only 128/256/512 are allowed");
    }

    private void InvShiftRows() {
        Pack.longToLittleEndian(this.internalState, this.internalStateBytes, 0);
        int i = 0;
        int i2 = -1;
        while (i < 8) {
            int i3 = i2;
            if (i % (8 / this.wordsInBlock) == 0) {
                i3 = i2 + 1;
            }
            for (int i4 = 0; i4 < this.wordsInBlock; i4++) {
                this.tempInternalStateBytes[((i4 * 64) / 8) + i] = this.internalStateBytes[((((i4 + i3) % this.wordsInBlock) * 64) / 8) + i];
            }
            i++;
            i2 = i3;
        }
        Pack.littleEndianToLong(this.tempInternalStateBytes, 0, this.internalState);
    }

    private void InvSubBytes() {
        for (int i = 0; i < this.wordsInBlock; i++) {
            this.internalState[i] = (this.sboxesForDecryption[0][(int) (this.internalState[i] & 255)] & 255) | ((this.sboxesForDecryption[1][(int) ((this.internalState[i] & 65280) >>> 8)] << 8) & 65280) | ((this.sboxesForDecryption[2][(int) ((this.internalState[i] & 16711680) >>> 16)] << 16) & 16711680) | ((this.sboxesForDecryption[3][(int) ((this.internalState[i] & 4278190080L) >>> 24)] << 24) & 4278190080L) | ((this.sboxesForDecryption[0][(int) ((this.internalState[i] & 1095216660480L) >>> 32)] << 32) & 1095216660480L) | ((this.sboxesForDecryption[1][(int) ((this.internalState[i] & 280375465082880L) >>> 40)] << 40) & 280375465082880L) | ((this.sboxesForDecryption[2][(int) ((71776119061217280L & this.internalState[i]) >>> 48)] << 48) & 71776119061217280L) | ((this.sboxesForDecryption[3][(int) ((this.internalState[i] & (-72057594037927936L)) >>> 56)] << 56) & (-72057594037927936L));
        }
    }

    private void MixColumns(byte[][] bArr) {
        Pack.longToLittleEndian(this.internalState, this.internalStateBytes, 0);
        for (int i = 0; i < this.wordsInBlock; i++) {
            long j = -72057594037927936L;
            long j2 = 0;
            for (int i2 = 7; i2 >= 0; i2--) {
                byte b = 0;
                for (int i3 = 7; i3 >= 0; i3--) {
                    b = (byte) (b ^ MultiplyGF(this.internalStateBytes[((i * 64) / 8) + i3], bArr[i2][i3]));
                }
                j2 |= (b << ((i2 * 64) / 8)) & j;
                j >>>= 8;
            }
            this.internalState[i] = j2;
        }
    }

    private byte MultiplyGF(byte b, byte b2) {
        int i = b & 255;
        int i2 = b2 & 255;
        int i3 = (-(i2 & 1)) & i;
        for (int i4 = 1; i4 < 8; i4++) {
            i <<= 1;
            i2 >>>= 1;
            i3 ^= (-(i2 & 1)) & i;
        }
        int i5 = 65280 & i3;
        int i6 = ((i5 >>> 8) ^ ((((i5 >>> 4) ^ i5) ^ (i5 >>> 5)) ^ (i5 >>> 6))) ^ i3;
        int i7 = i6 & 3840;
        return (byte) (i6 ^ ((i7 >>> 8) ^ ((((i7 >>> 4) ^ i7) ^ (i7 >>> 5)) ^ (i7 >>> 6))));
    }

    private void RotateLeft(long[] jArr) {
        int length = (jArr.length * 2) + 3;
        int length2 = jArr.length;
        byte[] bArr = new byte[(jArr.length * 64) / 8];
        Pack.longToLittleEndian(jArr, bArr, 0);
        byte[] bArr2 = new byte[length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        int i = (length2 * 8) - length;
        System.arraycopy(bArr, length, bArr, 0, i);
        System.arraycopy(bArr2, 0, bArr, i, length);
        Pack.littleEndianToLong(bArr, 0, jArr);
    }

    private void ShiftLeft(long[] jArr) {
        for (int i = 0; i < jArr.length; i++) {
            jArr[i] = jArr[i] << 1;
        }
        for (int i2 = 0; i2 < jArr.length / 2; i2++) {
            long j = jArr[i2];
            jArr[i2] = jArr[(jArr.length - i2) - 1];
            jArr[(jArr.length - i2) - 1] = j;
        }
    }

    private void ShiftRows() {
        Pack.longToLittleEndian(this.internalState, this.internalStateBytes, 0);
        int i = 0;
        int i2 = -1;
        while (i < 8) {
            int i3 = i2;
            if (i % (8 / this.wordsInBlock) == 0) {
                i3 = i2 + 1;
            }
            for (int i4 = 0; i4 < this.wordsInBlock; i4++) {
                this.tempInternalStateBytes[((((i4 + i3) % this.wordsInBlock) * 64) / 8) + i] = this.internalStateBytes[((i4 * 64) / 8) + i];
            }
            i++;
            i2 = i3;
        }
        Pack.littleEndianToLong(this.tempInternalStateBytes, 0, this.internalState);
    }

    private void SubBytes() {
        for (int i = 0; i < this.wordsInBlock; i++) {
            this.internalState[i] = (this.sboxesForEncryption[0][(int) (this.internalState[i] & 255)] & 255) | ((this.sboxesForEncryption[1][(int) ((this.internalState[i] & 65280) >>> 8)] << 8) & 65280) | ((this.sboxesForEncryption[2][(int) ((this.internalState[i] & 16711680) >>> 16)] << 16) & 16711680) | ((this.sboxesForEncryption[3][(int) ((this.internalState[i] & 4278190080L) >>> 24)] << 24) & 4278190080L) | ((this.sboxesForEncryption[0][(int) ((this.internalState[i] & 1095216660480L) >>> 32)] << 32) & 1095216660480L) | ((this.sboxesForEncryption[1][(int) ((this.internalState[i] & 280375465082880L) >>> 40)] << 40) & 280375465082880L) | ((this.sboxesForEncryption[2][(int) ((71776119061217280L & this.internalState[i]) >>> 48)] << 48) & 71776119061217280L) | ((this.sboxesForEncryption[3][(int) ((this.internalState[i] & (-72057594037927936L)) >>> 56)] << 56) & (-72057594037927936L));
        }
    }

    private void workingKeyExpandEven(long[] jArr, long[] jArr2) {
        long[] jArr3 = new long[this.wordsInKey];
        long[] jArr4 = new long[this.wordsInBlock];
        long[] jArr5 = new long[this.wordsInBlock];
        System.arraycopy(jArr, 0, jArr3, 0, this.wordsInKey);
        for (int i = 0; i < this.wordsInBlock; i++) {
            jArr5[i] = 281479271743489L;
        }
        int i2 = 0;
        while (true) {
            System.arraycopy(jArr2, 0, this.internalState, 0, this.wordsInBlock);
            for (int i3 = 0; i3 < this.wordsInBlock; i3++) {
                long[] jArr6 = this.internalState;
                jArr6[i3] = jArr6[i3] + jArr5[i3];
            }
            System.arraycopy(this.internalState, 0, jArr4, 0, this.wordsInBlock);
            System.arraycopy(jArr3, 0, this.internalState, 0, this.wordsInBlock);
            for (int i4 = 0; i4 < this.wordsInBlock; i4++) {
                long[] jArr7 = this.internalState;
                jArr7[i4] = jArr7[i4] + jArr4[i4];
            }
            SubBytes();
            ShiftRows();
            MixColumns(this.mdsMatrix);
            for (int i5 = 0; i5 < this.wordsInBlock; i5++) {
                long[] jArr8 = this.internalState;
                jArr8[i5] = jArr8[i5] ^ jArr4[i5];
            }
            SubBytes();
            ShiftRows();
            MixColumns(this.mdsMatrix);
            for (int i6 = 0; i6 < this.wordsInBlock; i6++) {
                long[] jArr9 = this.internalState;
                jArr9[i6] = jArr9[i6] + jArr4[i6];
            }
            System.arraycopy(this.internalState, 0, this.roundKeys[i2], 0, this.wordsInBlock);
            if (this.roundsAmount != i2) {
                int i7 = i2;
                if (this.wordsInBlock != this.wordsInKey) {
                    int i8 = i2 + 2;
                    ShiftLeft(jArr5);
                    System.arraycopy(jArr2, 0, this.internalState, 0, this.wordsInBlock);
                    for (int i9 = 0; i9 < this.wordsInBlock; i9++) {
                        long[] jArr10 = this.internalState;
                        jArr10[i9] = jArr10[i9] + jArr5[i9];
                    }
                    System.arraycopy(this.internalState, 0, jArr4, 0, this.wordsInBlock);
                    System.arraycopy(jArr3, this.wordsInBlock, this.internalState, 0, this.wordsInBlock);
                    for (int i10 = 0; i10 < this.wordsInBlock; i10++) {
                        long[] jArr11 = this.internalState;
                        jArr11[i10] = jArr11[i10] + jArr4[i10];
                    }
                    SubBytes();
                    ShiftRows();
                    MixColumns(this.mdsMatrix);
                    for (int i11 = 0; i11 < this.wordsInBlock; i11++) {
                        long[] jArr12 = this.internalState;
                        jArr12[i11] = jArr12[i11] ^ jArr4[i11];
                    }
                    SubBytes();
                    ShiftRows();
                    MixColumns(this.mdsMatrix);
                    for (int i12 = 0; i12 < this.wordsInBlock; i12++) {
                        long[] jArr13 = this.internalState;
                        jArr13[i12] = jArr13[i12] + jArr4[i12];
                    }
                    System.arraycopy(this.internalState, 0, this.roundKeys[i8], 0, this.wordsInBlock);
                    i7 = i8;
                    if (this.roundsAmount == i8) {
                        return;
                    }
                }
                i2 = i7 + 2;
                ShiftLeft(jArr5);
                long j = jArr3[0];
                System.arraycopy(jArr3, 1, jArr3, 0, jArr3.length - 1);
                jArr3[jArr3.length - 1] = j;
            } else {
                return;
            }
        }
    }

    private void workingKeyExpandKT(long[] jArr, long[] jArr2) {
        long[] jArr3 = new long[this.wordsInBlock];
        long[] jArr4 = new long[this.wordsInBlock];
        this.internalState = new long[this.wordsInBlock];
        long[] jArr5 = this.internalState;
        jArr5[0] = jArr5[0] + this.wordsInBlock + this.wordsInKey + 1;
        if (this.wordsInBlock == this.wordsInKey) {
            System.arraycopy(jArr, 0, jArr3, 0, jArr3.length);
            System.arraycopy(jArr, 0, jArr4, 0, jArr4.length);
        } else {
            System.arraycopy(jArr, 0, jArr3, 0, this.wordsInBlock);
            System.arraycopy(jArr, this.wordsInBlock, jArr4, 0, this.wordsInBlock);
        }
        for (int i = 0; i < this.internalState.length; i++) {
            long[] jArr6 = this.internalState;
            jArr6[i] = jArr6[i] + jArr3[i];
        }
        SubBytes();
        ShiftRows();
        MixColumns(this.mdsMatrix);
        for (int i2 = 0; i2 < this.internalState.length; i2++) {
            long[] jArr7 = this.internalState;
            jArr7[i2] = jArr7[i2] ^ jArr4[i2];
        }
        SubBytes();
        ShiftRows();
        MixColumns(this.mdsMatrix);
        for (int i3 = 0; i3 < this.internalState.length; i3++) {
            long[] jArr8 = this.internalState;
            jArr8[i3] = jArr8[i3] + jArr3[i3];
        }
        SubBytes();
        ShiftRows();
        MixColumns(this.mdsMatrix);
        System.arraycopy(this.internalState, 0, jArr2, 0, this.wordsInBlock);
    }

    private void workingKeyExpandOdd() {
        for (int i = 1; i < this.roundsAmount; i += 2) {
            System.arraycopy(this.roundKeys[i - 1], 0, this.roundKeys[i], 0, this.wordsInBlock);
            RotateLeft(this.roundKeys[i]);
        }
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public String getAlgorithmName() {
        return "DSTU7624";
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public int getBlockSize() {
        return (this.wordsInBlock * 64) / 8;
    }

    /* JADX WARN: Type inference failed for: r1v14, types: [long[], long[][]] */
    @Override // org.spongycastle.crypto.BlockCipher
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        if (cipherParameters instanceof KeyParameter) {
            this.forEncryption = z;
            byte[] key = ((KeyParameter) cipherParameters).getKey();
            int length = key.length * 8;
            int i = this.wordsInBlock * 64;
            if (length != 128 && length != 256 && length != 512) {
                throw new IllegalArgumentException("unsupported key length: only 128/256/512 are allowed");
            } else if (i == 128 && length == 512) {
                throw new IllegalArgumentException("Unsupported key length");
            } else if (i == 256 && length == 128) {
                throw new IllegalArgumentException("Unsupported key length");
            } else if (i != 512 || length == 512) {
                if (length == 128) {
                    this.roundsAmount = 10;
                } else if (length == 256) {
                    this.roundsAmount = 14;
                } else if (length == 512) {
                    this.roundsAmount = 18;
                }
                this.wordsInKey = length / 64;
                this.roundKeys = new long[this.roundsAmount + 1];
                for (int i2 = 0; i2 < this.roundKeys.length; i2++) {
                    this.roundKeys[i2] = new long[this.wordsInBlock];
                }
                this.workingKey = new long[this.wordsInKey];
                if (key.length != (this.wordsInKey * 64) / 8) {
                    throw new IllegalArgumentException("Invalid key parameter passed to DSTU7624Engine init");
                }
                Pack.littleEndianToLong(key, 0, this.workingKey);
                long[] jArr = new long[this.wordsInBlock];
                workingKeyExpandKT(this.workingKey, jArr);
                workingKeyExpandEven(this.workingKey, jArr);
                workingKeyExpandOdd();
            } else {
                throw new IllegalArgumentException("Unsupported key length");
            }
        } else {
            throw new IllegalArgumentException("Invalid parameter passed to DSTU7624Engine init");
        }
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public int processBlock(byte[] bArr, int i, byte[] bArr2, int i2) throws DataLengthException, IllegalStateException {
        if (this.workingKey == null) {
            throw new IllegalStateException("DSTU7624 engine not initialised");
        } else if (getBlockSize() + i > bArr.length) {
            throw new DataLengthException("Input buffer too short");
        } else if (getBlockSize() + i2 > bArr2.length) {
            throw new OutputLengthException("Output buffer too short");
        } else {
            if (this.forEncryption) {
                Pack.littleEndianToLong(bArr, i, this.internalState);
                for (int i3 = 0; i3 < this.wordsInBlock; i3++) {
                    long[] jArr = this.internalState;
                    jArr[i3] = jArr[i3] + this.roundKeys[0][i3];
                }
                for (int i4 = 1; i4 < this.roundsAmount; i4++) {
                    SubBytes();
                    ShiftRows();
                    MixColumns(this.mdsMatrix);
                    for (int i5 = 0; i5 < this.wordsInBlock; i5++) {
                        long[] jArr2 = this.internalState;
                        jArr2[i5] = jArr2[i5] ^ this.roundKeys[i4][i5];
                    }
                }
                SubBytes();
                ShiftRows();
                MixColumns(this.mdsMatrix);
                for (int i6 = 0; i6 < this.wordsInBlock; i6++) {
                    long[] jArr3 = this.internalState;
                    jArr3[i6] = jArr3[i6] + this.roundKeys[this.roundsAmount][i6];
                }
                Pack.longToLittleEndian(this.internalState, bArr2, i2);
            } else {
                int i7 = this.roundsAmount;
                Pack.littleEndianToLong(bArr, i, this.internalState);
                for (int i8 = 0; i8 < this.wordsInBlock; i8++) {
                    long[] jArr4 = this.internalState;
                    jArr4[i8] = jArr4[i8] - this.roundKeys[i7][i8];
                }
                for (int i9 = this.roundsAmount - 1; i9 > 0; i9--) {
                    MixColumns(this.mdsInvMatrix);
                    InvShiftRows();
                    InvSubBytes();
                    for (int i10 = 0; i10 < this.wordsInBlock; i10++) {
                        long[] jArr5 = this.internalState;
                        jArr5[i10] = jArr5[i10] ^ this.roundKeys[i9][i10];
                    }
                }
                MixColumns(this.mdsInvMatrix);
                InvShiftRows();
                InvSubBytes();
                for (int i11 = 0; i11 < this.wordsInBlock; i11++) {
                    long[] jArr6 = this.internalState;
                    jArr6[i11] = jArr6[i11] - this.roundKeys[0][i11];
                }
                Pack.longToLittleEndian(this.internalState, bArr2, i2);
            }
            return getBlockSize();
        }
    }

    @Override // org.spongycastle.crypto.BlockCipher
    public void reset() {
        Arrays.fill(this.internalState, 0L);
        Arrays.fill(this.internalStateBytes, (byte) 0);
        Arrays.fill(this.tempInternalStateBytes, (byte) 0);
    }
}
