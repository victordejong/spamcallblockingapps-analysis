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
        if (i2 < i3) {
            for (int i5 = i2; i5 < i3; i5++) {
                if (list.get(i5).size() < i) {
                    throw new AssertionError();
                }
            }
            ByteString byteString = list.get(i2);
            ByteString byteString2 = list.get(i3 - 1);
            int i6 = -1;
            int i7 = i2;
            ByteString byteString3 = byteString;
            if (i == byteString.size()) {
                i6 = list2.get(i2).intValue();
                i7 = i2 + 1;
                byteString3 = list.get(i7);
            }
            if (byteString3.getByte(i) != byteString2.getByte(i)) {
                int i8 = 1;
                for (int i9 = i7 + 1; i9 < i3; i9++) {
                    i8 = i8;
                    if (list.get(i9 - 1).getByte(i) != list.get(i9).getByte(i)) {
                        i8++;
                    }
                }
                long intCount = j + intCount(buffer) + 2 + (i8 * 2);
                buffer.writeInt(i8);
                buffer.writeInt(i6);
                for (int i10 = i7; i10 < i3; i10++) {
                    byte b = list.get(i10).getByte(i);
                    if (i10 == i7 || b != list.get(i10 - 1).getByte(i)) {
                        buffer.writeInt(b & 255);
                    }
                }
                Buffer buffer2 = new Buffer();
                while (i7 < i3) {
                    byte b2 = list.get(i7).getByte(i);
                    int i11 = i7 + 1;
                    i7 = i11;
                    while (true) {
                        if (i7 >= i3) {
                            i7 = i3;
                            break;
                        } else if (b2 != list.get(i7).getByte(i)) {
                            break;
                        } else {
                            i7++;
                        }
                    }
                    if (i11 == i7 && i + 1 == list.get(i7).size()) {
                        buffer.writeInt(list2.get(i7).intValue());
                    } else {
                        buffer.writeInt((int) ((intCount(buffer2) + intCount) * (-1)));
                        buildTrieRecursive(intCount, buffer2, i + 1, list, i7, i7, list2);
                    }
                }
                buffer.write(buffer2, buffer2.size());
                return;
            }
            int i12 = 0;
            int min = Math.min(byteString3.size(), byteString2.size());
            for (int i13 = i; i13 < min && byteString3.getByte(i13) == byteString2.getByte(i13); i13++) {
                i12++;
            }
            long intCount2 = 1 + j + intCount(buffer) + 2 + i12;
            buffer.writeInt(-i12);
            buffer.writeInt(i6);
            int i14 = i;
            while (true) {
                i4 = i + i12;
                if (i14 >= i4) {
                    break;
                }
                buffer.writeInt(byteString3.getByte(i14) & 255);
                i14++;
            }
            if (i7 + 1 != i3) {
                Buffer buffer3 = new Buffer();
                buffer.writeInt((int) ((intCount(buffer3) + intCount2) * (-1)));
                buildTrieRecursive(intCount2, buffer3, i4, list, i7, i3, list2);
                buffer.write(buffer3, buffer3.size());
            } else if (i4 == list.get(i7).size()) {
                buffer.writeInt(list2.get(i7).intValue());
            } else {
                throw new AssertionError();
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
