package p092c;

import java.util.List;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.p518a.AbstractC18264d;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n��\n\u0002\u0010\u0015\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\u0018�� \u00152\b\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004:\u0001\u0015B\u001f\b\u0002\u0012\u000e\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u0011\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u000eH\u0096\u0002R\u001e\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\u0006X\u0080\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\r\u001a\u00020\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0007\u001a\u00020\bX\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, m4298d2 = {"Lokio/Options;", "Lkotlin/collections/AbstractList;", "Lokio/ByteString;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "byteStrings", "", "trie", "", "([Lokio/ByteString;[I)V", "getByteStrings$okio", "()[Lokio/ByteString;", "[Lokio/ByteString;", "size", "", "getSize", "()I", "getTrie$okio", "()[I", "get", "index", "Companion", "okio"}, m4297k = 1, m4296mv = {1, 4, 0})
/* renamed from: c.s */
/* loaded from: classes-dex2jar.jar:c/s.class */
public final class C3219s extends AbstractC18264d<C3208i> implements RandomAccess {

    /* renamed from: d */
    public static final C3220a f11603d = new C3220a(null);

    /* renamed from: b */
    final C3208i[] f11604b;

    /* renamed from: c */
    public final int[] f11605c;

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JT\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00052\b\b\u0002\u0010\f\u001a\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f2\b\b\u0002\u0010\u0011\u001a\u00020\r2\b\b\u0002\u0010\u0012\u001a\u00020\r2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\r0\u000fH\u0002J!\u0010\u0014\u001a\u00020\u00152\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00100\u0016\"\u00020\u0010H\u0007¢\u0006\u0002\u0010\u0017R\u0018\u0010\u0003\u001a\u00020\u0004*\u00020\u00058BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0018"}, m4298d2 = {"Lokio/Options$Companion;", "", "()V", "intCount", "", "Lokio/Buffer;", "getIntCount", "(Lokio/Buffer;)J", "buildTrieRecursive", "", "nodeOffset", "node", "byteStringOffset", "", "byteStrings", "", "Lokio/ByteString;", "fromIndex", "toIndex", "indexes", "of", "Lokio/Options;", "", "([Lokio/ByteString;)Lokio/Options;", "okio"}, m4297k = 1, m4296mv = {1, 4, 0})
    /* renamed from: c.s$a */
    /* loaded from: classes-dex2jar.jar:c/s$a.class */
    public static final class C3220a {
        private C3220a() {
        }

        public /* synthetic */ C3220a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        /* renamed from: a */
        private static long m39148a(C3202f c3202f) {
            return c3202f.f11572b / 4;
        }

        /* renamed from: a */
        private final void m39149a(long j, C3202f c3202f, int i, List<? extends C3208i> list, int i2, int i3, List<Integer> list2) {
            int i4;
            int i5;
            int i6;
            int i7 = i;
            if (i2 < i3) {
                for (int i8 = i2; i8 < i3; i8++) {
                    if (!(list.get(i8).mo39173f() >= i7)) {
                        throw new IllegalArgumentException("Failed requirement.".toString());
                    }
                }
                C3208i c3208i = list.get(i2);
                C3208i c3208i2 = list.get(i3 - 1);
                if (i7 == c3208i.mo39173f()) {
                    int intValue = list2.get(i2).intValue();
                    i5 = i2 + 1;
                    c3208i = list.get(i5);
                    i4 = intValue;
                } else {
                    i5 = i2;
                    i4 = -1;
                }
                if (c3208i.mo39178b(i7) == c3208i2.mo39178b(i7)) {
                    int min = Math.min(c3208i.mo39173f(), c3208i2.mo39173f());
                    int i9 = 0;
                    for (int i10 = i7; i10 < min && c3208i.mo39178b(i10) == c3208i2.mo39178b(i10); i10++) {
                        i9++;
                    }
                    long m39148a = j + m39148a(c3202f) + 2 + i9 + 1;
                    c3202f.mo39136g(-i9);
                    c3202f.mo39136g(i4);
                    int i11 = i7 + i9;
                    while (i7 < i11) {
                        c3202f.mo39136g(c3208i.mo39178b(i7) & 255);
                        i7++;
                    }
                    if (i5 + 1 == i3) {
                        if (!(i11 == list.get(i5).mo39173f())) {
                            throw new IllegalStateException("Check failed.".toString());
                        }
                        c3202f.mo39136g(list2.get(i5).intValue());
                        return;
                    }
                    C3202f c3202f2 = new C3202f();
                    c3202f.mo39136g(((int) (m39148a(c3202f2) + m39148a)) * (-1));
                    m39149a(m39148a, c3202f2, i11, list, i5, i3, list2);
                    c3202f.mo39145a((AbstractC3190ad) c3202f2);
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
                    if (list.get(i12 - 1).mo39178b(i7) != list.get(i12).mo39178b(i7)) {
                        i14 = i6 + 1;
                    }
                    i12++;
                    i13 = i14;
                }
                long m39148a2 = j + m39148a(c3202f) + 2 + (i6 * 2);
                c3202f.mo39136g(i6);
                c3202f.mo39136g(i4);
                for (int i15 = i5; i15 < i3; i15++) {
                    byte mo39178b = list.get(i15).mo39178b(i7);
                    if (i15 == i5 || mo39178b != list.get(i15 - 1).mo39178b(i7)) {
                        c3202f.mo39136g(mo39178b & 255);
                    }
                }
                C3202f c3202f3 = new C3202f();
                while (true) {
                    int i16 = i5;
                    if (i16 >= i3) {
                        c3202f.mo39145a((AbstractC3190ad) c3202f3);
                        return;
                    }
                    byte mo39178b2 = list.get(i16).mo39178b(i7);
                    int i17 = i16 + 1;
                    i5 = i17;
                    while (true) {
                        if (i5 >= i3) {
                            i5 = i3;
                            break;
                        } else if (mo39178b2 != list.get(i5).mo39178b(i7)) {
                            break;
                        } else {
                            i5++;
                        }
                    }
                    if (i17 == i5 && i7 + 1 == list.get(i16).mo39173f()) {
                        c3202f.mo39136g(list2.get(i16).intValue());
                    } else {
                        c3202f.mo39136g(((int) (m39148a(c3202f3) + m39148a2)) * (-1));
                        m39149a(m39148a2, c3202f3, i7 + 1, list, i16, i5, list2);
                    }
                }
            } else {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
        }

        /* renamed from: a */
        private static /* synthetic */ void m39147a(C3220a c3220a, C3202f c3202f, List list, List list2) {
            c3220a.m39149a(0L, c3202f, 0, list, 0, list.size(), list2);
        }

        /* JADX WARN: Code restructure failed: missing block: B:58:0x01a2, code lost:
            continue;
         */
        /* renamed from: a */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final p092c.C3219s m39146a(p092c.C3208i... r9) {
            /*
                Method dump skipped, instructions count: 525
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: p092c.C3219s.C3220a.m39146a(c.i[]):c.s");
        }
    }

    private C3219s(C3208i[] c3208iArr, int[] iArr) {
        this.f11604b = c3208iArr;
        this.f11605c = iArr;
    }

    public /* synthetic */ C3219s(C3208i[] c3208iArr, int[] iArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(c3208iArr, iArr);
    }

    @Override // kotlin.p518a.AbstractC18225a
    /* renamed from: a */
    public final int mo3987a() {
        return this.f11604b.length;
    }

    @Override // kotlin.p518a.AbstractC18225a, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (!(obj instanceof C3208i)) {
            return false;
        }
        return super.contains((C3208i) obj);
    }

    @Override // kotlin.p518a.AbstractC18264d, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        return this.f11604b[i];
    }

    @Override // kotlin.p518a.AbstractC18264d, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (!(obj instanceof C3208i)) {
            return -1;
        }
        return super.indexOf((C3208i) obj);
    }

    @Override // kotlin.p518a.AbstractC18264d, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (!(obj instanceof C3208i)) {
            return -1;
        }
        return super.lastIndexOf((C3208i) obj);
    }
}
