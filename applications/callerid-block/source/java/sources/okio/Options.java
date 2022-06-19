package okio;

import java.util.AbstractList;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes2-dex2jar.jar:okio/Options.class */
public final class Options extends AbstractList<ByteString> implements RandomAccess {
    final ByteString[] byteStrings;
    final int[] trie;

    private Options(ByteString[] byteStringArr, int[] iArr) {
        this.byteStrings = byteStringArr;
        this.trie = iArr;
    }

    private static void buildTrieRecursive(long j, Buffer buffer, int i, List<ByteString> list, int i2, int i3, List<Integer> list2) {
        int i4;
        int i5;
        if (i2 < i3) {
            for (int i6 = i2; i6 < i3; i6++) {
                if (list.get(i6).size() < i) {
                    throw new AssertionError();
                }
            }
            ByteString byteString = list.get(i2);
            ByteString byteString2 = list.get(i3 - 1);
            int i7 = -1;
            int i8 = i2;
            ByteString byteString3 = byteString;
            if (i == byteString.size()) {
                i7 = list2.get(i2).intValue();
                i8 = i2 + 1;
                byteString3 = list.get(i8);
            }
            if (byteString3.getByte(i) == byteString2.getByte(i)) {
                int i9 = 0;
                int min = Math.min(byteString3.size(), byteString2.size());
                for (int i10 = i; i10 < min && byteString3.getByte(i10) == byteString2.getByte(i10); i10++) {
                    i9++;
                }
                long intCount = 1 + j + intCount(buffer) + 2 + i9;
                buffer.writeInt(-i9);
                buffer.writeInt(i7);
                int i11 = i;
                while (true) {
                    i4 = i + i9;
                    if (i11 >= i4) {
                        break;
                    }
                    buffer.writeInt(byteString3.getByte(i11) & 255);
                    i11++;
                }
                if (i8 + 1 == i3) {
                    if (i4 != list.get(i8).size()) {
                        throw new AssertionError();
                    }
                    buffer.writeInt(list2.get(i8).intValue());
                    return;
                }
                Buffer buffer2 = new Buffer();
                buffer.writeInt((int) ((intCount(buffer2) + intCount) * (-1)));
                buildTrieRecursive(intCount, buffer2, i4, list, i8, i3, list2);
                buffer.write(buffer2, buffer2.size());
                return;
            }
            int i12 = i8 + 1;
            int i13 = 1;
            while (true) {
                i5 = i13;
                if (i12 >= i3) {
                    break;
                }
                int i14 = i5;
                if (list.get(i12 - 1).getByte(i) != list.get(i12).getByte(i)) {
                    i14 = i5 + 1;
                }
                i12++;
                i13 = i14;
            }
            long intCount2 = j + intCount(buffer) + 2 + (i5 * 2);
            buffer.writeInt(i5);
            buffer.writeInt(i7);
            for (int i15 = i8; i15 < i3; i15++) {
                byte b = list.get(i15).getByte(i);
                if (i15 == i8 || b != list.get(i15 - 1).getByte(i)) {
                    buffer.writeInt(b & 255);
                }
            }
            Buffer buffer3 = new Buffer();
            while (true) {
                int i16 = i8;
                if (i16 >= i3) {
                    buffer.write(buffer3, buffer3.size());
                    return;
                }
                byte b2 = list.get(i16).getByte(i);
                int i17 = i16 + 1;
                i8 = i17;
                while (true) {
                    if (i8 >= i3) {
                        i8 = i3;
                        break;
                    } else if (b2 != list.get(i8).getByte(i)) {
                        break;
                    } else {
                        i8++;
                    }
                }
                if (i17 == i8 && i + 1 == list.get(i16).size()) {
                    buffer.writeInt(list2.get(i16).intValue());
                } else {
                    buffer.writeInt((int) ((intCount(buffer3) + intCount2) * (-1)));
                    buildTrieRecursive(intCount2, buffer3, i + 1, list, i16, i8, list2);
                }
            }
        } else {
            throw new AssertionError();
        }
    }

    private static int intCount(Buffer buffer) {
        return (int) (buffer.size() / 4);
    }

    /* JADX WARN: Code restructure failed: missing block: B:51:0x0140, code lost:
        continue;
     */
    /* renamed from: of */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static okio.Options m0of(okio.ByteString... r9) {
        /*
            Method dump skipped, instructions count: 439
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: okio.Options.m0of(okio.ByteString[]):okio.Options");
    }

    @Override // java.util.AbstractList, java.util.List
    public ByteString get(int i) {
        return this.byteStrings[i];
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.byteStrings.length;
    }
}
