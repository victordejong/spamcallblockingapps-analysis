package c;

import java.util.List;
import java.util.RandomAccess;
import kotlin.Metadata;
import kotlin.a.d;
import kotlin.jvm.internal.DefaultConstructorMarker;
@Metadata(bv = {1, 0, 3}, d1 = {"��,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0011\n��\n\u0002\u0010\u0015\n\u0002\b\u0005\n\u0002\u0010\b\n\u0002\b\b\u0018�� \u00152\b\u0012\u0004\u0012\u00020\u00020\u00012\u00060\u0003j\u0002`\u0004:\u0001\u0015B\u001f\b\u0002\u0012\u000e\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\u0006\u0012\u0006\u0010\u0007\u001a\u00020\b¢\u0006\u0002\u0010\tJ\u0011\u0010\u0013\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u000eH\u0096\u0002R\u001e\u0010\u0005\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00020\u0006X\u0080\u0004¢\u0006\n\n\u0002\u0010\f\u001a\u0004\b\n\u0010\u000bR\u0014\u0010\r\u001a\u00020\u000e8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u000f\u0010\u0010R\u0014\u0010\u0007\u001a\u00020\bX\u0080\u0004¢\u0006\b\n��\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"Lokio/Options;", "Lkotlin/collections/AbstractList;", "Lokio/ByteString;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "byteStrings", "", "trie", "", "([Lokio/ByteString;[I)V", "getByteStrings$okio", "()[Lokio/ByteString;", "[Lokio/ByteString;", "size", "", "getSize", "()I", "getTrie$okio", "()[I", "get", "index", "Companion", "okio"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes-dex2jar.jar:c/s.class */
public final class s extends d<i> implements RandomAccess {

    /* renamed from: d  reason: collision with root package name */
    public static final a f6315d = new a(null);

    /* renamed from: b  reason: collision with root package name */
    final i[] f6316b;

    /* renamed from: c  reason: collision with root package name */
    public final int[] f6317c;

    @Metadata(bv = {1, 0, 3}, d1 = {"��>\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n��\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\b\u0002\b\u0086\u0003\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002JT\u0010\b\u001a\u00020\t2\b\b\u0002\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00052\b\b\u0002\u0010\f\u001a\u00020\r2\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00100\u000f2\b\b\u0002\u0010\u0011\u001a\u00020\r2\b\b\u0002\u0010\u0012\u001a\u00020\r2\f\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\r0\u000fH\u0002J!\u0010\u0014\u001a\u00020\u00152\u0012\u0010\u000e\u001a\n\u0012\u0006\b\u0001\u0012\u00020\u00100\u0016\"\u00020\u0010H\u0007¢\u0006\u0002\u0010\u0017R\u0018\u0010\u0003\u001a\u00020\u0004*\u00020\u00058BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\u0006\u0010\u0007¨\u0006\u0018"}, d2 = {"Lokio/Options$Companion;", "", "()V", "intCount", "", "Lokio/Buffer;", "getIntCount", "(Lokio/Buffer;)J", "buildTrieRecursive", "", "nodeOffset", "node", "byteStringOffset", "", "byteStrings", "", "Lokio/ByteString;", "fromIndex", "toIndex", "indexes", "of", "Lokio/Options;", "", "([Lokio/ByteString;)Lokio/Options;", "okio"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes-dex2jar.jar:c/s$a.class */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        private static long a(f fVar) {
            return fVar.f6289b / 4;
        }

        private final void a(long j, f fVar, int i, List<? extends i> list, int i2, int i3, List<Integer> list2) {
            int i4;
            int i5;
            int i6 = i;
            if (i2 < i3) {
                for (int i7 = i2; i7 < i3; i7++) {
                    if (!(((i) list.get(i7)).f() >= i6)) {
                        throw new IllegalArgumentException("Failed requirement.".toString());
                    }
                }
                i iVar = (i) list.get(i2);
                i iVar2 = (i) list.get(i3 - 1);
                if (i6 == iVar.f()) {
                    i4 = list2.get(i2).intValue();
                    i5 = i2 + 1;
                    iVar = (i) list.get(i5);
                } else {
                    i5 = i2;
                    i4 = -1;
                }
                if (iVar.b(i6) != iVar2.b(i6)) {
                    int i8 = 1;
                    for (int i9 = i5 + 1; i9 < i3; i9++) {
                        i8 = i8;
                        if (((i) list.get(i9 - 1)).b(i6) != ((i) list.get(i9)).b(i6)) {
                            i8++;
                        }
                    }
                    long a2 = j + a(fVar) + 2 + (i8 * 2);
                    fVar.g(i8);
                    fVar.g(i4);
                    for (int i10 = i5; i10 < i3; i10++) {
                        byte b2 = ((i) list.get(i10)).b(i6);
                        if (i10 == i5 || b2 != ((i) list.get(i10 - 1)).b(i6)) {
                            fVar.g(b2 & 255);
                        }
                    }
                    f fVar2 = new f();
                    while (i5 < i3) {
                        byte b3 = ((i) list.get(i5)).b(i6);
                        int i11 = i5 + 1;
                        i5 = i11;
                        while (true) {
                            if (i5 >= i3) {
                                i5 = i3;
                                break;
                            } else if (b3 != ((i) list.get(i5)).b(i6)) {
                                break;
                            } else {
                                i5++;
                            }
                        }
                        if (i11 == i5 && i6 + 1 == ((i) list.get(i5)).f()) {
                            fVar.g(list2.get(i5).intValue());
                        } else {
                            fVar.g(((int) (a(fVar2) + a2)) * (-1));
                            a(a2, fVar2, i6 + 1, list, i5, i5, list2);
                        }
                    }
                    fVar.a((ad) fVar2);
                    return;
                }
                int min = Math.min(iVar.f(), iVar2.f());
                int i12 = 0;
                for (int i13 = i6; i13 < min && iVar.b(i13) == iVar2.b(i13); i13++) {
                    i12++;
                }
                long a3 = j + a(fVar) + 2 + i12 + 1;
                fVar.g(-i12);
                fVar.g(i4);
                int i14 = i6 + i12;
                while (i6 < i14) {
                    fVar.g(iVar.b(i6) & 255);
                    i6++;
                }
                if (i5 + 1 == i3) {
                    if (i14 == ((i) list.get(i5)).f()) {
                        fVar.g(list2.get(i5).intValue());
                        return;
                    }
                    throw new IllegalStateException("Check failed.".toString());
                }
                f fVar3 = new f();
                fVar.g(((int) (a(fVar3) + a3)) * (-1));
                a(a3, fVar3, i14, list, i5, i3, list2);
                fVar.a((ad) fVar3);
                return;
            }
            throw new IllegalArgumentException("Failed requirement.".toString());
        }

        private static /* synthetic */ void a(a aVar, f fVar, List list, List list2) {
            aVar.a(0L, fVar, 0, list, 0, list.size(), list2);
        }

        /* JADX WARN: Code restructure failed: missing block: B:58:0x01a2, code lost:
            continue;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final c.s a(c.i... r9) {
            /*
                Method dump skipped, instructions count: 525
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: c.s.a.a(c.i[]):c.s");
        }
    }

    private s(i[] iVarArr, int[] iArr) {
        this.f6316b = iVarArr;
        this.f6317c = iArr;
    }

    public /* synthetic */ s(i[] iVarArr, int[] iArr, DefaultConstructorMarker defaultConstructorMarker) {
        this(iVarArr, iArr);
    }

    @Override // kotlin.a.a
    public final int a() {
        return this.f6316b.length;
    }

    @Override // kotlin.a.a, java.util.Collection, java.util.List
    public final /* bridge */ boolean contains(Object obj) {
        if (!(obj instanceof i)) {
            return false;
        }
        return super.contains((i) obj);
    }

    @Override // kotlin.a.d, java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        return this.f6316b[i];
    }

    @Override // kotlin.a.d, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (!(obj instanceof i)) {
            return -1;
        }
        return super.indexOf((i) obj);
    }

    @Override // kotlin.a.d, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (!(obj instanceof i)) {
            return -1;
        }
        return super.lastIndexOf((i) obj);
    }
}
