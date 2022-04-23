package okio;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.List;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.collections.AbstractList;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.internal.DefaultConstructorMarker;
import org.jetbrains.annotations.NotNull;
@Metadata(bv = {1, 0, 3}, d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0007\n\u0002\u0010\u0015\n\u0002\b\b\u0018�� \u00172\u00020\u00012\u00020\u0002:\u0001\u0017B!\b\u0002\u0012\u000e\u0010\t\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\b\u0012\u0006\u0010\u0011\u001a\u00020\u0010¢\u0006\u0004\b\u0015\u0010\u0016J\u0018\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0096\u0002¢\u0006\u0004\b\u0006\u0010\u0007R$\u0010\t\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00050\b8��@��X\u0080\u0004¢\u0006\f\n\u0004\b\t\u0010\n\u001a\u0004\b\u000b\u0010\fR\u0016\u0010\u000f\u001a\u00020\u00038V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\r\u0010\u000eR\u001c\u0010\u0011\u001a\u00020\u00108��@��X\u0080\u0004¢\u0006\f\n\u0004\b\u0011\u0010\u0012\u001a\u0004\b\u0013\u0010\u0014¨\u0006\u0018"}, d2 = {"Lokio/Options;", "Ljava/util/RandomAccess;", "Lkotlin/collections/AbstractList;", "", FirebaseAnalytics.Param.INDEX, "Lokio/ByteString;", "get", "(I)Lokio/ByteString;", "", "byteStrings", "[Lokio/ByteString;", "getByteStrings$okio", "()[Lokio/ByteString;", "getSize", "()I", "size", "", "trie", "[I", "getTrie$okio", "()[I", "<init>", "([Lokio/ByteString;[I)V", "Companion", "okio"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
/* loaded from: classes2-dex2jar.jar:okio/Options.class */
public final class Options extends AbstractList<ByteString> implements RandomAccess {

    /* renamed from: i */
    public static final Companion f24166i = new Companion(null);
    @NotNull

    /* renamed from: g */
    private final ByteString[] f24167g;
    @NotNull

    /* renamed from: h */
    private final int[] f24168h;

    @Metadata(bv = {1, 0, 3}, d1 = {"��6\n\u0002\u0018\u0002\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\b\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0018\u0002\n\u0002\b\b\b\u0086\u0003\u0018��B\t\b\u0002¢\u0006\u0004\b\u0017\u0010\u0018J[\u0010\u000e\u001a\u00020\r2\b\b\u0002\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0004\u001a\u00020\u00032\b\b\u0002\u0010\u0006\u001a\u00020\u00052\f\u0010\t\u001a\b\u0012\u0004\u0012\u00020\b0\u00072\b\b\u0002\u0010\n\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\u00052\f\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u00050\u0007H\u0002¢\u0006\u0004\b\u000e\u0010\u000fJ#\u0010\u0012\u001a\u00020\u00112\u0012\u0010\t\u001a\n\u0012\u0006\b\u0001\u0012\u00020\b0\u0010\"\u00020\bH\u0007¢\u0006\u0004\b\u0012\u0010\u0013R\u001a\u0010\u0016\u001a\u00020\u0001*\u00020\u00038B@\u0002X\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0019"}, d2 = {"Lokio/Options$Companion;", "", "nodeOffset", "Lokio/Buffer;", "node", "", "byteStringOffset", "", "Lokio/ByteString;", "byteStrings", "fromIndex", "toIndex", "indexes", "", "buildTrieRecursive", "(JLokio/Buffer;ILjava/util/List;IILjava/util/List;)V", "", "Lokio/Options;", "of", "([Lokio/ByteString;)Lokio/Options;", "getIntCount", "(Lokio/Buffer;)J", "intCount", "<init>", "()V", "okio"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:okio/Options$Companion.class */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        private final void m113a(long j, Buffer buffer, int i, List<? extends ByteString> list, int i2, int i3, List<Integer> list2) {
            int i4;
            int i5;
            int i6 = i;
            if (i2 < i3) {
                for (int i7 = i2; i7 < i3; i7++) {
                    if (!(((ByteString) list.get(i7)).m178C() >= i6)) {
                        throw new IllegalArgumentException("Failed requirement.".toString());
                    }
                }
                ByteString byteString = (ByteString) list.get(i2);
                ByteString byteString2 = (ByteString) list.get(i3 - 1);
                if (i6 == byteString.m178C()) {
                    i4 = list2.get(i2).intValue();
                    i5 = i2 + 1;
                    byteString = (ByteString) list.get(i5);
                } else {
                    i5 = i2;
                    i4 = -1;
                }
                if (byteString.m173h(i6) != byteString2.m173h(i6)) {
                    int i8 = 1;
                    for (int i9 = i5 + 1; i9 < i3; i9++) {
                        i8 = i8;
                        if (((ByteString) list.get(i9 - 1)).m173h(i6) != ((ByteString) list.get(i9)).m173h(i6)) {
                            i8++;
                        }
                    }
                    long c = j + m111c(buffer) + 2 + (i8 * 2);
                    buffer.m219G0(i8);
                    buffer.m219G0(i4);
                    for (int i10 = i5; i10 < i3; i10++) {
                        byte h = ((ByteString) list.get(i10)).m173h(i6);
                        if (i10 == i5 || h != ((ByteString) list.get(i10 - 1)).m173h(i6)) {
                            buffer.m219G0(h & 255);
                        }
                    }
                    Buffer buffer2 = new Buffer();
                    while (i5 < i3) {
                        byte h2 = ((ByteString) list.get(i5)).m173h(i6);
                        int i11 = i5 + 1;
                        i5 = i11;
                        while (true) {
                            if (i5 >= i3) {
                                i5 = i3;
                                break;
                            } else if (h2 != ((ByteString) list.get(i5)).m173h(i6)) {
                                break;
                            } else {
                                i5++;
                            }
                        }
                        if (i11 == i5 && i6 + 1 == ((ByteString) list.get(i5)).m178C()) {
                            buffer.m219G0(list2.get(i5).intValue());
                        } else {
                            buffer.m219G0(((int) (c + m111c(buffer2))) * (-1));
                            m113a(c, buffer2, i6 + 1, list, i5, i5, list2);
                        }
                    }
                    buffer.mo95S(buffer2);
                    return;
                }
                int min = Math.min(byteString.m178C(), byteString2.m178C());
                int i12 = 0;
                for (int i13 = i6; i13 < min && byteString.m173h(i13) == byteString2.m173h(i13); i13++) {
                    i12++;
                }
                long c2 = j + m111c(buffer) + 2 + i12 + 1;
                buffer.m219G0(-i12);
                buffer.m219G0(i4);
                int i14 = i6 + i12;
                while (i6 < i14) {
                    buffer.m219G0(byteString.m173h(i6) & 255);
                    i6++;
                }
                if (i5 + 1 == i3) {
                    if (i14 == ((ByteString) list.get(i5)).m178C()) {
                        buffer.m219G0(list2.get(i5).intValue());
                        return;
                    }
                    throw new IllegalStateException("Check failed.".toString());
                }
                Buffer buffer3 = new Buffer();
                buffer.m219G0(((int) (m111c(buffer3) + c2)) * (-1));
                m113a(c2, buffer3, i14, list, i5, i3, list2);
                buffer.mo95S(buffer3);
                return;
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }

        /* renamed from: b */
        static /* synthetic */ void m112b(Companion companion, long j, Buffer buffer, int i, List list, int i2, int i3, List list2, int i4, Object obj) {
            if ((i4 & 1) != 0) {
                j = 0;
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
            companion.m113a(j, buffer, i, list, i2, i3, list2);
        }

        /* renamed from: c */
        private final long m111c(Buffer buffer) {
            return buffer.m188v0() / 4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:62:0x01aa, code lost:
            continue;
         */
        @kotlin.jvm.JvmStatic
        @org.jetbrains.annotations.NotNull
        /* renamed from: d */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final okio.Options m110d(@org.jetbrains.annotations.NotNull okio.ByteString... r13) {
            /*
                Method dump skipped, instructions count: 545
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: okio.Options.Companion.m110d(okio.ByteString[]):okio.Options");
        }
    }

    private Options(ByteString[] byteStringArr, int[] iArr) {
        this.f24167g = byteStringArr;
        this.f24168h = iArr;
    }

    public /* synthetic */ Options(ByteString[] byteStringArr, int[] iArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(byteStringArr, iArr);
    }

    @JvmStatic
    @NotNull
    /* renamed from: n */
    public static final Options m114n(@NotNull ByteString... byteStringArr) {
        return f24166i.m110d(byteStringArr);
    }

    @Override // kotlin.collections.AbstractCollection
    /* renamed from: c */
    public int mo121c() {
        return this.f24167g.length;
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof ByteString) {
            return m120e((ByteString) obj);
        }
        return false;
    }

    /* renamed from: e */
    public /* bridge */ boolean m120e(ByteString byteString) {
        return super.contains(byteString);
    }

    @NotNull
    /* renamed from: f */
    public ByteString get(int i) {
        return this.f24167g[i];
    }

    @NotNull
    /* renamed from: g */
    public final ByteString[] m118g() {
        return this.f24167g;
    }

    @NotNull
    /* renamed from: h */
    public final int[] m117h() {
        return this.f24168h;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof ByteString) {
            return m116j((ByteString) obj);
        }
        return -1;
    }

    /* renamed from: j */
    public /* bridge */ int m116j(ByteString byteString) {
        return super.indexOf(byteString);
    }

    /* renamed from: k */
    public /* bridge */ int m115k(ByteString byteString) {
        return super.lastIndexOf(byteString);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof ByteString) {
            return m115k((ByteString) obj);
        }
        return -1;
    }
}
