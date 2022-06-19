package okio;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.collections.AbstractList;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(m402bv = {1, 0, 3}, m401d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n��\n\u0002\u0010\u0015\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\u0018�� \u00152\b\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004:\u0001\u0015B\u001f\b\u0002\u0012\u000e\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u0011\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u000eH\u0096\u0002R\u001e\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\u0006X\u0080\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\r\u001a\u00020\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0007\u001a\u00020\bX\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, m400d2 = {"Lokio/Options;", "Lkotlin/collections/AbstractList;", "Lokio/ByteString;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "byteStrings", "", "trie", "", "([Lokio/ByteString;[I)V", "getByteStrings$okio", "()[Lokio/ByteString;", "[Lokio/ByteString;", "size", "", "getSize", "()I", "getTrie$okio", "()[I", "get", FirebaseAnalytics.Param.INDEX, "Companion", "okio"}, m399k = 1, m398mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:okio/Options.class */
public final class Options extends AbstractList<ByteString> implements RandomAccess {
    public static final Companion Companion = new Companion(null);
    private final ByteString[] byteStrings;
    private final int[] trie;

    @Metadata(m402bv = {1, 0, 3}, m401d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JT\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00052\b\b\u0002\u0010\f\u001a\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f2\b\b\u0002\u0010\u0011\u001a\u00020\r2\b\b\u0002\u0010\u0012\u001a\u00020\r2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\r0\u000fH\u0002J!\u0010\u0014\u001a\u00020\u00152\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00100\u0016\"\u00020\u0010H\u0007¢\u0006\u0002\u0010\u0017R\u0018\u0010\u0003\u001a\u00020\u0004*\u00020\u00058BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0018"}, m400d2 = {"Lokio/Options$Companion;", "", "()V", "intCount", "", "Lokio/Buffer;", "getIntCount", "(Lokio/Buffer;)J", "buildTrieRecursive", "", "nodeOffset", "node", "byteStringOffset", "", "byteStrings", "", "Lokio/ByteString;", "fromIndex", "toIndex", "indexes", "of", "Lokio/Options;", "", "([Lokio/ByteString;)Lokio/Options;", "okio"}, m399k = 1, m398mv = {1, 4, 0})
    /* loaded from: classes-dex2jar.jar:okio/Options$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private final void buildTrieRecursive(long j, Buffer buffer, int i, List<? extends ByteString> list, int i2, int i3, List<Integer> list2) {
            int i4;
            int i5;
            int i6;
            int i7 = i;
            if (i2 < i3) {
                for (int i8 = i2; i8 < i3; i8++) {
                    if (!(list.get(i8).size() >= i7)) {
                        throw new IllegalArgumentException("Failed requirement.".toString());
                    }
                }
                ByteString byteString = list.get(i2);
                ByteString byteString2 = list.get(i3 - 1);
                if (i7 == byteString.size()) {
                    int intValue = list2.get(i2).intValue();
                    i5 = i2 + 1;
                    byteString = list.get(i5);
                    i4 = intValue;
                } else {
                    i5 = i2;
                    i4 = -1;
                }
                if (byteString.getByte(i7) == byteString2.getByte(i7)) {
                    int min = Math.min(byteString.size(), byteString2.size());
                    int i9 = 0;
                    for (int i10 = i7; i10 < min && byteString.getByte(i10) == byteString2.getByte(i10); i10++) {
                        i9++;
                    }
                    Companion companion = this;
                    long intCount = 1 + j + companion.getIntCount(buffer) + 2 + i9;
                    buffer.writeInt(-i9);
                    buffer.writeInt(i4);
                    int i11 = i7 + i9;
                    while (i7 < i11) {
                        buffer.writeInt(byteString.getByte(i7) & 255);
                        i7++;
                    }
                    if (i5 + 1 == i3) {
                        if (!(i11 == list.get(i5).size())) {
                            throw new IllegalStateException("Check failed.".toString());
                        }
                        buffer.writeInt(list2.get(i5).intValue());
                        return;
                    }
                    Buffer buffer2 = new Buffer();
                    buffer.writeInt(((int) (companion.getIntCount(buffer2) + intCount)) * (-1));
                    companion.buildTrieRecursive(intCount, buffer2, i11, list, i5, i3, list2);
                    buffer.writeAll(buffer2);
                    return;
                }
                int i12 = i5 + 1;
                int i13 = 1;
                while (true) {
                    i6 = i13;
                    if (i12 >= i3) {
                        break;
                    }
                    int i14 = i6;
                    if (list.get(i12 - 1).getByte(i7) != list.get(i12).getByte(i7)) {
                        i14 = i6 + 1;
                    }
                    i12++;
                    i13 = i14;
                }
                Companion companion2 = this;
                long intCount2 = j + companion2.getIntCount(buffer) + 2 + (i6 * 2);
                buffer.writeInt(i6);
                buffer.writeInt(i4);
                for (int i15 = i5; i15 < i3; i15++) {
                    byte b = list.get(i15).getByte(i7);
                    if (i15 == i5 || b != list.get(i15 - 1).getByte(i7)) {
                        buffer.writeInt(b & 255);
                    }
                }
                Buffer buffer3 = new Buffer();
                while (true) {
                    int i16 = i5;
                    if (i16 >= i3) {
                        buffer.writeAll(buffer3);
                        return;
                    }
                    byte b2 = list.get(i16).getByte(i7);
                    int i17 = i16 + 1;
                    i5 = i17;
                    while (true) {
                        if (i5 >= i3) {
                            i5 = i3;
                            break;
                        } else if (b2 != list.get(i5).getByte(i7)) {
                            break;
                        } else {
                            i5++;
                        }
                    }
                    if (i17 == i5 && i7 + 1 == list.get(i16).size()) {
                        buffer.writeInt(list2.get(i16).intValue());
                    } else {
                        buffer.writeInt(((int) (intCount2 + companion2.getIntCount(buffer3))) * (-1));
                        companion2.buildTrieRecursive(intCount2, buffer3, i7 + 1, list, i16, i5, list2);
                    }
                }
            } else {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r10v0, types: [okio.Options$Companion] */
        /* JADX WARN: Type inference failed for: r11v1 */
        /* JADX WARN: Type inference failed for: r11v2 */
        /* JADX WARN: Type inference failed for: r11v3 */
        static /* synthetic */ void buildTrieRecursive$default(Companion companion, long j, Buffer buffer, int i, List list, int i2, int i3, List list2, int i4, Object obj) {
            ?? r11 = j;
            if ((i4 & 1) != 0) {
                r11 = 0;
            }
            if ((i4 & 4) != 0) {
                i = 0;
            }
            if ((i4 & 16) != 0) {
                i2 = 0;
            }
            if ((i4 & 32) != 0) {
                i3 = list.size();
            }
            companion.buildTrieRecursive(r11, buffer, i, list, i2, i3, list2);
        }

        private final long getIntCount(Buffer buffer) {
            return buffer.size() / 4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:58:0x01bf, code lost:
            continue;
         */
        @kotlin.jvm.JvmStatic
        /* renamed from: of */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final okio.Options m369of(okio.ByteString... r13) {
            /*
                Method dump skipped, instructions count: 567
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okio.Options.Companion.m369of(okio.ByteString[]):okio.Options");
        }
    }

    private Options(ByteString[] byteStringArr, int[] iArr) {
        this.byteStrings = byteStringArr;
        this.trie = iArr;
    }

    public /* synthetic */ Options(ByteString[] byteStringArr, int[] iArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(byteStringArr, iArr);
    }

    @JvmStatic
    /* renamed from: of */
    public static final Options m370of(ByteString... byteStringArr) {
        return Companion.m369of(byteStringArr);
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof ByteString) {
            return contains((ByteString) obj);
        }
        return false;
    }

    public /* bridge */ boolean contains(ByteString byteString) {
        return super.contains((Object) byteString);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public ByteString get(int i) {
        return this.byteStrings[i];
    }

    public final ByteString[] getByteStrings$okio() {
        return this.byteStrings;
    }

    @Override // kotlin.collections.AbstractList, kotlin.collections.AbstractCollection
    public int getSize() {
        return this.byteStrings.length;
    }

    public final int[] getTrie$okio() {
        return this.trie;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof ByteString) {
            return indexOf((ByteString) obj);
        }
        return -1;
    }

    public /* bridge */ int indexOf(ByteString byteString) {
        return super.indexOf((Object) byteString);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof ByteString) {
            return lastIndexOf((ByteString) obj);
        }
        return -1;
    }

    public /* bridge */ int lastIndexOf(ByteString byteString) {
        return super.lastIndexOf((Object) byteString);
    }
}
