package kotlin;

import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.Arrays;
import java.util.Collection;
import java.util.NoSuchElementException;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.collections.ULongIterator;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import org.jetbrains.annotations.NotNull;
import org.jetbrains.annotations.Nullable;
@SinceKotlin
@Metadata(bv = {1, 0, 3}, d1 = {"��R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u001e\n\u0002\b\u0004\n\u0002\u0010��\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010\u0016\n\u0002\b\t\b\u0087@\u0018��2\u00020\u00012\u00020\u0002:\u00013B\u0014\b\u0016\u0012\u0006\u0010*\u001a\u00020\u0012ø\u0001��¢\u0006\u0004\b0\u00101B\u0014\b\u0001\u0012\u0006\u0010,\u001a\u00020+ø\u0001��¢\u0006\u0004\b0\u00102J\u001b\u0010\b\u001a\u00020\u00052\u0006\u0010\u0004\u001a\u00020\u0003H\u0096\u0002ø\u0001��¢\u0006\u0004\b\u0006\u0010\u0007J \u0010\r\u001a\u00020\u00052\f\u0010\n\u001a\b\u0012\u0004\u0012\u00020\u00030\tH\u0016ø\u0001��¢\u0006\u0004\b\u000b\u0010\fJ\u001a\u0010\u0010\u001a\u00020\u00052\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eHÖ\u0003¢\u0006\u0004\b\u0010\u0010\u0011J\u001e\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0013\u001a\u00020\u0012H\u0086\u0002ø\u0001��ø\u0001\u0001¢\u0006\u0004\b\u0014\u0010\u0015J\u0010\u0010\u0017\u001a\u00020\u0012HÖ\u0001¢\u0006\u0004\b\u0017\u0010\u0018J\u000f\u0010\u001b\u001a\u00020\u0005H\u0016¢\u0006\u0004\b\u0019\u0010\u001aJ\u0010\u0010\u001f\u001a\u00020\u001cH\u0096\u0002¢\u0006\u0004\b\u001d\u0010\u001eJ#\u0010$\u001a\u00020!2\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010 \u001a\u00020\u0003H\u0086\u0002ø\u0001��¢\u0006\u0004\b\"\u0010#J\u0010\u0010&\u001a\u00020%HÖ\u0001¢\u0006\u0004\b&\u0010'R\u0016\u0010*\u001a\u00020\u00128V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b(\u0010)R\u001c\u0010,\u001a\u00020+8��@\u0001X\u0081\u0004¢\u0006\f\n\u0004\b,\u0010-\u0012\u0004\b.\u0010/ø\u0001��\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u00064"}, d2 = {"Lkotlin/ULongArray;", "Ljava/util/Collection;", "Lkotlin/jvm/internal/markers/KMappedMarker;", "Lkotlin/ULong;", "element", "", "contains-VKZWuLQ", "([JJ)Z", "contains", "", "elements", "containsAll-impl", "([JLjava/util/Collection;)Z", "containsAll", "", "other", "equals", "(Ljava/lang/Object;)Z", "", FirebaseAnalytics.Param.INDEX, "get-s-VKNKU", "([JI)J", "get", "hashCode", "()I", "isEmpty-impl", "([J)Z", "isEmpty", "Lkotlin/collections/ULongIterator;", "iterator-impl", "([J)Lkotlin/collections/ULongIterator;", "iterator", FirebaseAnalytics.Param.VALUE, "", "set-k8EXiF4", "([JIJ)V", "set", "", "toString", "()Ljava/lang/String;", "getSize-impl", "([J)I", "size", "", "storage", "[J", "getStorage$annotations", "()V", "constructor-impl", "(I)[J", "([J)[J", "Iterator", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
@ExperimentalUnsignedTypes
/* loaded from: classes2-dex2jar.jar:kotlin/ULongArray.class */
public final class ULongArray implements Collection<ULong>, KMappedMarker {
    @NotNull

    /* renamed from: f */
    private final long[] f20439f;

    /* JADX INFO: Access modifiers changed from: private */
    @Metadata(bv = {1, 0, 3}, d1 = {"��(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u0016\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\b\u0002\u0018��2\u00020\u0001B\u000f\u0012\u0006\u0010\n\u001a\u00020\t¢\u0006\u0004\b\u000f\u0010\u0010J\u0010\u0010\u0003\u001a\u00020\u0002H\u0096\u0002¢\u0006\u0004\b\u0003\u0010\u0004J\u0015\u0010\b\u001a\u00020\u0005H\u0016ø\u0001��ø\u0001\u0001¢\u0006\u0004\b\u0006\u0010\u0007R\u0016\u0010\n\u001a\u00020\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\n\u0010\u000bR\u0016\u0010\r\u001a\u00020\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\r\u0010\u000e\u0082\u0002\b\n\u0002\b\u0019\n\u0002\b!¨\u0006\u0011"}, d2 = {"Lkotlin/ULongArray$Iterator;", "Lkotlin/collections/ULongIterator;", "", "hasNext", "()Z", "Lkotlin/ULong;", "nextULong-s-VKNKU", "()J", "nextULong", "", "array", "[J", "", FirebaseAnalytics.Param.INDEX, "I", "<init>", "([J)V", "kotlin-stdlib"}, k = 1, mv = {1, 1, 15}, pn = "", xi = 0, xs = "")
    /* loaded from: classes2-dex2jar.jar:kotlin/ULongArray$Iterator.class */
    public static final class Iterator extends ULongIterator {

        /* renamed from: f */
        private int f20440f;

        /* renamed from: g */
        private final long[] f20441g;

        public Iterator(@NotNull long[] array) {
            Intrinsics.m1830e(array, "array");
            this.f20441g = array;
        }

        @Override // kotlin.collections.ULongIterator
        /* renamed from: b */
        public long mo1696b() {
            int i = this.f20440f;
            long[] jArr = this.f20441g;
            if (i < jArr.length) {
                this.f20440f = i + 1;
                long j = jArr[i];
                ULong.m2423g(j);
                return j;
            }
            throw new NoSuchElementException(String.valueOf(this.f20440f));
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f20440f < this.f20441g.length;
        }
    }

    /* renamed from: e */
    public static boolean m2417e(long[] jArr, long j) {
        boolean q;
        q = ArraysKt___ArraysKt.m2236q(jArr, j);
        return q;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0055 A[EDGE_INSN: B:18:0x0055->B:16:0x0055 ?: BREAK  , SYNTHETIC] */
    /* renamed from: f */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean m2416f(long[] r4, @org.jetbrains.annotations.NotNull java.util.Collection<kotlin.ULong> r5) {
        /*
            r0 = r5
            java.lang.String r1 = "elements"
            kotlin.jvm.internal.Intrinsics.m1830e(r0, r1)
            r0 = r5
            boolean r0 = r0.isEmpty()
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0018
        L_0x0013:
            r0 = 1
            r7 = r0
            goto L_0x0055
        L_0x0018:
            r0 = r5
            java.util.Iterator r0 = r0.iterator()
            r5 = r0
        L_0x001f:
            r0 = r5
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto L_0x0013
            r0 = r5
            java.lang.Object r0 = r0.next()
            r8 = r0
            r0 = r8
            boolean r0 = r0 instanceof kotlin.ULong
            if (r0 == 0) goto L_0x004d
            r0 = r4
            r1 = r8
            kotlin.ULong r1 = (kotlin.ULong) r1
            long r1 = r1.m2419l()
            boolean r0 = kotlin.collections.ArraysKt.m2310q(r0, r1)
            if (r0 == 0) goto L_0x004d
            r0 = 1
            r9 = r0
            goto L_0x0050
        L_0x004d:
            r0 = 0
            r9 = r0
        L_0x0050:
            r0 = r9
            if (r0 != 0) goto L_0x001f
        L_0x0055:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.ULongArray.m2416f(long[], java.util.Collection):boolean");
    }

    /* renamed from: g */
    public static boolean m2415g(long[] jArr, @Nullable Object obj) {
        return (obj instanceof ULongArray) && Intrinsics.m1834a(jArr, ((ULongArray) obj).m2406u());
    }

    /* renamed from: h */
    public static final long m2414h(long[] jArr, int i) {
        long j = jArr[i];
        ULong.m2423g(j);
        return j;
    }

    /* renamed from: k */
    public static int m2412k(long[] jArr) {
        return jArr.length;
    }

    /* renamed from: n */
    public static int m2411n(long[] jArr) {
        return jArr != null ? Arrays.hashCode(jArr) : 0;
    }

    /* renamed from: p */
    public static boolean m2410p(long[] jArr) {
        return jArr.length == 0;
    }

    @NotNull
    /* renamed from: s */
    public static ULongIterator m2408s(long[] jArr) {
        return new Iterator(jArr);
    }

    @NotNull
    /* renamed from: t */
    public static String m2407t(long[] jArr) {
        return "ULongArray(storage=" + Arrays.toString(jArr) + ")";
    }

    @Override // java.util.Collection
    public /* synthetic */ boolean add(ULong uLong) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public boolean addAll(Collection<? extends ULong> collection) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    /* renamed from: c */
    public boolean m2418c(long j) {
        return m2417e(this.f20439f, j);
    }

    @Override // java.util.Collection
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof ULong) {
            return m2418c(((ULong) obj).m2419l());
        }
        return false;
    }

    @Override // java.util.Collection
    public boolean containsAll(@NotNull Collection<? extends Object> collection) {
        return m2416f(this.f20439f, collection);
    }

    @Override // java.util.Collection
    public boolean equals(Object obj) {
        return m2415g(this.f20439f, obj);
    }

    @Override // java.util.Collection
    public int hashCode() {
        return m2411n(this.f20439f);
    }

    @Override // java.util.Collection
    public boolean isEmpty() {
        return m2410p(this.f20439f);
    }

    /* renamed from: j */
    public int m2413j() {
        return m2412k(this.f20439f);
    }

    @NotNull
    /* renamed from: r */
    public ULongIterator iterator() {
        return m2408s(this.f20439f);
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
        return m2413j();
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
        return m2407t(this.f20439f);
    }

    @NotNull
    /* renamed from: u */
    public final /* synthetic */ long[] m2406u() {
        return this.f20439f;
    }
}
