package kotlin;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Arrays;
import java.util.Collection;
import java.util.NoSuchElementException;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.UByteIterator;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SinceKotlin
@Metadata(bv = {1, 0, 3}, d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\b\u0004\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0012\n\u0002\b\t\b\u0087@\u0018��2\u00020\u00012\u00020\u0002:\u00013B\u0014\b\u0016\u0012\u0006\u0010*\u001a\u00020\u0012ø\u0001��¢\u0006\u0004\b0\u00101B\u0014\b\u0001\u0012\u0006\u0010,\u001a\u00020+ø\u0001��¢\u0006\u0004\b0\u00102J\u001b\u0010\b\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0096\u0002ø\u0001��¢\u0006\u0004\b\u0006\u0010\u0007J \u0010\r\u001a\u00020\u00052\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\tH\u0016ø\u0001��¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u0010\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eHÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011J\u001e\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0012H\u0086\u0002ø\u0001��ø\u0001\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0017\u001a\u00020\u0012HÖ\u0001¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u001b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u001f\u001a\u00020\u001cH\u0096\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ#\u0010$\u001a\u00020!2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u0003H\u0086\u0002ø\u0001��¢\u0006\u0004\b\"\u0010#J\u0010\u0010&\u001a\u00020%HÖ\u0001¢\u0006\u0004\b&\u0010'R\u0016\u0010*\u001a\u00020\u00128V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b(\u0010)R\u001c\u0010,\u001a\u00020+8��@\u0001X\u0081\u0004¢\u0006\f\n\u0004\b,\u0010-\u0012\u0004\b.\u0010/ø\u0001��\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u00064"}, d2 = {"Lkotlin/UByteArray;", "Ljava/util/Collection;", "Lkotlin/jvm/internal/markers/KMappedMarker;", "Lkotlin/UByte;", "element", "", "contains-7apg3OU", "([BB)Z", "contains", "", "elements", "containsAll-impl", "([BLjava/util/Collection;)Z", "containsAll", "", "other", "equals", "(Ljava/lang/Object;)Z", "", FirebaseAnalytics.Param.INDEX, "get-w2LRezQ", "([BI)B", "get", "hashCode", "()I", "isEmpty-impl", "([B)Z", "isEmpty", "Lkotlin/collections/UByteIterator;", "iterator-impl", "([B)Lkotlin/collections/UByteIterator;", "iterator", FirebaseAnalytics.Param.VALUE, "", "set-VurrAj0", "([BIB)V", "set", "", "toString", "()Ljava/lang/String;", "getSize-impl", "([B)I", "size", "", "storage", "[B", "getStorage$annotations", "()V", "constructor-impl", "(I)[B", "([B)[B", "Iterator", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@ExperimentalUnsignedTypes
/* loaded from: classes2-dex2jar.jar:kotlin/UByteArray.class */
public final class UByteArray implements Collection<UByte>, KMappedMarker {
    @NotNull

    /* renamed from: f */
    private final byte[] f20431f;

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0012\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0002\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0003\u001a\u00020\u0002H\u0096\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\b\u001a\u00020\u0005H\u0016ø\u0001��ø\u0001\u0001¢\u0006\u0004\b\u0006\u0010\u0007R\u0016\u0010\n\u001a\u00020\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0016\u0010\r\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000e\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0011"}, d2 = {"Lkotlin/UByteArray$Iterator;", "Lkotlin/collections/UByteIterator;", "", "hasNext", "()Z", "Lkotlin/UByte;", "nextUByte-w2LRezQ", "()B", "nextUByte", "", "array", "[B", "", FirebaseAnalytics.Param.INDEX, "I", "<init>", "([B)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/UByteArray$Iterator.class */
    public static final class Iterator extends UByteIterator {

        /* renamed from: f */
        private int f20432f;

        /* renamed from: g */
        private final byte[] f20433g;

        public Iterator(@NotNull byte[] array) {
            Intrinsics.m1830e(array, "array");
            this.f20433g = array;
        }

        @Override // kotlin.collections.UByteIterator
        /* renamed from: b */
        public byte mo2055b() {
            int i = this.f20432f;
            byte[] bArr = this.f20433g;
            if (i < bArr.length) {
                this.f20432f = i + 1;
                byte b = bArr[i];
                UByte.m2465g(b);
                return b;
            }
            throw new NoSuchElementException(String.valueOf(this.f20432f));
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f20432f < this.f20433g.length;
        }
    }

    /* renamed from: e */
    public static boolean m2459e(byte[] bArr, byte b) {
        boolean n;
        n = ArraysKt___ArraysKt.m2239n(bArr, b);
        return n;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0055 A[EDGE_INSN: B:18:0x0055->B:16:0x0055 ?: BREAK  , SYNTHETIC] */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m2458f(byte[] r3, @org.jetbrains.annotations.NotNull java.util.Collection<kotlin.UByte> r4) {
        /*
            r0 = r4
            java.lang.String r1 = "elements"
            kotlin.jvm.internal.Intrinsics.m1830e(r0, r1)
            r0 = r4
            boolean r0 = r0.isEmpty()
            r5 = r0
            r0 = 0
            r6 = r0
            r0 = r5
            if (r0 == 0) goto L_0x0018
        L_0x0013:
            r0 = 1
            r6 = r0
            goto L_0x0055
        L_0x0018:
            r0 = r4
            java.util.Iterator r0 = r0.iterator()
            r4 = r0
        L_0x001f:
            r0 = r4
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0013
            r0 = r4
            java.lang.Object r0 = r0.next()
            r7 = r0
            r0 = r7
            boolean r0 = r0 instanceof kotlin.UByte
            if (r0 == 0) goto L_0x004d
            r0 = r3
            r1 = r7
            kotlin.UByte r1 = (kotlin.UByte) r1
            byte r1 = r1.m2461l()
            boolean r0 = kotlin.collections.ArraysKt.m2312n(r0, r1)
            if (r0 == 0) goto L_0x004d
            r0 = 1
            r8 = r0
            goto L_0x0050
        L_0x004d:
            r0 = 0
            r8 = r0
        L_0x0050:
            r0 = r8
            if (r0 != 0) goto L_0x001f
        L_0x0055:
            r0 = r6
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.UByteArray.m2458f(byte[], java.util.Collection):boolean");
    }

    /* renamed from: g */
    public static boolean m2457g(byte[] bArr, @Nullable Object obj) {
        return (obj instanceof UByteArray) && Intrinsics.m1834a(bArr, ((UByteArray) obj).m2448u());
    }

    /* renamed from: h */
    public static final byte m2456h(byte[] bArr, int i) {
        byte b = bArr[i];
        UByte.m2465g(b);
        return b;
    }

    /* renamed from: k */
    public static int m2454k(byte[] bArr) {
        return bArr.length;
    }

    /* renamed from: n */
    public static int m2453n(byte[] bArr) {
        return bArr != null ? Arrays.hashCode(bArr) : 0;
    }

    /* renamed from: p */
    public static boolean m2452p(byte[] bArr) {
        return bArr.length == 0;
    }

    @NotNull
    /* renamed from: s */
    public static UByteIterator m2450s(byte[] bArr) {
        return new Iterator(bArr);
    }

    @NotNull
    /* renamed from: t */
    public static String m2449t(byte[] bArr) {
        return "UByteArray(storage=" + Arrays.toString(bArr) + ")";
    }

    @Override // java.util.Collection
    public /* synthetic */ boolean add(UByte uByte) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends UByte> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* renamed from: c */
    public boolean m2460c(byte b) {
        return m2459e(this.f20431f, b);
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof UByte) {
            return m2460c(((UByte) obj).m2461l());
        }
        return false;
    }

    @Override // java.util.Collection
    public boolean containsAll(@NotNull Collection<? extends Object> collection) {
        return m2458f(this.f20431f, collection);
    }

    @Override // java.util.Collection
    public boolean equals(Object obj) {
        return m2457g(this.f20431f, obj);
    }

    @Override // java.util.Collection
    public int hashCode() {
        return m2453n(this.f20431f);
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return m2452p(this.f20431f);
    }

    /* renamed from: j */
    public int m2455j() {
        return m2454k(this.f20431f);
    }

    @NotNull
    /* renamed from: r */
    public UByteIterator iterator() {
        return m2450s(this.f20431f);
    }

    @Override // java.util.Collection
    public boolean remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean removeAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean retainAll(Collection<? extends Object> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final /* bridge */ int size() {
        return m2455j();
    }

    @Override // java.util.Collection
    public Object[] toArray() {
        return CollectionToArray.m1848a(this);
    }

    @Override // java.util.Collection
    public <T> T[] toArray(T[] tArr) {
        return (T[]) CollectionToArray.m1847b(this, tArr);
    }

    public String toString() {
        return m2449t(this.f20431f);
    }

    @NotNull
    /* renamed from: u */
    public final /* synthetic */ byte[] m2448u() {
        return this.f20431f;
    }
}
