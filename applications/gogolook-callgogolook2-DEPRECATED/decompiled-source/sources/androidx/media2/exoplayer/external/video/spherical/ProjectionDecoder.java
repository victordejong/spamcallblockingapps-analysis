package androidx.media2.exoplayer.external.video.spherical;

import androidx.annotation.Nullable;
import androidx.annotation.RestrictTo;
import androidx.media2.exoplayer.external.util.ParsableBitArray;
import androidx.media2.exoplayer.external.util.ParsableByteArray;
import androidx.media2.exoplayer.external.util.Util;
import androidx.media2.exoplayer.external.video.spherical.Projection;
import java.util.ArrayList;
import java.util.zip.Inflater;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes-dex2jar.jar:androidx/media2/exoplayer/external/video/spherical/ProjectionDecoder.class */
public final class ProjectionDecoder {
    public static final int MAX_COORDINATE_COUNT = 10000;
    public static final int MAX_TRIANGLE_INDICES = 128000;
    public static final int MAX_VERTEX_COUNT = 32000;
    public static final int TYPE_DFL8 = 1684433976;
    public static final int TYPE_MESH = 1835365224;
    public static final int TYPE_MSHP = 1836279920;
    public static final int TYPE_PROJ = 1886547818;
    public static final int TYPE_RAW = 1918990112;
    public static final int TYPE_YTMP = 2037673328;

    @Nullable
    public static Projection decode(byte[] bArr, int i) {
        ArrayList<Projection.Mesh> arrayList;
        ParsableByteArray parsableByteArray = new ParsableByteArray(bArr);
        try {
            arrayList = isProj(parsableByteArray) ? parseProj(parsableByteArray) : parseMshp(parsableByteArray);
        } catch (ArrayIndexOutOfBoundsException e) {
            arrayList = null;
        }
        if (arrayList == null) {
            return null;
        }
        int size = arrayList.size();
        if (size == 1) {
            return new Projection(arrayList.get(0), i);
        }
        if (size != 2) {
            return null;
        }
        return new Projection(arrayList.get(0), arrayList.get(1), i);
    }

    public static int decodeZigZag(int i) {
        return (-(i & 1)) ^ (i >> 1);
    }

    public static boolean isProj(ParsableByteArray parsableByteArray) {
        parsableByteArray.skipBytes(4);
        int readInt = parsableByteArray.readInt();
        boolean z = false;
        parsableByteArray.setPosition(0);
        if (readInt == 1886547818) {
            z = true;
        }
        return z;
    }

    @Nullable
    public static Projection.Mesh parseMesh(ParsableByteArray parsableByteArray) {
        int readInt = parsableByteArray.readInt();
        if (readInt > 10000) {
            return null;
        }
        float[] fArr = new float[readInt];
        for (int i = 0; i < readInt; i++) {
            fArr[i] = parsableByteArray.readFloat();
        }
        int readInt2 = parsableByteArray.readInt();
        if (readInt2 > 32000) {
            return null;
        }
        double log = Math.log(2.0d);
        int ceil = (int) Math.ceil(Math.log(readInt * 2.0d) / log);
        ParsableBitArray parsableBitArray = new ParsableBitArray(parsableByteArray.data);
        parsableBitArray.setPosition(parsableByteArray.getPosition() * 8);
        float[] fArr2 = new float[readInt2 * 5];
        int[] iArr = new int[5];
        int i2 = 0;
        for (int i3 = 0; i3 < readInt2; i3++) {
            int i4 = 0;
            while (i4 < 5) {
                int decodeZigZag = iArr[i4] + decodeZigZag(parsableBitArray.readBits(ceil));
                if (decodeZigZag >= readInt || decodeZigZag < 0) {
                    return null;
                }
                fArr2[i2] = fArr[decodeZigZag];
                iArr[i4] = decodeZigZag;
                i4++;
                i2++;
            }
        }
        parsableBitArray.setPosition((parsableBitArray.getPosition() + 7) & (-8));
        int readBits = parsableBitArray.readBits(32);
        Projection.SubMesh[] subMeshArr = new Projection.SubMesh[readBits];
        for (int i5 = 0; i5 < readBits; i5++) {
            int readBits2 = parsableBitArray.readBits(8);
            int readBits3 = parsableBitArray.readBits(8);
            int readBits4 = parsableBitArray.readBits(32);
            if (readBits4 > 128000) {
                return null;
            }
            int ceil2 = (int) Math.ceil(Math.log(readInt2 * 2.0d) / log);
            float[] fArr3 = new float[readBits4 * 3];
            float[] fArr4 = new float[readBits4 * 2];
            int i6 = 0;
            for (int i7 = 0; i7 < readBits4; i7++) {
                i6 += decodeZigZag(parsableBitArray.readBits(ceil2));
                if (i6 < 0 || i6 >= readInt2) {
                    return null;
                }
                int i8 = i7 * 3;
                int i9 = i6 * 5;
                fArr3[i8] = fArr2[i9];
                fArr3[i8 + 1] = fArr2[i9 + 1];
                fArr3[i8 + 2] = fArr2[i9 + 2];
                int i10 = i7 * 2;
                fArr4[i10] = fArr2[i9 + 3];
                fArr4[i10 + 1] = fArr2[i9 + 4];
            }
            subMeshArr[i5] = new Projection.SubMesh(readBits2, fArr3, fArr4, readBits3);
        }
        return new Projection.Mesh(subMeshArr);
    }

    /* JADX WARN: Finally extract failed */
    @Nullable
    public static ArrayList<Projection.Mesh> parseMshp(ParsableByteArray parsableByteArray) {
        if (parsableByteArray.readUnsignedByte() != 0) {
            return null;
        }
        parsableByteArray.skipBytes(7);
        int readInt = parsableByteArray.readInt();
        if (readInt == 1684433976) {
            ParsableByteArray parsableByteArray2 = new ParsableByteArray();
            Inflater inflater = new Inflater(true);
            try {
                if (!Util.inflate(parsableByteArray, parsableByteArray2, inflater)) {
                    inflater.end();
                    return null;
                }
                inflater.end();
                parsableByteArray = parsableByteArray2;
            } catch (Throwable th) {
                inflater.end();
                throw th;
            }
        } else if (readInt != 1918990112) {
            return null;
        }
        return parseRawMshpData(parsableByteArray);
    }

    @Nullable
    public static ArrayList<Projection.Mesh> parseProj(ParsableByteArray parsableByteArray) {
        int readInt;
        parsableByteArray.skipBytes(8);
        int position = parsableByteArray.getPosition();
        int limit = parsableByteArray.limit();
        while (position < limit && (readInt = parsableByteArray.readInt() + position) > position && readInt <= limit) {
            int readInt2 = parsableByteArray.readInt();
            if (readInt2 == 2037673328 || readInt2 == 1836279920) {
                parsableByteArray.setLimit(readInt);
                return parseMshp(parsableByteArray);
            }
            parsableByteArray.setPosition(readInt);
            position = readInt;
        }
        return null;
    }

    @Nullable
    public static ArrayList<Projection.Mesh> parseRawMshpData(ParsableByteArray parsableByteArray) {
        ArrayList<Projection.Mesh> arrayList = new ArrayList<>();
        int position = parsableByteArray.getPosition();
        int limit = parsableByteArray.limit();
        while (position < limit) {
            int readInt = parsableByteArray.readInt() + position;
            if (readInt <= position || readInt > limit) {
                return null;
            }
            if (parsableByteArray.readInt() == 1835365224) {
                Projection.Mesh parseMesh = parseMesh(parsableByteArray);
                if (parseMesh == null) {
                    return null;
                }
                arrayList.add(parseMesh);
            }
            parsableByteArray.setPosition(readInt);
            position = readInt;
        }
        return arrayList;
    }
}
